/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.FiniteReciprocalPolynomial
import Mathlib.Analysis.Calculus.FDeriv.Add
import Mathlib.Analysis.Calculus.FDeriv.Mul
import Mathlib.Tactic.Positivity

/-!
# Explicit universal geometric-product residual certificates

For P(t) = product_i (1 - a_i*t), construct U_m(t) as the product of
1 + a_i*t + ... + (a_i*t)^(m-1). No inverse of P occurs in the construction.
The exact identity is P*U_m = product_i (1 - (a_i*t)^m).

At level n put r=(n+1)/(n+2), d=length(a), and m=(n+2)*(d+2).
If every |a_i*t| <= r, the residual is at most 1/4 and |U_m| <= (n+2)^d.
Thus one explicit natural-valued schedule works for every degree and every
finite list, retaining repeated factors and the empty product. It has no root
separation or nonvanishing premise. A coefficient contraction bound is the
substantive input; spectral purity will supply it in the next module.

Primary proof: induction gives r^k*(1+k*(1-r)) <= 1, hence r^(n+2)<=1/2.
A telescoping product bound gives (2^d-1)*r^m <= 1/4. The independent scalar
check at a*t=1 shows why the boundary cannot be included. Existing complete
residual and Newton identities return nonvanishing, margins and refinement.

Reuse: FiniteReciprocalPolynomial, MultiplicativeResidual and ReciprocalStability, math source
0908f8d055bb6fec87d0685b5582fd473b5fd565; unchanged Mathlib pin
 d13f23b723b8a846827a245b89c10fc7d3f11612.
Elementary finite algebra/inequalities; novelty and independent review not
assessed. AI-assisted formalization. Compilation, fresh kernel checking and
transitive axiom audit: NOT_RUN. These are not interval-arithmetic executions.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.GeometricProduct

open GRWTSK.Analysis.Division

/-- A finite geometric sum, implemented without division. -/
def geometric (x : ℂ) : ℕ → ℂ
  | 0 => 0
  | m + 1 => 1 + x * geometric x m

/-- Lists retain multiplicity, including coincident reciprocal roots. -/
def factorProduct : List ℂ → ℂ → ℂ
  | [], _ => 1
  | a :: as, z => (1 - a * z) * factorProduct as z

/-- The explicitly constructed polynomial approximate inverse. -/
def approximate : List ℂ → ℕ → ℂ → ℂ
  | [], _, _ => 1
  | a :: as, m, z => geometric (a * z) m * approximate as m z

theorem geometric_identity (x : ℂ) (m : ℕ) :
    (1 - x) * geometric x m = 1 - x ^ m := by
  induction m with
  | zero => simp [geometric]
  | succ m ih =>
    calc
      (1 - x) * geometric x (m + 1) = (1 - x) + x * ((1 - x) * geometric x m) := by
        simp only [geometric]
        ring
      _ = (1 - x) + x * (1 - x ^ m) := by rw [ih]
      _ = 1 - x ^ (m + 1) := by rw [pow_succ]; ring

/-- The recursive polynomial has the alternate finite-sum recurrence. -/
theorem geometric_succ_add (x : ℂ) (m : ℕ) :
    geometric x (m + 1) = geometric x m + x ^ m := by
  calc
    geometric x (m + 1) = 1 + x * geometric x m := rfl
    _ = (1 - x) * geometric x m + x ^ m + x * geometric x m := by
      rw [geometric_identity]
      ring
    _ = geometric x m + x ^ m := by ring

/-- Exact adapter to the repository's existing finite inverse, with seed one. -/
theorem geometric_eq_finiteInverse (x : ℂ) (m : ℕ) :
    geometric x m = FiniteInverse.polynomial (1 - x) 1 m := by
  induction m with
  | zero => simp [geometric, FiniteInverse.polynomial]
  | succ m ih =>
    rw [geometric_succ_add, FiniteInverse.polynomial_succ, ih]
    simp

