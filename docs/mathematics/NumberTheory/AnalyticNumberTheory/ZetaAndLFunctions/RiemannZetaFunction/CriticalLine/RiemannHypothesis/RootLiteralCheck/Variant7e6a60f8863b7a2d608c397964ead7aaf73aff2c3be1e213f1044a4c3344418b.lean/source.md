# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootLiteralCheck.Variant7e6a60f8863b7a2d608c397964ead7aaf73aff2c3be1e213f1044a4c3344418b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d37f3166e219e5055db75d564b751ca2501c2d1` · SHA-256 `7e6a60f8863b7a2d608c397964ead7aaf73aff2c3be1e213f1044a4c3344418b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerEnergy
import FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerPoleConstraint

open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential PositiveResolvent HalfLineOperator SourceResolventTruncation

example : ∀ (T : H →L[ℂ] H) (α : ℝ) (r q : H),
    SourceControllerEnergy.trackingEnergy T α r q = ‖r - T q‖ ^ 2 + α * ‖q‖ ^ 2 := by
  intros; rfl
example : ∀ (T : H →L[ℂ] H) (α : ℝ) (r : H),
    SourceControllerEnergy.canonicalController T α r =
      T.adjoint (positiveResolvent (T.comp T.adjoint) α r) := by
  intros; rfl
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r : H,
    r - T (SourceControllerEnergy.canonicalController T α r) =
      (α : ℂ) • positiveResolvent (T.comp T.adjoint) α r :=
  SourceControllerEnergy.canonical_residual
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r : H,
    SourceControllerEnergy.trackingEnergy T α r
      (SourceControllerEnergy.canonicalController T α r) =
      regularizedMass (T.comp T.adjoint) α r := SourceControllerEnergy.canonical_energy
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r w : H,
    (inner ℂ (r - T (SourceControllerEnergy.canonicalController T α r)) (T w)).re =
      α * (inner ℂ (SourceControllerEnergy.canonicalController T α r) w).re :=
  SourceControllerEnergy.canonical_cross_term
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r w : H,
    SourceControllerEnergy.trackingEnergy T α r
      (SourceControllerEnergy.canonicalController T α r + w) =
        regularizedMass (T.comp T.adjoint) α r + ‖T w‖ ^ 2 + α * ‖w‖ ^ 2 :=
  SourceControllerEnergy.trackingEnergy_translate_canonical
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r q : H,
    regularizedMass (T.comp T.adjoint) α r ≤
      SourceControllerEnergy.trackingEnergy T α r q :=
  SourceControllerEnergy.regularizedMass_le_trackingEnergy
example : ∀ α : ℝ, 0 < α → ∀ q : H,
    sourceMass α ≤ ‖referenceVector - sourceOperator q‖ ^ 2 + α * ‖q‖ ^ 2 :=
  SourceControllerEnergy.sourceMass_le_full_energy
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r : H,
    IsLeast (Set.range (SourceControllerEnergy.trackingEnergy T α r))
      (regularizedMass (T.comp T.adjoint) α r) := SourceControllerEnergy.isLeast_trackingEnergy
example : ∀ α : ℝ, 0 < α →
    IsLeast (Set.range (fun q : H =>
      ‖referenceVector - sourceOperator q‖ ^ 2 + α * ‖q‖ ^ 2)) (sourceMass α) :=
  SourceControllerEnergy.sourceMass_isLeast_full_energy
example : ∀ N α : ℝ, 0 < α → ∀ q : H,
    truncatedMass N α ≤ ‖referenceVector - TimeKernelTruncation.truncatedOperator N q‖ ^ 2 +
      α * ‖q‖ ^ 2 := SourceControllerEnergy.truncatedMass_le_full_energy
example : ∀ α : ℝ, 0 < α →
    ‖referenceVector - sourceOperator
      (SourceControllerEnergy.canonicalController sourceOperator α referenceVector)‖ ^ 2 +
      α * ‖SourceControllerEnergy.canonicalController sourceOperator α referenceVector‖ ^ 2 =
        sourceMass α := SourceControllerEnergy.sourceMass_canonical_energy
example : ∀ (z : ℂ) (hz : 0 < z.re) (q : H),
    inner ℂ (exponentialVector z hz) q = 0 →
      inner ℂ (exponentialVector z hz) (referenceVector - sourceOperator q) = 1 / (z + 1) :=
  SourceControllerPoleConstraint.source_residual_evaluation_of_input_zero
example : ∀ q : H, inner ℂ (exponentialVector (1 / 2) (by norm_num)) q = 0 →
    (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator q‖ ^ 2 :=
  SourceControllerPoleConstraint.source_residual_sq_ge_of_input_half_zero
example : ∀ α : ℝ, 0 ≤ α → ∀ q : H,
    inner ℂ (exponentialVector (1 / 2) (by norm_num)) q = 0 →
      (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator q‖ ^ 2 + α * ‖q‖ ^ 2 :=
  SourceControllerPoleConstraint.source_full_energy_ge_of_input_half_zero
```
