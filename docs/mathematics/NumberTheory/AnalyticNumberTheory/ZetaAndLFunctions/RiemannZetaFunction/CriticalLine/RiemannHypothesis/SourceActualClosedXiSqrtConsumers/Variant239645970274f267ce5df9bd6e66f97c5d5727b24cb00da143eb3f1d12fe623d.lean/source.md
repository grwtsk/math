# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualClosedXiSqrtConsumers.Variant239645970274f267ce5df9bd6e66f97c5d5727b24cb00da143eb3f1d12fe623d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `faf69ab5bee57556875b0cc954455695b552fbbb` · SHA-256 `239645970274f267ce5df9bd6e66f97c5d5727b24cb00da143eb3f1d12fe623d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualXiSqrtClosedReadout
import SourceActualXiPrimitiveConsequences

/-!
Apply a uniform bound on the literal complete closed inverse-square-root Xi
readout to the actual anchored primitive and the unchanged original consumers.
Every prime power, gamma companion, lower anchor and smooth term is retained.
The arithmetic H witness remains an explicit hypothesis.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualClosedXiSqrtConsumers
open ArithmeticFunction SourceActualXiSqrtClosedReadout SourceActualXiPrimitiveTransport
open SourceActualXiPrimitiveConsequences SourcePairing RH16ResumeBudget SourceLeadingTailBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
open scoped BigOperators

/-- The full closed finite readout, including its independent gamma and smooth companions. -/
def actualClosedXiSqrtReadout (Y : ℝ) : ℝ :=
  2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊,
    vonMangoldt n * ((n : ℝ) ^ (-1 / 2 : ℝ) - Y ^ (-1 / 2 : ℝ)) +
  2 * (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
    ((2 : ℝ) ^ (-1 / 2 : ℝ) - Y ^ (-1 / 2 : ℝ)) -
  2 * (Y ^ (1 / 2 : ℝ) - (2 : ℝ) ^ (1 / 2 : ℝ))

theorem actualClosedXiSqrtReadout_eq_primitive (Y : ℝ) (hY : 2 ≤ Y) :
    actualClosedXiSqrtReadout Y = actualXiLogPrimitive (Real.log Y) := by
  unfold actualClosedXiSqrtReadout
  exact (actualXiLogPrimitive_log_eq_closed_atoms Y hY).symm

theorem primitive_bound_of_closed_readout (H : ℝ)
    (hclosed : ∀ Y : ℝ, 2 ≤ Y → |actualClosedXiSqrtReadout Y| ≤ H) :
    ∀ t : ℝ, Real.log 2 ≤ t → |actualXiLogPrimitive t| ≤ H := by
  intro t ht
  have hY : (2 : ℝ) ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr ht
  have h := hclosed (Real.exp t) hY
  rw [actualClosedXiSqrtReadout_eq_primitive (Real.exp t) hY, Real.log_exp] at h
  exact h

theorem residual_upper_of_closed_readout (H R A : ℝ) (hR : 91 ≤ R) (hA : R ≤ A)
    (hclosed : ∀ Y : ℝ, 2 ≤ Y → |actualClosedXiSqrtReadout Y| ≤ H) :
    mertensResidual A ≤ (11 / 2 : ℝ) * H - 3 / 8 + criticalBaselineCorrection R :=
  residual_upper_of_actual_primitive H R A hR hA (primitive_bound_of_closed_readout H hclosed)

theorem all_real_lower_of_closed_readout (H R : ℝ) (hR : 91 ≤ R)
    (hclosed : ∀ Y : ℝ, 2 ≤ Y → |actualClosedXiSqrtReadout Y| ≤ H) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 -
          2 * ((11 / 2 : ℝ) * H - 3 / 8 + criticalBaselineCorrection R)) ≤
            sourceQuadraticValue explicitSecondDerivative A :=
  all_real_lower_of_actual_primitive H R hR (primitive_bound_of_closed_readout H hclosed)

theorem estimate_of_closed_readout (H R : ℝ) (hR : 91 ≤ R)
    (hclosed : ∀ Y : ℝ, 2 ≤ Y → |actualClosedXiSqrtReadout Y| ≤ H) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_actual_primitive H R hR (primitive_bound_of_closed_readout H hclosed)

theorem leading_tail_of_closed_readout (H R : ℝ) (hR : 91 ≤ R)
    (hclosed : ∀ Y : ℝ, 2 ≤ Y → |actualClosedXiSqrtReadout Y| ≤ H) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ (11 / 2 : ℝ) * H - 3 / 8 +
        criticalBaselineCorrection R - (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  exact leading_upper_of_actual_primitive H R A hR hA
    (primitive_bound_of_closed_readout H hclosed)

end FormalResearch.RiemannHypothesis.SourceActualClosedXiSqrtConsumers
```
