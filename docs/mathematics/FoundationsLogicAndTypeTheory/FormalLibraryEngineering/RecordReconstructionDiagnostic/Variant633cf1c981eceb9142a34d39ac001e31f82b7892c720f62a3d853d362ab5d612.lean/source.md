# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecordReconstructionDiagnostic.Variant633cf1c981eceb9142a34d39ac001e31f82b7892c720f62a3d853d362ab5d612

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99a0c2118cd101ee1ca7d11677e8d3a52e18735b` · SHA-256 `633cf1c981eceb9142a34d39ac001e31f82b7892c720f62a3d853d362ab5d612`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import formal.c2.ParserReconstruction

namespace C2

theorem decode_reconstruct_supported {b : Bytes} {r : Record}
    (h : decode b = some r) : bytes r = b ∧ Supported r := by
  cases hp : parseValue 33 (b.drop 5) with
  | none => simp [decode, hp] at h
  | some pair =>
    rcases pair with ⟨v,s⟩
    simp [decode, hp] at h
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
