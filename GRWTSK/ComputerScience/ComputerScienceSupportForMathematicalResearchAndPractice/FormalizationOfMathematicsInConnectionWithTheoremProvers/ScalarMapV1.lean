import formal.c2.ArrayComposition

namespace C2

theorem signed_no_separator (n : Int) (sep : Char)
    (hd : sep.isDigit = false) (hm : sep ≠ '-') : sep ∉ signed n := by
  have hn : sep ∉ digits n.natAbs := by
    intro h
    have := Nat.isDigit_of_mem_toDigits (by decide : 0 < 10) (by decide : 10 ≤ 10) h
    simp [hd] at this
  unfold signed
  split <;> simp_all

theorem parse_int_suffix (fuel : Nat) (n : Int) (s : Bytes) :
    parseValue (fuel+1) (emit (.int n) ++ s) = some (.int n,s) := by
  simp only [emit, List.cons_append, List.append_assoc]
  simp [parseValue, readUntil_suffix _ _ ';'
    (signed_no_separator n ';' (by decide) (by decide)), integer_signed]

theorem parse_rational_suffix (fuel : Nat) (n : Int) (d : Nat) (s : Bytes) :
    parseValue (fuel+1) (emit (.rational n d) ++ s) = some (.rational n d,s) := by
  simp only [emit, List.cons_append, List.append_assoc]
  simp [parseValue, readUntil_suffix _ _ '/'
    (signed_no_separator n '/' (by decide) (by decide)), integer_signed,
    readNat_digits _ _ ';' (by decide)]

theorem readPairs_emit_suffix
    (p : Bytes → Option (Value × Bytes)) (ps : List (Bytes × Value)) (s : Bytes)
    (hk : ∀ kv ∈ ps, ∀ t, p (emit (.text kv.1) ++ t) = some (.text kv.1,t))
    (hv : ∀ kv ∈ ps, ∀ t, p (emit kv.2 ++ t) = some (kv.2,t)) :
    readPairs p ps.length
      (ps.flatMap (fun kv => emit (.text kv.1) ++ emit kv.2) ++ s) = some (ps,s) := by
  induction ps with
  | nil => rfl
  | cons kv ps ih =>
    have hk0 := hk kv (by simp) (emit kv.2 ++ ps.flatMap (fun x => emit (.text x.1) ++ emit x.2) ++ s)
    have hv0 := hv kv (by simp) (ps.flatMap (fun x => emit (.text x.1) ++ emit x.2) ++ s)
    have hks : ∀ x ∈ ps, ∀ t, p (emit (.text x.1) ++ t) = some (.text x.1,t) := by
      intro x hx t; exact hk x (by simp [hx]) t
    have hvs : ∀ x ∈ ps, ∀ t, p (emit x.2 ++ t) = some (x.2,t) := by
      intro x hx t; exact hv x (by simp [hx]) t
    simp only [List.length_cons, List.flatMap_cons, List.append_assoc, readPairs]
    simp [hk0, hv0, asText, ih hks hvs]

theorem parse_map_suffix
    (fuel : Nat) (ps : List (Bytes × Value)) (s : Bytes)
    (hlen : ps.length ≤ 64) (hkey : ∀ kv ∈ ps, kv.1.length ≤ 16384)
    (hchild : ∀ kv ∈ ps, ∀ t,
      parseValue (fuel+1) (emit kv.2 ++ t) = some (kv.2,t)) :
    parseValue (fuel+2) (emit (.map ps) ++ s) = some (.map ps,s) := by
  have hk : ∀ kv ∈ ps, ∀ t,
      parseValue (fuel+1) (emit (.text kv.1) ++ t) = some (.text kv.1,t) := by
    intro kv hkv t
    exact parse_text_suffix fuel kv.1 t (hkey kv hkv)
  have hp := readPairs_emit_suffix (parseValue (fuel+1)) ps s hk hchild
  simp only [emit] at hp ⊢
  simp only [List.cons_append, List.append_assoc]
  simp [parseValue, readNat_digits _ _ ':' (by decide), Nat.not_lt.mpr hlen, hp]

theorem parse_empty_map_suffix (fuel : Nat) (s : Bytes) :
    parseValue (fuel+1) (emit (.map []) ++ s) = some (.map [],s) := by
  simp [emit, parseValue, readNat_digits _ _ ':' (by decide), readPairs]

#print axioms signed_no_separator
#print axioms parse_int_suffix
#print axioms parse_rational_suffix
#print axioms readPairs_emit_suffix
#print axioms parse_map_suffix
#print axioms parse_empty_map_suffix
end C2
