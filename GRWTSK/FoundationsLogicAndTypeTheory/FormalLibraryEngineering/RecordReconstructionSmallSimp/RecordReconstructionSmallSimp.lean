import formal.c2.ParserReconstruction

namespace C2

attribute [local irreducible] parseValue

theorem decode_reconstruct_supported {b : Bytes} {r : Record}
    (h : decode b = some r) : bytes r = b ∧ Supported r := by
  cases hp : parseValue 33 (b.drop 5) with
  | none => simp [decode, hp] at h
  | some pair =>
    rcases pair with ⟨v,s⟩
    simp only [decode, hp, Option.bind_some] at h
    trace_state

theorem accepted_byte_inverse {b : Bytes} {r : Record}
    (h : decode b = some r) : bytes r = b := (decode_reconstruct_supported h).1

theorem decode_supported {b : Bytes} {r : Record}
    (h : decode b = some r) : Supported r := (decode_reconstruct_supported h).2

theorem accepted_bytes_iff (b : Bytes) :
    (∃ r, decode b = some r) ↔ ∃ r, Supported r ∧ bytes r = b := by
  constructor
  · rintro ⟨r,h⟩
    exact ⟨r, decode_supported h, accepted_byte_inverse h⟩
  · rintro ⟨r,hs,rfl⟩
    exact ⟨r, supported_record_inverse r hs⟩

#print axioms decode_reconstruct_supported
#print axioms accepted_byte_inverse
#print axioms decode_supported
#print axioms accepted_bytes_iff
end C2
