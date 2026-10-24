# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Flat.Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19107953dbbc9a01f97436c58454ea4ee2f3053f` · SHA-256 `2632d7387595e5f2c05889e83b78f0809eb7b0ce4a777ecc77f0c9451e6fe382`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.Flat.Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.Flat.Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicGeometry/Morphisms/Flat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties
import Mathlib.AlgebraicGeometry.Morphisms.QuasiCompact
import Mathlib.AlgebraicGeometry.Morphisms.Affine
import Mathlib.AlgebraicGeometry.PullbackCarrier
import Mathlib.RingTheory.RingHom.Flat

/-!
# Flat morphisms

A morphism of schemes `f : X ⟶ Y` is flat if for each affine `U ⊆ Y` and
`V ⊆ f ⁻¹' U`, the induced map `Γ(Y, U) ⟶ Γ(X, V)` is flat. This is equivalent to
asking that all stalk maps are flat (see `AlgebraicGeometry.Flat.iff_flat_stalkMap`).

We show that this property is local, and are stable under compositions and base change.

-/


namespace GRWTSK.Geometry.AlgebraicGeometry.Flat.Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58

noncomputable section

open CategoryTheory CategoryTheory.Limits Opposite TopologicalSpace

universe v u

namespace AlgebraicGeometry

variable {X Y : Scheme.{u}} (f : X ⟶ Y)

/-- A morphism of schemes `f : X ⟶ Y` is flat if for each affine `U ⊆ Y` and
`V ⊆ f ⁻¹' U`, the induced map `Γ(Y, U) ⟶ Γ(X, V)` is flat. This is equivalent to
asking that all stalk maps are flat (see `AlgebraicGeometry.Flat.iff_flat_stalkMap`).
-/
@[mk_iff]
class Flat (f : X ⟶ Y) : Prop where
  flat_of_affine_subset :
    ∀ (U : Y.affineOpens) (V : X.affineOpens) (e : V.1 ≤ f ⁻¹ᵁ U.1), (f.appLE U V e).hom.Flat

namespace Flat

instance : HasRingHomProperty @Flat RingHom.Flat where
  isLocal_ringHomProperty := RingHom.Flat.propertyIsLocal
  eq_affineLocally' := by
    ext X Y f
    rw [flat_iff, affineLocally_iff_affineOpens_le]

instance (priority := 900) [IsOpenImmersion f] : Flat f :=
  HasRingHomProperty.of_isOpenImmersion
    RingHom.Flat.containsIdentities

instance : MorphismProperty.IsStableUnderComposition @Flat :=
  HasRingHomProperty.stableUnderComposition RingHom.Flat.stableUnderComposition

instance comp {X Y Z : Scheme} (f : X ⟶ Y) (g : Y ⟶ Z)
    [hf : Flat f] [hg : Flat g] : Flat (f ≫ g) :=
  MorphismProperty.comp_mem _ f g hf hg

instance : MorphismProperty.IsMultiplicative @Flat where
  id_mem _ := inferInstance

instance isStableUnderBaseChange : MorphismProperty.IsStableUnderBaseChange @Flat :=
  HasRingHomProperty.isStableUnderBaseChange RingHom.Flat.isStableUnderBaseChange

instance {X Y Z : Scheme.{u}} (f : X ⟶ Z) (g : Y ⟶ Z) [Flat g] : Flat (pullback.fst f g) :=
  MorphismProperty.pullback_fst _ _ inferInstance

instance {X Y Z : Scheme.{u}} (f : X ⟶ Z) (g : Y ⟶ Z) [Flat f] : Flat (pullback.snd f g) :=
  MorphismProperty.pullback_snd _ _ inferInstance

lemma of_stalkMap (H : ∀ x, (f.stalkMap x).hom.Flat) : Flat f :=
  HasRingHomProperty.of_stalkMap RingHom.Flat.ofLocalizationPrime H

lemma stalkMap [Flat f] (x : X) : (f.stalkMap x).hom.Flat :=
  HasRingHomProperty.stalkMap (P := @Flat)
    (fun f hf J hJ ↦ hf.localRingHom J (J.comap f) rfl) ‹_› x

lemma iff_flat_stalkMap : Flat f ↔ ∀ x, (f.stalkMap x).hom.Flat :=
  ⟨fun _ ↦ stalkMap f, fun H ↦ of_stalkMap f H⟩

instance {X : Scheme.{u}} {ι : Type v} [Small.{u} ι] {Y : ι → Scheme.{u}} {f : ∀ i, Y i ⟶ X}
    [∀ i, Flat (f i)] : Flat (Sigma.desc f) :=
  IsLocalAtSource.sigmaDesc (fun _ ↦ inferInstance)

/-- A surjective, quasi-compact, flat morphism is a quotient map. -/
@[stacks 02JY]
lemma isQuotientMap_of_surjective {X Y : Scheme.{u}} (f : X ⟶ Y) [Flat f] [QuasiCompact f]
    [Surjective f] : Topology.IsQuotientMap f.base := by
  rw [Topology.isQuotientMap_iff]
  refine ⟨f.surjective, fun s ↦ ⟨fun hs ↦ hs.preimage f.continuous, fun hs ↦ ?_⟩⟩
  wlog hY : ∃ R, Y = Spec R
  · let 𝒰 := Y.affineCover
    rw [𝒰.isOpenCover_opensRange.isOpen_iff_inter]
    intro i
    rw [Scheme.Hom.coe_opensRange, ← Set.image_preimage_eq_inter_range]
    apply (𝒰.map i).isOpenEmbedding.isOpenMap
    refine this (f := pullback.fst (𝒰.map i) f) _ ?_ ⟨_, rfl⟩
    rw [← Set.preimage_comp, ← TopCat.coe_comp, ← Scheme.comp_base, pullback.condition,
      Scheme.comp_base, TopCat.coe_comp, Set.preimage_comp]
    exact hs.preimage (Scheme.Hom.continuous _)
  obtain ⟨R, rfl⟩ := hY
  wlog hX : ∃ S, X = Spec S
  · have _ : CompactSpace X := QuasiCompact.compactSpace_of_compactSpace f
    let 𝒰 := X.affineCover.finiteSubcover
    let p : ∐ (fun i : 𝒰.J ↦ 𝒰.obj i) ⟶ X := Sigma.desc (fun i ↦ 𝒰.map i)
    have _ (i : 𝒰.J) : IsAffine (𝒰.obj i) := inferInstanceAs <| IsAffine (X.affineCover.obj _)
    refine this (f := (∐ (fun i : 𝒰.J ↦ 𝒰.obj i)).isoSpec.inv ≫ p ≫ f) _ _ ?_ ⟨_, rfl⟩
    rw [← Category.assoc, Scheme.comp_base, TopCat.coe_comp, Set.preimage_comp]
    exact hs.preimage (_ ≫ p).continuous
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  refine ((PrimeSpectrum.isQuotientMap_of_generalizingMap ?_ ?_).isOpen_preimage).mp hs
  · exact (surjective_iff (Spec.map φ)).mp inferInstance
  · apply RingHom.Flat.generalizingMap_comap
    rwa [← HasRingHomProperty.Spec_iff (P := @Flat)]

end Flat

end AlgebraicGeometry
```
