# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mixfix.Variante05debcf4b236906d8fc05ed4944a0208c8c9c9722147fb8529e908b4780bb06

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef1e74829345f5e155581070875c2dcd7d4a73b8` · SHA-256 `e05debcf4b236906d8fc05ed4944a0208c8c9c9722147fb8529e908b4780bb06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Attributes
import Init.Syntax

public section

namespace Lean.Elab.Command

@[builtin_macro Lean.Parser.Command.mixfix] def expandMixfix : Macro := fun stx =>
  withAttrKindGlobal stx fun stx => do
    match stx with
    | `($[$doc?:docComment]? $[@[$attrs?,*]]? infixl:$prec $[(name := $name)]? $[(priority := $prio)]? $op => $f) =>
      let prec1 := quote <| (← evalPrec prec) + 1
      `($[$doc?:docComment]? $[@[$attrs?,*]]? notation:$prec $[(name := $name)]? $[(priority := $prio)]? lhs:$prec $op rhs:$prec1 => $f lhs rhs)
    | `($[$doc?:docComment]? $[@[$attrs?,*]]? infix:$prec $[(name := $name)]? $[(priority := $prio)]? $op => $f) =>
      let prec1 := quote <| (← evalPrec prec) + 1
      `($[$doc?:docComment]? $[@[$attrs?,*]]? notation:$prec $[(name := $name)]? $[(priority := $prio)]? lhs:$prec1 $op rhs:$prec1 => $f lhs rhs)
    | `($[$doc?:docComment]? $[@[$attrs?,*]]? infixr:$prec $[(name := $name)]? $[(priority := $prio)]? $op => $f) =>
      let prec1 := quote <| (← evalPrec prec) + 1
      `($[$doc?:docComment]? $[@[$attrs?,*]]? notation:$prec $[(name := $name)]? $[(priority := $prio)]? lhs:$prec1 $op rhs:$prec => $f lhs rhs)
    | `($[$doc?:docComment]? $[@[$attrs?,*]]? prefix:$prec $[(name := $name)]? $[(priority := $prio)]? $op => $f) =>
      `($[$doc?:docComment]? $[@[$attrs?,*]]? notation:$prec $[(name := $name)]? $[(priority := $prio)]? $op arg:$prec => $f arg)
    | `($[$doc?:docComment]? $[@[$attrs?,*]]? postfix:$prec $[(name := $name)]? $[(priority := $prio)]? $op => $f) =>
      `($[$doc?:docComment]? $[@[$attrs?,*]]? notation:$prec $[(name := $name)]? $[(priority := $prio)]? arg:$prec $op => $f arg)
    | _ => Macro.throwUnsupported
where
  -- set "global" `attrKind`, apply `f`, and restore `attrKind` to result
  withAttrKindGlobal stx f := do
    let attrKind := stx[2]
    let stx  := stx.setArg 2 mkAttrKindGlobal
    let stx ← f stx
    return stx.raw.setArg 2 attrKind

end Lean.Elab.Command
```
