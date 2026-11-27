/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.IntegerFactorizationCertificate
import OAI.Computability.NearSquareRoot.UniformWorstCase

/-!
# Fixed-tape products in the factorization verifier

The `word` function serializes least significant bit first. Reversal produces
the most-significant-first inputs expected by OpenAI #379. Each invocation starts
on the supplier's specified input tape. The caller must pay for moving, copying,
and resetting tape state before this isolated trace can be used again.
-/

namespace GRWTSK.IntegerFactorization.TapeCalls

open WireCertificate
open OAI.Computability.IntegerMultiplication OAI.Computability.NearSquareRoot
open Filter
open scoped Topology

def width (a b : ℕ) := max (a.log2 + 1) (b.log2 + 1)

private theorem width_pos (a b : ℕ) : 0 < width a b :=
  (Nat.zero_lt_succ _).trans_le (Nat.le_max_left _ _)

theorem value_reverse_word (w x : ℕ) (hx : x < 2 ^ w) :
    bitValue (word w x).reverse = x := by
  induction w generalizing x with
  | zero =>
    have : x = 0 := by simpa using hx
    simp [word, bitValue, this]
  | succ w ih =>
    have hw : x / 2 < 2 ^ w := by rw [pow_succ] at hx; omega
    have hr := ih (x / 2) hw
    unfold bitValue at *
    by_cases h : x % 2 = 1 <;>
      simp [word, List.foldl_append, hr, h] <;> omega

def inputWord (a b x : ℕ) := (word (width a b) x).reverse

/-- A fixed machine and an actual halting trace for each pair of natural operands.
Each operand uses the same positive width. Leading zeroes are permitted. -/
structure Supplier where
  A : Type
  Q : Type
  I : Type
  finiteA : Finite A
  finiteQ : Finite Q
  finiteI : Finite I
  bit : Bool → A
  sep : A
  blank : A
  inp : I
  out : I
  start : Q
  machine : TM.Rule A Q I
  W : ℕ → ℕ
  S : ℕ
  code : Function.Injective bit ∧ (∀ b, bit b ≠ sep ∧ bit b ≠ blank) ∧ sep ≠ blank
  excess : ∃ δ : ℕ → ℝ, Tendsto δ atTop (𝓝 0) ∧
    ∀ᶠ n in atTop, (W n : ℝ) ≤ n*(1+Real.log n)^((1 : ℝ) / 2 + δ n)
  worst : ∀ w, 0 < w → IsGreatest (haltingTimes machine (initialConfig start inp bit sep blank) w) (W w)
  steps : ℕ → ℕ → ℕ
  result : ℕ → ℕ → List Bool
  run : ∀ a b, let init := initialConfig start inp bit sep blank (inputWord a b a) (inputWord a b b)
                ∃ c, Trace (TM.advance machine) init (steps a b) c ∧ TM.advance machine c = none ∧
                  TM.whole blank ((result a b).map bit) (c.tape out) ∧
                  (result a b).length = 2 * width a b ∧ bitValue (result a b) = a*b ∧
                  VisitsAtMost machine init (steps a b) (S * width a b)

theorem supplier_of_spec (h : UniformWorstCaseSpec) : Nonempty Supplier := by
  classical
  obtain ⟨A,Q,I,hA,hQ,hI,bit,sep,blank,inp,out,start,m,W,S,inj,hs,hsep,ex,top,run⟩ := h
  have runs (a b : ℕ) := run (width a b) (width_pos a b) (inputWord a b a) (inputWord a b b)
    (by simp [inputWord]) (by simp [inputWord])
  choose time finish z hrun using runs
  refine ⟨⟨A,Q,I,hA,hQ,hI,bit,sep,blank,inp,out,start,m,W,S,⟨inj,hs,hsep⟩,ex,top,time,z,?_⟩⟩
  intro a b
  obtain ⟨ht,hh,ho,hlen,hprod,hspace⟩ := hrun a b
  have ha : a < 2 ^ width a b := (Nat.lt_log2_self (n := a)).trans_le
    (Nat.pow_le_pow_right (by decide) (Nat.le_max_left _ _))
  have hb : b < 2 ^ width a b := (Nat.lt_log2_self (n := b)).trans_le
    (Nat.pow_le_pow_right (by decide) (Nat.le_max_right _ _))
  refine ⟨finish a b,ht,hh,ho,hlen,?_,hspace⟩
  simpa only [inputWord, value_reverse_word _ _ ha, value_reverse_word _ _ hb] using hprod

