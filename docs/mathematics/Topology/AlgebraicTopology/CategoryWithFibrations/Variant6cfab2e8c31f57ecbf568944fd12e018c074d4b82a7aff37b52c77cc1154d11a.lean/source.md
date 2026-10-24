# Complete source: GRWTSK.Topology.AlgebraicTopology.CategoryWithFibrations.Variant6cfab2e8c31f57ecbf568944fd12e018c074d4b82a7aff37b52c77cc1154d11a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac1166caaf300df7d9c2ac549b3261b65bac116d` · SHA-256 `a0e0a74ef18dfe61d5c884ac98c8bf211d17a3eef0103ad191fc52a02a9b784f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.I.Variantbf91f38345943497cd9a1d88516957bba5ea76b8bef1b8e97fff0a7026800715","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf91f38345943497cd9a1d88516957bba5ea76b8bef1b8e97fff0a7026800715","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.I.Variantbf91f38345943497cd9a1d88516957bba5ea76b8bef1b8e97fff0a7026800715","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"bf91f38345943497cd9a1d88516957bba5ea76b8bef1b8e97fff0a7026800715","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplicialSet/CategoryWithFibrations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.ModelCategory.CategoryWithCofibrations
public import Mathlib.AlgebraicTopology.SimplicialSet.HornColimits
public import Mathlib.AlgebraicTopology.SimplicialSet.Skeleton
public import Mathlib.CategoryTheory.SmallObject.TransfiniteCompositionLifting

/-!
# Cofibrations and fibrations in the category of simplicial sets

We endow `SSet` with `CategoryWithCofibrations` and `CategoryWithFibrations`
instances. Cofibrations are monomorphisms, and fibrations are morphisms
having the right lifting property with respect to horn inclusions.

We have an instance `mono_of_cofibration` (but only a lemma `cofibration_of_mono`).
Then, when stating lemmas about cofibrations of simplicial sets, it is advisable
to use the assumption `[Mono f]` instead of `[Cofibration f]`.

-/


namespace GRWTSK.Topology.AlgebraicTopology.I.Variantbf91f38345943497cd9a1d88516957bba5ea76b8bef1b8e97fff0a7026800715

@[expose] public section

open CategoryTheory HomotopicalAlgebra MorphismProperty

open scoped Simplicial

universe u

namespace SSet

namespace modelCategoryQuillen

/-- The generating cofibrations: this is the family of morphisms in `SSet`
which consists of boundary inclusions `∂Δ[n].ι : ∂Δ[n] ⟶ Δ[n]`. -/
def I : MorphismProperty SSet.{u} :=
  .ofHoms (fun n ↦ ∂Δ[n].ι)

lemma boundary_ι_mem_I (n : ℕ) :
    I (boundary.{u} n).ι := by constructor

/-- The generating trivial cofibrations: this is the family of morphisms in `SSet`
which consists of horn inclusions `Λ[n, i].ι : Λ[n, i] ⟶ Δ[n]` (for positive `n`). -/
def J : MorphismProperty SSet.{u} :=
  ⨆ n, .ofHoms (fun (i : Fin (n + 2)) ↦ Λ[n + 1, i].ι)

lemma horn_ι_mem_J (n : ℕ) [NeZero n] (i : Fin (n + 1)) :
    J (horn.{u} n i).ι := by
  obtain _ | n := n
  · exact (NeZero.ne 0 rfl).elim
  · simp only [J, iSup_iff]
    exact ⟨n, ⟨i⟩⟩

lemma I_le_monomorphisms : I.{u} ≤ monomorphisms _ := by
  rintro _ _ _ ⟨n⟩
  exact monomorphisms.infer_property _

lemma J_le_monomorphisms : J.{u} ≤ monomorphisms _ := by
  rintro _ _ _ h
  simp only [J, iSup_iff] at h
  obtain ⟨n, ⟨i⟩⟩ := h
  exact monomorphisms.infer_property _

/-- The cofibrations for the Quillen model category structure (TODO)
on `SSet` are monomorphisms. -/
scoped instance : CategoryWithCofibrations SSet.{u} where
  cofibrations := .monomorphisms _

/-- The fibrations for the Quillen model category structure (TODO)
on `SSet` are the morphisms which have the right lifting property
with respect to horn inclusions. -/
scoped instance : CategoryWithFibrations SSet.{u} where
  fibrations := J.rlp

lemma cofibrations_eq : cofibrations SSet.{u} = monomorphisms _ := rfl

