# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23bbd85518d79b6de0b12e5f1f16385090112792` · SHA-256 `ca074a2c26fd99ef1996901cec2fe327377244ce34c8f7bd5b4465017adc5508`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticTraceCriterion

set_option autoImplicit false

open Filter Topology

/-!
# Conditional prime-power Gram port to the signed quartic witness

The source side is the finite nonnegative von-Mangoldt Gram from
`PrimePowerVonMangoldt`. The target is the existing signed quartic
`ConjugateQuartic.witnessTrace`.

Only the positivity premise of the existing generic extraction theorem is
discharged here. The source identity, comparison scale, error decay, and
noncircular construction remain explicit hypotheses.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort

open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt
open GRWTSK.Polynomial.ConjugateQuartic
open GRWTSK.RiemannHypothesis

/-- A stagewise comparison of the actual finite prime-power Gram with one
signed quartic witness. -/
structure QuarticExtraction (α γ : ℝ) where
  stage : ℕ → PrimePowerWitnessStage
  test : ℕ → ℝ → ℝ
  weight : ℕ → ℝ
  error : ℕ → ℝ
  limitWeight : ℝ
  limitWeight_pos : 0 < limitWeight
  identity : ∀ n,
    stageEnergy (stage n) (test n) =
      weight n * witnessTrace α γ + error n
  weight_tendsto : Tendsto weight atTop (𝓝 limitWeight)
  error_tendsto : Tendsto error atTop (𝓝 0)

/-- The finite source in a quartic extraction is nonnegative without any
caller-supplied positivity premise. -/
theorem QuarticExtraction.source_nonneg
    {α γ : ℝ} (h : QuarticExtraction α γ) (n : ℕ) :
    0 ≤ stageEnergy (h.stage n) (h.test n) :=
  stageEnergy_nonneg (h.stage n) (h.test n)

/-- A convergent prime-power Gram extraction forces nonnegativity of the
existing signed quartic witness. -/
theorem witnessTrace_nonneg_of_quarticExtraction
    {α γ : ℝ} (h : QuarticExtraction α γ) :
    0 ≤ witnessTrace α γ := by
  have hlim :
      Tendsto
        (fun n => stageEnergy (h.stage n) (h.test n))
        atTop
        (𝓝 (h.limitWeight * witnessTrace α γ)) := by
    have hsum :=
      (h.weight_tendsto.mul_const (witnessTrace α γ)).add h.error_tendsto
    simpa only [h.identity, add_zero] using hsum
  have hnonneg :
      0 ≤ h.limitWeight * witnessTrace α γ :=
    ge_of_tendsto hlim
      (Eventually.of_forall fun n => h.source_nonneg n)
  exact (mul_nonneg_iff_of_pos_left h.limitWeight_pos).mp hnonneg

/-- Because the named signed quartic detects the horizontal displacement
exactly, a successful extraction forces that displacement to vanish. -/
theorem horizontal_displacement_eq_zero_of_quarticExtraction
    {α γ : ℝ} (h : QuarticExtraction α γ) :
    α = 0 :=
  (witnessTrace_nonneg_iff α γ).mp
    (witnessTrace_nonneg_of_quarticExtraction h)

/-- RH-facing specialization. The only remaining supplier is a comparison
family for every actual nontrivial zeta zero. Positivity of its finite source
is derived by `stageEnergy_nonneg`. -/
theorem riemannHypothesis_of_primePowerGramExtraction
    (hextract :
      ∀ s : ℂ, NontrivialZetaZero s →
        QuarticExtraction (s.re - 1 / 2) s.im) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_iff_quadraticTraceNonnegative.mpr
  intro s hs
  exact witnessTrace_nonneg_of_quarticExtraction (hextract s hs)

end GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort
```
