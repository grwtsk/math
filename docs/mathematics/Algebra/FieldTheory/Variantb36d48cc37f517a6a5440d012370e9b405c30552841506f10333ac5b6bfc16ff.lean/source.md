# Complete source: GRWTSK.Algebra.Field.Variantb36d48cc37f517a6a5440d012370e9b405c30552841506f10333ac5b6bfc16ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c12bb1eb1d5b50e64369cf45a3ba37c543f5d14` · SHA-256 `40b3ae4ada14bf3f40c033bf1f0f20ec2ba1292409ffcabcdec1a2d562fb92c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SmulInvPrimePrime.Variant98e5c413a9011bdcb96d566865ac1f94647f6e2c83dfb869b53c7825ee62c5d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98e5c413a9011bdcb96d566865ac1f94647f6e2c83dfb869b53c7825ee62c5d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SmulInvPrimePrime.Variant98e5c413a9011bdcb96d566865ac1f94647f6e2c83dfb869b53c7825ee62c5d9","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"98e5c413a9011bdcb96d566865ac1f94647f6e2c83dfb869b53c7825ee62c5d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Action/Field.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.Ring.Action.Basic
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.GroupWithZero.Units.Lemmas

/-!
# Group action on fields
-/


namespace GRWTSK.Algebra.SmulInvPrimePrime.Variant98e5c413a9011bdcb96d566865ac1f94647f6e2c83dfb869b53c7825ee62c5d9

variable {M} [Monoid M] {F} [DivisionRing F]

/-- Note that `smul_inv'` refers to the group case, and `smul_inv` has an additional inverse
on `x`. -/
@[simp]
theorem smul_inv'' [MulSemiringAction M F] (x : M) (m : F) : x • m⁻¹ = (x • m)⁻¹ :=
  map_inv₀ (MulSemiringAction.toRingHom M F x) _
```
