# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArrayComposition.Variant1a06a2b27fc3e84ff9a164081f8371d9c6662ba1890c4ae5e9f2500a1f6a4899

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2aa6df86f817ad96459af22bdbe39673a906fdd5` · SHA-256 `1a06a2b27fc3e84ff9a164081f8371d9c6662ba1890c4ae5e9f2500a1f6a4899`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import formal.c2.C1

namespace C2

/- Composition for the existing parser, conditional on each child's suffix law.
   This does not discharge those laws or establish Rust correspondence. -/
theorem readMany_emit_suffix
    (p : Bytes → Option (Value × Bytes)) (vs : List Value) (suffix : Bytes)
    (hchild : ∀ v ∈ vs, ∀ tail : Bytes, p (emit v ++ tail) = some (v, tail)) :
    readMany p vs.length (vs.flatMap emit ++ suffix) = some (vs, suffix) := by
  induction vs with
  | nil => rfl
  | cons v vs ih =>
    have hv := hchild v (by simp) (vs.flatMap emit ++ suffix)
    have hs : ∀ x ∈ vs, ∀ tail : Bytes, p (emit x ++ tail) = some (x, tail) := by
      intro x hx tail
      exact hchild x (by simp [hx]) tail
    simp only [List.length_cons, List.flatMap_cons, List.append_assoc, readMany]
    simp [hv, ih hs]

theorem parse_array_suffix
    (fuel : Nat) (vs : List Value) (suffix : Bytes)
    (hlen : vs.length ≤ 256)
    (hchild : ∀ v ∈ vs, ∀ tail : Bytes,
      parseValue fuel (emit v ++ tail) = some (v, tail)) :
    parseValue (fuel + 1) (emit (.array vs) ++ suffix) =
      some (.array vs, suffix) := by
  simp only [emit, List.cons_append, List.append_assoc]
  simp [parseValue, readNat_digits _ _ ':' (by decide), Nat.not_lt.mpr hlen,
    readMany_emit_suffix (parseValue fuel) vs suffix hchild]

#print axioms readMany_emit_suffix
#print axioms parse_array_suffix
end C2
```
