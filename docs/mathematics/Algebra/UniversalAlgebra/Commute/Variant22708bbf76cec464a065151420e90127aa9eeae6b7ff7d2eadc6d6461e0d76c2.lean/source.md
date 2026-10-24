# Complete source: GRWTSK.Algebra.UniversalAlgebra.Commute.Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `152c2af757c807818fdd5d87a65475afce195d59` · SHA-256 `04b90050fd0aa990badc5bcc88fe854ba2bc33adc8b6a7455c09cd046210cfaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.SemiconjByMap.Variant66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.SemiconjByMap.Variant66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Hom/Commute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot, Kevin Buzzard, Scott Morrison, Johan Commelin, Chris Hughes,
  Johannes Hölzl, Yury Kudryashov
-/
import Mathlib.Algebra.Hom.Group
import Mathlib.Algebra.Group.Commute


namespace GRWTSK.Algebra.UniversalAlgebra.SemiconjByMap.Variant66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2

#align_import algebra.hom.commute from "leanprover-community/mathlib"@"6eb334bd8f3433d5b08ba156b8ec3e6af47e1904"

/-!
# Multiplicative homomorphisms respect semiconjugation and commutation.
-/


section Commute

variable {F M N : Type*} [Mul M] [Mul N] {a x y : M}

@[to_additive (attr := simp)]
protected theorem SemiconjBy.map [MulHomClass F M N] (h : SemiconjBy a x y) (f : F) :
    SemiconjBy (f a) (f x) (f y) := by simpa only [SemiconjBy, map_mul] using congr_arg f h
#align semiconj_by.map SemiconjBy.map
#align add_semiconj_by.map AddSemiconjBy.map

@[to_additive (attr := simp)]
protected theorem Commute.map [MulHomClass F M N] (h : Commute x y) (f : F) : Commute (f x) (f y) :=
  SemiconjBy.map h f
#align commute.map Commute.map
#align add_commute.map AddCommute.map

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
