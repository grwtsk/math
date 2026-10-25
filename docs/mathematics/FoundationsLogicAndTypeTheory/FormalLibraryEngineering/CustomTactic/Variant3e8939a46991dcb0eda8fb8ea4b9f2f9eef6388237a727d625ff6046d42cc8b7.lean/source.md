# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CustomTactic.Variant3e8939a46991dcb0eda8fb8ea4b9f2f9eef6388237a727d625ff6046d42cc8b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38ed0156baaafbfc6758694e41f7b3f40f2b1518` · SHA-256 `84f98b583d15ae4cd40f1a0755c21db1dae06d2162e1512c4e08d142d6035650`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant3b7409c8b2d7967f663fe3907e4ed6eba06ce79f87521c1b75ed50d341ebe38b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b7409c8b2d7967f663fe3907e4ed6eba06ce79f87521c1b75ed50d341ebe38b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variant3b7409c8b2d7967f663fe3907e4ed6eba06ce79f87521c1b75ed50d341ebe38b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3b7409c8b2d7967f663fe3907e4ed6eba06ce79f87521c1b75ed50d341ebe38b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/CustomTactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant3b7409c8b2d7967f663fe3907e4ed6eba06ce79f87521c1b75ed50d341ebe38b

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

def Foo := True

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : Foo := by
  aesop (config := { terminal := true })

example : Foo := by
  simp [Foo]

open Lean.Elab.Tactic in
@[aesop safe]
def myTactic : TacticM Unit := do
  evalTactic $ ← `(tactic| rw [Foo])

example : Foo := by
  set_option aesop.check.script false in
  set_option aesop.check.script.steps false in
  aesop
```
