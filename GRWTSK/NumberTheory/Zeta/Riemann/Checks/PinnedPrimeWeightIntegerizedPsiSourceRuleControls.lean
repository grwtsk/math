/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightIntegerizedPsiSourceRule
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightIntegerizedPsiSourceRuleControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Replay the exact integerized signed identity. -/
theorem concrete_integerized_identity
    (j : ℕ) {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    thetaError v =
      pinnedPrimeWeightIntegerPsiSourceRule.response j v /
          (dyadicScale j : ℝ) +
        pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v :=
  pinnedPrimeWeightIntegerPsiSourceRule.exactIdentity j v hv

/-- Replay the half-integer sawtooth removed from the nonlinear response. -/
theorem concrete_half_integer_sawtooth (j m : ℕ) :
    pinnedPrimeWeightPsiSourceRule.response j ((m : ℝ) + 1 / 2) =
      pinnedPrimeWeightIntegerPsiSourceRule.response j ((m : ℝ) + 1 / 2) -
        (dyadicScale j : ℝ) / 2 :=
  pinnedPrimeWeightPsiResponse_at_halfInteger j m

/-- Replay the exact integer/all-real equivalence for the integerized rule. -/
theorem concrete_integer_target_equivalence (C : ℝ) :
    PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C ↔
      PinnedPrimeWeightIntegerPsiRuleResponseCapacityWithBudget C :=
  pinnedPrimeWeightIntegerPsiCapacity_iff_ruleResponseCapacity C

/-- If the pinned amplitude vanishes, a claimed integer response bound forces
that selected integer psi error to vanish. -/
theorem zero_amplitude_integer_response_bound_forces_psiError_zero
    {j m : ℕ} {C : ℝ}
    (hA : pinnedPrimeWeightedAmplitude (dyadicScale j) = 0)
    (hbound :
      (dyadicScale j : ℝ) * |psiError (m : ℝ)| ≤
        C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2) :
    psiError (m : ℝ) = 0 := by
  have hzero : (dyadicScale j : ℝ) * |psiError (m : ℝ)| = 0 := by
    have hle : (dyadicScale j : ℝ) * |psiError (m : ℝ)| ≤ 0 := by
      simpa [hA] using hbound
    exact le_antisymm hle (by positivity)
  have hX : (dyadicScale j : ℝ) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt (dyadicScale_pos j)
  have habs : |psiError (m : ℝ)| = 0 :=
    (mul_eq_zero.mp hzero).resolve_left hX
  exact abs_eq_zero.mp habs

/-- Remaining source-specific obligations after integerization. -/
def remainingIntegerPsiObligations : List String :=
  ["prove one fixed C with X_j*abs(psiError(m)) <= C*A_X_j^2 on all late integer next-octave targets",
   "derive that coupling from an independent finite Selberg, explicit-formula, or equivalent arithmetic identity",
   "retain endpoint, normalization, smoothing, summation-order, and omitted-tail channels",
   "replay both the seven-eighths and three-quarters recurrence instances under the same source rule"]

/-- Explicit nonimplication boundary. -/
def prohibitedPromotions : List String :=
  ["moving the floor sawtooth into the residual -> integer psi capacity",
   "bounded floor correction -> nonlinear contraction",
   "Chebyshev upper bounds -> pinned-amplitude lower coupling",
   "integer-target equivalence -> proof of the integer estimate",
   "source metadata -> proof of the signed identity",
   "conditional integer-psi descent -> unconditional Riemann Hypothesis"]

/-! Additional controls and exact remaining obligations from issue #842,
branch head `5b8c3527a68ee53eb748eb4622159afbb9c49d5b`.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / NO_RH_CLAIM. -/

theorem concrete_integerized_psi_source_exact_identity
    (j : ℕ) {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    thetaError v =
      pinnedPrimeWeightIntegerPsiSourceRule.response j v /
          (dyadicScale j : ℝ) +
        pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v :=
  pinnedPrimeWeightIntegerPsiSourceRule.exactIdentity j v hv

theorem concrete_floor_correction_le_one
    {j : ℕ} {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    |(pinnedPrimeWeightPsiGridIndex v : ℝ) - v| ≤ 1 :=
  pinnedPrimeWeightPsiFloorCorrection_abs_le_one
    (pinnedPrimeWeightNextOctave_nonnegative hv)

theorem concrete_parent_pair_bounds_force_sawtooth_floor
    {j m : ℕ} {C A : ℝ}
    (hinteger :
      |pinnedPrimeWeightPsiSourceRule.response j (m : ℝ)| ≤ C * A^2)
    (hhalf :
      |pinnedPrimeWeightPsiSourceRule.response j ((m : ℝ) + 1 / 2)| ≤
        C * A^2) :
    (dyadicScale j : ℝ) ≤ 4 * C * A^2 :=
  pinnedPrimeWeightParentPsiPairBounds_force_sawtoothFloor hinteger hhalf

def remainingIntegerPsiSourceObligations : List String :=
  ["prove one fixed C and late stage with X_j*abs(psiError(m)) <= C*A_X_j^2 for every integer next-octave target",
   "derive the integer-target coupling from an independent finite arithmetic identity",
   "retain endpoint, normalization, smoothing, summation-order, and tail channels",
   "replay both live recurrence instances under the same immutable integerized rule"]

/-- Historical issue #842 nonimplications, retained alongside the main controls. -/
def branch842ProhibitedPromotions : List String :=
  ["moving the floor sawtooth into the residual -> integer psi capacity",
   "bounded floor residual -> nonlinear contraction",
   "Chebyshev upper bounds -> pinned-amplitude lower coupling",
   "integer-target equivalence -> unconditional recurrence",
   "target-fitted response -> independent arithmetic source",
   "source metadata -> proof of identity",
   "conditional descent -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightIntegerizedPsiSourceRuleControls
