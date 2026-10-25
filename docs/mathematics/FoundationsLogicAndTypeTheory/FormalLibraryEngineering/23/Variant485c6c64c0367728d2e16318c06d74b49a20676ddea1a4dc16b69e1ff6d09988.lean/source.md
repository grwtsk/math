# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.23.Variant485c6c64c0367728d2e16318c06d74b49a20676ddea1a4dc16b69e1ff6d09988

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84cd21a94d4a5928160683b2e3d53f704bd4974d` · SHA-256 `b79c5de1107606cf656203459026e6e788356d072cd9b5bd94a7254386090241`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Involutive.Variant9d77103cf2859e47b8cfd02fb7ee441cf3eb8ea6f7a0e3e361f6fae190188362","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d77103cf2859e47b8cfd02fb7ee441cf3eb8ea6f7a0e3e361f6fae190188362","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Involutive.Variant9d77103cf2859e47b8cfd02fb7ee441cf3eb8ea6f7a0e3e361f6fae190188362","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9d77103cf2859e47b8cfd02fb7ee441cf3eb8ea6f7a0e3e361f6fae190188362","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/23.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Involutive.Variant9d77103cf2859e47b8cfd02fb7ee441cf3eb8ea6f7a0e3e361f6fae190188362

set_option aesop.check.all true

def Involutive (f : α → α) : Prop :=
  ∀ x, f (f x) = x

example : Involutive not := by
  aesop (add norm simp Involutive)

example : Involutive not := by
  aesop (add norm unfold Involutive)
```
