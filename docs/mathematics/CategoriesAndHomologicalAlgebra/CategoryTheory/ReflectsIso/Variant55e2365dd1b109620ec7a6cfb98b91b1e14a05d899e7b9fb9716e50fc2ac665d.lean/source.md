# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ReflectsIso.Variant55e2365dd1b109620ec7a6cfb98b91b1e14a05d899e7b9fb9716e50fc2ac665d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58158a4822e161e026b83e10a96f7cc8d7927631` · SHA-256 `8a7eb523065454104723e2deda7844b21ec9c47e745bc20b9a0518da926b1080`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Forget.Variant397c2879945864b148207cea36ccbe60b43f8ed2a54128231b2124b8100d98cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"397c2879945864b148207cea36ccbe60b43f8ed2a54128231b2124b8100d98cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Forget.Variant397c2879945864b148207cea36ccbe60b43f8ed2a54128231b2124b8100d98cd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"397c2879945864b148207cea36ccbe60b43f8ed2a54128231b2124b8100d98cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/ConcreteCategory/ReflectsIso.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.CategoryTheory.ConcreteCategory.Forget
public import Mathlib.CategoryTheory.Functor.ReflectsIso.Basic

/-!
# Forgetful functors that reflect isomorphisms

A `forget₂ C D` forgetful functor between concrete categories `C` and `D`
whose forgetful functors both reflect isomorphisms, itself reflects isomorphisms.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Forget.Variant397c2879945864b148207cea36ccbe60b43f8ed2a54128231b2124b8100d98cd

public section


universe t₁ t₂ w

namespace CategoryTheory

instance : (forget Type*).ReflectsIsomorphisms where reflects _ _ _ {i} := i

variable (C : Type*) [Category* C]
    {FC : outParam <| C → C → Type t₁} {CC : outParam <| C → Type w}
    [outParam <| ∀ X Y, FunLike (FC X Y) (CC X) (CC Y)] [ConcreteCategory.{w} C FC]
variable (D : Type*) [Category* D]
    {FD : outParam <| D → D → Type t₂} {CD : outParam <| D → Type w}
    [outParam <| ∀ X Y, FunLike (FD X Y) (CD X) (CD Y)] [ConcreteCategory.{w} D FD]

/-- A `forget₂ C D` forgetful functor between concrete categories `C` and `D`
where `forget C` reflects isomorphisms, itself reflects isomorphisms. -/
instance reflectsIsomorphisms_forget₂ [HasForget₂ C D] [(forget C).ReflectsIsomorphisms] :
    (forget₂ C D).ReflectsIsomorphisms :=
  { reflects := fun X Y f {i} => by
      have i' : IsIso ((forget D).map ((forget₂ C D).map f)) := Functor.map_isIso (forget D) _
      have : IsIso ((forget C).map f) := by
        rwa [← @HasForget₂.forget_comp (C := C) (D := D)]
      apply isIso_of_reflects_iso f (forget C) }

end CategoryTheory
```
