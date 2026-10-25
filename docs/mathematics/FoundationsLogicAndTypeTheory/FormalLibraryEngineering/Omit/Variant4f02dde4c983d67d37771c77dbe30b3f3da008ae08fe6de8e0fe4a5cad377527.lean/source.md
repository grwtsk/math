# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Omit.Variant4f02dde4c983d67d37771c77dbe30b3f3da008ae08fe6de8e0fe4a5cad377527

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `868ac4dbd97b55ae137d7dbce63451dbac728532` · SHA-256 `335353ca5d0cb4c88ecc6afac15944235630d492aac9f7f536eb8a348139754b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5ff3574681691161186ddda8acbd301ed0804d1855542da4c21afc82c637c223","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5ff3574681691161186ddda8acbd301ed0804d1855542da4c21afc82c637c223","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant5ff3574681691161186ddda8acbd301ed0804d1855542da4c21afc82c637c223","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5ff3574681691161186ddda8acbd301ed0804d1855542da4c21afc82c637c223","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/Omit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.Elab.Command
public import Lean.Linter.Util


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5ff3574681691161186ddda8acbd301ed0804d1855542da4c21afc82c637c223

public section

namespace Lean.Linter
open Elab.Command

register_builtin_option linter.omit : Bool := {
  defValue := false
  descr := "enable the 'avoid omit' linter"
}

def «omit» : Linter where
  run stx := do
    unless getLinterValue linter.omit (← getLinterOptions) do
      return
    if let some stx := stx.find? (·.isOfKind ``Lean.Parser.Command.«omit») then
      logLint linter.omit stx m!"`omit` should be avoided in favor of restructuring your \
        `variable` declarations"

builtin_initialize addLinter «omit»
```
