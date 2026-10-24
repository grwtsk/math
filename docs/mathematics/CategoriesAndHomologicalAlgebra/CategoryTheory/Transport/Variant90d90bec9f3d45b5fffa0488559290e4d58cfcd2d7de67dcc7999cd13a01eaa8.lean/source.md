# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Transport.Variant90d90bec9f3d45b5fffa0488559290e4d58cfcd2d7de67dcc7999cd13a01eaa8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09cb3848efcb77ed82c47c1bd748001a525c7f10` · SHA-256 `e1037e9d8394e05c95ede30f8e7cfb68e1033fcd044c16ed2c8dc29f9abf7c9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TransportedFunctorCompInverseLaxBraided.Varianta07dd3e8f733d3fa4dfc15ee98df94b931c0555d4f06a9e1a960ae9b0e1316c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a07dd3e8f733d3fa4dfc15ee98df94b931c0555d4f06a9e1a960ae9b0e1316c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TransportedFunctorCompInverseLaxBraided.Varianta07dd3e8f733d3fa4dfc15ee98df94b931c0555d4f06a9e1a960ae9b0e1316c9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a07dd3e8f733d3fa4dfc15ee98df94b931c0555d4f06a9e1a960ae9b0e1316c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Braided/Transport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Monoidal.Braided.Basic
public import Mathlib.CategoryTheory.Monoidal.Transport

/-!

# Transport a symmetric monoidal structure along an equivalence of categories
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TransportedFunctorCompInverseLaxBraided.Varianta07dd3e8f733d3fa4dfc15ee98df94b931c0555d4f06a9e1a960ae9b0e1316c9

@[expose] public section

universe v₁ v₂ u₁ u₂

open CategoryTheory Category Monoidal MonoidalCategory

variable {C : Type u₁} [Category.{v₁} C]
variable {D : Type u₂} [Category.{v₂} D]

namespace CategoryTheory.Monoidal

open Functor.LaxMonoidal Functor.OplaxMonoidal

set_option backward.isDefEq.respectTransparency false in
instance Transported.instBraidedCategory (e : C ≌ D) [MonoidalCategory C] [BraidedCategory C] :
    BraidedCategory (Transported e) :=
  .ofFaithful e.inverse (fun _ _ ↦ e.functor.mapIso (β_ _ _)) fun _ _ ↦ by
    simp +instances [fromInducedCoreMonoidal, Functor.CoreMonoidal.toLaxMonoidal]

local notation "e'" e => equivalenceTransported e

instance (e : C ≌ D) [MonoidalCategory C] [BraidedCategory C] :
    (e' e).inverse.Braided where
  braided X Y := by
    simp +instances [Transported.instBraidedCategory, BraidedCategory.ofFaithful,
      fromInducedCoreMonoidal, Functor.CoreMonoidal.toLaxMonoidal]

noncomputable section

/--
This is a def because once we have that both `(e' e).inverse` and `(e' e).functor` are
braided, this causes a diamond.
-/
@[instance_reducible]
def transportedFunctorCompInverseLaxBraided (e : C ≌ D) [MonoidalCategory C] [BraidedCategory C] :
    ((e' e).functor ⋙ (e' e).inverse).LaxBraided :=
  Functor.LaxBraided.ofNatIso (e' e).unitIso

attribute [local instance] transportedFunctorCompInverseLaxBraided in
/--
This is a def because once we have that both `(e' e).inverse` and `(e' e).functor` are
braided, this causes a diamond.
-/
@[instance_reducible]
def transportedFunctorCompInverseBraided (e : C ≌ D) [MonoidalCategory C] [BraidedCategory C] :
    ((e' e).functor ⋙ (e' e).inverse).Braided where

set_option backward.defeqAttrib.useBackward true in
attribute [local instance] transportedFunctorCompInverseBraided in
instance (e : C ≌ D) [MonoidalCategory C] [BraidedCategory C] :
    (e' e).functor.Braided where
  braided X Y := by
    apply (e' e).inverse.map_injective
    have : (β_ (((e' e).functor ⋙ (e' e).inverse).obj X)
        (((e' e).functor ⋙ (e' e).inverse).obj Y)).hom =
          Functor.LaxMonoidal.μ (((e' e).functor ⋙ (e' e).inverse)) X Y ≫
            ((e' e).functor ⋙ (e' e).inverse).map (β_ X Y).hom ≫
              Functor.OplaxMonoidal.δ ((e' e).functor ⋙ (e' e).inverse) Y X := by
      simp only [((e' e).functor ⋙ (e' e).inverse).map_braiding X Y,
        assoc, Functor.Monoidal.μ_δ, comp_id, Functor.Monoidal.μ_δ_assoc]
    simp_all

end

instance Transported.instSymmetricCategory (e : C ≌ D) [MonoidalCategory C]
    [SymmetricCategory C] : SymmetricCategory (Transported e) :=
  .ofFaithful (equivalenceTransported e).inverse

end CategoryTheory.Monoidal
```
