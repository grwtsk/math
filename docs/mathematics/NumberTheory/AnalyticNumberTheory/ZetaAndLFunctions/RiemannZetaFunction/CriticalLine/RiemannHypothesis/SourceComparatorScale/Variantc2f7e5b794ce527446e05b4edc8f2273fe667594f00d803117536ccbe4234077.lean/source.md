# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceComparatorScale.Variantc2f7e5b794ce527446e05b4edc8f2273fe667594f00d803117536ccbe4234077

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe3335e858c242fa3ff0ab801a82489d830aa171` · SHA-256 `c2f7e5b794ce527446e05b4edc8f2273fe667594f00d803117536ccbe4234077`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Tactic

/-!
# Exact scale comparison for the seven-eighths envelope

grwtsk contributors directed the common-observable comparison. OpenAI's family 003 supplies an
external proposed zero-free theorem; it is neither imported nor assumed in this module. Codex
formalized the elementary comparison of the two declared envelopes. An upper envelope growing
relative to the native boundary scale is not a lower bound on the actual arithmetic discrepancy.
The native boundary scale is not identified with a raw relative prime-counting error.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceComparatorScale

open Filter

/-- The relative error envelope at `x = exp (2 * A)`, apart from its independent constant. -/
def sevenEighthsEnvelope (A : ℝ) : ℝ := A ^ 2 * Real.exp (-A / 4)

/-- The existing boundary scale of the native readout, not a raw prime-error theorem. -/
def nativeBoundaryScale (A : ℝ) : ℝ := A ^ 9 * Real.exp (-A)

/-- Exact conversion at the declared physical endpoint, including the factor `2^9 = 512`. -/
theorem nativeBoundaryScale_physical_endpoint (A : ℝ) :
    nativeBoundaryScale A =
      Real.log (Real.exp (2 * A)) ^ 9 / (512 * Real.sqrt (Real.exp (2 * A))) := by
  rw [Real.log_exp, ← Real.exp_half, show 2 * A / 2 = A by ring]
  unfold nativeBoundaryScale
  rw [Real.exp_neg]
  field_simp
  ring

/-- The envelope quotient retains the exponential mismatch and every power of the scale. -/
theorem envelope_ratio (A : ℝ) (hA : 0 < A) :
    sevenEighthsEnvelope A / nativeBoundaryScale A =
      Real.exp ((3 / 4 : ℝ) * A) / A ^ 7 := by
  have hne : A ≠ 0 := ne_of_gt hA
  unfold sevenEighthsEnvelope nativeBoundaryScale
  rw [mul_div_mul_comm, ← Real.exp_sub]
  have hp : A ^ 2 / A ^ 9 = 1 / A ^ 7 := by
    field_simp
  rw [hp]
  rw [show -A / 4 - -A = (3 / 4 : ℝ) * A by ring]
  ring

/-- This ratio eventually exceeds every fixed constant. It concerns envelopes only. -/
theorem envelope_ratio_tendsto :
    Tendsto (fun A : ℝ => sevenEighthsEnvelope A / nativeBoundaryScale A) atTop atTop := by
  have h := tendsto_exp_mul_div_rpow_atTop (7 : ℝ) (3 / 4 : ℝ)
    (by norm_num : (0 : ℝ) < 3 / 4)
  apply h.congr'
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
  rw [envelope_ratio A hA]
  norm_cast

/-- Exact positivity threshold for the mesh-tail decay exponent. -/
theorem mesh_decay_positive_iff (theta : ℝ) :
    0 < (3 / 2 : ℝ) - 2 * theta ↔ theta < 3 / 4 := by
  constructor <;> intro h <;> linarith

/-- The Baker-Harman-Pintz exponent meets this method's integrability threshold. -/
theorem bhp_mesh_decay : (3 / 2 : ℝ) - 2 * (21 / 40 : ℝ) = 9 / 20 := by
  norm_num

/-- The crude seven-eighths gap exponent cannot pay this particular mesh-tail majorant. -/
theorem sevenEighths_mesh_decay_negative :
    (3 / 2 : ℝ) - 2 * (7 / 8 : ℝ) = -(1 / 4 : ℝ) := by
  norm_num

end FormalResearch.RiemannHypothesis.SourceComparatorScale
```
