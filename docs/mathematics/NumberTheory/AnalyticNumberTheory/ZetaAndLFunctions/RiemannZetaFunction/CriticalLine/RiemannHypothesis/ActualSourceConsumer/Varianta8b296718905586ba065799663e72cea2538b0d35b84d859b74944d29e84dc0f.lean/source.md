# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSourceConsumer.Varianta8b296718905586ba065799663e72cea2538b0d35b84d859b74944d29e84dc0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6b810388ea643d2b948abfbe9f05da63b7fdde4` · SHA-256 `a8b296718905586ba065799663e72cea2538b0d35b84d859b74944d29e84dc0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCenteredSmoothing
import FormalResearch.RiemannHypothesis.SourceCompensatedFourier
import FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction

/-!
# Next consumer of the paid centered smoothing errors

Research direction and high-priority emphasis: grwtsk contributors.
Specific theorem selection, source adapter and formal construction: OpenAI Codex.
The unchanged compensated source is retained at every real scale.
The signed principal cap in the last theorem remains an explicit open premise.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCenteredSmoothing

open MeasureTheory SourcePairing SourceKapitzaSquareShell
open SourceKapitzaCompensatedReadout SourceKapitzaSignedReduction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent

variable (μ : Measure ℝ) [IsProbabilityMeasure μ]

/-- Both signed tangent channels on the complete natural inventory. -/
def smoothedTangentReadout (A : ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 N, (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
    (smoothedCorrelation μ A (Real.log (shellEndpoint N n)) +
      (Real.log n - Real.log (shellEndpoint N n)) *
        smoothedSlope μ A (Real.log (shellEndpoint N n)))

/-- Every source approximation price is retained, including the complete masses. -/
def smoothedTangentPrice (A : ℝ) (N : ℕ) : ℝ :=
  tangentErrorConstant / A ^ 2 +
    ((5 / (2 * A ^ 2)) * (∫ y : ℝ, y ^ 2 ∂μ)) *
      (∑ n ∈ Finset.Icc 2 N, |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n|) +
    ((5 / A ^ 2) * (∫ y : ℝ, |y| ∂μ)) *
      ∑ n ∈ Finset.Icc 2 N,
        |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| *
          |Real.log n - Real.log (shellEndpoint N n)|

/-- Exact source join, with no dropped integer or prime-power coefficient. -/
theorem compensatedSourceSum_eq_finiteCompensatedReadout (A : ℝ) :
    compensatedSourceSum A = finiteCompensatedReadout A ⌊Real.exp (2 * A)⌋₊ := by
  unfold compensatedSourceSum finiteCompensatedReadout primePowerInventory
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < n := by have h := (Finset.mem_Icc.mp hn).1; omega
  rw [exponentialTest_log _ n hn0]
  ring

/-- Application to the literal all-real compensated source and its full closed cutoff. -/
theorem compensatedSourceSum_smoothed_tangent_error {A : ℝ} (hA : 200 ≤ A)
    (hy : Integrable (fun y : ℝ => y) μ)
    (hmean : (∫ y : ℝ, y ∂μ) = 0)
    (hy2 : Integrable (fun y : ℝ => y ^ 2) μ) :
    |compensatedSourceSum A - smoothedTangentReadout μ A ⌊Real.exp (2 * A)⌋₊| ≤
      smoothedTangentPrice μ A ⌊Real.exp (2 * A)⌋₊ := by
  rw [compensatedSourceSum_eq_finiteCompensatedReadout]
  exact finite_tangent_smoothed_error μ hA _ hy hmean hy2

/-- Attempting the unchanged next arithmetic consumer exposes its remaining signed cap.
No bound for this premise follows from the analytic smoothing prices alone. -/
theorem estimate_of_smoothed_tangent_cap
    (hy : Integrable (fun y : ℝ => y) μ)
    (hmean : (∫ y : ℝ, y ∂μ) = 0)
    (hy2 : Integrable (fun y : ℝ => y ^ 2) μ)
    (hcap : ∃ R : ℝ, 200 ≤ R ∧ ∃ B : ℝ, ∀ A : ℝ, R ≤ A →
      smoothedTangentReadout μ A ⌊Real.exp (2 * A)⌋₊ +
        smoothedTangentPrice μ A ⌊Real.exp (2 * A)⌋₊ ≤ B) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_compensated_tail
  rcases hcap with ⟨R, hR, B, hB⟩
  refine ⟨R, by linarith, B, ?_⟩
  intro A hRA
  have he := (abs_le.mp
    (compensatedSourceSum_smoothed_tangent_error μ (hR.trans hRA) hy hmean hy2)).2
  linarith [hB A hRA]


end FormalResearch.RiemannHypothesis.SourceCenteredSmoothing
```
