# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Instances.Variant9985dc7cf967a0ebd30ef9b0741a1b12726d10b841b7acd55d1740f8f1c94d91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `461cfc711a47311758bc580b0da503b30b641568` · SHA-256 `9985dc7cf967a0ebd30ef9b0741a1b12726d10b841b7acd55d1740f8f1c94d91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.Instances

set_option linter.missingDocs false

/--
error: type class instance expected
  Fin 1
-/
#guard_msgs in
#instances Fin 1

/--
info: 3 instances:

instAddNat : Add Nat
(prio 100) Lean.Grind.Semiring.toAdd.{u} {α : Type u} [self : Lean.Grind.Semiring α] : Add α
(prio 100) Lean.Grind.AddCommMonoid.toAdd.{u} {M : Type u} [self : Lean.Grind.AddCommMonoid M] : Add M
-/
#guard_msgs in
#instances Add Nat

namespace Testing
class A (α : Type)

/-- info: No instances -/
#guard_msgs in
#instances A

instance (priority := high) : A Nat := ⟨⟩
instance : A Int := ⟨⟩
instance : A Bool := ⟨⟩

/--
info: 3 instances:

(prio 10000) Testing.instANat : A Nat
Testing.instABool : A Bool
Testing.instAInt : A Int
-/
#guard_msgs in
#instances A _

/--
info: 3 instances:

(prio 10000) Testing.instANat : A Nat
Testing.instABool : A Bool
Testing.instAInt : A Int
-/
#guard_msgs in
#instances A

/-- info: No instances -/
#guard_msgs in
#instances (α : Type) → A α

instance : A α := ⟨⟩

/--
info: 5 instances:
(local) inst✝ : A β
(prio 10000) Testing.instANat : A Nat
Testing.instABool : A Bool
Testing.instAInt : A Int
Testing.instA {α : Type} : A α
-/
#guard_msgs in
#instances [A β] : A

/--
info: 1 instance:

Testing.instA {α : Type} : A α
-/
#guard_msgs in
#instances (α : Type) → A α

end Testing
```
