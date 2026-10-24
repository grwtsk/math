# Complete source: GRWTSK.Topology.BoundsV3Input.Variant7aadec70ba31cdb11ee4e21fb9fe4d93ef46a3dab79a6fe71011d73380f1a3f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65f809a5566c2d3aed00ada9402ebc3f3e7cf613` · SHA-256 `7aadec70ba31cdb11ee4e21fb9fe4d93ef46a3dab79a6fe71011d73380f1a3f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtStorage
import Mathlib.Topology.Algebra.InfiniteSum.Real
set_option autoImplicit false
noncomputable section
open MeasureTheory Filter Set
open scoped InnerProductSpace
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceMangoldtStorage

example (s : ℝ) (f : ComplexL2) : translationStorage s f ≤ 2 * ‖f‖ ^ 2 := by
  have h := norm_sub_le f (translation s f)
  rw [(translation s).norm_map] at h
  have h0 : 0 ≤ ‖f - translation s f‖ := norm_nonneg _
  have h1 : 0 ≤ ‖f‖ := norm_nonneg _
  unfold translationStorage
  nlinarith

example {ι : Type} (w : ι → ℝ) (s : ι → ℝ) (hw : ∀ i, 0 ≤ w i)
    (hsum : Summable w) (f : ComplexL2) :
    Summable (fun i => w i * translationStorage (s i) f) := by
  apply Summable.of_nonneg_of_le (fun i => mul_nonneg (hw i) (translationStorage_nonneg _ _))
    (fun i => ?_) (hsum.mul_right (2 * ‖f‖ ^ 2))
  apply mul_le_mul_of_nonneg_left _ (hw i)
  have h := norm_sub_le f (translation (s i) f)
  rw [(translation (s i)).norm_map] at h
  unfold translationStorage
  nlinarith [norm_nonneg (f - translation (s i) f), norm_nonneg f]

example {ι : Type} (w : ι → ℝ) (s : ι → ℝ) (hw : ∀ i, 0 ≤ w i)
    (hsum : Summable w) (f : ComplexL2) :
    Summable (fun i => w i * (⟪f, translation (s i) f⟫_ℂ).re) := by
  have hsq : Summable (fun i => w i * translationStorage (s i) f) := by
    apply Summable.of_nonneg_of_le (fun i => mul_nonneg (hw i) (translationStorage_nonneg _ _))
      (fun i => ?_) (hsum.mul_right (2 * ‖f‖ ^ 2))
    apply mul_le_mul_of_nonneg_left _ (hw i)
    have h := norm_sub_le f (translation (s i) f)
    rw [(translation (s i)).norm_map] at h
    unfold translationStorage
    nlinarith [norm_nonneg (f - translation (s i) f), norm_nonneg f]
  apply ((hsum.mul_right (‖f‖ ^ 2)).sub hsq).congr
  intro i
  rw [translationStorage_eq]
  ring
```
