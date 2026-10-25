# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Clean.Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec96dc00e61792b97c34a106815f4d618844c120` · SHA-256 `1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Clean

namespace Tests

def x : Id Nat := by dsimp [Id]; exact 1
def x' : Id Nat := clean% by dsimp [Id]; exact 1

/--
info: def Tests.x : Id Nat :=
id 1
-/
#guard_msgs in #print x

/--
info: def Tests.x' : Id Nat :=
1
-/
#guard_msgs in #print x'
-- def x : Id Nat := 1

theorem withClean : 2 + 2 = 4 := clean% by exact id rfl
theorem withoutClean : 2 + 2 = 4 := by exact id rfl

/--
info: theorem Tests.withClean : 2 + 2 = 4 :=
rfl
-/
#guard_msgs in
#print Tests.withClean

/--
info: theorem Tests.withoutClean : 2 + 2 = 4 :=
id rfl
-/
#guard_msgs in
#print Tests.withoutClean

example : True := by
  let x : id Nat := by dsimp; exact 1
  guard_hyp x :ₛ id Nat := id (1 : Nat)
  let x' : id Nat := clean% by dsimp; exact 1
  guard_hyp x' :ₛ id Nat := (1 : Nat)

  let y := show Nat from 1
  guard_hyp y :ₛ Nat := let_fun this := 1; this
  let y' := clean% show Nat from 1
  guard_hyp y' :ₛ Nat := 1

  -- Not a tautological let_fun:
  let z := clean% let_fun x := 1; x + x
  guard_hyp z :ₛ Nat := let_fun x := 1; x + x

  trivial

end Tests
```
