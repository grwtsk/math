# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variantd92c0884dfbe1bf623b933b8cffb084bb15c2d8fbe9a3c33bd758478a52b78fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7faa9f28c5a053ae03d16e708359c8706bcca88f` · SHA-256 `d92c0884dfbe1bf623b933b8cffb084bb15c2d8fbe9a3c33bd758478a52b78fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Simp.SimpTheorems
public import Lean.Meta.Tactic.Simp.SimpCongrTheorems
public import Lean.Meta.Tactic.Simp.Types
public import Lean.Meta.Tactic.Simp.Main
public import Lean.Meta.Tactic.Simp.Rewrite
public import Lean.Meta.Tactic.Simp.SimpAll
public import Lean.Meta.Tactic.Simp.Simproc
public import Lean.Meta.Tactic.Simp.BuiltinSimprocs
public import Lean.Meta.Tactic.Simp.RegisterCommand
public import Lean.Meta.Tactic.Simp.Attr
public import Lean.Meta.Tactic.Simp.Diagnostics
public import Lean.Meta.Tactic.Simp.Arith

public section

namespace Lean

builtin_initialize registerTraceClass `Meta.Tactic.simp
builtin_initialize registerTraceClass `Meta.Tactic.simp.congr (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.simp.discharge (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.simp.rewrite (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.simp.backwardDefEq (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.simp.unify (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.simp.ground (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.simp.loopProtection (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.simp.numSteps
builtin_initialize registerTraceClass `Meta.Tactic.simp.heads
builtin_initialize registerTraceClass `Debug.Meta.Tactic.simp
builtin_initialize registerTraceClass `Debug.Meta.Tactic.simp.congr (inherited := true)

end Lean
```
