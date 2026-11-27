import FactoringAux.Copied.PlibMul

/-!
# A reusable fixed program for the exact cofactor

Local integration by grwtsk contributors, specializing the two-output division
program of Rudich and Rousseau at c91cc3f4947caca8977e81a5d14244f73b5ae2b1.
The source interpreter charges its own register/array operations. The compiled
register program below charges the provider's actual register-machine steps.
Every input integer is stored by bits, not as a register of numerical size N.
-/

namespace GRWTSK.IntegerFactorization.Division

open Factoring.Aux.Copied Factoring.Aux.Copied.Aux Factoring.Aux.Copied.PLib

def bits (w n j : ℕ) : ℕ := if j < w then bitOf n j else 0

def state (w n d q r : ℕ) : St where
  sc i := if i = 0 then w else 0
  ar a := match a with
    | 0 => bits w n
    | 1 => bits w d
    | 2 => bits w q
    | 3 => bits (w+1) r
    | _ => fun _ => 0

/-- Arrays 0/1 are read-only inputs; 2/3 are quotient and remainder and 4 is private. -/
def raw : Cmd := divmodSeg 0 1 2 3 4 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14

private def zeroCopy : Cmd := Cmd.seqs [.copy 1 0, .incr 1, fillSeg 4 10 1 11 6 12, .setK 1 0]

/-- This fixed program also erases the private widened copy of the divisor. -/
def divide : Cmd := .seq raw zeroCopy

private theorem bits0 (w : ℕ) : bits w 0 = fun _ => 0 := by
  funext j
  simp [bits, bitOf]

private theorem seg_bits (w n : ℕ) : segPut (fun _ => 0) 0 w (bitOf n) = bits w n := by
  funext j
  simp [segPut, bits]

private theorem zeros_eq_self (st : St) (xs : List ℕ) (hz : ∀ i ∈ xs, st.sc i = 0) :
    st.zeros xs = st := by
  induction xs with
  | nil => rfl
  | cons x xs ih =>
    have hset : st.setSc x 0 = st := by
      simpa only [hz x List.mem_cons_self] using St.setSc_same st x
    rw [St.zeros_cons, hset]
    exact ih (fun i hi => hz i (List.mem_cons_of_mem _ hi))

