# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LCNF.Variant76aeeee44b9bd8e0d8e1f5069a83ecbd36a955a33256dda368439cb272c561d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e285344a11539eacf87fee9e0b77493e713e014` · SHA-256 `76aeeee44b9bd8e0d8e1f5069a83ecbd36a955a33256dda368439cb272c561d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.AlphaEqv
public import Lean.Compiler.LCNF.Basic
public import Lean.Compiler.LCNF.Bind
public import Lean.Compiler.LCNF.Check
public import Lean.Compiler.LCNF.CompilerM
public import Lean.Compiler.LCNF.CSE
public import Lean.Compiler.LCNF.DependsOn
public import Lean.Compiler.LCNF.ElimDead
public import Lean.Compiler.LCNF.FixedParams
public import Lean.Compiler.LCNF.InferType
public import Lean.Compiler.LCNF.JoinPoints
public import Lean.Compiler.LCNF.LCtx
public import Lean.Compiler.LCNF.Level
public import Lean.Compiler.LCNF.Main
public import Lean.Compiler.LCNF.Passes
public import Lean.Compiler.LCNF.PassManager
public import Lean.Compiler.LCNF.PhaseExt
public import Lean.Compiler.LCNF.PrettyPrinter
public import Lean.Compiler.LCNF.PullFunDecls
public import Lean.Compiler.LCNF.PullLetDecls
public import Lean.Compiler.LCNF.ReduceJpArity
public import Lean.Compiler.LCNF.Simp
public import Lean.Compiler.LCNF.Specialize
public import Lean.Compiler.LCNF.SpecInfo
public import Lean.Compiler.LCNF.ToDecl
public import Lean.Compiler.LCNF.ToExpr
public import Lean.Compiler.LCNF.ToLCNF
public import Lean.Compiler.LCNF.Types
public import Lean.Compiler.LCNF.Util
public import Lean.Compiler.LCNF.ConfigOptions
public import Lean.Compiler.LCNF.MonoTypes
public import Lean.Compiler.LCNF.ToMono
public import Lean.Compiler.LCNF.MonadScope
public import Lean.Compiler.LCNF.Closure
public import Lean.Compiler.LCNF.LambdaLifting
public import Lean.Compiler.LCNF.ReduceArity
public import Lean.Compiler.LCNF.Probing
public import Lean.Compiler.LCNF.Irrelevant
public import Lean.Compiler.LCNF.SplitSCC
```
