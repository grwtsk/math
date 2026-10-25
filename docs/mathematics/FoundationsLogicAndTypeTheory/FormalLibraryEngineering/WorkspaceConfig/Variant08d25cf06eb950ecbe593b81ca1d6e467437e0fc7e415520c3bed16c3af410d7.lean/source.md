# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WorkspaceConfig.Variant08d25cf06eb950ecbe593b81ca1d6e467437e0fc7e415520c3bed16c3af410d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6074ad0e0b1f2660294a5771b34ce1d42d12e20` · SHA-256 `08d25cf06eb950ecbe593b81ca1d6e467437e0fc7e415520c3bed16c3af410d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Defaults
public import Lake.Config.MetaClasses
meta import all Lake.Config.Meta
import Lake.Config.Meta

open System
namespace Lake

/-- A `Workspace`'s declarative configuration. -/
public configuration WorkspaceConfig where
  /--
  The directory to which Lake should download remote dependencies.
  Defaults to `defaultPackagesDir` (i.e., `.lake/packages`).
  -/
  packagesDir : FilePath := defaultPackagesDir
  deriving Inhabited, Repr
```
