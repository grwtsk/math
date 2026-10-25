# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variant835d173b6b9855c99833c7063c3909f58d2e746632d3f723f10aff5e1fe0a015

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e376c6f4a34be547a84b2aaa26abcf24f16adfd1` · SHA-256 `835d173b6b9855c99833c7063c3909f58d2e746632d3f723f10aff5e1fe0a015`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Package
public import Lake.Config.LakefileConfig
public import Lake.Load.Config
import Lake.Load.Lean.Elab
import Lake.Load.Lean.Eval

/-! # Lean Loader

This module contains the main definitions to load a package from a
Lake configuration file written in Lake's Lean DSL.
-/

open Lean

namespace Lake

/-- Elaborate a Lake configuration file written in Lean and extract the Lake configuration.  -/
public def loadLeanConfig  (cfg : LoadConfig) : LogIO LakefileConfig := do
  let configEnv ← importConfigFile cfg
  LakefileConfig.loadFromEnv configEnv cfg.leanOpts
```
