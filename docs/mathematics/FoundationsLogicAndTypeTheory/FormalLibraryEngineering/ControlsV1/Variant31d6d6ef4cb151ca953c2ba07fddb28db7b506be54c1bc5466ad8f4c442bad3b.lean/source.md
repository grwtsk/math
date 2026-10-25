# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ControlsV1.Variant31d6d6ef4cb151ca953c2ba07fddb28db7b506be54c1bc5466ad8f4c442bad3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `906e95aa7d942cc4711bfd6b73be748f2f85000a` · SHA-256 `31d6d6ef4cb151ca953c2ba07fddb28db7b506be54c1bc5466ad8f4c442bad3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import formal.c2.ArrayComposition

namespace C2

theorem array_boundary_256 (suffix : Bytes) :
    parseValue 2 (emit (.array (List.replicate 256 (.bool true))) ++ suffix) =
      some (.array (List.replicate 256 (.bool true)), suffix) := by
  apply parse_array_suffix 1
  · simp
  · intro v hv tail
    have he : v = .bool true := by simpa using hv
    simpa [he, emit] using parse_true_suffix 0 tail

theorem array_oversize_reject (fuel : Nat) (vs : List Value) (suffix : Bytes)
    (hlen : 256 < vs.length) :
    parseValue (fuel + 1) (emit (.array vs) ++ suffix) = none := by
  simp only [emit, List.cons_append, List.append_assoc]
  simp [parseValue, readNat_digits _ _ ':' (by decide), hlen]

theorem array_boundary_257 (suffix : Bytes) :
    parseValue 2 (emit (.array (List.replicate 257 (.bool true))) ++ suffix) = none := by
  apply array_oversize_reject
  simp

theorem zero_fuel_reject (b : Bytes) : parseValue 0 b = none := by rfl

example : parseValue 2
    (emit (.array (List.replicate 256 (.bool true))) ++ ['!', 't']) =
    some (.array (List.replicate 256 (.bool true)), ['!', 't']) :=
  array_boundary_256 _

#print axioms array_boundary_256
#print axioms array_oversize_reject
#print axioms array_boundary_257
#print axioms zero_fuel_reject
end C2
```