private theorem raw_run (w n d : ℕ) (hn : n < 2^w) (hd : d < 2^w) (hd0 : 0 < d) :
    (raw.run (state w n d 0 0)).1 =
      (state w n d (n/d) (n%d)).putAr 4 (bits (w+1) d) ∧
    (raw.run (state w n d 0 0)).2 ≤ 500*(w+1)*(w+1) := by
  have ha : Holds ((state w n d 0 0).ar 0) w n := ⟨hn, fun i hi => by simp [state, bits, hi]⟩
  have hb : Holds ((state w n d 0 0).ar 1) w d := ⟨hd, fun i hi => by simp [state, bits, hi]⟩
  obtain ⟨he, hc⟩ := run_divmodSeg (A:=0) (D:=1) (Q:=2) (R:=3) (Dx:=4) (L:=0) (L1:=1)
    (kk:=2) (j:=3) (c:=4) (qb:=5) (cnt:=6) (x:=7) (y:=8) (w:=9) (z:=10) (z':=11)
    (p:=12) (q:=13) (v:=14) (by decide) (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide) (state w n d 0 0) ha hb hd0
  refine ⟨he.trans ?_, hc⟩
  rw [zeros_eq_self _ _ (by
    intro i hi
    simp only [St.putAr_sc, state]
    apply ite_eq_right
    rintro rfl
    simp at hi)]
  apply St.ext
  · rfl
  · simp only [St.putAr_ar]
    funext a
    rcases a with _ | _ | _ | _ | _ | a <;> simp [state, bits0, seg_bits]

private theorem cleanup_run (w n d q r : ℕ) :
    let middle := (state w n d q r).putAr 4 (bits (w+1) d)
    (zeroCopy.run middle).1 = state w n d q r ∧
    (zeroCopy.run middle).2 ≤ 6*(w+1)+24 := by
  let mid := (state w n d q r).putAr 4 (bits (w+1) d)
  let s := (mid.setSc 1 w).setSc 1 (w+1)
  have h := run_fillSeg (b:=4) (ob:=10) (n:=1) (val:=11) (c:=6) (q:=12) (by decide) s
  dsimp only
  change (zeroCopy.run mid).1 = _ ∧ (zeroCopy.run mid).2 ≤ _
  simp only [zeroCopy, Cmd.run_seqs_cons, Cmd.run_seqs_nil, Cmd.run_copy, Cmd.run_incr, Cmd.run_setK]
  change (((fillSeg 4 10 1 11 6 12).run s).1.setSc 1 0) = _ ∧ _
  rw [h.1]
  constructor
  · apply St.ext
    · funext i
      simp only [s, mid, St.setSc_sc, St.putAr_sc, state, Function.update_apply]
      split_ifs <;> first | rfl | omega
    · funext a i
      rcases a with _ | _ | _ | _ | _ | a <;>
        simp [s, mid, state, segFill, bits, St.setSc, St.putAr]
      omega
  · change 1 + (1 + (((fillSeg 4 10 1 11 6 12).run s).2 + (1+1+1) + 1) + 1) + 1 ≤ _
    rw [h.2]
    simp [s, mid, state]
    omega

/-- Complete interpreter-state equality preserves the inputs, outputs the
    quotient and remainder, and restores every private scalar and array. -/
theorem divide_run (w n d : ℕ) (hn : n < 2^w) (hd : d < 2^w) (hd0 : 0 < d) :
    (divide.run (state w n d 0 0)).1 = state w n d (n/d) (n%d) ∧
    (divide.run (state w n d 0 0)).2 ≤ 500*(w+1)*(w+1) + 6*(w+1)+25 := by
  have h := raw_run w n d hn hd hd0
  have hc := cleanup_run w n d (n/d) (n%d)
  simp only [divide, Cmd.run_seq, h.1]
  exact ⟨hc.1, by have := h.2; have := hc.2; omega⟩

def layout : Lay := ⟨15,5⟩

def program := compile layout divide

def sourceCost (w : ℕ) := 500*(w+1)*(w+1)+6*(w+1)+25

def registerCost (w : ℕ) := 26*(w+1+sourceCost w)*sourceCost w

private theorem state_bounded (w n d q r : ℕ) : (state w n d q r).Bnd (w+1) := by
  constructor
  · intro i; simp [state]; split_ifs <;> omega
  · intro a j
    have hp (n w : ℕ) : bits w n j ≤ 1 := by unfold bits; split_ifs <;> simp [bitOf_le_one]
    rcases a with _ | _ | _ | _ | a <;> simp only [state] <;> first | exact (hp _ _).trans (by omega) | omega

/-- Concrete compiled register steps include array-address calculation and
    individual cell access. The frame predicate quantifies over all array cells. -/
theorem compiled_division (w n d : ℕ) (hn : n < 2^w) (hd : d < 2^w) (hd0 : 0 < d)
    (σ : Memory) (hs : layout.Rel (state w n d 0 0) σ) :
    layout.Rel (state w n d (n/d) (n%d)) (Program.run program σ).1 ∧
      (Program.run program σ).2 ≤ registerCost w := by
  have ⟨he,hc⟩ := divide_run w n d hn hd hd0
  change (Cmd.run divide _).2 ≤ sourceCost w at hc
  have hl : divide.kmax ≤ 1 := by decide
  have h := comp_ok layout divide _ σ (w+1) (26*(w+1+sourceCost w)) hs
    (state_bounded _ _ _ _ _) (hl.trans (by omega)) (by decide) (by decide)
    (by change 26*_ ≤ 26*_; exact Nat.mul_le_mul_left _ (Nat.add_le_add_left hc _))
  rw [he] at h
  exact ⟨h.1, h.2.trans (Nat.mul_le_mul_left _ hc)⟩

/-- On an exact split the only output in the remainder bank is zero, and the
    quotient bank represents precisely the smaller cofactor. -/
theorem exact_cofactor (w n d : ℕ) (hn : n < 2^w) (hd : d < 2^w) (hd1 : 1 < d)
    (hdn : d < n) (hdiv : d ∣ n) (σ : Memory) (hs : layout.Rel (state w n d 0 0) σ) :
    layout.Rel (state w n d (n/d) 0) (Program.run program σ).1 ∧
    d*(n/d) = n ∧ 1 < n/d ∧ n/d < n ∧ (Program.run program σ).2 ≤ registerCost w := by
  obtain ⟨h,ht⟩ := compiled_division w n d hn hd (by omega) σ hs
  rw [Nat.mod_eq_zero_of_dvd hdiv] at h
  have hp := Nat.mul_div_cancel' hdiv
  refine ⟨h, hp, ?_, Nat.div_lt_self (by omega) hd1, ht⟩
  by_contra! hl
  have := Nat.mul_le_mul_left d hl
  simp only [Nat.mul_one] at this
  omega

/-- Input memory for the fixed compiled layout. The four bookkeeping cells
    and unused array lanes start at zero. All stored *values* except the
    width are individual bits. -/
def inputMemory (w n d i : ℕ) : ℕ :=
  if i = 4 then w else if i < 19 then 0 else
    let off := i - 19
    if off % 5 = 0 then bits w n (off/5)
    else if off % 5 = 1 then bits w d (off/5) else 0

theorem input_layout (w n d : ℕ) : layout.Rel (state w n d 0 0) (inputMemory w n d) := by
  constructor
  · intro x hx
    change x < 15 at hx
    change inputMemory w n d (4+x) = if x=0 then w else 0
    simp only [inputMemory]
    split_ifs <;> omega
  · intro a ha i
    change a < 5 at ha
    change inputMemory w n d (19+a+5*i) = (state w n d 0 0).ar a i
    have hl : ¬19+a+5*i < 19 := by omega
    have hne : 19+a+5*i ≠ 4 := by omega
    have hm : (19+a+5*i-19)%5 = a := by omega
    have hq : (19+a+5*i-19)/5 = i := by omega
    simp only [inputMemory, hne, hl, ↓reduceIte, hm, hq]
    interval_cases a <;> simp [state, bits0]

theorem input_value_le (w n d i : ℕ) : inputMemory w n d i ≤ w+1 := by
  have hb (m j : ℕ) : bits w m j ≤ 1 := by unfold bits; split_ifs <;> simp [bitOf_le_one]
  simp only [inputMemory]
  split_ifs <;> first | exact (hb _ _).trans (by omega) | omega

theorem input_finite_support (w n d i : ℕ) (hi : 19+5*w ≤ i) : inputMemory w n d i = 0 := by
  have h1 : i ≠ 4 := by omega
  have h2 : ¬i < 19 := by omega
  have h3 : ¬(i-19)/5 < w := by omega
  simp [inputMemory, h1, h2, h3, bits]

end GRWTSK.IntegerFactorization.Division
