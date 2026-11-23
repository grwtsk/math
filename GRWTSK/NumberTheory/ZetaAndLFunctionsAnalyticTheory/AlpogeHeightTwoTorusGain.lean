/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE — Lean 4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Elaboration, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/
import Mathlib.Tactic

/-!
# Height-two torus filtration: an RH-independent arithmetic source lemma

The adjacent AlpogeHeightTwoTorusGain.md independently proves that
the source's height-two logarithm, torus invariance and theta-integrality
hypothesis B4 imply the sharp valuation gain W(rho, 1/(ell-1))
WITHOUT the unramified coefficient-field hypothesis B1.

Original source consulted for direction:
  Levent Alpoge, A remark, 2026-11-20.
  leanprover-community/riemann-hypothesis
  @40e56bab026552e089d7afcfeff08d2defb9c005,
  formal GenLogWeight / GenLogInverse / ExpDelnv / BHyp.
  Rubinstein et al., 2026-11-21 working exposition, III.5,
  Lemmas 1-3, and the remark after Theorem J.

This Lean module proves ONLY the elementary torus-degree and
nonarchimedean weight BUDGET arithmetic. It does not formalize
the inverse of the multivariable logarithm, an actual theta kernel,
the B4 integrality hypothesis, the full filtered composition theorem,
or global Alpoge (M). Those are distinct proof obligations.
No RH theorem, positivity axiom or external conclusion imported.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AlpogeHeightTwoTorusGain

/-- A nonconstant monomial with total degree divisible by ell+1
has degree AT LEAST ell+1. The torus invariance that supplies
the divisibility for the actual height-two source is proved
analytically in the adjacent note, not imported as a Lean axiom. -/
theorem torus_degree_minimum (ell degree : ℕ)
    (hpositive : 0 < degree) (hdiv : ell + 1 ∣ degree) :
    ell + 1 ≤ degree :=
  Nat.le_of_dvd hpositive hdiv

/-- The exact weight conversion: (ell+1)*rho=1/(ell-1),
rho=1/(ell^2-1). No field-discreteness premise. -/
theorem torus_weight_identity (ell : ℝ) (hell : 1 < ell) :
    (ell + 1) / (ell ^ 2 - 1) = 1 / (ell - 1) := by
  have hm : ell - 1 ≠ 0 := ne_of_gt (by linarith)
  have hp : ell + 1 ≠ 0 := ne_of_gt (by linarith)
  have hd : ell ^ 2 - 1 ≠ 0 := ne_of_gt (by nlinarith)
  field_simp [hm, hp, hd]
  ring

/-- The exact degree-filter inequality for a full torus-invariant
nonconstant coefficient. This is the key scalar budget used by
substitution of the height-two inverse-logarithm series. -/
theorem invariant_degree_weight_gain
    (ell degree : ℕ) (hell : 2 ≤ ell)
    (hpositive : 0 < degree) (hdiv : ell + 1 ∣ degree) :
    (1 : ℝ) / ((ell : ℝ) - 1) ≤
      (degree : ℝ) / ((ell : ℝ) ^ 2 - 1) := by
  have hmin := torus_degree_minimum ell degree hpositive hdiv
  have hreal : (1 : ℝ) < (ell : ℝ) := by
    exact_mod_cast (show 1 < ell by omega)
  have hdeg : (ell : ℝ) + 1 ≤ (degree : ℝ) := by
    exact_mod_cast hmin
  have h1 : 0 < (ell : ℝ) - 1 := by linarith
  have h2 : 0 < (ell : ℝ) ^ 2 - 1 := by nlinarith
  have hprod := mul_le_mul_of_nonneg_left hdeg h1.le
  have hcross : (1 : ℝ) * ((ell : ℝ) ^ 2 - 1) ≤
      (degree : ℝ) * ((ell : ℝ) - 1) := by
    nlinarith [hprod]
  exact (div_le_div_iff₀ h1 h2).2 hcross

/-- The exponent e is paid by the geometric p^{2j} sum.
In the full inverse formal logarithm this exactly pays the
nonarchimedean valuation loss from the ell^{-e} coefficient. -/
theorem height_two_exponent_budget (ell e : ℕ) (hell : 0 < ell) :
    e ≤ ∑ j ∈ Finset.range e, ell ^ (2 * j) := by
  calc
    e = ∑ j ∈ Finset.range e, (1 : ℕ) := by simp
    _ ≤ ∑ j ∈ Finset.range e, ell ^ (2 * j) := by
      apply Finset.sum_le_sum
      intro j hj
      have hpow : 0 < ell ^ (2 * j) := pow_pos hell _
      omega

end GRWTSK.NumberTheory.AlpogeHeightTwoTorusGain