theorem Supplier.steps_le (s : Supplier) (a b : ℕ) : s.steps a b ≤ s.W (width a b) := by
  obtain ⟨c,ht,hh,_⟩ := s.run a b
  exact (s.worst _ (width_pos a b)).2
    ⟨inputWord a b a,inputWord a b b,by simp [inputWord],by simp [inputWord],c,ht,hh⟩

theorem Supplier.check_eq (s : Supplier) (n : ℕ) (bits : List Bool) :
    checkWith (fun p => decide (Nat.Prime p)) (fun a b => bitValue (s.result a b)) n bits =
      check n bits := by
  apply checkWith_replace _ _ (fun _ => by simp)
  intro a b
  obtain ⟨_,_,_,_,_,h,_⟩ := s.run a b
  exact h

/-- Argument pairs of the right-recursive multiplication in `productUsing`.
The singleton base value 1 is an operand on the last call. -/
def products : List ℕ → List (ℕ × ℕ)
  | [] => []
  | p :: ps => (p,ps.prod) :: products ps

theorem products_length (ps : List ℕ) : (products ps).length = ps.length := by
  induction ps <;> simp [products, *]

/-- Instrument the actual folding order while leaving the chosen observable
unchanged. The return log lists calls in execution order, from the innermost
product to its parent. -/
def tracedProduct (mul : ℕ → ℕ → ℕ) : List ℕ → ℕ × List (ℕ × ℕ)
  | [] => (1, [])
  | p :: ps =>
    let (rest, args) := tracedProduct mul ps
    (mul p rest, args ++ [(p, rest)])

/-- The instrumented fold has the caller's value and exactly the argument
pairs used by the histogram, including a malformed candidate's wrong product. -/
theorem tracedProduct_eq (mul : ℕ → ℕ → ℕ) (hm : ∀ a b, mul a b = a*b) (ps : List ℕ) :
    tracedProduct mul ps = (productUsing mul ps, (products ps).reverse) := by
  induction ps with
  | nil => rfl
  | cons p ps ih =>
    simp only [tracedProduct, ih, productUsing, products, productUsing_eq mul hm, List.reverse_cons]

/-- Guards match the executable caller, hence a syntax, range or primality
rejection has zero multiplication calls. A wrong reconstructed product may
still incur every call. -/
def calls (n : ℕ) (bits : List Bool) : List (ℕ × ℕ) :=
  match decode n bits with
  | none => []
  | some xs =>
    if admissible n xs then
      if ∀ t ∈ xs, decide (Nat.Prime t.1) = true then products (expand xs) else []
    else []

theorem call_count_le (n : ℕ) (bits : List Bool) : (calls n bits).length ≤ n.log2 := by
  unfold calls
  split
  · simp
  · split
    · next h =>
        split
        · simpa only [products_length, length_expand] using h.2.2.1
        · simp
    · simp

/-- `R` is the cost of the entire caller outside the stand-alone multiplication
traces. The finite histogram uses each trace's actual argument width. -/
theorem Supplier.histogram_bound (s : Supplier) (R n : ℕ) (bits : List Bool) :
    let args := calls n bits
    let widths := args.map (fun t => width t.1 t.2)
    R + (args.map (fun t => s.steps t.1 t.2)).sum ≤
      R + ∑ w ∈ widths.toFinset, widths.count w * s.W w := by
  dsimp only
  apply Nat.add_le_add_left
  calc
    _ ≤ ((calls n bits).map (fun t => s.W (width t.1 t.2))).sum := by
      induction calls n bits with
      | nil => exact le_rfl
      | cons t l ih =>
        simp only [List.map_cons, List.sum_cons]
        exact Nat.add_le_add (s.steps_le _ _) ih
    _ = _ := by
      simpa [List.map_map, Function.comp_def, nsmul_eq_mul] using
        (Finset.sum_list_map_count ((calls n bits).map (fun t => width t.1 t.2)) s.W)

end GRWTSK.IntegerFactorization.TapeCalls
