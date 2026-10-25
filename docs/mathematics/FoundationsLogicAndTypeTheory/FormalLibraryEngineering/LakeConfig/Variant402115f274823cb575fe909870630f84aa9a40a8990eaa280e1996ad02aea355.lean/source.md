# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LakeConfig.Variant402115f274823cb575fe909870630f84aa9a40a8990eaa280e1996ad02aea355

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0dedaee45a31b1c16cd0feeafd31811a48ee51b9` · SHA-256 `55ebcab20d63a1aa9de1f9a64d8bb2a8c8552274cac116a4f1b59895e2d7fd9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CacheServiceKind.Variantd89f6aac4eaca74ef312cf1531e146582351547f623ca145baaab29a2ba5c986","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d89f6aac4eaca74ef312cf1531e146582351547f623ca145baaab29a2ba5c986","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.CacheServiceKind.Variantd89f6aac4eaca74ef312cf1531e146582351547f623ca145baaab29a2ba5c986","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"d89f6aac4eaca74ef312cf1531e146582351547f623ca145baaab29a2ba5c986","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/LakeConfig.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Cache
public import Lake.Config.MetaClasses
meta import Lake.Config.Meta


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CacheServiceKind.Variantd89f6aac4eaca74ef312cf1531e146582351547f623ca145baaab29a2ba5c986

open System Lean

namespace Lake

public inductive CacheServiceKind
| undef
| reservoir
| s3
deriving Inhabited

@[inline]
public def CacheServiceKind.ofString? (s : String) : Option CacheServiceKind :=
  match s with
  | "reservoir" => some .reservoir
  | "s3" => some .s3
  | _ => none

public configuration CacheServiceConfig where
  name : String := ""
  kind, type : CacheServiceKind := .undef
  apiEndpoint : String := ""
  artifactEndpoint : String := ""
  revisionEndpoint : String := ""
  deriving Inhabited

public configuration CacheConfig where
  defaultService : String := ""
  defaultUploadService : String := ""
  services @ service : Array CacheServiceConfig := #[]
  deriving Inhabited

public configuration LakeConfig where
  cache : CacheConfig := ∅
  deriving Inhabited

public abbrev CacheServiceMap := NameMap CacheService

public structure LoadedLakeConfig where
  config : LakeConfig
  defaultCacheService : CacheService
  defaultCacheUploadService? : Option CacheService
  cacheServices : CacheServiceMap
  deriving Nonempty
```
