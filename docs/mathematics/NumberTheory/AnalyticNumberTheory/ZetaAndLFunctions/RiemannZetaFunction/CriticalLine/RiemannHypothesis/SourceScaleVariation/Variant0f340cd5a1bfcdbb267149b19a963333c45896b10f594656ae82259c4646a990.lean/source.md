# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceScaleVariation.Variant0f340cd5a1bfcdbb267149b19a963333c45896b10f594656ae82259c4646a990

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbb7c118acb957b5474a2d084634041d647d74df` · SHA-256 `0f340cd5a1bfcdbb267149b19a963333c45896b10f594656ae82259c4646a990`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceDerivativeEnergy
import FormalResearch.RiemannHypothesis.SourceHankelReflection

/-!
# Literal source variation with the scale

The actual polynomial source has C¹ scale regularity at every positive scale,
including its moving support seams. This is not an assertion of C∞ regularity,
nor a signed arithmetic or scale-flux estimate.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceScaleVariation

open SourcePairing GevreyPolynomial SourceDerivativeEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

noncomputable section

/-- The original normalized differential operator in literal dilation coordinates. -/
def scaleProfile (A x : ℝ) : ℝ :=
  ((deriv (deriv sourceBump) (x / A) / A ^ 2 - sourceBump (x / A) / 4) /
    Real.sqrt A) / Real.sqrt (sourceNormalization A)

/-- The scale formula equals the actual source; no smooth substitute is introduced. -/
theorem scaleProfile_eq_source {A : ℝ} (hA : 0 < A) (x : ℝ) :
    scaleProfile A x = normalizedTest explicitSecondDerivative A x := by
  rw [← normalizedOperator_sourceBump_eq hA]
  unfold GevreyNormalization.normalizedOperator
  rw [normalization_sourceBump_eq hA,
    GevreyNormalization.dilationOperator_eq sourceBump_contDiff]
  rfl

/-- The exact source normalization remains strictly positive at positive scales. -/
theorem sourceNormalization_pos {A : ℝ} (hA : 0 < A) :
    0 < sourceNormalization A := by
  unfold sourceNormalization
  positivity

/-- C¹ variation in scale, including the source support seams. -/
theorem scaleProfile_contDiffAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => scaleProfile B x) A := by
  have h2 : ContDiff ℝ 1 (deriv (deriv sourceBump)) :=
    sourceBump_contDiff_three.deriv'.deriv'
  have h0 : ContDiff ℝ 1 sourceBump := sourceBump_contDiff_three.of_le (by norm_num)
  have hn := sourceNormalization_pos hA
  unfold scaleProfile sourceNormalization
  fun_prop (disch := first | positivity | exact hA.ne' | exact hn.ne')

/-- The actual source has the proved scale regularity throughout the positive-axis domain. -/
theorem source_contDiffAt_scale {A : ℝ} (hA : 0 < A) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => normalizedTest explicitSecondDerivative B x) A := by
  apply (scaleProfile_contDiffAt hA x).congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA] with B hB
  exact (scaleProfile_eq_source hB x).symm

/-- Literal source scale regularity on the positive axis. -/
theorem source_contDiffOn_scale (x : ℝ) :
    ContDiffOn ℝ 1 (fun A : ℝ => normalizedTest explicitSecondDerivative A x)
      (Set.Ioi 0) := fun _ hA => (source_contDiffAt_scale hA x).contDiffWithinAt

/-- Fixed finite forward inventories vary with the actual C¹ source. -/
theorem forwardProfile_contDiffAt_scale {A : ℝ} (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => SourceHankelReflection.forwardProfile B s c x) A := by
  classical
  apply ContDiffAt.sum
  intro n _
  exact contDiffAt_const.mul (source_contDiffAt_scale hA (x - Real.log n))

/-- Fixed finite reflected inventories preserve the same scale regularity and signs. -/
theorem reflectedProfile_contDiffAt_scale {A : ℝ} (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => SourceHankelReflection.reflectedProfile B s c x) A := by
  classical
  apply ContDiffAt.sum
  intro n _
  exact contDiffAt_const.mul (source_contDiffAt_scale hA (x + Real.log n))

/-- The complete fixed-inventory pointwise interaction varies jointly with the source. -/
theorem profileProduct_contDiffAt_scale {A : ℝ} (hA : 0 < A)
    (s t : Finset ℕ) (c d : ℕ → ℝ) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => SourceHankelReflection.forwardProfile B s c x *
      SourceHankelReflection.reflectedProfile B t d x) A :=
  (forwardProfile_contDiffAt_scale hA s c x).mul
    (reflectedProfile_contDiffAt_scale hA t d x)

end
end FormalResearch.RiemannHypothesis.SourceScaleVariation
```
