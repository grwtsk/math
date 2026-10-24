# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Action.Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0e3e8904dbb83e751709a211a0480271b15be2e` · SHA-256 `8912412cbfa74c7d6b3735362ee885d65ae75cc01b75170d190b8efe789f9bc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToAction.Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorToAction.Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Galois/Action.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.CategoryTheory.Galois.Examples
import Mathlib.CategoryTheory.Galois.Prorepresentability

/-!

# Induced functor to finite `Aut F`-sets

Any (fiber) functor `F : C ⥤ FintypeCat` factors via the forgetful functor
from finite `Aut F`-sets to finite sets. In this file we collect basic properties
of the induced functor `H : C ⥤ Action FintypeCat (Aut F)`.

See `Mathlib/CategoryTheory/Galois/Full.lean` for the proof that `H` is (faithfully) full.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToAction.Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a

universe u

namespace CategoryTheory

namespace PreGaloisCategory

open Limits Functor

variable {C : Type*} [Category C] (F : C ⥤ FintypeCat.{u})

/-- Any (fiber) functor `F : C ⥤ FintypeCat` naturally factors via
the forgetful functor from `Action FintypeCat (Aut F)` to `FintypeCat`. -/
def functorToAction : C ⥤ Action FintypeCat.{u} (Aut F) where
  obj X := Action.FintypeCat.ofMulAction (Aut F) (F.obj X)
  map f := {
    hom := F.map f
    comm := fun g ↦ symm <| g.hom.naturality f
  }

lemma functorToAction_comp_forget₂_eq : functorToAction F ⋙ forget₂ _ FintypeCat = F := rfl

@[simp]
lemma functorToAction_map {X Y : C} (f : X ⟶ Y) : ((functorToAction F).map f).hom = F.map f :=
  rfl

instance (X : C) : MulAction (Aut X) ((functorToAction F).obj X).V :=
  inferInstanceAs <| MulAction (Aut X) (F.obj X)

variable [GaloisCategory C] [FiberFunctor F]

instance (X : C) [IsGalois X] : MulAction.IsPretransitive (Aut X) ((functorToAction F).obj X).V :=
  isPretransitive_of_isGalois F X

instance : Functor.Faithful (functorToAction F) :=
  have : Functor.Faithful (functorToAction F ⋙ forget₂ _ FintypeCat) :=
    inferInstanceAs <| Functor.Faithful F
  Functor.Faithful.of_comp (functorToAction F) (forget₂ _ FintypeCat)

instance : PreservesMonomorphisms (functorToAction F) :=
  have : PreservesMonomorphisms (functorToAction F ⋙ forget₂ _ FintypeCat) :=
    inferInstanceAs <| PreservesMonomorphisms F
  preservesMonomorphisms_of_preserves_of_reflects (functorToAction F) (forget₂ _ FintypeCat)

instance : ReflectsMonomorphisms (functorToAction F) := reflectsMonomorphisms_of_faithful _

instance : Functor.ReflectsIsomorphisms (functorToAction F) where
  reflects f _ :=
    have : IsIso (F.map f) := (forget₂ _ FintypeCat).map_isIso ((functorToAction F).map f)
    isIso_of_reflects_iso f F

noncomputable instance : PreservesFiniteCoproducts (functorToAction F) :=
  ⟨fun _ ↦ Action.preservesColimitsOfShape_of_preserves (functorToAction F)
    (inferInstanceAs <| PreservesColimitsOfShape (Discrete _) F)⟩

noncomputable instance : PreservesFiniteProducts (functorToAction F) :=
  ⟨fun _ ↦ Action.preservesLimitsOfShape_of_preserves (functorToAction F)
    (inferInstanceAs <| PreservesLimitsOfShape (Discrete _) F)⟩

noncomputable instance (G : Type*) [Group G] [Finite G] :
    PreservesColimitsOfShape (SingleObj G) (functorToAction F) :=
  Action.preservesColimitsOfShape_of_preserves _ <|
    inferInstanceAs <| PreservesColimitsOfShape (SingleObj G) F

instance : PreservesIsConnected (functorToAction F) :=
  ⟨fun {X} _ ↦ FintypeCat.Action.isConnected_of_transitive (Aut F) (F.obj X)⟩

end PreGaloisCategory

end CategoryTheory
```
