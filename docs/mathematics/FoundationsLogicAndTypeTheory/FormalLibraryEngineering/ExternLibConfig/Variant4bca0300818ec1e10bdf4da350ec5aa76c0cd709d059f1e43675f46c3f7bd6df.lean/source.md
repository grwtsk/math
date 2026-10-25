# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternLibConfig.Variant4bca0300818ec1e10bdf4da350ec5aa76c0cd709d059f1e43675f46c3f7bd6df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0354948837c02c8af2e0c4f5bd5394d5417e62f4` · SHA-256 `4bca0300818ec1e10bdf4da350ec5aa76c0cd709d059f1e43675f46c3f7bd6df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Build.Job.Basic

namespace Lake
open Lean System

/-- A external library's declarative configuration. -/
public structure ExternLibConfig (pkgName name : Name) where
  /-- The library's build data. -/
  getPath : Job (CustomData pkgName (.str name "static")) → Job FilePath
  deriving Inhabited
```
