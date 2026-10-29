import formal.c2.ArrayComposition

namespace C2

theorem array_boundary_256 (suffix : Bytes) :
    parseValue 2 (emit (.array (List.replicate 256 (.bool true))) ++ suffix) =
      some (.array (List.replicate 256 (.bool true)), suffix) := by
  apply parse_array_suffix 1
  · simp only [List.length_replicate]; omega
  · intro v hv tail
    have he : v = .bool true := (List.mem_replicate.mp hv).2
    simpa [he, emit] using parse_true_suffix 0 tail

theorem array_oversize_reject (fuel : Nat) (vs : List Value) (suffix : Bytes)
    (hlen : 256 < vs.length) :
    parseValue (fuel + 1) (emit (.array vs) ++ suffix) = none := by
  simp only [emit, List.cons_append, List.append_assoc]
  simp [parseValue, readNat_digits _ _ ':' (by decide), hlen]

theorem array_boundary_257 (suffix : Bytes) :
    parseValue 2 (emit (.array (List.replicate 257 (.bool true))) ++ suffix) = none := by
  apply array_oversize_reject
  simp only [List.length_replicate]; omega

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
