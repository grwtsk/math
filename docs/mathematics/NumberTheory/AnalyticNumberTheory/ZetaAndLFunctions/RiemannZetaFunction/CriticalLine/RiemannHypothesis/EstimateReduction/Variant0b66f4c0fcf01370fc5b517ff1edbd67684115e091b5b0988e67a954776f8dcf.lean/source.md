# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EstimateReduction.Variant0b66f4c0fcf01370fc5b517ff1edbd67684115e091b5b0988e67a954776f8dcf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20995670f62c76c9b819275fff9d34eb84c2a2db` · SHA-256 `0b66f4c0fcf01370fc5b517ff1edbd67684115e091b5b0988e67a954776f8dcf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly

/-!
# Exact reduction of the RH estimate to the signed pairing

The analytic correction in the source identity is now uniformly bounded below.
Therefore the exact all-scale estimate target reduces to one signed arithmetic
statement for the unchanged prime-power pairing.

This module does not prove that signed pairing estimate.  It records the exact
remaining obstruction without replacing the signed term by an absolute-value
envelope, finite sample, or scale-dependent constant.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction

open FormalResearch.RiemannHypothesis.SourcePairing
open CorrelationAssembly

noncomputable section

/-- The remaining arithmetic estimate, on the actual signed pairing and exact
explicit derivative family. -/
def SignedPairingUniformLowerBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ A : ℝ, 1 ≤ A →
      -C ≤ signedPairing Realization.explicitSecondDerivative A

/-- The exact signed pairing estimate implies the repository's all-scale
quadratic lower-bound target. -/
theorem estimate_of_signed_pairing_uniform_lower_bound
    (h : SignedPairingUniformLowerBound) :
    EstimateObligation := by
  obtain ⟨C, hC, hpair⟩ := h
  let D : ℝ :=
    max 0 (6 * Real.sqrt 2 - archimedeanMultiplier 0)
  have hD : 0 ≤ D := le_max_left _ _
  have hDlarge :
      6 * Real.sqrt 2 - archimedeanMultiplier 0 ≤ D :=
    le_max_right _ _
  refine ⟨-(2 * C + D), ?_⟩
  intro A hA
  have hcorr :=
    SourceCorrectionEstimate.actual_correction_lower A hA
  have hp := hpair A hA
  rw [source_arithmetic_representation A hA]
  nlinarith

/-- The exact target is therefore discharged as soon as the remaining signed
pairing statement is proved; no other estimate premise is needed. -/
theorem estimate_obligation_iff_signed_pairing_sufficient :
    SignedPairingUniformLowerBound →
      EstimateObligation :=
  estimate_of_signed_pairing_uniform_lower_bound

/-- Current exact estimate checkpoint: the analytic half is unconditional and
the remaining arithmetic statement is named explicitly. -/
def EstimateReductionCheckpoint : Prop :=
  (∀ A : ℝ, 1 ≤ A →
    archimedeanMultiplier 0 - 6 * Real.sqrt 2 ≤
      analyticCorrection Realization.explicitSecondDerivative A) ∧
  (SignedPairingUniformLowerBound → EstimateObligation)

theorem estimate_reduction_checkpoint :
    EstimateReductionCheckpoint :=
  ⟨SourceCorrectionEstimate.actual_correction_lower,
    estimate_of_signed_pairing_uniform_lower_bound⟩

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction
```
