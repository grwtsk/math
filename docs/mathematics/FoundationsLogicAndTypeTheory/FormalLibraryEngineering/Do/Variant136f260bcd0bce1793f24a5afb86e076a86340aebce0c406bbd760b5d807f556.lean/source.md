# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Do.Variant136f260bcd0bce1793f24a5afb86e076a86340aebce0c406bbd760b5d807f556

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40503606a22b64e26f116203ea44199db6119028` · SHA-256 `136f260bcd0bce1793f24a5afb86e076a86340aebce0c406bbd760b5d807f556`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Lean.Elab.Do.Legacy

public section

/-!
Make `Lean.Elab.Term.extractBind` public.
-/

open Lean Meta

namespace Lean.Elab.Term

def mkIdBindFor (type : Expr) : TermElabM ExtractMonadResult := do
  let u ← getDecLevel type
  let id        := Lean.mkConst ``Id [u]
  pure { m := id, returnType := type, expectedType := mkApp id type }

partial def extractBind (expectedType? : Option Expr) : TermElabM ExtractMonadResult := do
  match expectedType? with
  | none => throwError "invalid 'do' notation, expected type is not available"
  | some expectedType =>
    let extractStep? (type : Expr) : MetaM (Option ExtractMonadResult) := do
      match type with
      | .app m returnType =>
        return some { m, returnType, expectedType }
      | _ =>
        return none
    let rec extract? (type : Expr) : MetaM (Option ExtractMonadResult) := do
      match (← extractStep? type) with
      | some r => return r
      | none =>
        let typeNew ← whnfCore type
        if typeNew != type then
          extract? typeNew
        else
          if typeNew.getAppFn.isMVar then throwError "invalid 'do' notation, expected type is not available"
          match (← unfoldDefinition? typeNew) with
          | some typeNew => extract? typeNew
          | none => return none
    match (← extract? expectedType) with
    | some r => return r
    | none   => mkIdBindFor expectedType
```
