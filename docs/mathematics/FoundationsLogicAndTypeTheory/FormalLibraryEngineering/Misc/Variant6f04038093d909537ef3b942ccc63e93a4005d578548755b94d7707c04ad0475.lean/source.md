# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Misc.Variant6f04038093d909537ef3b942ccc63e93a4005d578548755b94d7707c04ad0475

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8147076ebb7020cb37d73484dcf75e10d695056a` · SHA-256 `6f04038093d909537ef3b942ccc63e93a4005d578548755b94d7707c04ad0475`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Qq
open Lean Qq

def bar {α : Q(Type u)} (a : Q($α)) : Q(Prop) := q($a = $a)
def bar2 {α : Q(Sort u)} (a : Q($α)) : Q($a = $a) := q(by simp)

def baz (u : Level) : Type := Q(Sort u)

#guard_msgs(drop info, warning, error) in
#eval bar2 q([1,2, 4])

/-- info: q(∀ (x : Nat), x = x + 0) : Q(Prop) -/
#guard_msgs in
#check q(∀ x, x = x + 0)

example {α : Q(Type u)} (inst : Q(Inhabited $α)) : Q(∃ x : $α, x = x) :=
  q(⟨default, by rfl⟩)

-- TODO: investigate PANIC
-- example : Q(let x := 5; x = x) := q(by simp)

#guard_msgs(drop info, warning, error) in
-- the following also panics if moved into an `example`
#eval show Q(∀ n : UInt64, n.toFin = n.toFin) from q(fun _ => by simp)

def foo' (n : Nat) : Q(Q($($n) = $($n))) := q(q(by simp))

#guard_msgs(drop info, warning, error) in
#eval foo' 3
```
