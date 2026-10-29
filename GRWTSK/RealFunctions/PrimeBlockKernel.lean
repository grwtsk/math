/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib results retain their upstream attribution and licenses. -/
import Mathlib

/-!
# Signed multiplicative finite differences and their negative part

A list is only an ordered presentation of a finite prime set. Permuting it
preserves the kernel; arithmetic consumers require distinct prime entries.
All finite identities precede absolute values. No positivity of a three-prime
block, arithmetic exponent improvement, or convergence assertion is assumed.
SOURCE_PROOF_CANDIDATE / compilation, kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.FiniteSums.PrimeBlockKernel

/-- Literal repeated multiplicative difference. No coefficient is fitted. -/
def block (P : List ℕ) (f : ℕ → ℝ) (m : ℕ) : ℝ :=
  match P with
  | [] => f m
  | p :: Q => block Q f m - block Q f (p * m)

@[simp] theorem block_nil (f : ℕ → ℝ) (m : ℕ) : block [] f m = f m := rfl
@[simp] theorem block_cons (p : ℕ) (P : List ℕ) (f : ℕ → ℝ) (m : ℕ) :
    block (p :: P) f m = block P f m - block P f (p * m) := rfl

/-- Dilation commutes with all previously installed multiplicative differences. -/
theorem block_dilate (P : List ℕ) (f : ℕ → ℝ) (d m : ℕ) :
    block P (fun n => f (d * n)) m = block P f (d * m) := by
  induction P generalizing m with
  | nil => rfl
  | cons p P ih =>
      simp only [block_cons, ih]
      rw [show d * (p * m) = p * (d * m) by ring]

/-- The kernel depends on the set of distinct primes, not their presentation order. -/
theorem block_perm {P Q : List ℕ} (h : P.Perm Q) (f : ℕ → ℝ) (m : ℕ) :
    block P f m = block Q f m := by
  induction h generalizing m with
  | nil => rfl
  | cons p h ih => simp only [block_cons, ih]
  | swap p q P =>
      simp only [block_cons]
      rw [show p * (q * m) = q * (p * m) by ring]
      ring
  | trans h₁ h₂ ih₁ ih₂ => exact (ih₁ m).trans (ih₂ m)

theorem block_add (P : List ℕ) (f g : ℕ → ℝ) (m : ℕ) :
    block P (fun n => f n + g n) m = block P f m + block P g m := by
  induction P generalizing m with
  | nil => rfl
  | cons p P ih => simp only [block_cons, ih]; ring

/-- A coefficient invariant under the selected dilations can be moved through the block. -/
theorem block_weight (P : List ℕ) (c f : ℕ → ℝ)
    (hc : ∀ p ∈ P, ∀ m, c (p*m)=c m) (m : ℕ) :
    block P (fun n => c n*f n) m = c m*block P f m := by
  revert hc m
  induction P with
  | nil => intro _ _; rfl
  | cons p P ih =>
      intro hc m
      have hrest : ∀ q ∈ P, ∀ n, c (q*n)=c n := fun q hq => hc q (by simp [hq])
      simp only [block_cons, ih hrest, hc p (by simp) m]
      ring

/-- The precise negative part exposed by adding p. -/
def negativeStep (P : List ℕ) (p : ℕ) (f : ℕ → ℝ) (m : ℕ) : ℝ :=
  max (block P f (p * m) - block P f m) 0

def positiveStep (P : List ℕ) (p : ℕ) (f : ℕ → ℝ) (m : ℕ) : ℝ :=
  max (block P f m - block P f (p * m)) 0

theorem signed_step (P : List ℕ) (p : ℕ) (f : ℕ → ℝ) (m : ℕ) :
    block (p :: P) f m = positiveStep P p f m - negativeStep P p f m := by
  unfold positiveStep negativeStep
  rw [block_cons]
  by_cases h : block P f (p * m) ≤ block P f m
  · rw [max_eq_left (sub_nonneg.mpr h), max_eq_right (sub_nonpos.mpr h)]
    ring
  · have h' := (lt_of_not_ge h).le
    rw [max_eq_right (sub_nonpos.mpr h'), max_eq_left (sub_nonneg.mpr h')]
    ring

theorem absolute_step (P : List ℕ) (p : ℕ) (f : ℕ → ℝ) (m : ℕ) :
    |block (p :: P) f m| = block (p :: P) f m + 2 * negativeStep P p f m := by
  unfold negativeStep
  rw [block_cons]
  by_cases h : block P f (p * m) ≤ block P f m
  · rw [abs_of_nonneg (sub_nonneg.mpr h), max_eq_right (sub_nonpos.mpr h)]
    ring
  · have h' := (lt_of_not_ge h).le
    rw [abs_of_nonpos (sub_nonpos.mpr h'), max_eq_left (sub_nonneg.mpr h')]
    ring

