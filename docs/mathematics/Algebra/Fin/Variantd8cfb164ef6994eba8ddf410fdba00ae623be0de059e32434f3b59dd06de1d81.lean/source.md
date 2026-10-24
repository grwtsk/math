# Complete source: GRWTSK.Algebra.Fin.Variantd8cfb164ef6994eba8ddf410fdba00ae623be0de059e32434f3b59dd06de1d81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `724bb91727eb536c60ba9d1533ae2b1ef4f773f6` · SHA-256 `50eda14a82d4fe1e199961f5c825735a852e95d058ed78cfc38f9c62bb5ff359`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingEquivPiFinTwo.Varianta941364c703032a627f100dd92738eb072c472be58f217bfc01994e15526b5c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a941364c703032a627f100dd92738eb072c472be58f217bfc01994e15526b5c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.RingEquivPiFinTwo.Varianta941364c703032a627f100dd92738eb072c472be58f217bfc01994e15526b5c3","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"a941364c703032a627f100dd92738eb072c472be58f217bfc01994e15526b5c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Fin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Algebra.Ring.Equiv
import Mathlib.Data.Fin.Tuple.Basic

/-!
# Rings and `Fin`

This file collects some basic results involving rings and the `Fin` type

## Main results

* `RingEquiv.piFinTwo`: The product over `Fin 2` of some rings is the cartesian product

-/



namespace GRWTSK.Algebra.RingEquivPiFinTwo.Varianta941364c703032a627f100dd92738eb072c472be58f217bfc01994e15526b5c3

/-- The product over `Fin 2` of some rings is just the cartesian product of these rings. -/
@[simps]
def RingEquiv.piFinTwo (R : Fin 2 → Type*) [∀ i, Semiring (R i)] :
    (∀ i : Fin 2, R i) ≃+* R 0 × R 1 :=
  { piFinTwoEquiv R with
    toFun := piFinTwoEquiv R
    map_add' := fun _ _ => rfl
    map_mul' := fun _ _ => rfl }
```
