# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParserReconstructionDiagnostic.Variant6dba91312eb14c94e4f3f4043e59489b95124c04be57397f23f7d4ee103689ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9cec011341a8d0dc0ea3b0a7425aa6c5b77dd1f` · SHA-256 `6dba91312eb14c94e4f3f4043e59489b95124c04be57397f23f7d4ee103689ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
    split at h <;> trace_state

#print axioms parse_value_reconstruct

#print axioms asText_inverse
#print axioms readMany_reconstruct
#print axioms readPairs_reconstruct
end C2
```