lemma fibrations_eq : fibrations SSet.{u} = J.rlp := rfl

section

variable {X Y : SSet.{u}} (f : X ⟶ Y)

lemma cofibration_iff : Cofibration f ↔ Mono f := by
  rw [HomotopicalAlgebra.cofibration_iff]
  rfl

lemma fibration_iff : Fibration f ↔ J.rlp f := by
  rw [HomotopicalAlgebra.fibration_iff]
  rfl

instance mono_of_cofibration [Cofibration f] : Mono f := by rwa [← cofibration_iff]

lemma cofibration_of_mono [Mono f] : Cofibration f := by rwa [cofibration_iff]

instance [hf : Fibration f] {n : ℕ} (i : Fin (n + 2)) :
    HasLiftingProperty (horn (n + 1) i).ι f := by
  rw [fibration_iff] at hf
  exact hf _ (horn_ι_mem_J _ _)

instance : (fibrations SSet.{u}).IsMultiplicative := by
  rw [fibrations_eq]
  infer_instance

instance : (fibrations SSet.{u}).IsStableUnderRetracts := by
  rw [fibrations_eq]
  infer_instance

instance : (cofibrations SSet.{u}).IsMultiplicative := by
  rw [cofibrations_eq]
  infer_instance

instance : (cofibrations SSet.{u}).IsStableUnderRetracts := by
  rw [cofibrations_eq]
  infer_instance

instance {X Y : SSet.{u}} (f : X ⟶ Y) [IsIso f] : Fibration f := by
  rw [fibration_iff]
  apply rlp_of_isIso

end

end modelCategoryQuillen

open modelCategoryQuillen in
lemma rlp_monomorphisms :
    (MorphismProperty.monomorphisms SSet.{u}).rlp = I.rlp :=
  le_antisymm (antitone_rlp I_le_monomorphisms)
    (fun _ _ _ hp _ _ i _ ↦
      transfiniteCompositionsOfShape_pushouts_coproducts_le_llp_rlp.{u} I ℕ i
        ⟨(relativeCellComplexOfMono i).transfiniteCompositionOfShape' (fun _ ↦ ⟨_⟩)⟩  _ hp)

namespace horn.IsCompatible

open modelCategoryQuillen

variable {X : SSet.{u}} {n : ℕ}
  {i : Fin (n + 2)} {f : ∀ (j : Fin (n + 2)) (_ : j ≠ i), Δ[n] ⟶ X}
  (hf : horn.IsCompatible f) {Y : SSet.{u}} (p : X ⟶ Y) [Fibration p]
  (b : Δ[n + 1] ⟶ Y)
  (comm : ∀ (j : Fin (n + 2)) (hj : j ≠ i), f j hj ≫ p = stdSimplex.δ j ≫ b)

include hf comm in
lemma exists_lift :
    ∃ (φ : Δ[n + 1] ⟶ X),
      (∀ (j : Fin (n + 2)) (hj : j ≠ i), stdSimplex.δ j ≫ φ = f j hj) ∧
      φ ≫ p = b := by
  have sq : CommSq hf.desc Λ[n + 1, i].ι p b :=
    ⟨horn.hom_ext' (fun j hj ↦ by simpa using comm j hj)⟩
  exact ⟨sq.lift, fun j hj ↦ by simp [← ι_ι_assoc i j hj], by simp⟩

/-- If `f : ∀ (j : Fin (n + 2)) (_ : j ≠ i), Δ[n] ⟶ X` is a compatible family
of morphisms (which defines a morphism `Λ[n + 1, i] ⟶ X`), `p : X ⟶ Y` a Kan fibration
and `b : Δ[n + 1] ⟶ Y` such that for all `j ≠ i`, `f j _ ≫ p = stdSimplex.δ j ≫ b`,
then this is a lifting `Δ[n + 1] ⟶ X`. -/
@[no_expose]
noncomputable def lift : Δ[n + 1] ⟶ X := (hf.exists_lift p b comm).choose

@[reassoc]
lemma δ_lift (j : Fin (n + 2)) (hj : j ≠ i := by grind) :
    stdSimplex.δ j ≫ hf.lift p b comm = f j hj :=
  ((hf.exists_lift p b comm).choose_spec).1 j hj

@[reassoc (attr := simp)]
lemma lift_comp : hf.lift p b comm ≫ p = b :=
  ((hf.exists_lift p b comm).choose_spec).2

end horn.IsCompatible

end SSet
```
