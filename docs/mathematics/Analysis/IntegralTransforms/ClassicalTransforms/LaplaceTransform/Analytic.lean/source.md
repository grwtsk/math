# Complete source: GRWTSK.Analysis.LaplaceTransform.Analytic

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9dcb306da237ba805a981fce4bc7c348e0a692b4` · SHA-256 `985c19180a110f453d45753e15e4eeaffb3dfdabcd4c4704d202b63e6f172187`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Probability.Moments.ComplexMGF
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FunProp

noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC.Laplace
open MeasureTheory Set ProbabilityTheory

/-- The ordinary Laplace transform in Mathlib's moment-generating convention. -/
def transform {Ω : Type*} [MeasurableSpace Ω]
    (X : Ω → ℝ) (μ : Measure Ω) (s : ℂ) : ℂ := complexMGF X μ (-s)

/-- Genuine integrability on every point of an open real ray supplies analyticity. -/
theorem transform_analytic {Ω : Type*} [MeasurableSpace Ω]
    {X : Ω → ℝ} {μ : Measure Ω} (a : ℝ)
    (hconv : ∀ t : ℝ, a < t → Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (s : ℂ) (hs : a < s.re) : AnalyticAt ℂ (transform X μ) s := by
  have hsub : Iio (-a) ⊆ integrableExpSet X μ := by
    intro t ht
    change t < -a at ht
    change Integrable (fun ω ↦ Real.exp (t * X ω)) μ
    simpa using hconv (-t) (by linarith [ht])
  have hz : (-s).re ∈ interior (integrableExpSet X μ) := by
    apply interior_mono hsub
    simpa using (show -s.re < -a by linarith)
  exact (analyticAt_complexMGF hz).comp (f := fun z : ℂ ↦ -z) (by fun_prop)

end GRWTSK.RiemannHypothesis.CCC.Laplace
```
