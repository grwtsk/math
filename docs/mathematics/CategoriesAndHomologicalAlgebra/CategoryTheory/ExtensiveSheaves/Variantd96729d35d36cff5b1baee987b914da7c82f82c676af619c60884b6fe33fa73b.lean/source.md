# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtensiveSheaves.Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `758bba642adcbbac7e12e8f3e0213f787d3dd979` · SHA-256 `db0d13a857b3d3bf5741f7c6458bb4cd6f2fe501fc481c016fbec6364a9c9565`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresieveExtensive.Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PresieveExtensive.Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Sites/Coherent/ExtensiveSheaves.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Filippo A. E. Nuccio, Riccardo Brasca
-/
import Mathlib.CategoryTheory.Limits.Preserves.Finite
import Mathlib.CategoryTheory.Sites.Canonical
import Mathlib.CategoryTheory.Sites.Coherent.Basic
import Mathlib.CategoryTheory.Sites.Preserves
/-!

# Sheaves for the extensive topology

This file characterises sheaves for the extensive topology.

## Main result

* `isSheaf_iff_preservesFiniteProducts`: In a finitary extensive category, the sheaves for the
  extensive topology are precisely those preserving finite products.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresieveExtensive.Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d

universe w

namespace CategoryTheory

open Limits Presieve Opposite

variable {C : Type*} [Category C] {D : Type*} [Category D]

variable [FinitaryPreExtensive C]

/-- A presieve is *extensive* if it is finite and its arrows induce an isomorphism from the
coproduct to the target. -/
class Presieve.Extensive {X : C} (R : Presieve X) : Prop where
  /-- `R` consists of a finite collection of arrows that together induce an isomorphism from the
  coproduct of their sources. -/
  arrows_nonempty_isColimit : ∃ (α : Type) (_ : Finite α) (Z : α → C) (π : (a : α) → (Z a ⟶ X)),
    R = Presieve.ofArrows Z π ∧ Nonempty (IsColimit (Cofan.mk X π))

instance {X : C} (S : Presieve X) [S.Extensive] : S.hasPullbacks where
  has_pullbacks := by
    obtain ⟨_, _, _, _, rfl, ⟨hc⟩⟩ := Presieve.Extensive.arrows_nonempty_isColimit (R := S)
    intro _ _ _ _ _ hg
    cases hg
    apply FinitaryPreExtensive.hasPullbacks_of_is_coproduct hc

/--
A finite product preserving presheaf is a sheaf for the extensive topology on a category which is
`FinitaryPreExtensive`.
-/
theorem isSheafFor_extensive_of_preservesFiniteProducts {X : C} (S : Presieve X) [S.Extensive]
    (F : Cᵒᵖ ⥤ Type w) [PreservesFiniteProducts F] : S.IsSheafFor F  := by
  obtain ⟨α, _, Z, π, rfl, ⟨hc⟩⟩ := Extensive.arrows_nonempty_isColimit (R := S)
  have : (ofArrows Z (Cofan.mk X π).inj).hasPullbacks :=
    (inferInstance : (ofArrows Z π).hasPullbacks)
  cases nonempty_fintype α
  exact isSheafFor_of_preservesProduct _ _ hc

instance {α : Type} [Finite α] (Z : α → C) : (ofArrows Z (fun i ↦ Sigma.ι Z i)).Extensive :=
  ⟨⟨α, inferInstance, Z, (fun i ↦ Sigma.ι Z i), rfl, ⟨coproductIsCoproduct _⟩⟩⟩

/-- Every Yoneda-presheaf is a sheaf for the extensive topology. -/
theorem extensiveTopology.isSheaf_yoneda_obj (W : C) : Presieve.IsSheaf (extensiveTopology C)
    (yoneda.obj W) := by
  rw [extensiveTopology, isSheaf_coverage]
  intro X R ⟨Y, α, Z, π, hR, hi⟩
  have : IsIso (Sigma.desc (Cofan.inj (Cofan.mk X π))) := hi
  have : R.Extensive := ⟨Y, α, Z, π, hR, ⟨Cofan.isColimitOfIsIsoSigmaDesc (Cofan.mk X π)⟩⟩
  exact isSheafFor_extensive_of_preservesFiniteProducts _ _

