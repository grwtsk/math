-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.UnitizationAddEquivProd.Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.UnitizationAddEquivProd.Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8","mathematical_subject":"Topology.MetricSpaces","original_sha256":"65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Algebra/UnitizationL1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
module

public import Mathlib.Algebra.Algebra.TransferInstance
public import Mathlib.Algebra.Algebra.Unitization
public import Mathlib.Analysis.Normed.Lp.ProdLp

/-! # Unitization equipped with the $L^1$ norm

In another file, the `Unitization 𝕜 A` of a non-unital normed `𝕜`-algebra `A` is equipped with the
norm inherited as the pullback via a map (closely related to) the left-regular representation of the
algebra on itself (see `Unitization.instNormedRing`).

However, this construction is only valid (and an isometry) when `A` is a `RegularNormedAlgebra`.
Sometimes it is useful to consider the unitization of a non-unital algebra with the $L^1$ norm
instead. This file provides that norm on the type synonym `WithLp 1 (Unitization 𝕜 A)`, along
with the algebra isomorphism between `Unitization 𝕜 A` and `WithLp 1 (Unitization 𝕜 A)`.
Note that `TrivSqZeroExt` is also equipped with the $L^1$ norm in the analogous way, but it is
registered as an instance without the type synonym.

One application of this is a straightforward proof that the quasispectrum of an element in a
non-unital Banach algebra is compact, which can be established by passing to the unitization.
-/


namespace GRWTSK.Topology.MetricTopology.UnitizationAddEquivProd.Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8

@[expose] public section

variable (𝕜 A : Type*) [NormedField 𝕜] [NonUnitalNormedRing A]
variable [NormedSpace 𝕜 A]

namespace WithLp

open Unitization

/-- The natural map between `Unitization 𝕜 A` and `𝕜 × A`, transferred to their `WithLp 1`
synonyms. -/
noncomputable def unitization_addEquiv_prod : WithLp 1 (Unitization 𝕜 A) ≃+ WithLp 1 (𝕜 × A) :=
  (WithLp.linearEquiv 1 𝕜 (Unitization 𝕜 A)).toAddEquiv.trans <|
    (addEquiv 𝕜 A).trans (WithLp.linearEquiv 1 𝕜 (𝕜 × A)).symm.toAddEquiv

noncomputable instance instUnitizationNormedAddCommGroup :
    NormedAddCommGroup (WithLp 1 (Unitization 𝕜 A)) :=
  NormedAddCommGroup.induced (WithLp 1 (Unitization 𝕜 A)) (WithLp 1 (𝕜 × A))
    (unitization_addEquiv_prod 𝕜 A) (AddEquiv.injective _)

/-- Bundle `WithLp.unitization_addEquiv_prod` as a `UniformEquiv`. -/
noncomputable def uniformEquiv_unitization_addEquiv_prod :
    WithLp 1 (Unitization 𝕜 A) ≃ᵤ WithLp 1 (𝕜 × A) :=
  { unitization_addEquiv_prod 𝕜 A with
    uniformContinuous_invFun := uniformContinuous_comap' uniformContinuous_id
    uniformContinuous_toFun := uniformContinuous_iff_le_comap.mpr le_rfl }

instance instCompleteSpace [CompleteSpace 𝕜] [CompleteSpace A] :
    CompleteSpace (WithLp 1 (Unitization 𝕜 A)) :=
  completeSpace_congr (uniformEquiv_unitization_addEquiv_prod 𝕜 A).isUniformEmbedding |>.mpr
    inferInstance

variable {𝕜 A}

open ENNReal in
lemma unitization_norm_def (x : WithLp 1 (Unitization 𝕜 A)) :
    ‖x‖ = ‖(ofLp x).fst‖ + ‖(ofLp x).snd‖ := calc
  ‖x‖ = (‖(ofLp x).fst‖ ^ (1 : ℝ≥0∞).toReal +
      ‖(ofLp x).snd‖ ^ (1 : ℝ≥0∞).toReal) ^ (1 / (1 : ℝ≥0∞).toReal) :=
    prod_norm_eq_add (by simp : 0 < (1 : ℝ≥0∞).toReal) _
  _ = ‖(ofLp x).fst‖ + ‖(ofLp x).snd‖ := by simp

