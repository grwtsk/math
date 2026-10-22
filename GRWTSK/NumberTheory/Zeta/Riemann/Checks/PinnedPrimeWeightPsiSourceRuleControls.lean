/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightPsiSourceRule
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightPsiSourceRuleControls

open Chebyshev
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Concrete replay of the exact psi/theta signed decomposition. -/
theorem concrete_psi_source_exact_identity
    (j : ℕ) {v : ℝ}
    (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    thetaError v =
      pinnedPrimeWeightPsiSourceRule.response j v /
          (dyadicScale j : ℝ) +
        pinnedPrimeWeightPsiSourceRule.signedResidual j v :=
  pinnedPrimeWeightPsiSourceRule.exactIdentity j v hv

/-- The remaining pointwise response bound is literally the stage-scaled psi
error inequality, not an unnamed coefficient premise. -/
theorem concrete_psi_response_bound_iff
    (j : ℕ) (C v : ℝ) :
    |pinnedPrimeWeightPsiSourceRule.response j v| ≤
        C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2 ↔
      (dyadicScale j : ℝ) * |psiError v| ≤
        C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2 :=
  pinnedPrimeWeightPsiSourceRule_response_bound_iff j C v

/-- Replay of the complete higher-prime-power residual bound at the first live
threshold. -/
theorem concrete_psi_residual_sevenEighths
    {η : ℝ} (hη : 0 < η) :
    ∃ R : ℝ, 0 ≤ R ∧
      ∀ j : ℕ, ∀ v ∈ pinnedPrimeWeightNextOctave j,
        |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 ≤
          R * Real.rpow (dyadicScale j : ℝ)
            ((3 : ℝ) / 4 + η / 2) :=
  pinnedPrimeWeightPsiSourceRule_signedResidual_sevenEighths hη

/-- Replay of the complete higher-prime-power residual bound at the second live
threshold. -/
theorem concrete_psi_residual_threeQuarters
    {η : ℝ} (hη : 0 < η) :
    ∃ R : ℝ, 0 ≤ R ∧
      ∀ j : ℕ, ∀ v ∈ pinnedPrimeWeightNextOctave j,
        |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 ≤
          R * Real.rpow (dyadicScale j : ℝ)
            ((1 : ℝ) / 2 + η / 2) :=
  pinnedPrimeWeightPsiSourceRule_signedResidual_threeQuarters hη

/-- Hostile zero-amplitude control.  At positive dyadic scale, totalized real
division cannot turn a vanishing source amplitude into a response certificate:
a claimed quadratic response bound then forces the psi error itself to vanish. -/
theorem zero_amplitude_response_bound_forces_psiError_zero
    {j : ℕ} {C v : ℝ}
    (hA : pinnedPrimeWeightedAmplitude (dyadicScale j) = 0)
    (hbound :
      |pinnedPrimeWeightPsiSourceRule.response j v| ≤
        C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2) :
    psiError v = 0 := by
  have hboundZero :
      |pinnedPrimeWeightPsiSourceRule.response j v| ≤ 0 := by
    simpa [hA] using hbound
  have habsZero :
      |pinnedPrimeWeightPsiSourceRule.response j v| = 0 :=
    le_antisymm hboundZero
      (abs_nonneg (pinnedPrimeWeightPsiSourceRule.response j v))
  have hresponseZero :
      pinnedPrimeWeightPsiSourceRule.response j v = 0 :=
    abs_eq_zero.mp habsZero
  rw [pinnedPrimeWeightPsiSourceRule_response] at hresponseZero
  have hX : (dyadicScale j : ℝ) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt (dyadicScale_pos j)
  exact (mul_eq_zero.mp hresponseZero).resolve_left hX

/-- The psi response agrees with the target-fitted theta response exactly when
the higher-prime-power correction vanishes.  This prevents the canonical psi
rule from being silently replaced by the hostile target-fitted fixture. -/
theorem psi_response_eq_targetFitted_iff_psi_eq_theta
    (j : ℕ) (v : ℝ) :
    pinnedPrimeWeightPsiSourceRule.response j v =
        (dyadicScale j : ℝ) * thetaError v ↔
      ψ v = θ v := by
  rw [pinnedPrimeWeightPsiSourceRule_response]
  constructor
  · intro h
    have hX : (dyadicScale j : ℝ) ≠ 0 := by
      exact_mod_cast Nat.ne_of_gt (dyadicScale_pos j)
    have herrors : psiError v = thetaError v := by
      exact mul_left_cancel₀ hX h
    unfold psiError thetaError at herrors
    linarith
  · intro h
    simpa [psiError, thetaError, h]

/-- Exact obligations remaining after the higher-prime-power residual has been
discharged. -/
def remainingPsiSourceObligations : List String :=
  ["prove one fixed C and late stage with X_j*abs(psiError(v)) <= C*A_X_j^2 for every next-octave target",
   "derive that nonlinear response bound from an independent arithmetic source rather than from thetaError itself",
   "retain the full von Mangoldt prime-power channel and the current-octave pinned amplitude",
   "audit endpoint, normalization, smoothing, and summation-order channels in any explicit-formula derivation",
   "replay both the seven-eighths and three-quarters recurrence instances under the same immutable source rule"]

/-- Explicit nonimplications and hostile-source boundaries. -/
def prohibitedPromotions : List String :=
  ["exact psi/theta decomposition -> quadratic psi response capacity",
   "O(sqrt(v)) higher-prime-power residual -> nonlinear cross-scale contraction",
   "global Chebyshev upper bounds -> pinned-amplitude lower coupling",
   "psi source metadata -> proof of the exact identity",
   "psi response replaced by X*thetaError -> source-faithful construction",
   "zero amplitude plus totalized division -> finite response certificate",
   "source-specific conditional endpoint -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightPsiSourceRuleControls
