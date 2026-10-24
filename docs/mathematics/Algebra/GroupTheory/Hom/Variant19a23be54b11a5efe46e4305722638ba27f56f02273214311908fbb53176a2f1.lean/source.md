# Complete source: GRWTSK.Algebra.GroupTheory.Hom.Variant19a23be54b11a5efe46e4305722638ba27f56f02273214311908fbb53176a2f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4e885c4a02ab6f2ac37f57a6e2f4c81f6d69c5e` · SHA-256 `8bbd36ae42b10a999d13615c168b0e7ce79eb5dde85f7e50d4eda4b4fe380140`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SemiconjByMap.Variant3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SemiconjByMap.Variant3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2","mathematical_subject":"Algebra.Groups","original_sha256":"3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Commute/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot, Kevin Buzzard, Kim Morrison, Johan Commelin, Chris Hughes,
  Johannes Hölzl, Yury Kudryashov
-/
import Mathlib.Algebra.Group.Commute.Defs
import Mathlib.Algebra.Group.Hom.Defs

/-!
# Multiplicative homomorphisms respect semiconjugation and commutation.
-/


namespace GRWTSK.Algebra.GroupTheory.SemiconjByMap.Variant3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2

assert_not_exists MonoidWithZero DenselyOrdered

section Commute

variable {F M N : Type*} [Mul M] [Mul N] {a x y : M} [FunLike F M N]

@[to_additive (attr := simp)]
protected theorem SemiconjBy.map [MulHomClass F M N] (h : SemiconjBy a x y) (f : F) :
    SemiconjBy (f a) (f x) (f y) := by simpa only [SemiconjBy, map_mul] using congr_arg f h

@[to_additive (attr := simp)]
protected theorem Commute.map [MulHomClass F M N] (h : Commute x y) (f : F) : Commute (f x) (f y) :=
  SemiconjBy.map h f

@[to_additive (attr := simp)]
protected theorem SemiconjBy.of_map [MulHomClass F M N] (f : F) (hf : Function.Injective f)
    (h : SemiconjBy (f a) (f x) (f y)) : SemiconjBy a x y :=
  hf (by simpa only [SemiconjBy, map_mul] using h)

@[to_additive (attr := simp)]
theorem Commute.of_map [MulHomClass F M N] {f : F} (hf : Function.Injective f)
    (h : Commute (f x) (f y)) : Commute x y :=
  hf (by simpa only [map_mul] using h.eq)

end Commute
```
