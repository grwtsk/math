import formal.c2.ParserReconstruction

namespace C2

theorem decode_reconstruct_supported {b : Bytes} {r : Record}
    (h : decode b = some r) : bytes r = b ∧ Supported r := by
  by_cases hg : (b.length > 16384 || b.take 5 != "GKC1\n".toList) = true
  · have hbad : b.length > 16384 ∨ b.take 5 ≠ "GKC1\n".toList := by
      simpa using hg
    rcases hbad with hsize | hprefix
    · simp [decode, hsize] at h
    · simp [decode, hprefix] at h
  · have hguards : b.length ≤ 16384 ∧ b.take 5 = "GKC1\n".toList := by
      simpa using hg
    rcases hguards with ⟨hbnd,hhead⟩
    simp only [decode, hg, ↓reduceIte] at h
    cases hp : parseValue 33 (b.drop 5) with
    | none => simp [hp] at h
    | some pair =>
      rcases pair with ⟨v,s⟩
      simp only [hp, Option.bind_some] at h
      by_cases hs : s.isEmpty = true
      · have he : s = [] := by simpa using hs
        subst s
        simp only [List.isEmpty_nil, Bool.not_true, Bool.false_eq_true, ↓reduceIte] at h
        split at h
        next _ k d l ps =>
          split at h
          next hbad => simp at h
          next hgood =>
            have hk : k = "domain".toList := by
              apply Classical.byContradiction
              intro hn
              simp [hn] at hgood
            have hl : l = "fields".toList := by
              apply Classical.byContradiction
              intro hn
              simp [hn] at hgood
            have hschema : schema d ps = true := by
              cases ht : schema d ps <;> simp_all
            have hv : valueOK 0 (.map [(k,.text d),(l,.map ps)]) = true := by
              cases ht : valueOK 0 (.map [(k,.text d),(l,.map ps)]) <;> simp_all
            subst k
            subst l
            simp at h
            subst r
            have hw := parse_value_reconstruct 33 (b.drop 5)
              (.map [("domain".toList,.text d),("fields".toList,.map ps)]) [] hp
            have hb : bytes (⟨d,ps⟩ : Record) = b := by
              rw [← List.take_append_drop 5 b, hhead, hw]
              simp [bytes, envelope]
            exact ⟨hb, hschema, hv, by simpa [hb] using hbnd⟩
        next => simp at h
      · have hs' : s.isEmpty = false := by cases ht : s.isEmpty <;> simp_all
        simp [hs'] at h

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
