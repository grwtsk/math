# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Context.Variant38892379ccf0d2eda8d4927e2490d0de0840c3ab4f232f2c81f87c8828d39e65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32fa90009a81947d2474a8639608fe07165ed009` · SHA-256 `cc97b006f0621ea1dd180e056778a790c448cc96a28744af155b0272e210cebb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Context.Variant7517fc4680e67681dc045ba81f2b9fb5355aa25b9b7dd74cddbbf437a31faef6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7517fc4680e67681dc045ba81f2b9fb5355aa25b9b7dd74cddbbf437a31faef6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Context.Variant7517fc4680e67681dc045ba81f2b9fb5355aa25b9b7dd74cddbbf437a31faef6","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"7517fc4680e67681dc045ba81f2b9fb5355aa25b9b7dd74cddbbf437a31faef6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/Context.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Control.Id
public import Lake.Config.Opaque


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Context.Variant7517fc4680e67681dc045ba81f2b9fb5355aa25b9b7dd74cddbbf437a31faef6

open System
namespace Lake

/-- A Lake configuration. -/
public structure Context where
  opaqueWs : OpaqueWorkspace

/-- A transformer to equip a monad with a `Lake.Context`. -/
public abbrev LakeT := ReaderT Context

@[inline] public def LakeT.run (ctx : Context) (self : LakeT m α) : m α :=
  ReaderT.run self ctx

/-- A monad equipped with a `Lake.Context`. -/
public abbrev LakeM := LakeT Id

@[inline] public def LakeM.run (ctx : Context) (self : LakeM α) : α :=
  ReaderT.run self ctx |>.run
```
