# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Intros.Variant92041f108b4244f9d3e3fc87ba8c028c5b6bba806a2af86aa2ace224534d6ee5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dea7fca1e7e73aba6df92c8f275098d5f4e637a2` · SHA-256 `bde453e7f6a24ee4445b6a3ecfd77632cb481692d848496e972b04e9901218e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Injective.Variant30a9e355fd4e9f0ed70f5a2e72a8f9a508f9e5fdcc05237f60bd5b21b1418ca1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30a9e355fd4e9f0ed70f5a2e72a8f9a508f9e5fdcc05237f60bd5b21b1418ca1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Injective.Variant30a9e355fd4e9f0ed70f5a2e72a8f9a508f9e5fdcc05237f60bd5b21b1418ca1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"30a9e355fd4e9f0ed70f5a2e72a8f9a508f9e5fdcc05237f60bd5b21b1418ca1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Intros.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Injective.Variant30a9e355fd4e9f0ed70f5a2e72a8f9a508f9e5fdcc05237f60bd5b21b1418ca1

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

def Injective₁ (f : α → β) := ∀ x y, f x = f y → x = y

abbrev Injective₂ (f : α → β) := ∀ x y, f x = f y → x = y

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : Injective₁ (@id Nat) := by
  aesop (config := { terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : Injective₁ (@id Nat) := by
  aesop (config := { introsTransparency? := some .reducible, terminal := true })

example : Injective₁ (@id Nat) := by
  aesop (config := { introsTransparency? := some .default })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : Injective₂ (@id Nat) := by
  aesop (config := { terminal := true })

example : Injective₂ (@id Nat) := by
  aesop (config := { introsTransparency? := some .reducible })

example : Injective₂ (@id Nat) := by
  aesop (config := { introsTransparency? := some .default })
```
