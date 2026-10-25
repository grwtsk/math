# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoMatch.Variant259b86c0a4d9bcfce30c4ba8179fca48b07b63d3f610cd49a9f2bf7219047665

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8c2f63a259992e39e09b81339751d9773e4b83f` · SHA-256 `259b86c0a4d9bcfce30c4ba8179fca48b07b63d3f610cd49a9f2bf7219047665`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public meta import Lean.DocString
public meta import Lean.Elab.Tactic.Basic

public meta section

/-!
Deprecation warnings for `match ⋯ with.`, `fun.`, `λ.`, and `intro.`.
-/
namespace Batteries.Tactic
open Lean Elab Term Tactic Parser.Term

/--
The syntax `match ⋯ with.` has been deprecated in favor of `nomatch ⋯`.

Both now support multiple discriminants.
-/
elab (name := matchWithDot) (priority := low)
    tk:"match " t:term,* " with" "." : term <= expectedType? => do
  logWarningAt tk (← findDocString? (← getEnv) ``matchWithDot).get!
  elabTerm (← `(nomatch%$tk $[$t],*)) expectedType?

/-- The syntax `fun.` has been deprecated in favor of `nofun`. -/
elab (name := funDot) (priority := low) tk:"fun" "." : term <= expectedType? => do
  logWarningAt tk (← findDocString? (← getEnv) ``funDot).get!
  elabTerm (← `(nofun)) expectedType?

/-- The syntax `λ.` has been deprecated in favor of `nofun`. -/
elab (name := lambdaDot) (priority := low) tk:"λ" "." : term <= expectedType? => do
  logWarningAt tk (← findDocString? (← getEnv) ``lambdaDot).get!
  elabTerm (← `(nofun)) expectedType?

@[inherit_doc matchWithDot]
macro (priority := low) "match " discrs:term,* " with" "." : tactic =>
  `(tactic| exact match $discrs,* with.)

/--
The syntax `intro.` is deprecated in favor of `nofun`.
-/
elab (name := introDot) tk:"intro" "." : tactic => do
  logWarningAt tk (← findDocString? (← getEnv) ``introDot).get!
  evalTactic (← `(tactic| nofun))
```
