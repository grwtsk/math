# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.43.Varianta723480f83015d1e5f59033c8779698828dccdb493e1dcc60ace4f94b6f76283

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f28555c5c05da6fb7916f1abcb5b14a2804d9423` · SHA-256 `239a528094fbbc54c92872e6ad93cc1bacc0b5fd0cedb456bc44db4b44646885`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Variant2b87d9a52c827ac7a31504d35d8ad13f615cd139c2986b333b88b81e90be84c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b87d9a52c827ac7a31504d35d8ad13f615cd139c2986b333b88b81e90be84c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.A.Variant2b87d9a52c827ac7a31504d35d8ad13f615cd139c2986b333b88b81e90be84c9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2b87d9a52c827ac7a31504d35d8ad13f615cd139c2986b333b88b81e90be84c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/43.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Variant2b87d9a52c827ac7a31504d35d8ad13f615cd139c2986b333b88b81e90be84c9

set_option aesop.check.all true

structure A

open Lean.Elab.Tactic in
@[aesop norm]
def tac : TacticM Unit := do
  evalTactic $ ← `(tactic| exact A.mk)

example : A := by
  set_option aesop.check.script false in
  set_option aesop.check.script.steps false in
  aesop
```
