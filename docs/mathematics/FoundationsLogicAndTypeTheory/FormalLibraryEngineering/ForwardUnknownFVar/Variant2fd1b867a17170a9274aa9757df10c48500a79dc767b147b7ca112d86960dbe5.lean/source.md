# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardUnknownFVar.Variant2fd1b867a17170a9274aa9757df10c48500a79dc767b147b7ca112d86960dbe5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86c7bd6c8a02e847fbbccb731fb57078cc0bc2ad` · SHA-256 `bb3aa8625190c98a43561bdd8822a8bc430abfb51cdb7cc2f4fef0a8c311e6d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant39cc6f76bbf1c1f086f0a27d6c3a71f28d5976c9ccad885164d8ee875af072c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39cc6f76bbf1c1f086f0a27d6c3a71f28d5976c9ccad885164d8ee875af072c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant39cc6f76bbf1c1f086f0a27d6c3a71f28d5976c9ccad885164d8ee875af072c3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"39cc6f76bbf1c1f086f0a27d6c3a71f28d5976c9ccad885164d8ee875af072c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/ForwardUnknownFVar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Xavier Généreux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Généreux, Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant39cc6f76bbf1c1f086f0a27d6c3a71f28d5976c9ccad885164d8ee875af072c3

attribute [aesop safe forward 1] Nat.le_trans
attribute [-aesop] Aesop.BuiltinRules.applyHyps

variable (a b c d e f : Nat)

/-- error: Tactic `aesop` failed, failed to prove the goal after exhaustive search. -/
#guard_msgs in
set_option aesop.smallErrorMessages true in
example (h₃ : c ≤ d) (h₄ : d ≤ e) (h₅ : e ≤ f) (h : a = f) : False := by
  aesop (config := { terminal := true })
```
