# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EraseSimp.Variant644f56d6a00332ca156eb475b4ea6730f448bc37b5ee074278d6a5e65baac2be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64cf57e146fd5200349cbc5072c61a084a95b5c6` · SHA-256 `8b364cd952f6112f11446fc5ad25c09bcb53d0b54a72587dea092de7f59ca64b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant3c7a78d2e305c9b1db4ff673fb7d78e1d86c503d23a7a2bcb96eeee95152496b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c7a78d2e305c9b1db4ff673fb7d78e1d86c503d23a7a2bcb96eeee95152496b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant3c7a78d2e305c9b1db4ff673fb7d78e1d86c503d23a7a2bcb96eeee95152496b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3c7a78d2e305c9b1db4ff673fb7d78e1d86c503d23a7a2bcb96eeee95152496b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/EraseSimp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant3c7a78d2e305c9b1db4ff673fb7d78e1d86c503d23a7a2bcb96eeee95152496b

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

example (n : Nat) : n + m = m + n := by
  aesop (add simp Nat.add_comm)

attribute [local simp] Nat.add_comm

example (n : Nat) : n + m = m + n := by
  aesop

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example (n : Nat) : n + m = m + n := by
  aesop (erase Nat.add_comm) (config := { warnOnNonterminal := false })

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example (n : Nat) : n + m = m + n := by
  aesop (erase norm simp Nat.add_comm) (config := { warnOnNonterminal := false })

/--
error: aesop: 'Nat.add_comm' is not registered (with the given features) in any rule set.
-/
#guard_msgs in
example (n : Nat) : n + m = m + n := by
  aesop (erase apply Nat.add_comm)
```
