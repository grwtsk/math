# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant1cb0329c5672cc18ce4d9fbf9c2b14cd591bb8fadcd964a4b4b128c5cbbf4100

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `924f7846aab68a99264b58b4a6a39312f1a6e708` · SHA-256 `0508b02a198a404170c2e7b4910ebe550cf04f3d0434019ce57daba7b4663e88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantfd25a00aa572f2b5e18048e4d22999b61c4ec034bbb47bf739d7f79010611ca5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd25a00aa572f2b5e18048e4d22999b61c4ec034bbb47bf739d7f79010611ca5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Functor.Variantfd25a00aa572f2b5e18048e4d22999b61c4ec034bbb47bf739d7f79010611ca5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"fd25a00aa572f2b5e18048e4d22999b61c4ec034bbb47bf739d7f79010611ca5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Functor/Types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Vilim Lendvaj. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vilim Lendvaj
-/
module

public import Mathlib.CategoryTheory.Monoidal.Functor
public import Mathlib.CategoryTheory.Monoidal.Types.Basic
public import Mathlib.CategoryTheory.Types.Basic
public import Mathlib.Tactic.Simps
public import Mathlib.Control.Basic

/-!
# Convert from `Applicative` to `CategoryTheory.Functor.LaxMonoidal`

This allows us to use Lean's `Type`-based applicative functors in category theory.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantfd25a00aa572f2b5e18048e4d22999b61c4ec034bbb47bf739d7f79010611ca5

public section

namespace CategoryTheory

section

variable (F : Type* → Type*) [Applicative F] [LawfulApplicative F]

set_option backward.defeqAttrib.useBackward true in
attribute [local simp] map_seq seq_map_assoc types_tensorObj_def types_tensorUnit_def
  LawfulApplicative.pure_seq LawfulApplicative.seq_assoc in
/-- A lawful `Applicative` gives a category theory `LaxMonoidal` functor
between categories of types. -/
@[simps]
instance : (ofTypeFunctor F).LaxMonoidal where
  ε := ↾fun _ ↦ (pure PUnit.unit : F _)
  μ _ _ := ↾fun p ↦ (Prod.mk <$> p.1 <*> p.2 : F _)

end

end CategoryTheory
```
