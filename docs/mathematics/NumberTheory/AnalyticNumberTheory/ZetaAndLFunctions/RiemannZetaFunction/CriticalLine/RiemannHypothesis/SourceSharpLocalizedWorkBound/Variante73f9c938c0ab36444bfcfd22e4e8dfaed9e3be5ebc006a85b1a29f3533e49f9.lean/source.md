# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSharpLocalizedWorkBound.Variante73f9c938c0ab36444bfcfd22e4e8dfaed9e3be5ebc006a85b1a29f3533e49f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afbb2e0df92f50447b257fe883d935d95b5ae3bb` · SHA-256 `e73f9c938c0ab36444bfcfd22e4e8dfaed9e3be5ebc006a85b1a29f3533e49f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceLocalizedMixedWorkEstimate
import SourceSharpColumnEnvelopeMass

/-!
# Sharper actual localized-work budget

AI attribution: OpenAI Codex. The source support and original strict centered
column mass keep the exact floor cutoff ratio U/(U+1). This is a growing upper
budget for the actual arithmetic work and supplies no uniform signed witness.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSharpLocalizedWorkBound

open SourceMangoldtAbel SourceJointMangoldtWork SourceConstantOffsetCancellation
open SourceLocalizedMixedWorkEstimate SourceColumnEnvelopeMass SourceSharpColumnEnvelopeMass
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource

/-- Every constant offset retains the sharper literal cutoff ratio in the localized estimate. -/
theorem centeredErrorWork_abs_le_localized_cutoff_ratio
    (A offset : ℝ) (hA : 1 ≤ A) :
    |centeredErrorWork A offset| ≤
      4 * (Real.log 4 + 4 + Real.log 2 + |offset|) * Real.exp A *
        (162826 / (7623 * A ^ 2) + 1 / 4) *
          ((vaughanCutoff A : ℝ) / ((vaughanCutoff A : ℝ) + 1)) := by
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  let C := Real.log 4 + 4 + Real.log 2 + |offset|
  let U : ℝ := vaughanCutoff A
  let a : ℝ := U + 1
  have hc : 0 ≤ c := by dsimp only [c]; positivity
  have ha : 0 < a := by dsimp only [a, U]; positivity
  have hs : Real.sqrt a ≠ 0 := (Real.sqrt_pos.2 ha).ne'
  have hm : localizedCenteredErrorExpMass A offset ≤ 2 * C * Real.exp A / Real.sqrt a := by
    simpa only [a, U, C, Nat.cast_add, Nat.cast_one] using
      localizedCenteredErrorExpMass_le A offset hA
  have hb : columnEnvelopeMass A ≤ 2 * U / Real.sqrt a :=
    columnEnvelopeMass_le_cutoff_ratio A hA
  calc
    _ ≤ c * localizedCenteredErrorExpMass A offset * columnEnvelopeMass A :=
      centeredErrorWork_abs_le_localized_mass A offset hA
    _ ≤ c * localizedCenteredErrorExpMass A offset * (2 * U / Real.sqrt a) :=
      mul_le_mul_of_nonneg_left hb
        (mul_nonneg hc (localizedCenteredErrorExpMass_nonneg A offset))
    _ ≤ c * (2 * C * Real.exp A / Real.sqrt a) * (2 * U / Real.sqrt a) :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hm hc) (by positivity)
    _ = _ := by
      change c * (2 * C * Real.exp A / Real.sqrt a) * (2 * U / Real.sqrt a) =
        4 * C * Real.exp A * c * (U / a)
      have he : c * (2 * C * Real.exp A / Real.sqrt a) * (2 * U / Real.sqrt a) =
          4 * C * Real.exp A * c * (U / (Real.sqrt a * Real.sqrt a)) := by
        field_simp [hs]
        ring
      rw [he, Real.mul_self_sqrt ha.le]

/-- The unshifted original actual work inherits the same sharper source cutoff ratio. -/
theorem jointMangoldtErrorWork_abs_le_localized_cutoff_ratio (A : ℝ) (hA : 1 ≤ A) :
    |jointMangoldtErrorWork A| ≤
      4 * (Real.log 4 + 4 + Real.log 2) * Real.exp A *
        (162826 / (7623 * A ^ 2) + 1 / 4) *
          ((vaughanCutoff A : ℝ) / ((vaughanCutoff A : ℝ) + 1)) := by
  simpa only [centeredErrorWork, sub_zero, jointMangoldtErrorWork, abs_zero, add_zero] using
    centeredErrorWork_abs_le_localized_cutoff_ratio A 0 hA

end FormalResearch.RiemannHypothesis.SourceSharpLocalizedWorkBound
```
