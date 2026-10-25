# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoMatch.Variantbda48192657540606e0401efce6d74e20f0d31a4d3723a6997240479f1765ec7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e168a2f560cc19b6ec72fe1c148d55298d92f9e4` · SHA-256 `bda48192657540606e0401efce6d74e20f0d31a4d3723a6997240479f1765ec7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Std.Tactic.OpenPrivate
import Lean.Elab.Match
import Lean.Elab.ElabRules

/-!
This adds support for the alternative syntax `match x with.` instead of `nomatch x`. It is more
powerful because it supports pattern matching on multiple discriminants, like regular `match`, and
simply has no alternatives in the match.

Along the same lines, `fun.` is a nullary pattern matching function; it is equivalent to
`fun x y z => match x, y, z with.` where all variables are introduced in order to find an
impossible pattern. The `match x with.` and `intro.` tactics do the same thing but in tactic mode.
-/
namespace Std.Tactic
open Lean Elab Term Parser.Term

/--
The syntax `match x with.` is a variant of `nomatch x` which supports pattern matching on multiple
discriminants, like regular `match`, and simply has no alternatives in the match.
-/
syntax:lead (name := noMatch) "match " matchDiscr,* " with" "." : term

open private elabMatchAux waitExpectedType from Lean.Elab.Match in
/-- Elaborator for `match x with.` -/
@[term_elab noMatch] def elabNoMatch' : TermElab
| `(match $discrs,* with.), expectedType? => do
  let discrs := discrs.getElems
  for h : i in [0:discrs.size] do
    have h : i < discrs.size := h.2
    let `(matchDiscr| $[$n :]? $discr:term) := discrs[i] | throwUnsupportedSyntax
    if ← isAtomicDiscr discr then
      tryPostponeIfMVar (← Meta.inferType (← elabTerm discr none))
    else
      let discrs := discrs.set ⟨i, h⟩ (← `(matchDiscr| $[$n :]? ?x))
      return ← elabTerm (← `(let_mvar% ?x := $discr; match $discrs,* with.)) expectedType?
  let expectedType ← waitExpectedType expectedType?
  elabMatchAux none discrs #[] mkNullNode expectedType
| _, _ => throwUnsupportedSyntax

/--
The syntax  `fun.` or `λ.` (dot required) is shorthand for an empty pattern match function,
i.e. `fun x y z => match x, y, z with.` for an appropriate number of arguments.
-/
elab (name := noFun) tk:"fun" "." : term <= expectedType => do
  let (binders, discrs) ← (·.unzip) <$>
    Meta.forallTelescopeReducing expectedType fun args _ =>
      args.mapM fun _ => withFreshMacroScope do
        return ((⟨← `(a)⟩ : Ident), ← `(matchDiscr| a))
  elabTerm (← `(@fun%$tk $binders:ident* => match%$tk $discrs:matchDiscr,* with.)) expectedType

@[inherit_doc noFun] macro tk:"λ" "." : term => `(fun%$tk .)

@[inherit_doc noMatch] macro "match " discrs:matchDiscr,* " with" "." : tactic =>
  `(tactic| exact match $discrs,* with.)

/--
The tactic `intro.` is shorthand for `exact fun.`: it introduces the assumptions, then performs an
empty pattern match, closing the goal if the introduced pattern is impossible.
-/
macro "intro" "." : tactic => `(tactic| exact fun.)
```
