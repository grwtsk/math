# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternLibConfig.Variant25b0c687d514d8e358fcf99c0e41f89cc3debf465a8ec8b06e14b63e6884ad4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d859140734aa906ea9d04496281c7b36d7f2685b` · SHA-256 `488183abc677a1f4698663b81263c279057d2438912b7f8e2eb400c995cef542`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternLibConfig.Variant4bca0300818ec1e10bdf4da350ec5aa76c0cd709d059f1e43675f46c3f7bd6df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bca0300818ec1e10bdf4da350ec5aa76c0cd709d059f1e43675f46c3f7bd6df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.ExternLibConfig.Variant4bca0300818ec1e10bdf4da350ec5aa76c0cd709d059f1e43675f46c3f7bd6df","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"4bca0300818ec1e10bdf4da350ec5aa76c0cd709d059f1e43675f46c3f7bd6df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/ExternLibConfig.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Build.Job.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternLibConfig.Variant4bca0300818ec1e10bdf4da350ec5aa76c0cd709d059f1e43675f46c3f7bd6df

namespace Lake
open Lean System

/-- A external library's declarative configuration. -/
public structure ExternLibConfig (pkgName name : Name) where
  /-- The library's build data. -/
  getPath : Job (CustomData pkgName (.str name "static")) → Job FilePath
  deriving Inhabited
```
