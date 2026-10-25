# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantb1a70f0c928d549cc34bc8483d3c2a7f07fa685bd5c0523e55350a0d19226c2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d89f6c4496f602b1cb9d484f131e6bf598bec884` · SHA-256 `b1a70f0c928d549cc34bc8483d3c2a7f07fa685bd5c0523e55350a0d19226c2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.KeyedDeclsAttribute

public section

namespace Lean
namespace PrettyPrinter

/- Auxiliary internal exception for backtracking the pretty printer.
   See `orelse.parenthesizer` for example -/
builtin_initialize backtrackExceptionId : InternalExceptionId ← registerInternalExceptionId `backtrackFormatter

unsafe def runForNodeKind {α} (attr : KeyedDeclsAttribute α) (k : SyntaxNodeKind) (interp : ParserDescr → CoreM α) : CoreM α := do
  match attr.getValues (← getEnv) k with
  | p::_ => pure p
  | _ =>
    -- assume `k` is from a `ParserDescr`, in which case we assume it's also the declaration name
    let info ← getConstInfo k
    if info.type.isConstOf ``ParserDescr || info.type.isConstOf ``TrailingParserDescr then
      let d ← evalConst ParserDescr k
      interp d
    else
      throwError "no declaration of attribute [{attr.defn.name}] found for `{k}`"

end PrettyPrinter
end Lean
```
