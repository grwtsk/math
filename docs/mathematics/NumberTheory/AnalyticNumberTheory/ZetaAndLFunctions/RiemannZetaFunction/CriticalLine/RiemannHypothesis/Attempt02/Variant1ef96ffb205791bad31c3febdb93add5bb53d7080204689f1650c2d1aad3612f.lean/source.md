# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt02.Variant1ef96ffb205791bad31c3febdb93add5bb53d7080204689f1650c2d1aad3612f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2619255f62d83058ddd0bec700ab295bd1fface7` · SHA-256 `1ef96ffb205791bad31c3febdb93add5bb53d7080204689f1650c2d1aad3612f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualCriticalEdgeSector

/-!
The actual negative upper-edge drift belongs to the complete original moving
covariance. Its full preceding interval, actual prime-power jumps and lower
seven head remain together. The growing required compensation is not a bound
on the full covariance, and no uniform signed arithmetic witness is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualMovingEdgeAssembly

open MeasureTheory Set
open scoped Interval
open SourceActualMovingCriticalIncrement SourceActualCriticalEdgeSector
open SourceActualCriticalCovarianceOrdinarySplit SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

noncomputable section

/-- The entire original moving interval preceding the true last unit of support. -/
def actualPreEdgeMovingWork (A : ℝ) : ℝ :=
  ∫ t in Real.log 7..(2 * A - 1), actualClosedMangoldtIncrement t (2 * A) *
    (Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2))

private theorem moving_density_intervalIntegrable {A l b : ℝ} (hA : 91 ≤ A)
    (hl : Real.log 7 ≤ l) (hlb : l ≤ b) (hb : b ≤ 2 * A) :
    IntervalIntegrable (fun t => actualClosedMangoldtIncrement t (2 * A) *
      (Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2))) volume l b := by
  have hlog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
  have hfull := actualMovingCriticalIncrement_intervalIntegrable (by linarith : 1 ≤ A)
  have hi : IntervalIntegrable (fun t => actualClosedMangoldtIncrement t (2 * A) *
      Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) volume l b :=
    hfull.mono_set (by
    rw [uIcc_of_le (by linarith : Real.log (7 : ℝ) ≤ 2 * A), uIcc_of_le hlb]
    exact Icc_subset_Icc hl hb)
  apply hi.congr
  intro t _
  dsimp only
  ring

/-- Full original covariance equals the complete pre-edge source plus drift and jumps minus head. -/
theorem actualCriticalCovariance_eq_full_edge_assembly {A : ℝ} (hA : 91 ≤ A) :
    actualCriticalErrorCovariance A = actualPreEdgeMovingWork A +
      actualUpperEdgeContinuousDrift A + actualUpperEdgePrimeJumpCompensation A -
        actualMovingCriticalHead A := by
  have hlog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
  have ha : Real.log (7 : ℝ) ≤ 2 * A - 1 := by linarith
  have hs := intervalIntegral.integral_add_adjacent_intervals
    (moving_density_intervalIntegrable hA le_rfl ha (by linarith : 2 * A - 1 ≤ 2 * A))
    (moving_density_intervalIntegrable hA ha (by linarith : 2 * A - 1 ≤ 2 * A) le_rfl)
  have hfull : actualMovingCriticalIncrementCovariance A =
      actualPreEdgeMovingWork A + actualUpperEdgeMovingWork A := by
    unfold actualMovingCriticalIncrementCovariance actualPreEdgeMovingWork
      actualUpperEdgeMovingWork
    rw [hs]
    apply intervalIntegral.integral_congr
    intro t _
    ring
  rw [actualCriticalErrorCovariance_eq_moving_increment (by linarith : 1 ≤ A), hfull,
    actualUpperEdgeMovingWork_eq_drift_add_jumps hA]
  ring

/-- The actual complete compensation exceeds the original covariance by this drift budget. -/
theorem actualFullMovingCompensation_gap_lower {A : ℝ} (hA : 91 ≤ A) :
    (200 / 3 : ℝ) * Real.exp (A - 1 / 2) / (A ^ 9 * sourceNormalization A) ≤
      actualPreEdgeMovingWork A + actualUpperEdgePrimeJumpCompensation A -
        actualMovingCriticalHead A - actualCriticalErrorCovariance A := by
  rw [actualCriticalCovariance_eq_full_edge_assembly hA]
  have hd := actualUpperEdgeContinuousDrift_upper hA
  have he : actualUpperEdgeContinuousDrift A ≤
      -((200 / 3 : ℝ) * Real.exp (A - 1 / 2) / (A ^ 9 * sourceNormalization A)) := by
    convert hd using 1 <;> ring
  linarith

/-- A lower estimate for the full covariance requires this signed actual compensation.
The entire preceding source interval remains present; no component is inferred divergent. -/
theorem actualCovariance_lower_requires_full_compensation {A K : ℝ} (hA : 91 ≤ A)
    (hK : -K ≤ actualCriticalErrorCovariance A) :
    (200 / 3 : ℝ) * Real.exp (A - 1 / 2) / (A ^ 9 * sourceNormalization A) - K ≤
      actualPreEdgeMovingWork A + actualUpperEdgePrimeJumpCompensation A -
        actualMovingCriticalHead A := by
  have hh := actualFullMovingCompensation_gap_lower hA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualMovingEdgeAssembly
```
