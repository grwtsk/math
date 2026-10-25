# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtraRecognizers.Variant0e76930370764fa779a771cd1d67299e2f8e580db4c11f8b0bc3e85052014f47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1209f0543fae61bbdba30455656381327389a3d` · SHA-256 `0e76930370764fa779a771cd1d67299e2f8e580db4c11f8b0bc3e85052014f47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

public import Mathlib.Data.Set.CoeSort

/-!
# Additional Expr recognizers needing theory imports

-/

public section

namespace Lean.Expr

/-- If `e` is a coercion of a set to a type, return the set.
Succeeds either for `Set.Elem s` terms or `{x // x ∈ s}` subtype terms. -/
def coeTypeSet? (e : Expr) : Option Expr := do
  if e.isAppOfArity ``Set.Elem 2 then
    return e.appArg!
  else if e.isAppOfArity ``Subtype 2 then
    let .lam _ _ body _ := e.appArg! | failure
    guard <| body.isAppOfArity ``Membership.mem 5
    let #[_, _, inst, .bvar 0, s] := body.getAppArgs | failure
    guard <| inst.isAppOfArity ``Set.instMembership 1
    return s
  else
    failure

end Lean.Expr
```