/-- The extensive topology on a finitary pre-extensive category is subcanonical. -/
instance extensiveTopology.subcanonical : (extensiveTopology C).Subcanonical :=
  GrothendieckTopology.Subcanonical.of_isSheaf_yoneda_obj _ isSheaf_yoneda_obj

variable [FinitaryExtensive C]

/--
A presheaf of sets on a category which is `FinitaryExtensive` is a sheaf iff it preserves finite
products.
-/
theorem Presieve.isSheaf_iff_preservesFiniteProducts (F : Cᵒᵖ ⥤ Type w) :
    Presieve.IsSheaf (extensiveTopology C) F ↔ PreservesFiniteProducts F := by
  refine ⟨fun hF ↦ ⟨fun n ↦ ⟨fun {K} ↦ ?_⟩⟩, fun hF ↦ ?_⟩
  · rw [extensiveTopology, isSheaf_coverage] at hF
    let Z : Fin n → C := fun i ↦ unop (K.obj ⟨i⟩)
    have : (ofArrows Z (Cofan.mk (∐ Z) (Sigma.ι Z)).inj).hasPullbacks :=
      inferInstanceAs (ofArrows Z (Sigma.ι Z)).hasPullbacks
    have : ∀ (i : Fin n), Mono (Cofan.inj (Cofan.mk (∐ Z) (Sigma.ι Z)) i) :=
      inferInstanceAs <| ∀ (i : Fin n), Mono (Sigma.ι Z i)
    let i : K ≅ Discrete.functor (fun i ↦ op (Z i)) := Discrete.natIsoFunctor
    let _ : PreservesLimit (Discrete.functor (fun i ↦ op (Z i))) F :=
        Presieve.preservesProduct_of_isSheafFor F ?_ initialIsInitial _ (coproductIsCoproduct Z)
        (FinitaryExtensive.isPullback_initial_to_sigma_ι Z)
        (hF (Presieve.ofArrows Z (fun i ↦ Sigma.ι Z i)) ?_)
    · exact preservesLimit_of_iso_diagram F i.symm
    · apply hF
      refine ⟨Empty, inferInstance, Empty.elim, IsEmpty.elim inferInstance, rfl, ⟨default,?_, ?_⟩⟩
      · ext b
        cases b
      · simp only [eq_iff_true_of_subsingleton]
    · refine ⟨Fin n, inferInstance, Z, (fun i ↦ Sigma.ι Z i), rfl, ?_⟩
      suffices Sigma.desc (fun i ↦ Sigma.ι Z i) = 𝟙 _ by rw [this]; infer_instance
      ext
      simp
  · rw [extensiveTopology, Presieve.isSheaf_coverage]
    intro X R ⟨Y, α, Z, π, hR, hi⟩
    have : IsIso (Sigma.desc (Cofan.inj (Cofan.mk X π))) := hi
    have : R.Extensive := ⟨Y, α, Z, π, hR, ⟨Cofan.isColimitOfIsIsoSigmaDesc (Cofan.mk X π)⟩⟩
    exact isSheafFor_extensive_of_preservesFiniteProducts R F

/--
A presheaf on a category which is `FinitaryExtensive` is a sheaf iff it preserves finite products.
-/
theorem Presheaf.isSheaf_iff_preservesFiniteProducts (F : Cᵒᵖ ⥤ D) :
    IsSheaf (extensiveTopology C) F ↔ PreservesFiniteProducts F := by
  constructor
  · intro h
    rw [IsSheaf] at h
    refine ⟨fun n ↦ ⟨fun {K} ↦ ⟨fun {c} hc ↦ ?_⟩⟩⟩
    constructor
    apply coyonedaJointlyReflectsLimits
    intro ⟨E⟩
    specialize h E
    rw [Presieve.isSheaf_iff_preservesFiniteProducts] at h
    exact isLimitOfPreserves (F.comp (coyoneda.obj ⟨E⟩)) hc
  · intro _ E
    rw [Presieve.isSheaf_iff_preservesFiniteProducts]
    exact ⟨inferInstance⟩

instance (F : Sheaf (extensiveTopology C) D) : PreservesFiniteProducts F.val :=
  (Presheaf.isSheaf_iff_preservesFiniteProducts F.val).mp F.cond

end CategoryTheory
```