/-- Exact complete residual identity, valid even at a zero of the target. -/
theorem product_approximate (as : List ℂ) (m : ℕ) (z : ℂ) :
    factorProduct as z * approximate as m z =
      factorProduct (as.map (fun a => a ^ m)) (z ^ m) := by
  induction as with
  | nil => simp [factorProduct, approximate]
  | cons a as ih =>
    calc
      factorProduct (a :: as) z * approximate (a :: as) m z =
          ((1 - a * z) * geometric (a * z) m) *
            (factorProduct as z * approximate as m z) := by
        simp only [factorProduct, approximate]
        ring
      _ = (1 - (a * z) ^ m) * factorProduct (as.map (fun a => a ^ m)) (z ^ m) := by
        rw [geometric_identity, ih]
      _ = _ := by simp [factorProduct, mul_pow]

/-- A robust finite-product bound with a uniform factor budget at most one. -/
theorem product_sub_one_bound (as : List ℂ) (z : ℂ) {t : ℝ}
    (ht0 : 0 ≤ t) (ht1 : t ≤ 1) (h : ∀ a ∈ as, ‖a * z‖ ≤ t) :
    ‖factorProduct as z - 1‖ ≤ ((2 : ℝ) ^ as.length - 1) * t := by
  revert h
  induction as with
  | nil => intro h; simp [factorProduct]
  | cons a as ih =>
    intro h
    have ha := h a (by simp)
    have hs : ∀ b ∈ as, ‖b * z‖ ≤ t := fun b hb => h b (by simp [hb])
    have hb : ‖1 - a * z‖ ≤ 2 := by
      have triangle := norm_sub_le (1 : ℂ) (a * z)
      simp only [norm_one] at triangle
      linarith
    have ih' := ih hs
    calc
      ‖factorProduct (a :: as) z - 1‖ =
          ‖(1 - a * z) * (factorProduct as z - 1) - a * z‖ := by
        congr 1
        simp only [factorProduct]
        ring
      _ ≤ ‖(1 - a * z) * (factorProduct as z - 1)‖ + ‖a * z‖ := norm_sub_le _ _
      _ = ‖1 - a * z‖ * ‖factorProduct as z - 1‖ + ‖a * z‖ := by rw [norm_mul]
      _ ≤ 2 * (((2 : ℝ) ^ as.length - 1) * t) + t :=
        add_le_add (mul_le_mul hb ih' (norm_nonneg _) (by norm_num)) ha
      _ = ((2 : ℝ) ^ (a :: as).length - 1) * t := by
        simp only [List.length_cons, pow_succ]
        ring

/-- No loss terms are discarded when the geometric factors are multiplied. -/
theorem residual_bound (as : List ℂ) (m : ℕ) (z : ℂ) {r : ℝ}
    (hr0 : 0 ≤ r) (hr1 : r ≤ 1) (h : ∀ a ∈ as, ‖a * z‖ ≤ r) :
    ‖residual (factorProduct as z) (approximate as m z) 1‖ ≤
      ((2 : ℝ) ^ as.length - 1) * r ^ m := by
  have hrm : r ^ m ≤ 1 := by
    simpa using pow_le_pow_left₀ hr0 hr1 m
  have hp : ∀ b ∈ as.map (fun a => a ^ m), ‖b * z ^ m‖ ≤ r ^ m := by
    intro b hb
    obtain ⟨a, ha, rfl⟩ := List.mem_map.mp hb
    rw [← mul_pow, norm_pow]
    exact pow_le_pow_left₀ (norm_nonneg _) (h a ha) m
  change ‖factorProduct as z * approximate as m z - 1‖ ≤ _
  rw [product_approximate]
  simpa only [List.length_map] using
    product_sub_one_bound (as.map (fun a => a ^ m)) (z ^ m) (pow_nonneg hr0 m) hrm hp

/-- A quantitative Bernoulli estimate proved without logarithms or limits. -/
theorem pow_linear_bound {r : ℝ} (hr0 : 0 ≤ r) (hr1 : r ≤ 1) (k : ℕ) :
    r ^ k * (1 + (k : ℝ) * (1 - r)) ≤ 1 := by
  induction k with
  | zero => simp
  | succ k ih =>
    have nonnegative : 0 ≤ ((k : ℝ) + 1) * (1 - r) ^ 2 :=
      mul_nonneg (by positivity) (sq_nonneg _)
    have step : r * (1 + ((k + 1 : ℕ) : ℝ) * (1 - r)) ≤
        1 + (k : ℝ) * (1 - r) := by
      push_cast
      nlinarith
    calc
      r ^ (k + 1) * (1 + ((k + 1 : ℕ) : ℝ) * (1 - r)) =
          r ^ k * (r * (1 + ((k + 1 : ℕ) : ℝ) * (1 - r))) := by
        rw [pow_succ]
        ring
      _ ≤ r ^ k * (1 + (k : ℝ) * (1 - r)) :=
        mul_le_mul_of_nonneg_left step (pow_nonneg hr0 k)
      _ ≤ 1 := ih

def ratio (n : ℕ) : ℝ := ((n : ℝ) + 1) / ((n : ℝ) + 2)

def truncation (n d : ℕ) : ℕ := (n + 2) * (d + 2)

def familyApproximation (as : List ℂ) (n : ℕ) (z : ℂ) : ℂ :=
  approximate as (truncation n as.length) z

theorem ratio_nonneg (n : ℕ) : 0 ≤ ratio n := by unfold ratio; positivity

theorem ratio_pos (n : ℕ) : 0 < ratio n := by unfold ratio; positivity

theorem ratio_lt_one (n : ℕ) : ratio n < 1 := by
  unfold ratio
  apply (div_lt_one (by positivity)).mpr
  linarith

theorem ratio_block_bound (n : ℕ) : ratio n ^ (n + 2) ≤ (1 / 2 : ℝ) := by
  have h := pow_linear_bound (ratio_nonneg n) (ratio_lt_one n).le (n + 2)
  have hlinear : 1 + ((n + 2 : ℕ) : ℝ) * (1 - ratio n) = 2 := by
    simp only [Nat.cast_add, Nat.cast_ofNat]
    unfold ratio
    have hden : (n : ℝ) + 2 ≠ 0 := ne_of_gt (by positivity)
    field_simp [hden]
    <;> ring
  rw [hlinear] at h
  linarith

/-- The exponent is given by arithmetic, not by choice of an unknown successful test. -/
theorem scheduled_power_bound (n d : ℕ) :
    (2 : ℝ) ^ d * ratio n ^ truncation n d ≤ 1 / 4 := by
  have h : ratio n ^ truncation n d ≤ (1 / 2 : ℝ) ^ (d + 2) := by
    unfold truncation
    rw [pow_mul]
    exact pow_le_pow_left₀ (pow_nonneg (ratio_nonneg n) _) (ratio_block_bound n) _
  have exactBudget : (2 : ℝ) ^ d * (1 / 2 : ℝ) ^ (d + 2) = 1 / 4 := by
    rw [pow_add, div_pow, one_pow]
    have htwo : (2 : ℝ) ^ d ≠ 0 := pow_ne_zero _ (by norm_num)
    field_simp [htwo]
    <;> ring
  exact (mul_le_mul_of_nonneg_left h (by positivity)).trans_eq exactBudget

/-- A universal strict certificate, including degree zero and repeated factors. -/
theorem family_residual (as : List ℂ) (n : ℕ) (z : ℂ)
    (contractive : ∀ a ∈ as, ‖a * z‖ ≤ ratio n) :
    ‖residual (factorProduct as z) (familyApproximation as n z) 1‖ ≤ 1 / 4 := by
  have h := residual_bound as (truncation n as.length) z
    (ratio_nonneg n) (ratio_lt_one n).le contractive
  apply h.trans
  calc
    ((2 : ℝ) ^ as.length - 1) * ratio n ^ truncation n as.length ≤
        (2 : ℝ) ^ as.length * ratio n ^ truncation n as.length :=
      mul_le_mul_of_nonneg_right (by linarith) (pow_nonneg (ratio_nonneg n) _)
    _ ≤ 1 / 4 := scheduled_power_bound n as.length

theorem geometric_size (n m : ℕ) {x : ℂ} (hx : ‖x‖ ≤ ratio n) :
    ‖geometric x m‖ ≤ (n : ℝ) + 2 := by
  rw [geometric_eq_finiteInverse]
  have seed : ‖1 - (1 - x) * 1‖ ≤ ratio n := by simpa using hx
  have exactMass : 1 / (1 - ratio n) = (n : ℝ) + 2 := by
    apply (div_eq_iff (ne_of_gt (sub_pos.mpr (ratio_lt_one n)))).mpr
    unfold ratio
    have hden : (n : ℝ) + 2 ≠ 0 := ne_of_gt (by positivity)
    field_simp [hden]
    <;> ring
  calc
    ‖FiniteInverse.polynomial (1 - x) 1 m‖ ≤ FiniteInverse.mass (ratio n) m := by
      simpa only [norm_one, one_mul] using FiniteInverse.polynomial_norm_le seed m
    _ ≤ 1 / (1 - ratio n) := FiniteInverse.mass_le (ratio_nonneg n) (ratio_lt_one n) m
    _ = _ := exactMass

theorem approximate_size (as : List ℂ) (n m : ℕ) (z : ℂ)
    (contractive : ∀ a ∈ as, ‖a * z‖ ≤ ratio n) :
    ‖approximate as m z‖ ≤ ((n : ℝ) + 2) ^ as.length := by
  revert contractive
  induction as with
  | nil => intro contractive; simp [approximate]
  | cons a as ih =>
    intro contractive
    have ha := geometric_size n m (contractive a (by simp))
    have hs := ih (fun b hb => contractive b (by simp [hb]))
    simp only [approximate, norm_mul, List.length_cons]
    exact (mul_le_mul ha hs (norm_nonneg _) (by positivity)).trans_eq (by ring)

/-- A quantitative margin is derived from the explicit polynomial, not postulated. -/
theorem family_margin (as : List ℂ) (n : ℕ) (z : ℂ)
    (contractive : ∀ a ∈ as, ‖a * z‖ ≤ ratio n) :
    (1 - (1 / 4 : ℝ)) / (((n : ℝ) + 2) ^ as.length) ≤ ‖factorProduct as z‖ :=
  unit_residual_margin (by positivity)
    (approximate_size as n (truncation n as.length) z contractive)
    (family_residual as n z contractive)

/-- Existing Newton refinement can refine every member of the constructed family. -/
theorem refined_family_residual (as : List ℂ) (n k : ℕ) (z : ℂ)
    (contractive : ∀ a ∈ as, ‖a * z‖ ≤ ratio n) :
    ‖residual (factorProduct as z)
      (newtonIter (factorProduct as z) (familyApproximation as n z) k) 1‖ ≤
      (1 / 4 : ℝ) ^ (2 ^ k) := by
  rw [newtonIter_residual_norm]
  exact pow_le_pow_left₀ (norm_nonneg _) (family_residual as n z contractive) _

theorem differentiable_geometric (a : ℂ) (m : ℕ) :
    Differentiable ℂ (fun z => geometric (a * z) m) := by
  induction m with
  | zero => simpa only [geometric] using (differentiable_const (0 : ℂ))
  | succ m ih =>
    change Differentiable ℂ (fun z => 1 + a * z * geometric (a * z) m)
    fun_prop

theorem differentiable_product (as : List ℂ) : Differentiable ℂ (factorProduct as) := by
  induction as with
  | nil => exact differentiable_const (1 : ℂ)
  | cons a as ih =>
    exact ((differentiable_const (1 : ℂ)).sub
      ((differentiable_const a).mul differentiable_id)).mul ih

theorem differentiable_approximate (as : List ℂ) (m : ℕ) :
    Differentiable ℂ (approximate as m) := by
  induction as with
  | nil => exact differentiable_const (1 : ℂ)
  | cons a as ih => exact (differentiable_geometric a m).mul ih

/-- The boundary obstruction is exact at every truncation order. -/
theorem boundary_zero_barrier (m : ℕ) :
    ‖residual (factorProduct [1] 1) (approximate [1] m 1) 1‖ = 1 := by
  simp [factorProduct, Division.residual]

end GRWTSK.Analysis.GeometricProduct
