# Complete source: GRWTSK.Algebra.UniversalAlgebra.Pow.Variantddb9349c67633fbf147af463af31db1474d9154e4c127cf4fd3fedbffd2e8346

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ebd27cf45c9d623b5c997885a0e0f393554c448` · SHA-256 `59137f09352cf4fc94cc8c4b02175265ddf5721c8eddb54c7b77be07ebd283ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsLeftRegularProd.Variant15c102219b22f8a4cfffadc24a8f998f9b600d0f4eda496be984dde472f4fe4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15c102219b22f8a4cfffadc24a8f998f9b600d0f4eda496be984dde472f4fe4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsLeftRegularProd.Variant15c102219b22f8a4cfffadc24a8f998f9b600d0f4eda496be984dde472f4fe4f","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"15c102219b22f8a4cfffadc24a8f998f9b600d0f4eda496be984dde472f4fe4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Regular/Pow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
module

public import Mathlib.Algebra.BigOperators.Group.Finset.Defs
public import Mathlib.Algebra.Regular.Basic

/-!
# Product of regular elements

## TODO

Move to `Mathlib/Algebra/BigOperators/Group/Finset/Basic.lean`?
-/


namespace GRWTSK.Algebra.UniversalAlgebra.IsLeftRegularProd.Variant15c102219b22f8a4cfffadc24a8f998f9b600d0f4eda496be984dde472f4fe4f

public section


variable {R : Type*} {a : R}

section CommMonoid

variable {ι R : Type*} [CommMonoid R] {s : Finset ι} {f : ι → R}

lemma IsLeftRegular.prod (h : ∀ i ∈ s, IsLeftRegular (f i)) :
    IsLeftRegular (∏ i ∈ s, f i) :=
  s.prod_induction _ _ (@IsLeftRegular.mul R _) isRegular_one.left h

lemma IsRightRegular.prod (h : ∀ i ∈ s, IsRightRegular (f i)) :
    IsRightRegular (∏ i ∈ s, f i) :=
  s.prod_induction _ _ (@IsRightRegular.mul R _) isRegular_one.right h

lemma IsRegular.prod (h : ∀ i ∈ s, IsRegular (f i)) :
    IsRegular (∏ i ∈ s, f i) :=
  ⟨IsLeftRegular.prod fun a ha ↦ (h a ha).left,
   IsRightRegular.prod fun a ha ↦ (h a ha).right⟩

end CommMonoid
```
