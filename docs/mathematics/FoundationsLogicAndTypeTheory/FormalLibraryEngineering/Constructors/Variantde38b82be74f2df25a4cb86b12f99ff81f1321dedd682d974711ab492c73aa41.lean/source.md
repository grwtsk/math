# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Constructors.Variantde38b82be74f2df25a4cb86b12f99ff81f1321dedd682d974711ab492c73aa41

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f81c08100e5f846bc99a77491a9e4d6557847054` · SHA-256 `9479f60fbe0bfb5db7fd2f5391ba43281b976633445a47fb7305e514e84591a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variantce70d8bdf2916f045ec231f937d9a6ef0614bca23eb2088fbfc5d3d2e17aa31c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce70d8bdf2916f045ec231f937d9a6ef0614bca23eb2088fbfc5d3d2e17aa31c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Even.Variantce70d8bdf2916f045ec231f937d9a6ef0614bca23eb2088fbfc5d3d2e17aa31c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ce70d8bdf2916f045ec231f937d9a6ef0614bca23eb2088fbfc5d3d2e17aa31c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Constructors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variantce70d8bdf2916f045ec231f937d9a6ef0614bca23eb2088fbfc5d3d2e17aa31c

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop safe]
inductive Even : Nat → Type
  | zero : Even 0
  | plusTwo : Even n → Even (n + 2)

example : Even 6 := by
  aesop

attribute [-aesop] Even

def T n := Even n

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : T 6 := by
  aesop (config := { terminal := true })

example : T 6 := by
  aesop (add safe constructors (transparency! := default) Even)
```
