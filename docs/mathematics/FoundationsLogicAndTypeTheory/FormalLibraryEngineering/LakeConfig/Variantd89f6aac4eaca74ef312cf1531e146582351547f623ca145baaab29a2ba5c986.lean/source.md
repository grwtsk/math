# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LakeConfig.Variantd89f6aac4eaca74ef312cf1531e146582351547f623ca145baaab29a2ba5c986

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ebe30319c36d1c32e4e2925367039962186867d` · SHA-256 `d89f6aac4eaca74ef312cf1531e146582351547f623ca145baaab29a2ba5c986`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
