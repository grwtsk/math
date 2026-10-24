# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfBits.Variant166e0bcd757181f65589d32e25d2aee467260513d614c743adffe5c4921832a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36e8b6638a0ae43fb6a4c45b7cb9adc66291976a` · SHA-256 `675cb596bf7c2b6ba4e149a5ad5161bf1e3dfcebd0069f4cfe2944924d84289b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfBits.Variant171a6a81fb70419fb0d2b2b13c6c0fd08eadbd393b6e88fcb2a8ce020c5c17a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"171a6a81fb70419fb0d2b2b13c6c0fd08eadbd393b6e88fcb2a8ce020c5c17a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.OfBits.Variant171a6a81fb70419fb0d2b2b13c6c0fd08eadbd393b6e88fcb2a8ce020c5c17a3","mathematical_subject":"Computation.DataStructures","original_sha256":"171a6a81fb70419fb0d2b2b13c6c0fd08eadbd393b6e88fcb2a8ce020c5c17a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/Fin/OfBits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 François G. Dorais. All rights reserved.
Released under Apache 2. license as described in the file LICENSE.
Authors: François G. Dorais
-/
module

public import Batteries.Data.Nat.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfBits.Variant171a6a81fb70419fb0d2b2b13c6c0fd08eadbd393b6e88fcb2a8ce020c5c17a3

@[expose] public section

namespace Fin

/--
Construct an element of `Fin (2 ^ n)` from a sequence of bits (little endian).
-/
abbrev ofBits (f : Fin n → Bool) : Fin (2 ^ n) := ⟨Nat.ofBits f, Nat.ofBits_lt_two_pow f⟩

@[simp] theorem val_ofBits (f : Fin n → Bool) : (ofBits f).val = Nat.ofBits f := rfl
```
