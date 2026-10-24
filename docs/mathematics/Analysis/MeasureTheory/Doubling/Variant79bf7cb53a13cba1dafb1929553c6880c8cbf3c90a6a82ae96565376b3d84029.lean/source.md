# Complete source: GRWTSK.Analysis.MeasureTheory.Doubling.Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b62ccaaa06ff0fbbd93af095056621562e99b187` · SHA-256 `681a0aa6b31253052296456cd4220f382c0ba5807ad4263bc2c979840c0aeae2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.IsUnifLocDoublingMeasure.Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.IsUnifLocDoublingMeasure.Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/MeasureTheory/Measure/Doubling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Analysis.SpecialFunctions.Log.Base
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef


namespace GRWTSK.Analysis.MeasureTheory.IsUnifLocDoublingMeasure.Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7

#align_import measure_theory.measure.doubling from "leanprover-community/mathlib"@"5f6e827d81dfbeb6151d7016586ceeb0099b9655"

/-!
# Uniformly locally doubling measures

A uniformly locally doubling measure `μ` on a metric space is a measure for which there exists a
constant `C` such that for all sufficiently small radii `ε`, and for any centre, the measure of a
ball of radius `2 * ε` is bounded by `C` times the measure of the concentric ball of radius `ε`.

This file records basic facts about uniformly locally doubling measures.

## Main definitions

  * `IsUnifLocDoublingMeasure`: the definition of a uniformly locally doubling measure (as a
  typeclass).
  * `IsUnifLocDoublingMeasure.doublingConstant`: a function yielding the doubling constant `C`
  appearing in the definition of a uniformly locally doubling measure.
-/

-- Porting note: for 2 ^ n in exists_eventually_forall_measure_closedBall_le_mul
local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

noncomputable section

open Set Filter Metric MeasureTheory TopologicalSpace ENNReal NNReal Topology

/-- A measure `μ` is said to be a uniformly locally doubling measure if there exists a constant `C`
such that for all sufficiently small radii `ε`, and for any centre, the measure of a ball of radius
`2 * ε` is bounded by `C` times the measure of the concentric ball of radius `ε`.

Note: it is important that this definition makes a demand only for sufficiently small `ε`. For
example we want hyperbolic space to carry the instance `IsUnifLocDoublingMeasure volume` but
volumes grow exponentially in hyperbolic space. To be really explicit, consider the hyperbolic plane
of curvature -1, the area of a disc of radius `ε` is `A(ε) = 2π(cosh(ε) - 1)` so
`A(2ε)/A(ε) ~ exp(ε)`. -/
class IsUnifLocDoublingMeasure {α : Type*} [MetricSpace α] [MeasurableSpace α]
  (μ : Measure α) : Prop where
  exists_measure_closedBall_le_mul'' :
    ∃ C : ℝ≥0, ∀ᶠ ε in 𝓝[>] 0, ∀ x, μ (closedBall x (2 * ε)) ≤ C * μ (closedBall x ε)
#align is_unif_loc_doubling_measure IsUnifLocDoublingMeasure

namespace IsUnifLocDoublingMeasure

variable {α : Type*} [MetricSpace α] [MeasurableSpace α] (μ : Measure α)
  [IsUnifLocDoublingMeasure μ]

-- Porting note: added for missing infer kinds
theorem exists_measure_closedBall_le_mul :
    ∃ C : ℝ≥0, ∀ᶠ ε in 𝓝[>] 0, ∀ x, μ (closedBall x (2 * ε)) ≤ C * μ (closedBall x ε) :=
  exists_measure_closedBall_le_mul''

/-- A doubling constant for a uniformly locally doubling measure.

See also `IsUnifLocDoublingMeasure.scalingConstantOf`. -/
def doublingConstant : ℝ≥0 :=
  Classical.choose <| exists_measure_closedBall_le_mul μ
#align is_unif_loc_doubling_measure.doubling_constant IsUnifLocDoublingMeasure.doublingConstant

theorem exists_measure_closedBall_le_mul' :
    ∀ᶠ ε in 𝓝[>] 0, ∀ x, μ (closedBall x (2 * ε)) ≤ doublingConstant μ * μ (closedBall x ε) :=
  Classical.choose_spec <| exists_measure_closedBall_le_mul μ
