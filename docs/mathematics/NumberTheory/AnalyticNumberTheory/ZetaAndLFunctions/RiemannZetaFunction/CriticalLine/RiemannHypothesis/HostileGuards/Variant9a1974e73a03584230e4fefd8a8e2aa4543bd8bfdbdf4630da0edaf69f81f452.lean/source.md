# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HostileGuards.Variant9a1974e73a03584230e4fefd8a8e2aa4543bd8bfdbdf4630da0edaf69f81f452

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a26759ea42f476a8bfa7148a1e79da69735a9e96` · SHA-256 `9a1974e73a03584230e4fefd8a8e2aa4543bd8bfdbdf4630da0edaf69f81f452`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePhaseSignGeometry

open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePhaseSignGeometry SourcePairedTailTest SourcePairedTailQuadrature
open SourcePairedPrimeWork SourcePairedPrimeAverages SourceFirstPrimeAbel

example {A : ℝ} (hA : 1 ≤ A) :
    pairedTailTest A 0 = 0 ∧ pairedTailTest A (2 * A) = 0 ∧
      negativeMass A = positiveMass A + 1 :=
  ⟨pairedTailTest_at_zero hA, pairedTailTest_at_upper hA,
    negativeMass_eq_positive_add_one hA⟩

example : ∃ u ∈ Ioo 0 2, 0 < pairedTailTest 1 u := by
  simpa using exists_pairedTailTest_pos (A := 1) (by norm_num)

example : pairedTailTest 160 2 < 0 := by
  simpa using pairedTailTest_early_point_neg (A := 160) (by norm_num)

example : (¬ ∀ u ∈ Icc 0 320, 0 ≤ pairedTailTest 160 u) ∧
    (¬ ∀ u ∈ Icc 0 320, pairedTailTest 160 u ≤ 0) := by
  constructor
  · simpa using pairedTailTest_not_nonneg_on (A := 160) (by norm_num)
  · simpa using pairedTailTest_not_nonpos_on (A := 160) (by norm_num)

example {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, pairedTailTest A u) =
      negativeTimeMean A - criticalContinuousMoment A :=
  pairedTailTest_integral_eq hA

example {A : ℝ} (hA : 1 ≤ A) :
    0 < negativeTimeMean A - criticalContinuousMoment A :=
  pairedTailTest_drift_pos hA
```
