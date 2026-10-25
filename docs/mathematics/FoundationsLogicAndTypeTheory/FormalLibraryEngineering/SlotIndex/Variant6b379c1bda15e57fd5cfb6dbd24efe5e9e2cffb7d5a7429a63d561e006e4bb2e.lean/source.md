# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SlotIndex.Variant6b379c1bda15e57fd5cfb6dbd24efe5e9e2cffb7d5a7429a63d561e006e4bb2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82f31babd57e74f44fd9a4f07323776902ac0bd5` · SHA-256 `bc51ca82b9498d7b737c0305ac0d15b8e86fb44e684f41baab407bedd65ede05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SlotIndex.Variantbbd54944a07082f8d14babbc0a79ebc4831201ba6c8e154036e349c8b972d88d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbd54944a07082f8d14babbc0a79ebc4831201ba6c8e154036e349c8b972d88d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SlotIndex.Variantbbd54944a07082f8d14babbc0a79ebc4831201ba6c8e154036e349c8b972d88d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bbd54944a07082f8d14babbc0a79ebc4831201ba6c8e154036e349c8b972d88d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Forward/SlotIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SlotIndex.Variantbbd54944a07082f8d14babbc0a79ebc4831201ba6c8e154036e349c8b972d88d

public section

namespace Aesop

structure SlotIndex where
  toNat : Nat
  deriving Inhabited, BEq, Hashable, DecidableEq, Ord

instance : LT SlotIndex where
  lt i j := i.toNat < j.toNat

instance : DecidableRel (α := SlotIndex) (· < ·) :=
  λ i j => inferInstanceAs $ Decidable (i.toNat < j.toNat)

instance : LE SlotIndex where
  le i j := i.toNat ≤ j.toNat

instance : DecidableRel (α := SlotIndex) (· ≤ ·) :=
  λ i j => inferInstanceAs $ Decidable (i.toNat ≤ j.toNat)

instance : HAdd SlotIndex Nat SlotIndex where
  hAdd i j := ⟨i.toNat + j⟩

instance : HSub SlotIndex Nat SlotIndex where
  hSub i j := ⟨i.toNat - j⟩

instance : ToString SlotIndex where
  toString i := toString i.toNat

end Aesop
```
