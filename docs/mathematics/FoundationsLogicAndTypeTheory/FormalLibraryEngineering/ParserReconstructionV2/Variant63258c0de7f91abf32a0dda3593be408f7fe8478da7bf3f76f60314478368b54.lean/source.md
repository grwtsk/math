# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParserReconstructionV2.Variant63258c0de7f91abf32a0dda3593be408f7fe8478da7bf3f76f60314478368b54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `319076a366bd009894493700cb685aea9e95d39b` · SHA-256 `63258c0de7f91abf32a0dda3593be408f7fe8478da7bf3f76f60314478368b54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import formal.c2.Reconstruction

namespace C2

theorem asText_inverse {v : Value} {k : Bytes} (h : asText v = some k) :
    v = .text k := by
  cases v <;> simp_all [asText]

theorem readMany_reconstruct (p : Bytes → Option (Value × Bytes))
    (hp : ∀ b v s, p b = some (v,s) → b = emit v ++ s)
    (n : Nat) : ∀ b vs s, readMany p n b = some (vs,s) →
      vs.length = n ∧ b = vs.flatMap emit ++ s := by
  induction n with
  | zero =>
    intro b vs s h
    simp [readMany] at h
    rcases h with ⟨rfl,rfl⟩
    simp
  | succ n ih =>
    intro b vs s h
    cases ht : p b with
    | none => simp [readMany, ht] at h
    | some pair =>
      rcases pair with ⟨v,t⟩
      cases hu : readMany p n t with
      | none => simp [readMany, ht, hu] at h
      | some pair =>
        rcases pair with ⟨ws,u⟩
        simp [readMany, ht, hu] at h
        rcases h with ⟨rfl,rfl⟩
        have hw := ih t ws u hu
        constructor
        · simp [hw.1]
        · rw [hp b v t ht, hw.2]
          simp [List.append_assoc]

theorem readPairs_reconstruct (p : Bytes → Option (Value × Bytes))
    (hp : ∀ b v s, p b = some (v,s) → b = emit v ++ s)
    (n : Nat) : ∀ b ps s, readPairs p n b = some (ps,s) →
      ps.length = n ∧
        b = ps.flatMap (fun kv => emit (.text kv.1) ++ emit kv.2) ++ s := by
  induction n with
  | zero =>
    intro b ps s h
    simp [readPairs] at h
    rcases h with ⟨rfl,rfl⟩
    simp
  | succ n ih =>
    intro b ps s h
    cases hk : p b with
    | none => simp [readPairs, hk] at h
    | some pair =>
      rcases pair with ⟨key,t⟩
      cases ha : asText key with
      | none => simp [readPairs, hk, ha] at h
      | some k =>
        cases hv : p t with
        | none => simp [readPairs, hk, ha, hv] at h
        | some pair =>
          rcases pair with ⟨v,u⟩
          cases hz : readPairs p n u with
          | none => simp [readPairs, hk, ha, hv, hz] at h
          | some pair =>
            rcases pair with ⟨qs,z⟩
            simp [readPairs, hk, ha, hv, hz] at h
            rcases h with ⟨rfl,rfl⟩
            have hq := ih u qs z hz
            constructor
            · simp [hq.1]
            · rw [hp b key t hk, hp t v u hv, hq.2, asText_inverse ha]
              simp [List.append_assoc]

theorem parse_value_reconstruct (fuel : Nat) : ∀ b v s,
    parseValue fuel b = some (v,s) → b = emit v ++ s := by
  induction fuel with
  | zero => intro b v s h; simp [parseValue] at h
  | succ fuel ih =>
    intro b v s h
    unfold parseValue at h
    split at h
    next _ cs =>
      simp at h
      rcases h with ⟨rfl,rfl⟩
      simp [emit]
    next _ cs =>
      simp at h
      rcases h with ⟨rfl,rfl⟩
      simp [emit]
    next _ cs =>
      cases hd : readUntil ';' cs with
      | none => simp [hd] at h
      | some pair =>
        rcases pair with ⟨digits,t⟩
        cases hn : integer digits with
        | none => simp [hd, hn] at h
        | some n =>
          simp [hd, hn] at h
          rcases h with ⟨rfl,rfl⟩
          rw [ readUntil_reconstruct hd, integer_reconstruct hn]
          simp [emit, List.append_assoc]
    next _ cs =>
      cases hd : readUntil '/' cs with
      | none => simp [hd] at h
      | some pair =>
        rcases pair with ⟨digits,t⟩
        cases hn : integer digits with
        | none => simp [hd, hn] at h
        | some n =>
          cases hd' : readNat ';' t with
          | none => simp [hd, hn, hd'] at h
          | some pair =>
            rcases pair with ⟨d,u⟩
            simp [hd, hn, hd'] at h
            rcases h with ⟨rfl,rfl⟩
            rw [ readUntil_reconstruct hd, integer_reconstruct hn,
              readNat_reconstruct hd']
            simp [emit, List.append_assoc]
    next _ cs =>
      cases hn : readNat ':' cs with
      | none => simp [hn] at h
      | some pair =>
        rcases pair with ⟨n,t⟩
        by_cases hc : n > 16384
        · simp [hn, hc] at h
        · cases hp : splitAt n t with
          | none => simp [hn, hc, hp] at h
          | some pair =>
            rcases pair with ⟨text,u⟩
            simp [hn, hc, hp] at h
            rcases h with ⟨rfl,rfl⟩
            rw [ readNat_reconstruct hn, splitAt_reconstruct hp]
            simp [emit, splitAt_length hp, List.append_assoc]
    next _ cs =>
      cases hn : readNat ':' cs with
      | none => simp [hn] at h
      | some pair =>
        rcases pair with ⟨n,t⟩
        by_cases hc : n > 256
        · simp [hn, hc] at h
        · cases hp : readMany (parseValue fuel) n t with
          | none => simp [hn, hc, hp] at h
          | some pair =>
            rcases pair with ⟨vs,u⟩
            simp [hn, hc, hp] at h
            rcases h with ⟨rfl,rfl⟩
            have hw := readMany_reconstruct (parseValue fuel) ih n t vs u hp
            rw [ readNat_reconstruct hn, hw.2]
            simp [emit, hw.1, List.append_assoc]
    next _ cs =>
      cases hn : readNat ':' cs with
      | none => simp [hn] at h
      | some pair =>
        rcases pair with ⟨n,t⟩
        by_cases hc : n > 64
        · simp [hn, hc] at h
        · cases hp : readPairs (parseValue fuel) n t with
          | none => simp [hn, hc, hp] at h
          | some pair =>
            rcases pair with ⟨ps,u⟩
            simp [hn, hc, hp] at h
            rcases h with ⟨rfl,rfl⟩
            have hw := readPairs_reconstruct (parseValue fuel) ih n t ps u hp
            rw [ readNat_reconstruct hn, hw.2]
            simp [emit, hw.1, List.append_assoc]
    next => simp at h

#print axioms parse_value_reconstruct

#print axioms asText_inverse
#print axioms readMany_reconstruct
#print axioms readPairs_reconstruct
end C2
```
