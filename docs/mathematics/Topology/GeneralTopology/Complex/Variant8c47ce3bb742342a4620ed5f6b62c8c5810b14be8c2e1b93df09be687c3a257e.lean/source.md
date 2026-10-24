# Complete source: GRWTSK.Topology.GeneralTopology.Complex.Variant8c47ce3bb742342a4620ed5f6b62c8c5810b14be8c2e1b93df09be687c3a257e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb36bd8171ee4962a124cc848a11b06522e0bd4a` · SHA-256 `36c3c7a6244ab9383ebc851efe34d1176858b92373d4f7549ac5d90840bf8105`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ComplexSubfieldEqOfClosed.Variant071a1be1b1ecd7a86ec9823a8942cc2251081f29f05f7f40287dc63b2beee2c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"071a1be1b1ecd7a86ec9823a8942cc2251081f29f05f7f40287dc63b2beee2c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ComplexSubfieldEqOfClosed.Variant071a1be1b1ecd7a86ec9823a8942cc2251081f29f05f7f40287dc63b2beee2c4","mathematical_subject":"Topology.GeneralTopology","original_sha256":"071a1be1b1ecd7a86ec9823a8942cc2251081f29f05f7f40287dc63b2beee2c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Instances/Complex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Xavier Roblot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Roblot
-/
module

public import Mathlib.Analysis.Complex.Basic
public import Mathlib.FieldTheory.IntermediateField.Basic
public import Mathlib.LinearAlgebra.Complex.FiniteDimensional
public import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
public import Mathlib.Topology.Algebra.Field
public import Mathlib.Topology.Algebra.UniformRing

/-!
# Some results about the topology of ℂ
-/


namespace GRWTSK.Topology.GeneralTopology.ComplexSubfieldEqOfClosed.Variant071a1be1b1ecd7a86ec9823a8942cc2251081f29f05f7f40287dc63b2beee2c4

public section


section ComplexSubfield

open Complex Set

open scoped ComplexConjugate

/-- The only closed subfields of `ℂ` are `ℝ` and `ℂ`. -/
theorem Complex.subfield_eq_of_closed {K : Subfield ℂ} (hc : IsClosed (K : Set ℂ)) :
    K = ofRealHom.fieldRange ∨ K = ⊤ := by
  suffices range (ofReal : ℝ → ℂ) ⊆ K by
    rw [range_subset_iff, ← coe_algebraMap] at this
    have :=
      (Subalgebra.isSimpleOrder_of_finrank finrank_real_complex).eq_bot_or_eq_top
        (Subfield.toIntermediateField K this).toSubalgebra
    simp_rw [← SetLike.coe_set_eq, IntermediateField.coe_toSubalgebra] at this ⊢
    exact this
  suffices range (ofReal : ℝ → ℂ) ⊆ closure (Set.range ((ofReal : ℝ → ℂ) ∘ ((↑) : ℚ → ℝ))) by
    refine subset_trans this ?_
    rw [← IsClosed.closure_eq hc]
    apply closure_mono
    rintro _ ⟨_, rfl⟩
    simp only [Function.comp_apply, ofReal_ratCast, SetLike.mem_coe, SubfieldClass.ratCast_mem]
  nth_rw 1 [range_comp]
  refine subset_trans ?_ (image_closure_subset_closure_image continuous_ofReal)
  rw [DenseRange.closure_range Rat.isDenseEmbedding_coe_real.dense]
  simp only [image_univ]
  rfl

