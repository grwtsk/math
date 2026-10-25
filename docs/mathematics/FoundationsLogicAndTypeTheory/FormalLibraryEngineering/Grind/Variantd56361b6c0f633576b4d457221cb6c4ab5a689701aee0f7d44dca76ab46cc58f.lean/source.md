# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grind.Variantd56361b6c0f633576b4d457221cb6c4ab5a689701aee0f7d44dca76ab46cc58f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39b315c399eefd8cb7d9033657e818ae5b678ed1` · SHA-256 `d56361b6c0f633576b4d457221cb6c4ab5a689701aee0f7d44dca76ab46cc58f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Tactic.Grind.Main
public import Lean.Elab.Tactic.Grind.Basic
public import Lean.Elab.Tactic.Grind.BuiltinTactic
public import Lean.Elab.Tactic.Grind.ShowState
public import Lean.Elab.Tactic.Grind.Have
public import Lean.Elab.Tactic.Grind.Trace
public import Lean.Elab.Tactic.Grind.Config
public import Lean.Elab.Tactic.Grind.Lint
public import Lean.Elab.Tactic.Grind.LintExceptions
public import Lean.Elab.Tactic.Grind.Annotated
public import Lean.Elab.Tactic.Grind.Sym
public import Lean.Elab.Tactic.Grind.Rewrite
public import Lean.Elab.Tactic.Grind.DSimp
public import Lean.Elab.Tactic.Grind.Cbv
public import Lean.Elab.Tactic.Grind.SimprocDSL
public import Lean.Elab.Tactic.Grind.SimprocDSLBuiltin
public import Lean.Elab.Tactic.Grind.RegisterSymSimp
public import Lean.Elab.Tactic.Grind.DSimprocDSL
public import Lean.Elab.Tactic.Grind.DSimprocDSLBuiltin
public import Lean.Elab.Tactic.Grind.RegisterSymDSimp
```
