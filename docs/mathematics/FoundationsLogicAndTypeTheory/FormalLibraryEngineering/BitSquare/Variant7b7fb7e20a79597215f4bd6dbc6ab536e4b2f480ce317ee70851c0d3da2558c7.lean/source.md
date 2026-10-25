# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitSquare.Variant7b7fb7e20a79597215f4bd6dbc6ab536e4b2f480ce317ee70851c0d3da2558c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21551a8e7443f364e91593648ca4355f9ef8dda1` · SHA-256 `7b7fb7e20a79597215f4bd6dbc6ab536e4b2f480ce317ee70851c0d3da2558c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Exact square element with explicit validity

An invalid cell is unresolved.  Its stored value is canonically zero, but it
cannot be read as the proposition `false`.
-/

namespace URSM.Contracts

abbrev BitSquare (n : Nat) := Fin n → Fin n → Bool

structure ResolvedSquare (n : Nat) where
  bits : BitSquare n
  valid : BitSquare n
  invalidZero :
    ∀ i j, valid i j = false → bits i j = false

namespace ResolvedSquare

def read?
    (plane : ResolvedSquare n)
    (i j : Fin n) : Option Bool :=
  if plane.valid i j = true then some (plane.bits i j) else none

@[simp] theorem read?_eq_none_of_invalid
    (plane : ResolvedSquare n)
    (i j : Fin n)
    (invalid : plane.valid i j = false) :
    plane.read? i j = none := by
  simp [read?, invalid]

@[simp] theorem read?_eq_some_of_valid
    (plane : ResolvedSquare n)
    (i j : Fin n)
    (valid : plane.valid i j = true) :
    plane.read? i j = some (plane.bits i j) := by
  simp [read?, valid]

def fullyResolved (bits : BitSquare n) : ResolvedSquare n where
  bits := bits
  valid := fun _ _ ↦ true
  invalidZero := by
    intro i j impossible
    simp at impossible

def unresolved : ResolvedSquare n where
  bits := fun _ _ ↦ false
  valid := fun _ _ ↦ false
  invalidZero := by simp

@[simp] theorem fullyResolved_read
    (bits : BitSquare n)
    (i j : Fin n) :
    (fullyResolved bits).read? i j = some (bits i j) := by
  simp [fullyResolved, read?]

@[simp] theorem unresolved_read
    (i j : Fin n) :
    (unresolved : ResolvedSquare n).read? i j = none := by
  simp [unresolved, read?]

end ResolvedSquare

end URSM.Contracts
```
