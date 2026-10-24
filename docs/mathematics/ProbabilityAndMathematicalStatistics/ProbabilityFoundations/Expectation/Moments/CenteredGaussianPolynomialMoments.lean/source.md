# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.CenteredGaussianPolynomialMoments

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b612c2642b35c115ea46aa42332663739887f4b8` · SHA-256 `78673debc510d5f82ca12c32e6d17753599a41f8a26c9af4e0de02426afee822`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Centered Gaussian first and second polynomial moments
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
The source statements remain centered at mean zero and quantified over every nonnegative variance parameter, including zero. Only the displayed first/second moments and absolute-moment upper bound are retained; no general moment formula or new probabilistic limit theorem is asserted.
-/
import Mathlib.Probability.Distributions.Gaussian.Real
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

open MeasureTheory ProbabilityTheory
open scoped ENNReal NNReal

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.CenteredGaussian

theorem integrable_id (v : ℝ≥0) :
    Integrable (fun x : ℝ => x) (gaussianReal 0 v) := by
  exact ((memLp_id_gaussianReal' (μ := 0) (v := v) 1 (by norm_num)).integrable
    (by norm_num)).congr (ae_of_all _ (fun x => id_eq x))

theorem integrable_square (v : ℝ≥0) :
    Integrable (fun x : ℝ => x ^ 2) (gaussianReal 0 v) := by
  simpa only [id] using (memLp_id_gaussianReal (μ := 0) (v := v) 2).integrable_sq

theorem integral_id_zero (v : ℝ≥0) :
    (∫ x : ℝ, x ∂gaussianReal 0 v) = 0 := by
  exact integral_id_gaussianReal

theorem integral_square (v : ℝ≥0) :
    (∫ x : ℝ, x ^ 2 ∂gaussianReal 0 v) = (v : ℝ) := by
  have h := variance_fun_id_gaussianReal (μ := 0) (v := v)
  rw [variance_eq_integral measurable_id'.aemeasurable] at h
  simpa using h

end GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.CenteredGaussian
```
