import formal.c2.ValueInverse

namespace C2

theorem map_count_reject (fuel : Nat) (ps : List (Bytes × Value)) (s : Bytes)
    (h : 64 < ps.length) : parseValue (fuel+1) (emit (.map ps) ++ s) = none := by
  simp only [emit, List.cons_append, List.append_assoc]
  rw [parseValue]
  simp [readNat_digits _ _ ':' (by decide), h]

theorem map_key_reject (fuel : Nat) (k s : Bytes) (v : Value)
    (h : 16384 < k.length) :
    parseValue (fuel+2) (emit (.map [(k,v)]) ++ s) = none := by
  simp [emit, parseValue, readNat_digits _ _ ':' (by decide), readPairs, h]

theorem map_fuel_reject (k s : Bytes) (v : Value) :
    parseValue 1 (emit (.map [(k,v)]) ++ s) = none := by
  simp [emit, parseValue, readNat_digits _ _ ':' (by decide), readPairs]

example (s : Bytes) : parseValue 2
    (emit (.map (List.replicate 64 ([], .bool true))) ++ s) =
    some (.map (List.replicate 64 ([], .bool true)), s) := by
  apply parse_map_suffix 0
  · simp only [List.length_replicate]; omega
  · intro kv hkv
    have he := (List.mem_replicate.mp hkv).2
    subst kv
    simp
  · intro kv hkv t
    have he := (List.mem_replicate.mp hkv).2
    subst kv
    simpa [emit] using parse_true_suffix 0 t

example (s : Bytes) : parseValue 2
    (emit (.map [(List.replicate 16384 'a', .bool true)]) ++ s) =
    some (.map [(List.replicate 16384 'a', .bool true)], s) := by
  apply parse_map_suffix 0
  · simp only [List.length_cons, List.length_nil]; omega
  · intro kv hkv
    simp only [List.mem_singleton] at hkv
    subst kv
    simp only [List.length_replicate]; omega
  · intro kv hkv t
    simp only [List.mem_singleton] at hkv
    subst kv
    simpa [emit] using parse_true_suffix 0 t

example : parseValue 2 (emit (.map (List.replicate 65 ([], .bool true))) ++ ['!']) = none := by
  apply map_count_reject
  simp only [List.length_replicate]; omega

example : parseValue 2 (emit (.map [(List.replicate 16385 'a', .bool true)]) ++ ['!']) = none := by
  apply map_key_reject
  simp only [List.length_replicate]; omega

#print axioms map_count_reject
#print axioms map_key_reject
#print axioms map_fuel_reject
end C2
