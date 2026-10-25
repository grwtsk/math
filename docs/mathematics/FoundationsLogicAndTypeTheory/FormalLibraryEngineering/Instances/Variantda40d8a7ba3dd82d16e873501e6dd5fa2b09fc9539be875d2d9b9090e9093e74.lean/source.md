# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Instances.Variantda40d8a7ba3dd82d16e873501e6dd5fa2b09fc9539be875d2d9b9090e9093e74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3cbe2d25c7de5fb006c20c395d6a8832ba7518fc` · SHA-256 `da40d8a7ba3dd82d16e873501e6dd5fa2b09fc9539be875d2d9b9090e9093e74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
info: 2 instances:

instAddNat : Add Nat
(prio 100) Lean.Grind.CommRing.toAdd.{u} {α : Type u} [self : Lean.Grind.CommRing α] : Add α
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
