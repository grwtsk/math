# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntrosAllTransparency.Varianteb769c6f8b2875f2d18b635456d28647fd847b19188bea27c27ea6e008b65992

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e58cb41bf9bdaa64d4319b8535ca019121c8ea5f` · SHA-256 `93ebbf8bf7cf70dfd4d33f56fc4e50f8525d765579c48e1eb9be3b0114d89833`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Varianta9250cd09ada5422f451c534f902f8f337daa71df26256c72256bdff7789de86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9250cd09ada5422f451c534f902f8f337daa71df26256c72256bdff7789de86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Varianta9250cd09ada5422f451c534f902f8f337daa71df26256c72256bdff7789de86","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a9250cd09ada5422f451c534f902f8f337daa71df26256c72256bdff7789de86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/IntrosAllTransparency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Varianta9250cd09ada5422f451c534f902f8f337daa71df26256c72256bdff7789de86

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[irreducible] def T := False → True

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : T := by
  aesop (config := { terminal := true })

example : T := by
  aesop (config := { introsTransparency? := some .all })
```
