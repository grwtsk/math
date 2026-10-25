# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecordReconstructionSmallSimp.Variant41281420df180688e8dae76f872c0c31732c7e9f78474f94676cdd174d5da190

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85472f4b8fcca0c9ca70b48b80960a596ea6f2a9` · SHA-256 `41281420df180688e8dae76f872c0c31732c7e9f78474f94676cdd174d5da190`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
