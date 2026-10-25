# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtraRecognizers.Varianta697e865dd3dcbde87a7eb19885b51685588fca1984e23273018b5c2978a28fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8ca5f661228f645939bc6eb56955f24f2d3443b` · SHA-256 `a697e865dd3dcbde87a7eb19885b51685588fca1984e23273018b5c2978a28fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Data.Set.Operations

/-!
# Additional Expr recognizers needing theory imports

-/

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
