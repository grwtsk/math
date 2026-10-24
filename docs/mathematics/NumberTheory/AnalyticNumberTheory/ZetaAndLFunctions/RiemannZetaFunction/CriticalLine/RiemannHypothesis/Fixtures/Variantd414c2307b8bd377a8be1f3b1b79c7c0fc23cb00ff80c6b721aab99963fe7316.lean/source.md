# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Fixtures.Variantd414c2307b8bd377a8be1f3b1b79c7c0fc23cb00ff80c6b721aab99963fe7316

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `232298c925cf3deb2ad3497e57baea2383ce47dd` · SHA-256 `d414c2307b8bd377a8be1f3b1b79c7c0fc23cb00ff80c6b721aab99963fe7316`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCorrelationSignChange

set_option autoImplicit false
noncomputable section
open FormalResearch.RiemannHypothesis.SourceCorrelationSignChange
open FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
theorem sign_positive_one : ∃ t : ℝ, 0 < t ∧ t < 2 ∧
    sourceCorrelation explicitSecondDerivative 1 t < 0 := by
  simpa using sourceCorrelation_exists_neg_in_half_support (A := 1) (by norm_num)
theorem sign_positive_half : ∃ t : ℝ, 0 < t ∧ t < 1 ∧
    sourceCorrelation explicitSecondDerivative (1 / 2) t < 0 := by
  simpa using sourceCorrelation_exists_neg_in_half_support (A := 1 / 2) (by norm_num)
theorem sign_positive_seven : ∃ t : ℝ, 0 < t ∧ t < 14 ∧
    sourceCorrelation explicitSecondDerivative 7 t < 0 := by
  simpa only [show (2 : ℝ) * 7 = 14 by norm_num] using
    sourceCorrelation_exists_neg_in_half_support (A := 7) (by norm_num)
theorem sign_zero_excluded {A : ℝ} (hA : 0 < A) :
    ¬ sourceCorrelation explicitSecondDerivative A 0 < 0 := by
  rw [sourceCorrelation_zero hA]
  norm_num
theorem sign_endpoint_excluded {A : ℝ} (hA : 0 < A) :
    ¬ sourceCorrelation explicitSecondDerivative A (2 * A) < 0 := by
  rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * A) hA
    (by rw [abs_of_pos (mul_pos (by norm_num) hA)])]
  norm_num
theorem sign_even_partner {A t : ℝ}
    (h : sourceCorrelation explicitSecondDerivative A t < 0) :
    sourceCorrelation explicitSecondDerivative A (-t) < 0 := by
  rwa [sourceCorrelation_even]
```
