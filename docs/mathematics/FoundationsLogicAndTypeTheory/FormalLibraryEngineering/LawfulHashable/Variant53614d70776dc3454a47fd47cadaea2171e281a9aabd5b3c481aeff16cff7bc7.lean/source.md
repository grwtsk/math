# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulHashable.Variant53614d70776dc3454a47fd47cadaea2171e281a9aabd5b3c481aeff16cff7bc7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d216d4060010005970fe9f3ebc1d60cac5bc8c04` · SHA-256 `1d2b926addf71db870f8b46521526e706c0314fe1ed4ac8e33467fab80092c5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulHashable.Variant14a5635bf79ab8693d34e2c9dc8166f1ec37de9e5996cab1b03c88ed41d47d19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14a5635bf79ab8693d34e2c9dc8166f1ec37de9e5996cab1b03c88ed41d47d19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LawfulHashable.Variant14a5635bf79ab8693d34e2c9dc8166f1ec37de9e5996cab1b03c88ed41d47d19","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"14a5635bf79ab8693d34e2c9dc8166f1ec37de9e5996cab1b03c88ed41d47d19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/LawfulHashable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Core


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulHashable.Variant14a5635bf79ab8693d34e2c9dc8166f1ec37de9e5996cab1b03c88ed41d47d19

public section

/--
The `BEq α` and `Hashable α` instances on `α` are compatible. This means that `a == b` implies
`hash a = hash b`.

This is automatic if the `BEq` instance is lawful.
-/
class LawfulHashable (α : Type u) [BEq α] [Hashable α] where
  /-- If `a == b`, then `hash a = hash b`. -/
  hash_eq (a b : α) : a == b → hash a = hash b

/--
A lawful hash function respects its Boolean equality test.
-/
theorem hash_eq [BEq α] [Hashable α] [LawfulHashable α] {a b : α} : a == b → hash a = hash b :=
  LawfulHashable.hash_eq a b

instance (priority := low) [BEq α] [Hashable α] [LawfulBEq α] : LawfulHashable α where
  hash_eq _ _ h := eq_of_beq h ▸ rfl
```
