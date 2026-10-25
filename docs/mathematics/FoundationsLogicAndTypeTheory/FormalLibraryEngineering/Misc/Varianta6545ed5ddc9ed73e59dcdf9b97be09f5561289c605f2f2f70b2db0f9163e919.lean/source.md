# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Misc.Varianta6545ed5ddc9ed73e59dcdf9b97be09f5561289c605f2f2f70b2db0f9163e919

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20f16dd50adca6dcba3b583a165d1c434e8e5cac` · SHA-256 `a6545ed5ddc9ed73e59dcdf9b97be09f5561289c605f2f2f70b2db0f9163e919`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Do.Basic
public import Lean.Elab.BuiltinDo.Forward
meta import Lean.Parser.Do

public section

namespace Lean.Elab.Do

open Lean.Parser.Term
open Lean.Meta

open InternalSyntax in
@[builtin_doElem_elab Lean.Parser.Term.InternalSyntax.doSkip] def elabDoSkip : DoElab := fun stx dec => do
  let `(doSkip| skip%$tk) := stx | throwUnsupportedSyntax
  let dec ← dec.ensureUnitAt tk
  dec.continueWithUnit

@[builtin_doElem_elab Lean.Parser.Term.doExpr] def elabDoExpr : DoElab := fun stx dec => do
  let `(doExpr| $e:term) := stx | throwUnsupportedSyntax
  if let some r ← tryElabForwardApp? e dec then
    return r
  let mα ← mkMonadApp dec.resultType
  let e ← Term.elabTermEnsuringType e mα
  dec.mkBindUnlessPure e

@[builtin_doElem_elab Lean.Parser.Term.doNested] def elabDoNested : DoElab := fun stx dec => do
  let `(doNested| do $doSeq) := stx | throwUnsupportedSyntax
  elabDoSeq ⟨doSeq.raw⟩ dec

open InternalSyntax in
@[builtin_doElem_elab Lean.Parser.Term.doUnless] def elabDoUnless : DoElab := fun stx dec => do
  let `(doUnless| unless%$tk $cond do $body) := stx | throwUnsupportedSyntax
  elabDoElem (← `(doElem| if $cond then skip%$tk else $body)) dec

@[builtin_doElem_elab Lean.Parser.Term.doDbgTrace] def elabDoDbgTrace : DoElab := fun stx dec => do
  let `(doDbgTrace| dbg_trace%$tk $msg:term) := stx | throwUnsupportedSyntax
  let mγ ← mkMonadApp (← read).doBlockResultType
  let dec ← dec.ensureUnitAt tk
  doElabToSyntax "dbg_trace body" dec.continueWithUnit fun body => do
  Term.elabTerm (← `(dbg_trace $msg; $body)) mγ

@[builtin_doElem_elab Lean.Parser.Term.doAssert] def elabDoAssert : DoElab := fun stx dec => do
  let `(doAssert| assert!%$tk $cond) := stx | throwUnsupportedSyntax
  let mγ ← mkMonadApp (← read).doBlockResultType
  let dec ← dec.ensureUnitAt tk
  doElabToSyntax "assert! body" dec.continueWithUnit fun body => do
  Term.elabTerm (← `(assert! $cond; $body)) mγ

@[builtin_doElem_elab Lean.Parser.Term.doDebugAssert] def elabDoDebugAssert : DoElab := fun stx dec => do
  let `(doDebugAssert| debug_assert!%$tk $cond) := stx | throwUnsupportedSyntax
  let mγ ← mkMonadApp (← read).doBlockResultType
  let dec ← dec.ensureUnitAt tk
  doElabToSyntax "debug_assert! body" dec.continueWithUnit fun body => do
  Term.elabTerm (← `(debug_assert! $cond; $body)) mγ
```
