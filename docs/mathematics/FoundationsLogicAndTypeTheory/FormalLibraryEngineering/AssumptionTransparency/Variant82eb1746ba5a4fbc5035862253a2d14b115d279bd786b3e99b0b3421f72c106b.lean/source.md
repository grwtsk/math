# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssumptionTransparency.Variant82eb1746ba5a4fbc5035862253a2d14b115d279bd786b3e99b0b3421f72c106b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82e9641c6b313b57a2244acb23411c0e00beec0b` · SHA-256 `576d587bca656dcb39ee0945887b71b4c4063914e493a19b1ad97049cff18832`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variantfb5c2eb994623cc887330416d94943f2ed8a39b811bda71c028095997181c7eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb5c2eb994623cc887330416d94943f2ed8a39b811bda71c028095997181c7eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.T.Variantfb5c2eb994623cc887330416d94943f2ed8a39b811bda71c028095997181c7eb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fb5c2eb994623cc887330416d94943f2ed8a39b811bda71c028095997181c7eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/AssumptionTransparency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variantfb5c2eb994623cc887330416d94943f2ed8a39b811bda71c028095997181c7eb

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

def T := Empty

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) : Empty := by
  aesop (erase Aesop.BuiltinRules.applyHyps)
    (config := { assumptionTransparency := .reducible, terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) : Empty := by
  aesop (erase Aesop.BuiltinRules.applyHyps)
    (config := { assumptionTransparency := .reducible, terminal := true })

example (h : T) : Empty := by
  aesop (erase Aesop.BuiltinRules.applyHyps)

@[irreducible] def U := False

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : U) : False := by
  aesop (config := { terminal := true })

example (h : U) : False := by
  aesop (config := { assumptionTransparency := .all })
```
