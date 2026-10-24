# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6243289fdfb386233e64c35a6405d8ca04abafcf` · SHA-256 `b39a7693b6656c1e0c3d8c347c687d3df73fd8eb2c3c26729d4bb272a563ca83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SubtypeValMono.Variant1555e6821a37292f53e4553d8596aa015386b8dedd069f8fbb839fc747032bea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1555e6821a37292f53e4553d8596aa015386b8dedd069f8fbb839fc747032bea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SubtypeValMono.Variant1555e6821a37292f53e4553d8596aa015386b8dedd069f8fbb839fc747032bea","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1555e6821a37292f53e4553d8596aa015386b8dedd069f8fbb839fc747032bea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Subobject/Types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Subobject.WellPowered
import Mathlib.CategoryTheory.Types
import Mathlib.Data.Set.Subsingleton

/-!
# `Type u` is well-powered

By building a categorical equivalence `MonoOver α ≌ Set α` for any `α : Type u`,
we deduce that `Subobject α ≃o Set α` and that `Type u` is well-powered.

One would hope that for a particular concrete category `C` (`AddCommGroup`, etc)
it's viable to prove `[WellPowered C]` without explicitly aligning `Subobject X`
with the "hand-rolled" definition of subobjects.

This may be possible using Lawvere theories,
but it remains to be seen whether this just pushes lumps around in the carpet.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SubtypeValMono.Variant1555e6821a37292f53e4553d8596aa015386b8dedd069f8fbb839fc747032bea

universe u

open CategoryTheory

open CategoryTheory.Subobject

theorem subtype_val_mono {α : Type u} (s : Set α) : Mono (↾(Subtype.val : s → α)) :=
  (mono_iff_injective _).mpr Subtype.val_injective

attribute [local instance] subtype_val_mono

/-- The category of `MonoOver α`, for `α : Type u`, is equivalent to the partial order `Set α`.
-/
@[simps]
noncomputable def Types.monoOverEquivalenceSet (α : Type u) : MonoOver α ≌ Set α where
  functor :=
    { obj := fun f => Set.range f.1.hom
      map := fun {f g} t =>
        homOfLE
          (by
            rintro a ⟨x, rfl⟩
            exact ⟨t.1 x, congr_fun t.w x⟩) }
  inverse :=
    { obj := fun s => MonoOver.mk' (Subtype.val : s → α)
      map := fun {s t} b => MonoOver.homMk (fun w => ⟨w.1, Set.mem_of_mem_of_subset w.2 b.le⟩) }
  unitIso :=
    NatIso.ofComponents fun f =>
      MonoOver.isoMk (Equiv.ofInjective f.1.hom ((mono_iff_injective _).mp f.2)).toIso
  counitIso := NatIso.ofComponents fun _ => eqToIso Subtype.range_val

instance : WellPowered.{u} (Type u) :=
  wellPowered_of_essentiallySmall_monoOver fun α =>
    EssentiallySmall.mk' (Types.monoOverEquivalenceSet α)

/-- For `α : Type u`, `Subobject α` is order isomorphic to `Set α`.
-/
noncomputable def Types.subobjectEquivSet (α : Type u) : Subobject α ≃o Set α :=
  (Types.monoOverEquivalenceSet α).thinSkeletonOrderIso
```