lemma unitization_nnnorm_def (x : WithLp 1 (Unitization 𝕜 A)) :
    ‖x‖₊ = ‖(ofLp x).fst‖₊ + ‖(ofLp x).snd‖₊ :=
  Subtype.ext <| unitization_norm_def x

lemma unitization_norm_inr (x : A) : ‖toLp 1 (x : Unitization 𝕜 A)‖ = ‖x‖ := by
  simp [unitization_norm_def]

lemma unitization_nnnorm_inr (x : A) : ‖toLp 1 (x : Unitization 𝕜 A)‖₊ = ‖x‖₊ := by
  simp [unitization_nnnorm_def]

lemma unitization_isometry_inr : Isometry fun x : A ↦ toLp 1 (x : Unitization 𝕜 A) :=
  AddMonoidHomClass.isometry_of_norm
    ((WithLp.linearEquiv 1 𝕜 (Unitization 𝕜 A)).symm.comp <| Unitization.inrHom 𝕜 𝕜 A)
    unitization_norm_inr

variable [IsScalarTower 𝕜 A A] [SMulCommClass 𝕜 A A]

instance instUnitizationRing : Ring (WithLp 1 (Unitization 𝕜 A)) :=
  (WithLp.equiv 1 (Unitization 𝕜 A)).ring

@[simp]
lemma unitization_mul (x y : WithLp 1 (Unitization 𝕜 A)) : ofLp (x * y) = ofLp x * ofLp y := rfl

instance {R : Type*} [CommSemiring R] [Algebra R 𝕜] [DistribMulAction R A] [IsScalarTower R 𝕜 A] :
    Algebra R (WithLp 1 (Unitization 𝕜 A)) :=
  (WithLp.equiv 1 (Unitization 𝕜 A)).algebra R

@[simp]
lemma unitization_ofLp_one : ofLp (1 : WithLp 1 (Unitization 𝕜 A)) = 1 := rfl

@[simp]
lemma unitization_toLp_one : toLp 1 (1 : Unitization 𝕜 A) = 1 := rfl

instance : NormOneClass (WithLp 1 (Unitization 𝕜 A)) where
  norm_one := by simp [unitization_norm_def]

@[simp]
lemma unitization_algebraMap (r : 𝕜) :
    ofLp (algebraMap 𝕜 (WithLp 1 (Unitization 𝕜 A)) r) = algebraMap 𝕜 (Unitization 𝕜 A) r := rfl

/-- `equiv` bundled as an algebra isomorphism with `Unitization 𝕜 A`. -/
@[simps!]
def unitizationAlgEquiv (R : Type*) [CommSemiring R] [Algebra R 𝕜] [DistribMulAction R A]
    [IsScalarTower R 𝕜 A] : WithLp 1 (Unitization 𝕜 A) ≃ₐ[R] Unitization 𝕜 A where
  __ := WithLp.linearEquiv _ R _
  map_mul' _ _ := rfl
  map_add' _ _ := rfl
  commutes' _ := rfl

noncomputable instance instUnitizationNormedRing : NormedRing (WithLp 1 (Unitization 𝕜 A)) where
  dist_eq := dist_eq_norm_neg_add
  norm_mul_le x y := by
    simp_rw [unitization_norm_def, add_mul, mul_add, unitization_mul, fst_mul, snd_mul]
    rw [add_assoc, add_assoc]
    gcongr
    · exact norm_mul_le _ _
    · apply (norm_add_le _ _).trans
      gcongr
      · simp [norm_smul]
      · apply (norm_add_le _ _).trans
        gcongr
        · simp [norm_smul, mul_comm]
        · exact norm_mul_le _ _

noncomputable instance instUnitizationNormedAlgebra :
    NormedAlgebra 𝕜 (WithLp 1 (Unitization 𝕜 A)) where
  norm_smul_le r x := by
    simp_rw [unitization_norm_def, ofLp_smul, fst_smul, snd_smul, norm_smul, mul_add]
    exact le_rfl

end WithLp
