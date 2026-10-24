# Complete source: GRWTSK.Analysis.MeasureTheory.Measure.Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bd94d3a3bb9e26dd1e4bfc9ffb0188a2707897f` · SHA-256 `89395c445d8618fe62ce4a6112390c2a403f80395458536fb8872b1d50571aaf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableEmbeddingCoe.Variantb2c46cf920ea90003093ecbf85bf9617294ce2cd25a2fb87efb8f77d740a048a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2c46cf920ea90003093ecbf85bf9617294ce2cd25a2fb87efb8f77d740a048a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableEmbeddingCoe.Variantb2c46cf920ea90003093ecbf85bf9617294ce2cd25a2fb87efb8f77d740a048a","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"b2c46cf920ea90003093ecbf85bf9617294ce2cd25a2fb87efb8f77d740a048a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Complex/UpperHalfPlane/Measure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/

module

public import Mathlib.Analysis.Calculus.FDeriv.RestrictScalars
public import Mathlib.Analysis.Complex.UpperHalfPlane.Topology
public import Mathlib.Analysis.Complex.UpperHalfPlane.Manifold
public import Mathlib.LinearAlgebra.Complex.FiniteDimensional
public import Mathlib.MeasureTheory.Constructions.BorelSpace.Complex
public import Mathlib.MeasureTheory.Measure.Haar.OfBasis
public import Mathlib.MeasureTheory.Measure.WithDensity
public import Mathlib.MeasureTheory.Function.Jacobian

/-!
# Invariant measure on the upper half-plane

We equip the upper half-plane with a measure, defined as the restriction of the usual measure
on `ℂ` weighted by the function `1 / (im z) ^ 2`. We show that this measure is invariant under
the action of `GL(2, ℝ)`.
-/


namespace GRWTSK.Analysis.MeasureTheory.MeasurableEmbeddingCoe.Variantb2c46cf920ea90003093ecbf85bf9617294ce2cd25a2fb87efb8f77d740a048a

open MeasureTheory
open scoped NNReal

public noncomputable section

namespace UpperHalfPlane

instance : MeasurableSpace ℍ := .comap UpperHalfPlane.coe inferInstance

instance : BorelSpace ℍ := ⟨borel_comap.symm⟩

lemma measurableEmbedding_coe : MeasurableEmbedding UpperHalfPlane.coe :=
  isOpenEmbedding_coe.measurableEmbedding

@[fun_prop]
lemma measurable_coe : Measurable UpperHalfPlane.coe :=
  measurableEmbedding_coe.measurable

/-- The invariant measure on the upper half-plane, defined by `dx dy / y ^ 2`. -/
instance : MeasureSpace ℍ :=
  ⟨(volume.comap UpperHalfPlane.coe).withDensity
    fun z ↦ ↑((1 / NNReal.mk z.im z.im_pos.le : ℝ≥0) ^ 2)⟩

theorem volume_def :
    (volume : Measure ℍ) = (volume.comap UpperHalfPlane.coe).withDensity fun z ↦
      ↑((1 / NNReal.mk z.im z.im_pos.le : ℝ≥0) ^ 2) :=
  rfl

instance : IsFiniteMeasureOnCompacts (volume.comap UpperHalfPlane.coe) :=
  .comap' _ continuous_coe measurableEmbedding_coe

instance : IsLocallyFiniteMeasure (volume.comap UpperHalfPlane.coe) := inferInstance

instance : SigmaFinite (volume.comap UpperHalfPlane.coe) := inferInstance

instance : SFinite (volume.comap UpperHalfPlane.coe) := inferInstance

instance : IsLocallyFiniteMeasure (volume : Measure ℍ) := by
  refine .withDensity_coe ?_
  refine .pow (.div₀ continuous_const ?_ ?_) _
  · exact continuous_im.subtype_mk _
  · exact fun x ↦ NNReal.ne_iff.mp x.im_ne_zero

instance : IsFiniteMeasureOnCompacts (volume : Measure ℍ) := inferInstance

instance : SigmaFinite (volume : Measure ℍ) := inferInstance

instance : SFinite (volume : Measure ℍ) := inferInstance

/-- Express the volume of a measurable set as a Lebesgue integral
over the corresponding subset of `ℂ`. -/
lemma volume_eq_lintegral (s : Set ℍ) :
    volume s = ∫⁻ z : ℂ in (↑) '' s, ↑((1 / ‖z.im‖₊) ^ 2 : NNReal) := by
  have : MeasurePreserving UpperHalfPlane.coe (volume.comap UpperHalfPlane.coe)
      (volume.restrict (.range UpperHalfPlane.coe)) :=
    ⟨measurable_coe, by rw [measurableEmbedding_coe.map_comap]⟩
  rw [volume_def, withDensity_apply',
    ← Set.inter_eq_self_of_subset_left (Set.image_subset_range _ _),
    ← Measure.restrict_restrict', ← this.setLIntegral_comp_emb measurableEmbedding_coe]
  · simp [Real.nnnorm_of_nonneg (im_pos _).le]
  · exact measurableEmbedding_coe.measurableSet_range

/-- The measure on the upper half-plane is invariant under `GL(2, ℝ)`. -/
instance : SMulInvariantMeasure (GL (Fin 2) ℝ) ℍ volume := by
  -- It suffices to show `volume (g • s) = volume s` for measurable sets `s`. First
  -- we write this as a lintegral over subsets of `ℂ`.
  refine ((smulInvariantMeasure_tfae _ _).out 3 1).mp fun g s hs ↦ ?_
  rw [volume_eq_lintegral, volume_eq_lintegral, ← Set.image_smul, Set.image_image]
  -- We want to apply the Jacobian change-of-variable formula.
  have hinj : Set.InjOn (fun z ↦ ↑(g • ofComplex z) : ℂ → ℂ) (UpperHalfPlane.coe '' s) :=
    .image_of_comp <| by simp
  have main := MeasureTheory.lintegral_image_eq_lintegral_abs_det_fderiv_mul
      volume (measurableEmbedding_coe.measurableSet_image.mpr hs)
      (Set.forall_mem_image.mpr fun z hz ↦
        (hasStrictFDerivAt_smul g _).hasFDerivAt.hasFDerivWithinAt)
      hinj
      (fun z ↦ ↑((1 / ‖z.im‖₊) ^ 2 : NNReal))
  convert! main using 1
  · simp [Set.image_image]
  · apply setLIntegral_congr_fun (measurableEmbedding_coe.measurableSet_image.mpr hs)
    rintro _ ⟨τ, -, rfl⟩
    simp only [← Real.enorm_eq_ofReal_abs, enorm_eq_nnnorm]
    have : ‖(SignType.sign g.val.det : ℝ)‖₊ = 1 := by
      rcases g.det_ne_zero.lt_or_gt with h | h <;> simp [h]
    have := g.det_ne_zero
    have := denom_ne_zero g τ
    norm_cast
    ext
    simp [det_smulFDeriv, *, im_smul_eq_div_normSq, Complex.normSq_eq_norm_sq, field]

end UpperHalfPlane

end
```
