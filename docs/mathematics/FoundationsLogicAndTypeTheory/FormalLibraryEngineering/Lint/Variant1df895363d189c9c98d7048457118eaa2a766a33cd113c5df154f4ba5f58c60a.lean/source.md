# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lint.Variant1df895363d189c9c98d7048457118eaa2a766a33cd113c5df154f4ba5f58c60a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `264069d6d9cb23f51f9422c74915f7d09c372949` · SHA-256 `1df895363d189c9c98d7048457118eaa2a766a33cd113c5df154f4ba5f58c60a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Linter.Lint
import Mathlib.Tactic.ToAdditive
/--
warning: The namespace 'add' is duplicated in the declaration 'add.add'
note: this linter can be disabled with `set_option linter.dupNamespace false`
-/
#guard_msgs in
def add.add := True

namespace Foo

/--
warning: The namespace 'Foo' is duplicated in the declaration 'Foo.Foo.foo'
note: this linter can be disabled with `set_option linter.dupNamespace false`
-/
#guard_msgs in
def Foo.foo := True

/--
warning: The namespace 'add' is duplicated in the declaration 'Foo.add.add'
note: this linter can be disabled with `set_option linter.dupNamespace false`
-/
#guard_msgs in
set_option linter.dupNamespace true in
@[to_additive] theorem add.mul : True := .intro

--  However, the declaration `Foo.add.add` is present in the environment.
run_cmd Lean.Elab.Command.liftTermElabM do
  let decl := (← Lean.getEnv).find? ``Foo.add.add
  guard decl.isSome

namespace Nat

/--
warning: The namespace 'Nat' is duplicated in the declaration 'Foo.Nat.Nat.Nats'
note: this linter can be disabled with `set_option linter.dupNamespace false`
-/
#guard_msgs in
alias Nat.Nats := Nat

end Nat
end Foo

namespace add

/--
warning: The namespace 'add' is duplicated in the declaration 'add.add'
note: this linter can be disabled with `set_option linter.dupNamespace false`
---
warning: The namespace 'add' is duplicated in the declaration 'add.add'
note: this linter can be disabled with `set_option linter.dupNamespace false`
-/
#guard_msgs in
export Nat (add add_comm add)

end add

/--
warning: The declaration 'double__underscore' contains '__',
which does not follow the mathlib naming conventions. Consider using single underscores instead.
note: this linter can be disabled with `set_option linter.style.nameCheck false`
-/
#guard_msgs in
set_option linter.style.nameCheck true in
theorem double__underscore : True := trivial
```
