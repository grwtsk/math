# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithoutCDot.Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f45b751f5cc44a9572bdff629164b92bee2ac94` · SHA-256 `80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Lean.Elab.SyntheticMVars
import Mathlib.Init

/-!
# The `without_cdot()` elaborator
-/

namespace Lean.Elab.Term

open Parser

private def withoutCDotContents : Parser :=
  withoutPosition <|
    withoutForbidden (termParser >> optional (" :" >> optional (ppSpace >> termParser)))

/-- A set of parentheses, supporting type ascriptions, which does not process `·`.

Primarily, this is useful when quoting user-provided syntax inside parentheses, as it prevents `·`s
from the caller being interpreted in the context of `()`s from the macro. -/
@[term_parser]
def withoutCDot := leading_parser
  "without_cdot(" >> withoutCDotContents >> ")"

/-- Implementation detail of `withoutCDot` -/
@[term_parser]
def withoutCDotImpl := leading_parser
  "without_cdot_impl(" >> withoutCDotContents >> ")"

-- The `no_implicit_lambda%`s here are to emulate the behavior of `blockImplicitLambda`
macro_rules
  | `(without_cdot($e :)) => `(no_implicit_lambda% without_cdot_impl($e :))
  | `(without_cdot($e : $ty)) => `(no_implicit_lambda% without_cdot_impl($e : $ty))
  | `(without_cdot($e)) => `(without_cdot_impl($e))

@[term_elab withoutCDotImpl, inherit_doc withoutCDot]
def elabWithoutCDot : TermElab
  -- copied from `elabTypeAscription`
  | `(without_cdot_impl($e : $type)), _ => do
    let type ← withSynthesize (postpone := .yes) <| elabType type
    let e ← elabTerm e type
    ensureHasType type e
  | `(without_cdot_impl($e :)), expectedType? => do
    let e ← withSynthesize (postpone := .no) <| elabTerm e none
    ensureHasType expectedType? e
  | `(without_cdot_impl($e)), expectedType? => do
    elabTerm e expectedType?
  | _, _ => throwUnsupportedSyntax

end Lean.Elab.Term
```
