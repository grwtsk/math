# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48c14cec8e5faa4dfbe5fc7e9f46b46c9dfc9611` · SHA-256 `30a7ba2bdbb0e1acbaca50bb4ba61cb87c2734d2fdfb241612be3dbd0149cffc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PushforwardSheafOfSheaf.Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PushforwardSheafOfSheaf.Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Sheaves/Functors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu, Andrew Yang
-/
import Mathlib.Topology.Sheaves.SheafCondition.Sites
import Mathlib.CategoryTheory.Sites.Pullback

/-!
# functors between categories of sheaves

Show that the pushforward of a sheaf is a sheaf, and define
the pushforward functor from the category of C-valued sheaves
on X to that of sheaves on Y, given a continuous map between
topological spaces X and Y.

## Main definitions
- `TopCat.Sheaf.pushforward`:
    The pushforward functor between sheaf categories over topological spaces.
- `TopCat.Sheaf.pullback`: The pullback functor between sheaf categories over topological spaces.
- `TopCat.Sheaf.pullbackPushforwardAdjunction`:
  The adjunction between pullback and pushforward for sheaves on topological spaces.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PushforwardSheafOfSheaf.Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5

noncomputable section

universe w v u

open CategoryTheory

open CategoryTheory.Limits

open TopologicalSpace

open scoped AlgebraicGeometry

variable {C : Type u} [Category.{v} C]
variable {X Y : TopCat.{w}} (f : X ⟶ Y)
variable ⦃ι : Type w⦄ {U : ι → Opens Y}

namespace TopCat

namespace Sheaf

open Presheaf

/-- The pushforward of a sheaf (by a continuous map) is a sheaf.
-/
theorem pushforward_sheaf_of_sheaf {F : X.Presheaf C} (h : F.IsSheaf) : (f _* F).IsSheaf :=
  (Opens.map f).op_comp_isSheaf _ _ ⟨_, h⟩

variable (C)

/-- The pushforward functor.
-/
def pushforward (f : X ⟶ Y) : X.Sheaf C ⥤ Y.Sheaf C :=
  (Opens.map f).sheafPushforwardContinuous _ _ _

lemma pushforward_forget (f : X ⟶ Y) :
    pushforward C f ⋙ forget C Y = forget C X ⋙ Presheaf.pushforward C f := rfl

/--
Pushforward of sheaves is isomorphic (actually definitionally equal) to pushforward of presheaves.
-/
def pushforwardForgetIso (f : X ⟶ Y) :
    pushforward C f ⋙ forget C Y ≅ forget C X ⋙ Presheaf.pushforward C f := Iso.refl _

variable {C}

@[simp] lemma pushforward_obj_val (f : X ⟶ Y) (F : X.Sheaf C) :
    ((pushforward C f).obj F).1 = f _* F.1 := rfl

@[simp] lemma pushforward_map (f : X ⟶ Y) {F F' : X.Sheaf C} (α : F ⟶ F') :
    ((pushforward C f).map α).1 = (Presheaf.pushforward C f).map α.1 := rfl

variable (A : Type*) [Category.{w} A] {FA : A → A → Type*} {CA : A → Type w}
variable [∀ X Y, FunLike (FA X Y) (CA X) (CA Y)] [ConcreteCategory.{w} A FA] [HasColimits A]
variable [HasLimits A] [PreservesLimits (CategoryTheory.forget A)]
variable [PreservesFilteredColimits (CategoryTheory.forget A)]
variable [(CategoryTheory.forget A).ReflectsIsomorphisms]

/--
The pullback functor.
-/
def pullback (f : X ⟶ Y) : Y.Sheaf A ⥤ X.Sheaf A :=
  (Opens.map f).sheafPullback _ _ _

/--
The pullback of a sheaf is isomorphic (actually definitionally equal) to the sheafification
of the pullback as a presheaf.
-/
def pullbackIso (f : X ⟶ Y) :
    pullback A f ≅ forget A Y ⋙ Presheaf.pullback A f ⋙ presheafToSheaf _ _ :=
  Functor.sheafPullbackConstruction.sheafPullbackIso _ _ _ _

/-- The adjunction between pullback and pushforward for sheaves on topological spaces. -/
def pullbackPushforwardAdjunction (f : X ⟶ Y) :
    pullback A f ⊣ pushforward A f :=
  (Opens.map f).sheafAdjunctionContinuous _ _ _

instance : (pullback A f).IsLeftAdjoint  := (pullbackPushforwardAdjunction A f).isLeftAdjoint
instance : (pushforward A f).IsRightAdjoint := (pullbackPushforwardAdjunction A f).isRightAdjoint

end Sheaf

end TopCat
```
