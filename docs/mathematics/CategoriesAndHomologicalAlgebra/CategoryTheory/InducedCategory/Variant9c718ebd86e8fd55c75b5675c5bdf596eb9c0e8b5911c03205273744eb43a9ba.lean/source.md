# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InducedCategory.Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `226841197b8acb7f6e214a06b439a2cb5b8832cf` · SHA-256 `befd6869c1807221ee7eabcaa5bcd5e75954a661ce6e85339a994db6f7c517ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InducedCategory.Variant5472f6ffc124825e8a9dbbfc3ccb1de4dd826e94f317a2509ec11bce3502bba9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5472f6ffc124825e8a9dbbfc3ccb1de4dd826e94f317a2509ec11bce3502bba9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.InducedCategory.Variant5472f6ffc124825e8a9dbbfc3ccb1de4dd826e94f317a2509ec11bce3502bba9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5472f6ffc124825e8a9dbbfc3ccb1de4dd826e94f317a2509ec11bce3502bba9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/InducedCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Reid Barton
-/
import Mathlib.CategoryTheory.Functor.FullyFaithful

/-!
# Induced categories and full subcategories

Given a category `D` and a function `F : C → D `from a type `C` to the
objects of `D`, there is an essentially unique way to give `C` a
category structure such that `F` becomes a fully faithful functor,
namely by taking $$ Hom_C(X, Y) = Hom_D(FX, FY) $$. We call this the
category induced from `D` along `F`.

## Implementation notes

It looks odd to make `D` an explicit argument of `InducedCategory`,
when it is determined by the argument `F` anyways. The reason to make `D`
explicit is in order to control its syntactic form, so that instances
like `InducedCategory.has_forget₂` (elsewhere) refer to the correct
form of `D`. This is used to set up several algebraic categories like

  def CommMon : Type (u+1) := InducedCategory Mon (Bundled.map @CommMonoid.toMonoid)
  -- not `InducedCategory (Bundled Monoid) (Bundled.map @CommMonoid.toMonoid)`,
  -- even though `MonCat = Bundled Monoid`!
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InducedCategory.Variant5472f6ffc124825e8a9dbbfc3ccb1de4dd826e94f317a2509ec11bce3502bba9

namespace CategoryTheory

universe v v₂ u₁ u₂
-- morphism levels before object levels. See note [CategoryTheory universes].

section Induced

variable {C : Type u₁} (D : Type u₂) [Category.{v} D]
variable (F : C → D)

/-- `InducedCategory D F`, where `F : C → D`, is a typeclass synonym for `C`,
which provides a category structure so that the morphisms `X ⟶ Y` are the morphisms
in `D` from `F X` to `F Y`.
-/
@[nolint unusedArguments]
def InducedCategory (_F : C → D) : Type u₁ :=
  C

variable {D}

instance InducedCategory.hasCoeToSort {α : Sort*} [CoeSort D α] :
    CoeSort (InducedCategory D F) α :=
  ⟨fun c => F c⟩

instance InducedCategory.category : Category.{v} (InducedCategory D F) where
  Hom X Y := F X ⟶ F Y
  id X := 𝟙 (F X)
  comp f g := f ≫ g

variable {F} in
/-- Construct an isomorphism in the induced category
from an isomorphism in the original category. -/
@[simps] def InducedCategory.isoMk {X Y : InducedCategory D F} (f : F X ≅ F Y) : X ≅ Y where
  hom := f.hom
  inv := f.inv
  hom_inv_id := f.hom_inv_id
  inv_hom_id := f.inv_hom_id

/-- The forgetful functor from an induced category to the original category,
forgetting the extra data.
-/
@[simps]
def inducedFunctor : InducedCategory D F ⥤ D where
  obj := F
  map f := f

/-- The induced functor `inducedFunctor F : InducedCategory D F ⥤ D` is fully faithful. -/
def fullyFaithfulInducedFunctor : (inducedFunctor F).FullyFaithful where
  preimage f := f

instance InducedCategory.full : (inducedFunctor F).Full :=
  (fullyFaithfulInducedFunctor F).full

instance InducedCategory.faithful : (inducedFunctor F).Faithful :=
  (fullyFaithfulInducedFunctor F).faithful

end Induced

end CategoryTheory
```