#align is_unif_loc_doubling_measure.exists_measure_closed_ball_le_mul' IsUnifLocDoublingMeasure.exists_measure_closedBall_le_mul'

theorem exists_eventually_forall_measure_closedBall_le_mul (K : ℝ) :
    ∃ C : ℝ≥0,
      ∀ᶠ ε in 𝓝[>] 0, ∀ (x t) (_ : t ≤ K), μ (closedBall x (t * ε)) ≤ C * μ (closedBall x ε) := by
  let C := doublingConstant μ
  have hμ :
    ∀ n : ℕ, ∀ᶠ ε in 𝓝[>] 0, ∀ x,
      μ (closedBall x ((2 : ℝ) ^ n * ε)) ≤ ↑(C ^ n) * μ (closedBall x ε) := by
    intro n
    induction' n with n ih
    · simp
    replace ih := eventually_nhdsWithin_pos_mul_left (two_pos : 0 < (2 : ℝ)) ih
    refine' (ih.and (exists_measure_closedBall_le_mul' μ)).mono fun ε hε x => _
    calc
      μ (closedBall x ((2 : ℝ) ^ (n + 1) * ε)) = μ (closedBall x ((2 : ℝ) ^ n * (2 * ε))) := by
        rw [pow_succ', mul_assoc]
      _ ≤ ↑(C ^ n) * μ (closedBall x (2 * ε)) := (hε.1 x)
      _ ≤ ↑(C ^ n) * (C * μ (closedBall x ε)) := by gcongr; exact hε.2 x
      _ = ↑(C ^ (n + 1)) * μ (closedBall x ε) := by rw [← mul_assoc, pow_succ', ENNReal.coe_mul]
  rcases lt_or_le K 1 with (hK | hK)
  · refine' ⟨1, _⟩
    simp only [ENNReal.coe_one, one_mul]
    exact
      eventually_mem_nhdsWithin.mono fun ε hε x t ht =>
        measure_mono <| closedBall_subset_closedBall (by nlinarith [mem_Ioi.mp hε])
  · refine'
      ⟨C ^ ⌈Real.logb 2 K⌉₊,
        ((hμ ⌈Real.logb 2 K⌉₊).and eventually_mem_nhdsWithin).mono fun ε hε x t ht =>
          le_trans (measure_mono <| closedBall_subset_closedBall _) (hε.1 x)⟩
    refine' mul_le_mul_of_nonneg_right (ht.trans _) (mem_Ioi.mp hε.2).le
    conv_lhs => rw [← Real.rpow_logb two_pos (by norm_num) (by linarith : 0 < K)]
    rw [← Real.rpow_nat_cast]
    exact Real.rpow_le_rpow_of_exponent_le one_le_two (Nat.le_ceil (Real.logb 2 K))
#align is_unif_loc_doubling_measure.exists_eventually_forall_measure_closed_ball_le_mul IsUnifLocDoublingMeasure.exists_eventually_forall_measure_closedBall_le_mul

/-- A variant of `IsUnifLocDoublingMeasure.doublingConstant` which allows for scaling the
radius by values other than `2`. -/
def scalingConstantOf (K : ℝ) : ℝ≥0 :=
  max (Classical.choose <| exists_eventually_forall_measure_closedBall_le_mul μ K) 1
#align is_unif_loc_doubling_measure.scaling_constant_of IsUnifLocDoublingMeasure.scalingConstantOf

@[simp]
theorem one_le_scalingConstantOf (K : ℝ) : 1 ≤ scalingConstantOf μ K :=
  le_max_of_le_right <| le_refl 1
#align is_unif_loc_doubling_measure.one_le_scaling_constant_of IsUnifLocDoublingMeasure.one_le_scalingConstantOf

theorem eventually_measure_mul_le_scalingConstantOf_mul (K : ℝ) :
    ∃ R : ℝ,
      0 < R ∧
        ∀ (x t r) (_ : t ∈ Ioc 0 K) (_ : r ≤ R),
          μ (closedBall x (t * r)) ≤ scalingConstantOf μ K * μ (closedBall x r) := by
  have h := Classical.choose_spec (exists_eventually_forall_measure_closedBall_le_mul μ K)
  rcases mem_nhdsWithin_Ioi_iff_exists_Ioc_subset.1 h with ⟨R, Rpos, hR⟩
  refine' ⟨R, Rpos, fun x t r ht hr => _⟩
  rcases lt_trichotomy r 0 with (rneg | rfl | rpos)
  · have : t * r < 0 := mul_neg_of_pos_of_neg ht.1 rneg
    simp only [closedBall_eq_empty.2 this, measure_empty, zero_le']
  · simp only [mul_zero, closedBall_zero]
    refine' le_mul_of_one_le_of_le _ le_rfl
    apply ENNReal.one_le_coe_iff.2 (le_max_right _ _)
  · apply (hR ⟨rpos, hr⟩ x t ht.2).trans _
    exact mul_le_mul_right' (ENNReal.coe_le_coe.2 (le_max_left _ _)) _
#align is_unif_loc_doubling_measure.eventually_measure_mul_le_scaling_constant_of_mul IsUnifLocDoublingMeasure.eventually_measure_mul_le_scalingConstantOf_mul

theorem eventually_measure_le_scaling_constant_mul (K : ℝ) :
    ∀ᶠ r in 𝓝[>] 0, ∀ x, μ (closedBall x (K * r)) ≤ scalingConstantOf μ K * μ (closedBall x r) := by
  filter_upwards [Classical.choose_spec
      (exists_eventually_forall_measure_closedBall_le_mul μ K)]with r hr x
  exact (hr x K le_rfl).trans (mul_le_mul_right' (ENNReal.coe_le_coe.2 (le_max_left _ _)) _)
#align is_unif_loc_doubling_measure.eventually_measure_le_scaling_constant_mul IsUnifLocDoublingMeasure.eventually_measure_le_scaling_constant_mul

theorem eventually_measure_le_scaling_constant_mul' (K : ℝ) (hK : 0 < K) :
    ∀ᶠ r in 𝓝[>] 0, ∀ x,
      μ (closedBall x r) ≤ scalingConstantOf μ K⁻¹ * μ (closedBall x (K * r)) := by
  convert eventually_nhdsWithin_pos_mul_left hK (eventually_measure_le_scaling_constant_mul μ K⁻¹)
  simp [inv_mul_cancel_left₀ hK.ne']
#align is_unif_loc_doubling_measure.eventually_measure_le_scaling_constant_mul' IsUnifLocDoublingMeasure.eventually_measure_le_scaling_constant_mul'

/-- A scale below which the doubling measure `μ` satisfies good rescaling properties when one
multiplies the radius of balls by at most `K`, as stated
in `IsUnifLocDoublingMeasure.measure_mul_le_scalingConstantOf_mul`. -/
def scalingScaleOf (K : ℝ) : ℝ :=
  (eventually_measure_mul_le_scalingConstantOf_mul μ K).choose
#align is_unif_loc_doubling_measure.scaling_scale_of IsUnifLocDoublingMeasure.scalingScaleOf

theorem scalingScaleOf_pos (K : ℝ) : 0 < scalingScaleOf μ K :=
  (eventually_measure_mul_le_scalingConstantOf_mul μ K).choose_spec.1
#align is_unif_loc_doubling_measure.scaling_scale_of_pos IsUnifLocDoublingMeasure.scalingScaleOf_pos

theorem measure_mul_le_scalingConstantOf_mul {K : ℝ} {x : α} {t r : ℝ} (ht : t ∈ Ioc 0 K)
    (hr : r ≤ scalingScaleOf μ K) :
    μ (closedBall x (t * r)) ≤ scalingConstantOf μ K * μ (closedBall x r) :=
  (eventually_measure_mul_le_scalingConstantOf_mul μ K).choose_spec.2 x t r ht hr
#align is_unif_loc_doubling_measure.measure_mul_le_scaling_constant_of_mul IsUnifLocDoublingMeasure.measure_mul_le_scalingConstantOf_mul

end IsUnifLocDoublingMeasure
```
