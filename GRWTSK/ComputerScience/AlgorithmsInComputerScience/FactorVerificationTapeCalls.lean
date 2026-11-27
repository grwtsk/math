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

private theorem mem_products {a b : ℕ} {ps : List ℕ} (h : (a,b) ∈ products ps) :
    ∃ front tail, ps = front ++ a :: tail ∧ b = tail.prod := by
  induction ps with
  | nil => simp [products] at h
  | cons p ps ih =>
    rcases List.mem_cons.mp h with eq | h
    · obtain ⟨rfl,rfl⟩ := Prod.mk.inj eq
      exact ⟨[],ps,rfl,rfl⟩
    · obtain ⟨front,tail,eq,hb⟩ := ih h
      exact ⟨p :: front,tail,congrArg (List.cons p) eq,hb⟩

/-- A width sufficient even for an input that passes the arithmetic guards
and whose reconstructed product will subsequently be rejected. -/
def widthCap (n : ℕ) := (n.log2 + 1) * (n.log2 + 1) + 1

private theorem width_le_of_fits {a b cap : ℕ} (hc : 0 < cap)
    (ha : a < 2^cap) (hb : b < 2^cap) : width a b ≤ cap := by
  have bound {x : ℕ} (hx : x < 2^cap) : x.log2 + 1 ≤ cap := by
    by_cases h : x = 0
    · subst x
      change 1 ≤ cap
      omega
    · exact (Nat.log2_lt h).mpr hx
  exact max_le (bound ha) (bound hb)

theorem call_width_le {n a b : ℕ} {bits : List Bool} (h : (a,b) ∈ calls n bits) :
    width a b ≤ widthCap n := by
  unfold calls at h
  split at h
  · simp at h
  · next xs _ =>
      split at h
      · next ha =>
          split at h
          · obtain ⟨front,tail,eq,rfl⟩ := mem_products h
            have hm : a ∈ expand xs := eq ▸ List.mem_append_right _ (List.mem_cons_self ..)
            obtain ⟨t, ht, hr⟩ := List.mem_flatMap.mp hm
            have hab : a ≤ n := (List.eq_of_mem_replicate hr) ▸ (ha.2.2.2.2 t ht).1
            have hlen : n.log2 + 1 ≤ widthCap n := by
              unfold widthCap
              have he := Nat.mul_le_mul_left (n.log2+1) (show 1 ≤ n.log2+1 by omega)
              omega
            apply width_le_of_fits (Nat.zero_lt_succ _)
            · exact (hab.trans_lt (Nat.lt_log2_self (n := n))).trans_le
                (Nat.pow_le_pow_right (by decide) hlen)
            · apply suffix_fits ha (initial := front ++ [a])
              simpa [List.append_assoc] using eq
          · simp at h
      · simp at h

/-- The physical input tape uses two encoded words and one separator.
The routine returns one whole encoded word on the output tape. This counts
symbols staged and retrieved, before head travel or scratch clearing. -/
def Supplier.stagedSymbols (s : Supplier) (a b : ℕ) : ℕ :=
  ((inputWord a b a).map s.bit ++ [s.sep] ++ (inputWord a b b).map s.bit).length +
    ((s.result a b).map s.bit).length

theorem Supplier.stagedSymbols_eq (s : Supplier) (a b : ℕ) :
    s.stagedSymbols a b = 4 * width a b + 1 := by
  obtain ⟨_,_,_,_,hlen,_,_⟩ := s.run a b
  simp [Supplier.stagedSymbols, inputWord, hlen]
  omega

theorem Supplier.total_stagedSymbols_le (s : Supplier) (n : ℕ) (bits : List Bool) :
    ((calls n bits).map (fun t => s.stagedSymbols t.1 t.2)).sum ≤
      n.log2 * (4 * widthCap n + 1) := by
  let cap := 4 * widthCap n + 1
  have each (t : ℕ × ℕ) (ht : t ∈ calls n bits) : s.stagedSymbols t.1 t.2 ≤ cap := by
    rw [s.stagedSymbols_eq]
    exact Nat.add_le_add_right (Nat.mul_le_mul_left 4 (call_width_le ht)) 1
  have bound (l : List (ℕ × ℕ)) (hl : ∀ t ∈ l, s.stagedSymbols t.1 t.2 ≤ cap) :
      (l.map (fun t => s.stagedSymbols t.1 t.2)).sum ≤ l.length * cap := by
    induction l with
    | nil => simp
    | cons t l ih =>
      simp only [List.map_cons, List.sum_cons, List.length_cons, Nat.succ_mul]
      rw [Nat.add_comm (l.length * cap)]
      exact Nat.add_le_add (hl t (.head _)) (ih (fun x hx => hl x (.tail _ hx)))
  exact (bound _ each).trans (Nat.mul_le_mul_right cap (call_count_le n bits))

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
