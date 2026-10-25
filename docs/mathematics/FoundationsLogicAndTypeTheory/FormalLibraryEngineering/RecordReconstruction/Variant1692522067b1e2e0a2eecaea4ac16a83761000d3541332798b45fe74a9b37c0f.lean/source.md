# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecordReconstruction.Variant1692522067b1e2e0a2eecaea4ac16a83761000d3541332798b45fe74a9b37c0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55342620e16d21ed89121852d2f0accf7f38ed6b` · SHA-256 `1692522067b1e2e0a2eecaea4ac16a83761000d3541332798b45fe74a9b37c0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
    simp only [decode, hp, Option.bind_eq_bind, Option.bind_some, Option.pure_def] at h
    split at h
    next hg => simp at h
    next hg =>
      have hguards : b.length ≤ 16384 ∧ b.take 5 = "GKC1\n".toList := by
        simpa using hg
      rcases hguards with ⟨hbnd,hhead⟩
      split at h
      next hs => simp at h
      next hs =>
        have he : s = [] := by simpa using hs
        subst s
        split at h
        next _ k d l ps =>
          split at h
          next hbad => simp at h
          next hgood =>
            have hgates : ((k = "domain".toList ∧ l = "fields".toList) ∧
                schema d ps = true) ∧
                valueOK 0 (.map [(k,.text d),(l,.map ps)]) = true := by
              simpa using hgood
            rcases hgates with ⟨⟨⟨hk,hl⟩,hschema⟩,hv⟩
            subst k
            subst l
            have hr := Option.some.inj h
            subst r
            have hw := parse_value_reconstruct 33 (b.drop 5)
              (.map [("domain".toList,.text d),("fields".toList,.map ps)]) [] hp
            have hb : bytes (⟨d,ps⟩ : Record) = b := by
              calc
                bytes (⟨d,ps⟩ : Record) = "GKC1\n".toList ++
                    emit (envelope (⟨d,ps⟩ : Record)) := rfl
                _ = b.take 5 ++ b.drop 5 := by rw [hhead, hw]; simp [envelope]
                _ = b := List.take_append_drop 5 b
            exact ⟨hb, hschema, hv, by simpa [hb] using hbnd⟩
        next => simp at h

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
