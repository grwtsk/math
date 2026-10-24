# Complete source: GRWTSK.Algebra.ConjAct.Variantd8cd3dd41b87c3276391192594a5d8c151d0edfabe29e5aaea7c3de5ebd0a5fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `356ec4de8b63ad7dfd77aed29d653f61aa5ba637` · SHA-256 `2440978a243127414d1c35f0d5cc3f1ab6f637b3ffa6040a92c84e4b82b2c677`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Action.Variant35c6abdf6e9314c3495b5f2d31e02d4d179753851d69f20facb014c89c5c64ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"35c6abdf6e9314c3495b5f2d31e02d4d179753851d69f20facb014c89c5c64ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Action.Variant35c6abdf6e9314c3495b5f2d31e02d4d179753851d69f20facb014c89c5c64ef","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"35c6abdf6e9314c3495b5f2d31e02d4d179753851d69f20facb014c89c5c64ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Action/ConjAct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Ring.Action.Basic
import Mathlib.GroupTheory.GroupAction.ConjAct

/-!
# Conjugation action of a ring on itself
-/


namespace GRWTSK.Algebra.Action.Variant35c6abdf6e9314c3495b5f2d31e02d4d179753851d69f20facb014c89c5c64ef

assert_not_exists Field

namespace ConjAct
variable {R : Type*} [Semiring R]

instance unitsMulSemiringAction : MulSemiringAction (ConjAct Rˣ) R :=
  { ConjAct.unitsMulDistribMulAction with
    smul_zero := by simp [units_smul_def]
    smul_add := by simp [units_smul_def, mul_add, add_mul] }

end ConjAct
```