/-- The arithmetic correlations with the negative kernel are not deleted. -/
theorem signed_aggregate {ι : Type*} (S : Finset ι) (c A B : ι → ℝ) :
    (∑ i ∈ S, c i * (A i - B i)) =
      (∑ i ∈ S, c i * max (A i - B i) 0) -
      ∑ i ∈ S, c i * max (B i - A i) 0 := by
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  by_cases h : B i ≤ A i
  · rw [max_eq_left (sub_nonneg.mpr h), max_eq_right (sub_nonpos.mpr h)]
    ring
  · have h' := (lt_of_not_ge h).le
    rw [max_eq_right (sub_nonpos.mpr h'), max_eq_left (sub_nonneg.mpr h')]
    ring

/-- The complete mixed correlation survives squaring. -/
theorem signed_square (a b : ℝ) : (a - b)^2 = a^2 - 2*a*b + b^2 := by ring

/-- An exact absolute budget, optional after the signed identity. -/
theorem absolute_aggregate {ι : Type*} (S : Finset ι) (c A B : ι → ℝ)
    (hc : ∀ i ∈ S, |c i| ≤ 1) :
    |∑ i ∈ S, c i * (A i - B i)| ≤
      (∑ i ∈ S, A i - B i) + 2 * ∑ i ∈ S, max (B i - A i) 0 := by
  calc
    _ ≤ ∑ i ∈ S, |c i * (A i - B i)| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ i ∈ S, |A i - B i| := by
      apply Finset.sum_le_sum
      intro i hi
      rw [abs_mul]
      simpa only [one_mul] using
        mul_le_mul_of_nonneg_right (hc i hi) (abs_nonneg (A i - B i))
    _ = _ := by
      rw [Finset.mul_sum, ← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro i _
      by_cases h : B i ≤ A i
      · rw [abs_of_nonneg (sub_nonneg.mpr h), max_eq_right (sub_nonpos.mpr h)]
        ring
      · have h' := (lt_of_not_ge h).le
        rw [abs_of_nonpos (sub_nonpos.mpr h'), max_eq_left (sub_nonneg.mpr h')]
        ring

/-- A scalar hinge is the normalized causal response. -/
def hinge (a t : ℝ) : ℝ := max (a - t) 0

def twoHinge (a b t : ℝ) : ℝ :=
  hinge 1 t - hinge a t - hinge b t + hinge (a*b) t

/-- All five pieces, including their common boundary values. -/
theorem twoHinge_pieces (a b t : ℝ)
    (hb : 0 ≤ b) (hba : b ≤ a) (ha : a ≤ 1) :
    (t ≤ a*b → twoHinge a b t = (1-a)*(1-b)) ∧
    (a*b ≤ t → t ≤ b → twoHinge a b t = 1-a-b+t) ∧
    (b ≤ t → t ≤ a → twoHinge a b t = 1-a) ∧
    (a ≤ t → t ≤ 1 → twoHinge a b t = 1-t) ∧
    (1 ≤ t → twoHinge a b t = 0) := by
  have ha0 : 0 ≤ a := hb.trans hba
  have hb1 : b ≤ 1 := hba.trans ha
  have hab : a*b ≤ b := by nlinarith
  unfold twoHinge hinge
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · intro h
    rw [max_eq_left (by nlinarith), max_eq_left (by nlinarith),
      max_eq_left (by nlinarith), max_eq_left (by linarith)]
    ring
  · intro hl hh
    rw [max_eq_left (by linarith), max_eq_left (by linarith),
      max_eq_left (by linarith), max_eq_right (by linarith)]
    ring
  · intro hl hh
    rw [max_eq_left (by linarith), max_eq_left (by linarith),
      max_eq_right (by linarith), max_eq_right (by linarith)]
    ring
  · intro hl hh
    rw [max_eq_left (by linarith), max_eq_right (by linarith),
      max_eq_right (by linarith), max_eq_right (by linarith)]
    ring
  · intro h
    rw [max_eq_right (by linarith), max_eq_right (by linarith),
      max_eq_right (by linarith), max_eq_right (by linarith)]
    ring

theorem twoHinge_nonnegative (a b t : ℝ)
    (hb : 0 ≤ b) (hba : b ≤ a) (ha : a ≤ 1) : 0 ≤ twoHinge a b t := by
  obtain ⟨h0,h1,h2,h3,h4⟩ := twoHinge_pieces a b t hb hba ha
  have hab : 0 ≤ (1-a)*(1-b) := mul_nonneg (by linarith) (by linarith)
  by_cases ht0 : t ≤ a*b
  · rw [h0 ht0]; exact hab
  by_cases ht1 : t ≤ b
  · rw [h1 (le_of_not_ge ht0) ht1]; nlinarith
  by_cases ht2 : t ≤ a
  · rw [h2 (le_of_not_ge ht1) ht2]; linarith
  by_cases ht3 : t ≤ 1
  · rw [h3 (le_of_not_ge ht2) ht3]; linarith
  · rw [h4 (le_of_not_ge ht3)]
    exact le_rfl

/-- Closed positive prefixes; useful for source-weighted Abel estimates. -/
def prefix (a : ℕ → ℝ) (N : ℕ) : ℝ := ∑ n ∈ Finset.Icc 1 N, a n

theorem sum_closed_step (a : ℕ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 (N+1), a n) = (∑ n ∈ Finset.Icc 1 N, a n) + a (N+1) := by
  have hs : Finset.Icc 1 (N+1) = insert (N+1) (Finset.Icc 1 N) := by
    ext n; simp only [Finset.mem_Icc, Finset.mem_insert]; omega
  rw [hs, Finset.sum_insert (by simp)]
  ring

/-- Exact Abel identity including its terminal coefficient. -/
theorem abel (a w : ℕ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, a n * w n) =
      prefix a N * w (N+1) +
        ∑ n ∈ Finset.Icc 1 N, prefix a n * (w n - w (n+1)) := by
  induction N with
  | zero => simp [prefix]
  | succ N ih =>
      rw [sum_closed_step, sum_closed_step, ih]
      have hp : prefix a (N+1) = prefix a N + a (N+1) := sum_closed_step a N
      rw [hp]
      ring

theorem difference_sum (w : ℕ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, w n - w (n+1)) = w 1 - w (N+1) := by
  induction N with
  | zero => simp
  | succ N ih => rw [sum_closed_step, ih]; ring

/-- A common prefix anchor removes only a proved telescope, not the source boundary. -/
theorem abel_centered (a w : ℕ → ℝ) (N : ℕ) (center : ℝ)
    (hend : w (N+1)=0) :
    (∑ n ∈ Finset.Icc 1 N, a n*w n) = center*w 1 +
      ∑ n ∈ Finset.Icc 1 N, (prefix a n-center)*(w n-w (n+1)) := by
  rw [abel, hend, mul_zero, zero_add]
  simp only [sub_mul, Finset.sum_sub_distrib, ← Finset.mul_sum,
    difference_sum, hend, sub_zero]
  ring

/-- Exact target-dependent variation price with the original prefix correlations. -/
theorem abel_centered_error (a w : ℕ → ℝ) (N : ℕ) (center : ℝ)
    (hend : w (N+1)=0) :
    |(∑ n ∈ Finset.Icc 1 N, a n*w n)-center*w 1| ≤
      ∑ n ∈ Finset.Icc 1 N, |prefix a n-center|*|w n-w (n+1)| := by
  rw [abel_centered a w N center hend, add_sub_cancel_left]
  simpa only [abs_mul] using Finset.abs_sum_le_sum_abs
    (fun n => (prefix a n-center)*(w n-w (n+1))) (Finset.Icc 1 N)

/-- A prefix upper bound is used before estimating the positive causal weights. -/
theorem affine_prefix_bound (a w : ℕ → ℝ) (N : ℕ) (α B : ℝ)
    (hprefix : ∀ n ∈ Finset.Icc 1 N, prefix a n ≤ α*(n:ℝ)+B)
    (hmono : ∀ n ∈ Finset.Icc 1 N, 0 ≤ w n - w (n+1))
    (hend : w (N+1) = 0) :
    (∑ n ∈ Finset.Icc 1 N, a n*w n) ≤
      α*(∑ n ∈ Finset.Icc 1 N, w n) + B*w 1 := by
  rw [abel, hend, mul_zero, zero_add]
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 N, (α*(n:ℝ)+B)*(w n-w (n+1)) :=
      Finset.sum_le_sum (fun n hn => mul_le_mul_of_nonneg_right (hprefix n hn) (hmono n hn))
    _ = α*(∑ n ∈ Finset.Icc 1 N, (n:ℝ)*(w n-w (n+1))) +
        B*(∑ n ∈ Finset.Icc 1 N, w n-w (n+1)) := by
      simp only [add_mul, Finset.sum_add_distrib, Finset.mul_sum]
      congr 1
      apply Finset.sum_congr rfl
      intro n _
      ring
    _ = _ := by
      have h := abel (fun _ => (1:ℝ)) w N
      simp only [prefix, Finset.sum_const, Nat.card_Icc, Nat.add_sub_cancel,
        nsmul_eq_mul, mul_one, one_mul, hend, mul_zero, zero_add] at h
      rw [← h, difference_sum, hend, sub_zero]

end GRWTSK.Analysis.FiniteSums.PrimeBlockKernel
