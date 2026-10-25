# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReconstructionV2.Variantf995170692bc1ee44e570dee9a3899c5e065ef33331081bcb620fa2bed9a57d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f29c2136f9edd593d69f720ab3b9a7554d83626` · SHA-256 `f995170692bc1ee44e570dee9a3899c5e065ef33331081bcb620fa2bed9a57d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import formal.c2.ValueInverse

namespace C2

theorem unsigned_reconstruct {p : Bytes} {n : Nat} (h : unsigned p = some n) :
    p = digits n := by
  unfold unsigned at h
  dsimp only at h
  split at h
  next hc =>
    have hn := Option.some.inj h
    subst n
    simp only [Bool.and_eq_true, beq_iff_eq] at hc
    exact hc.2
  next => contradiction

theorem integer_reconstruct {p : Bytes} {n : Int} (h : integer p = some n) :
    p = signed n := by
  cases hu : unsigned p with
  | some k =>
    simp [integer, hu] at h
    subst n
    have hn : ¬ (k : Int) < 0 := Int.not_lt.mpr (Int.natCast_nonneg k)
    simpa [signed, hn] using unsigned_reconstruct hu
  | none =>
    cases p with
    | nil => simp [integer, hu] at h
    | cons c cs =>
      by_cases hc : c = '-'
      · subst c
        cases hs : unsigned cs with
        | none => simp [integer, hu, hs] at h
        | some k =>
          by_cases hk : k = 0
          · simp [integer, hu, hs, hk] at h
          · simp [integer, hu, hs, hk] at h
            subst n
            have hp := unsigned_reconstruct hs
            have hn : -(k : Int) < 0 := by omega
            simp [signed, hp, hk]
      · simp [integer, hu, hc] at h

theorem readUntil_reconstruct {sep : Char} {b p s : Bytes}
    (h : readUntil sep b = some (p,s)) : b = p ++ sep::s := by
  induction b generalizing p with
  | nil => simp [readUntil] at h
  | cons c b ih =>
    by_cases hc : c = sep
    · subst c
      simp [readUntil] at h
      rcases h with ⟨rfl,rfl⟩
      rfl
    · cases ht : readUntil sep b with
      | none => simp [readUntil, hc, ht] at h
      | some pair =>
        rcases pair with ⟨q,t⟩
        simp [readUntil, hc, ht] at h
        rcases h with ⟨rfl,rfl⟩
        simp [ih ht]

theorem readNat_reconstruct {sep : Char} {b : Bytes} {n : Nat} {s : Bytes}
    (h : readNat sep b = some (n,s)) : b = digits n ++ sep::s := by
  cases ht : readUntil sep b with
  | none => simp [readNat, ht] at h
  | some pair =>
    rcases pair with ⟨p,t⟩
    cases hu : unsigned p with
    | none => simp [readNat, ht, hu] at h
    | some k =>
      simp [readNat, ht, hu] at h
      rcases h with ⟨rfl,rfl⟩
      simpa [unsigned_reconstruct hu] using readUntil_reconstruct ht

theorem splitAt_length {n : Nat} {b p s : Bytes} (h : splitAt n b = some (p,s)) :
    p.length = n := by
  unfold splitAt at h
  split at h
  next hn =>
    cases Option.some.inj h
    simp [List.length_take, Nat.min_eq_left hn]
  next => contradiction

#print axioms unsigned_reconstruct
#print axioms integer_reconstruct
#print axioms readUntil_reconstruct
#print axioms readNat_reconstruct
#print axioms splitAt_length
end C2
```
