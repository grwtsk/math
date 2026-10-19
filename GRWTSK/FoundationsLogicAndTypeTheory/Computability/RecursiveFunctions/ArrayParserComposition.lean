import GRWTSK.FoundationsLogicAndTypeTheory.Computability.RecursiveFunctions.BoundedRecordCodec

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
