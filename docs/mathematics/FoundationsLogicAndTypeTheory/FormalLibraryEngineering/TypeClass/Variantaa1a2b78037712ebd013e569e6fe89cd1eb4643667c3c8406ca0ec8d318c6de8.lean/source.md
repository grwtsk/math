# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Typeclass.Variantaa1a2b78037712ebd013e569e6fe89cd1eb4643667c3c8406ca0ec8d318c6de8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `356a1b1bb7d3b35d938992f344517ed7100edc3f` · SHA-256 `aa1a2b78037712ebd013e569e6fe89cd1eb4643667c3c8406ca0ec8d318c6de8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Qq
open Qq

set_option linter.unusedVariables false in
def typeClassArgument (α : Q(Sort u)) (inst : Q(Inhabited $α)) : Q($α) :=
  q(Inhabited.default)

example : Q(Nat) :=
  typeClassArgument q(Nat) q(inferInstance)

/--
info: ((Expr.const `Inhabited.default [Level.zero.succ]).app (Expr.const `Nat [])).app
  (((Expr.const `inferInstance [Level.zero.succ]).app
        ((Expr.const `Inhabited [Level.zero.succ]).app (Expr.const `Nat []))).app
    (Expr.const `instInhabitedNat []))
-/
#guard_msgs in
open Lean in
#eval show MetaM Q(Nat) from do
  let _ ← synthInstanceQ q(Inhabited Nat)
  return typeClassArgument (u := Level.one) q(Nat) q(inferInstance)
```
