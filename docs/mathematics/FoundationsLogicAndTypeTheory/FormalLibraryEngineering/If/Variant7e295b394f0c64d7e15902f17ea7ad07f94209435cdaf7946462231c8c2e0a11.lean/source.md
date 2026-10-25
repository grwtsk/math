# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.If.Variant7e295b394f0c64d7e15902f17ea7ad07f94209435cdaf7946462231c8c2e0a11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f5fc9353843052d4837bd5f1f6b138f03b11413` · SHA-256 `7e295b394f0c64d7e15902f17ea7ad07f94209435cdaf7946462231c8c2e0a11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Do.Basic
meta import Lean.Parser.Do
import Lean.Elab.BuiltinDo.Basic

public section

namespace Lean.Elab.Do

open Lean.Parser.Term
open Lean.Meta

open InternalSyntax in
/--
If the given syntax is a `doIf`, return an equivalent `doIf` that has an `else` but no `else if`s or
`if let`s.
-/
@[builtin_macro Lean.Parser.Term.doIf] def expandDoIf : Macro := fun stx =>
  match stx with
  | `(doElem|if $_:doIfProp then $_ else $_) =>
    Macro.throwUnsupported
  | `(doElem|if%$tk $cond:doIfCond then $t $[else if%$tks $conds:doIfCond then $ts]* $[else $e?]?) => do
    let mut e : Syntax ← e?.getDM `(doSeq| skip%$tk)
    let mut eIsSeq := true
    for (cond, t) in Array.zip (conds.reverse.push cond) (ts.reverse.push t) do
      e ← if eIsSeq then pure e else `(doSeq|$(⟨e⟩):doElem)
      e ← match cond with
        | `(doIfCond|let $pat := $d) => `(doElem| match $d:term with | $pat:term => $t | _ => $(⟨e⟩))
        | `(doIfCond|let $pat ← $d)  => `(doElem| match ← $d:term with | $pat:term => $t | _ => $(⟨e⟩))
        | `(doIfCond|$cond:doIfProp) => `(doElem| if $cond:doIfProp then $t else $(⟨e⟩))
        | _                          => Macro.throwUnsupported
      eIsSeq := false
    return e
  | _ => Macro.throwUnsupported

@[builtin_doElem_elab Lean.Parser.Term.doIf] def elabDoIf : DoElab := fun stx dec => do
  let `(doIf|if $cond:doIfCond then $thenSeq else $elseSeq) := stx | throwUnsupportedSyntax
  let info := (← inferControlInfoSeq thenSeq).alternative (← inferControlInfoSeq elseSeq)
  dec.withDuplicableCont info fun dec => do
  match cond with
  | `(doIfCond|$cond) => elabIte cond thenSeq elseSeq dec
  | `(doIfCond|$h : $cond) => elabDite h cond thenSeq elseSeq dec
  | _ => throwUnsupportedSyntax
where
  elabIte cond thenSeq elseSeq dec := do
    -- It turned out to be far more reliable to offload as much work as possible to the App
    -- elaborator. However, for Lake.Package.mkBuildArchiveFacetConfig, we still need to postpone.
    doElabToSyntax "then branch of if with condition {cond}" (elabDoSeq thenSeq dec) fun then_ => do
    doElabToSyntax "else branch of if with condition {cond}" (elabDoSeq elseSeq dec) fun else_ => do
    let mγ ← mkMonadApp (← read).doBlockResultType
    Term.elabTermEnsuringType (← `(if $cond then $then_ else $else_)) mγ

  elabDite h cond thenSeq elseSeq dec := do
    let elabDiteBranch (then_ : Bool) : DoElabM Expr := do
      elabDoSeq (if then_ then thenSeq else elseSeq) dec
    doElabToSyntax "then branch of if with condition {cond}" (elabDiteBranch true) fun then_ => do
    doElabToSyntax "else branch of if with condition {cond}" (elabDiteBranch false) fun else_ => do
    let mγ ← mkMonadApp (← read).doBlockResultType
    match h with
    | `(_%$tk) => Term.elabTermEnsuringType (← `(if _%$tk : $cond then $then_ else $else_)) mγ
    | `($h:ident) => Term.elabTermEnsuringType (← `(if $h:ident : $cond then $then_ else $else_)) mγ
    | _ => throwUnsupportedSyntax
```