/-- Let `K` a subfield of `ℂ` and let `ψ : K →+* ℂ` a ring homomorphism. Assume that `ψ` is uniform
continuous, then `ψ` is either the inclusion map or the composition of the inclusion map with the
complex conjugation. -/
theorem Complex.uniformContinuous_ringHom_eq_id_or_conj (K : Subfield ℂ) {ψ : K →+* ℂ}
    (hc : UniformContinuous ψ) : ψ.toFun = K.subtype ∨ ψ.toFun = conj ∘ K.subtype := by
  let : IsTopologicalDivisionRing ℂ := IsTopologicalDivisionRing.mk
  let : IsTopologicalRing K.topologicalClosure :=
    Subring.instIsTopologicalRing K.topologicalClosure.toSubring
  set ι : K → K.topologicalClosure := ⇑(Subfield.inclusion K.le_topologicalClosure)
  have ui : IsUniformInducing ι :=
    ⟨by
      rw [uniformity_subtype, uniformity_subtype, Filter.comap_comap]
      congr ⟩
  let di := ui.isDenseInducing (?_ : DenseRange ι)
  · -- extψ : closure(K) →+* ℂ is the extension of ψ : K →+* ℂ
    let extψ := IsDenseInducing.extendRingHom ui di.dense hc
    have hψ := (uniformContinuous_uniformly_extend ui di.dense hc).continuous
    rcases Complex.subfield_eq_of_closed (Subfield.isClosed_topologicalClosure K) with h | h
    · left
      let j := RingEquiv.subfieldCongr h
      -- ψ₁ is the continuous ring hom `ℝ →+* ℂ` constructed from `j : closure (K) ≃+* ℝ`
      -- and `extψ : closure (K) →+* ℂ`
      let ψ₁ := RingHom.comp extψ (RingHom.comp j.symm.toRingHom ofRealHom.rangeRestrictField)
      -- Porting note: was `by continuity!` and was used inline
      have hψ₁ : Continuous ψ₁ := by
        simpa only [RingHom.coe_comp] using! hψ.comp ((continuous_algebraMap ℝ ℂ).subtype_mk _)
      ext1 x
      rsuffices ⟨r, hr⟩ : ∃ r : ℝ, ofRealHom.rangeRestrictField r = j (ι x)
      · have := RingHom.congr_fun (ringHom_eq_ofReal_of_continuous hψ₁) r
        rw [RingHom.comp_apply, RingHom.comp_apply, hr, RingEquiv.toRingHom_eq_coe] at this
        convert! this using 1
        · exact (IsDenseInducing.extend_eq di hc.continuous _).symm
        · rw [← ofRealHom.coe_rangeRestrictField, hr]
          rfl
      obtain ⟨r, hr⟩ := SetLike.coe_mem (j (ι x))
      exact ⟨r, Subtype.ext hr⟩
    · -- ψ₁ is the continuous ring hom `ℂ →+* ℂ` constructed from `closure (K) ≃+* ℂ`
      -- and `extψ : closure (K) →+* ℂ`
      let ψ₁ :=
        RingHom.comp extψ
          (RingHom.comp (RingEquiv.subfieldCongr h).symm.toRingHom
            (@Subfield.topEquiv ℂ _).symm.toRingHom)
      -- Porting note: was `by continuity!` and was used inline
      have hψ₁ : Continuous ψ₁ := by
        simpa only [RingHom.coe_comp] using! hψ.comp (continuous_id.subtype_mk _)
      rcases ringHom_eq_id_or_conj_of_continuous hψ₁ with h | h
      · left
        ext1 z
        convert! RingHom.congr_fun h z using 1
        exact (IsDenseInducing.extend_eq di hc.continuous z).symm
      · right
        ext1 z
        convert! RingHom.congr_fun h z using 1
        exact (IsDenseInducing.extend_eq di hc.continuous z).symm
  · let j : { x // x ∈ closure (id '' K) } → (K.topologicalClosure : Set ℂ) :=
      fun x =>
      ⟨x, by
        convert! x.prop
        simp only [id, Set.image_id']
        rfl ⟩
    convert!
      DenseRange.comp (Function.Surjective.denseRange _) (IsDenseEmbedding.id.subtype (· ∈ K)).dense
        (by fun_prop : Continuous j)
    rintro ⟨y, hy⟩
    use
      ⟨y, by
        convert! hy
        simp only [id, Set.image_id']
        rfl ⟩

end ComplexSubfield
```
