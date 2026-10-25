# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Glob.Variant2b6e32b01a286c7be5763e0a76bd026b955f8b2f78405b0650479a1a41bc6e7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7ca1840ca91402effb91c4e73b229ebc63ace80` · SHA-256 `2b6e32b01a286c7be5763e0a76bd026b955f8b2f78405b0650479a1a41bc6e7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Mac Malone
-/
module

prelude
public import Lean.Util.Path
import Init.Data.ToString.Name
import Lean.Data.Name

open Lean (Name)
open System (FilePath)

namespace Lake

/-- A specification of a set of module names. -/
public inductive Glob
  /-- Selects just the specified module name. -/
  | one : Name → Glob
  /-- Selects all submodules of the specified module, but not the module itself. -/
  | submodules : Name → Glob
  /-- Selects the specified module and all submodules. -/
  | andSubmodules : Name → Glob
deriving Inhabited, Repr, DecidableEq

public instance : Coe Name Glob := ⟨Glob.one⟩
public instance : Coe Glob (Array Glob) := ⟨Array.singleton⟩

/-- A name glob which matches all names with the prefix, including itself. -/
scoped macro:max n:name noWs ".*" : term =>
  ``(Glob.andSubmodules $(⟨Lean.mkNode `Lean.Parser.Term.quotedName #[n]⟩))

/-- A name glob which matches all names with the prefix, but not the prefix itself. -/
scoped macro:max n:name noWs ".+" : term =>
  ``(Glob.submodules $(⟨Lean.mkNode `Lean.Parser.Term.quotedName #[n]⟩))

namespace Glob

public protected def toString : Glob → String
| .one n => n.toString
| .submodules n => n.toString ++ ".+"
| .andSubmodules n => n.toString ++ ".*"

public instance : ToString Glob := ⟨Glob.toString⟩

public def «matches» (m : Name) : (self : Glob) → Bool
| one n => n == m
| submodules n => n.isPrefixOf m && n != m
| andSubmodules n => n.isPrefixOf m

@[inline] public nonrec def forEachModuleIn [Monad m] [MonadLiftT IO m]
(dir : FilePath) (f : Name → m PUnit) : (self : Glob) → m PUnit
| one n => f n
| submodules n =>
  Lean.forEachModuleInDir (Lean.modToFilePath dir n "") (f <| n ++ ·)
| andSubmodules n =>
  f n *> Lean.forEachModuleInDir (Lean.modToFilePath dir n "") (f <| n ++ ·)
```
