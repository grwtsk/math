/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightIntegerizedPsiSourceRule
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightIntegerizedPsiSourceRuleControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Replay the exact integerized signed identity. -/
theorem concrete_integerized_psi_source_exact_identity
    (j : ℕ) {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    thetaError v =
      pinnedPrimeWeightIntegerPsiSourceRule.response j v /
          (dyadicScale j : ℝ) +
        pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v :=
  pinnedPrimeWeightIntegerPsiSourceRule.exactIdentity j v hv

/-- The complete floor correction has magnitude at most one. -/
theorem concrete_floor_correction_le_one
    {j : ℕ} {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    |(pinnedPrimeWeightPsiGridIndex v : ℝ) - v| ≤ 1 :=
  pinnedPrimeWeightPsiFloorCorrection_abs_le_one
    (pinnedPrimeWeightNextOctave_nonnegative hv)

/-- The parent response contains exactly `-X/2` at a half-integer. -/
theorem concrete_half_integer_sawtooth (j m : ℕ) :
    pinnedPrimeWeightPsiSourceRule.response j ((m : ℝ) + 1 / 2) =
      pinnedPrimeWeightIntegerPsiSourceRule.response j ((m : ℝ) + 1 / 2) -
        (dyadicScale j : ℝ) / 2 :=
  pinnedPrimeWeightPsiResponse_at_halfInteger j m

/-- Adjacent parent bounds force the deterministic square-amplitude floor. -/
theorem concrete_parent_pair_bounds_force_sawtooth_floor
    {j m : ℕ} {C A : ℝ}
    (hinteger :
      |pinnedPrimeWeightPsiSourceRule.response j (m : ℝ)| ≤ C * A^2)
    (hhalf :
      |pinnedPrimeWeightPsiSourceRule.response j ((m : ℝ) + 1 / 2)| ≤
        C * A^2) :
    (dyadicScale j : ℝ) ≤ 4 * C * A^2 :=
  pinnedPrimeWeightParentPsiPairBounds_force_sawtoothFloor hinteger hhalf

/-- The real-target rule condition is exactly the integer-grid condition. -/
theorem concrete_integer_target_equivalence (C : ℝ) :
    PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C ↔
      PinnedPrimeWeightIntegerPsiRuleResponseCapacityWithBudget C :=
  pinnedPrimeWeightIntegerPsiCapacity_iff_ruleResponseCapacity C

/-- Zero current amplitude plus a claimed response bound forces the selected
integer psi error to vanish. -/
theorem zero_amplitude_integer_response_bound_forces_psiError_zero
    {j m : ℕ} {C : ℝ}
    (hA : pinnedPrimeWeightedAmplitude (dyadicScale j) = 0)
    (hbound :
      (dyadicScale j : ℝ) * |psiError (m : ℝ)| ≤
        C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2) :
    psiError (m : ℝ) = 0 := by
  have hzero : (dyadicScale j : ℝ) * |psiError (m : ℝ)| ≤ 0 := by
    simpa [hA] using hbound
  have hprod : (dyadicScale j : ℝ) * |psiError (m : ℝ)| = 0 :=
    le_antisymm hzero (by positivity)
  have hX : (dyadicScale j : ℝ) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt (dyadicScale_pos j)
  exact abs_eq_zero.mp ((mul_eq_zero.mp hprod).resolve_left hX)

/-- Exact obligations remaining after integerization. -/
def remainingIntegerPsiSourceObligations : List String :=
  ["prove one fixed C and late stage with X_j*abs(psiError(m)) <= C*A_X_j^2 for every integer next-octave target",
   "derive the integer-target coupling from an independent finite arithmetic identity",
   "retain endpoint, normalization, smoothing, summation-order, and tail channels",
   "replay both live recurrence instances under the same immutable integerized rule"]

/-- Explicit nonimplications. -/
def prohibitedPromotions : List String :=
  ["moving the floor sawtooth into the residual -> integer psi capacity",
   "bounded floor residual -> nonlinear contraction",
   "Chebyshev upper bounds -> pinned-amplitude lower coupling",
   "integer-target equivalence -> unconditional recurrence",
   "target-fitted response -> independent arithmetic source",
   "source metadata -> proof of identity",
   "conditional descent -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightIntegerizedPsiSourceRuleControls
