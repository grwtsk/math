# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.RecursiveFunctions.SupportedValueInverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3407e640c6c5bde2d2d354537aeb9ac811c6143c` · SHA-256 `0dea7be1bfbcf8f921769ed784c5222b99c213a7361811aff94867179463b4d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.Computability.RecursiveFunctions.ScalarMapParserComposition

namespace C2

theorem valueOK_depth_le (depth : Nat) (v : Value) (h : valueOK depth v = true) :
    depth ≤ 32 := by
  cases v <;> simp only [valueOK, Bool.and_eq_true, decide_eq_true_eq] at h <;> omega

theorem parse_value_suffix (fuel : Nat) : ∀ (v : Value) (depth : Nat) (s : Bytes),
    valueOK depth v = true → depth + fuel = 33 →
    parseValue fuel (emit v ++ s) = some (v,s) := by
  induction fuel with
  | zero =>
    intro v depth s h hf
    have := valueOK_depth_le depth v h
    omega
  | succ fuel ih =>
    intro v depth s h hf
    cases v with
    | bool b => cases b <;> simp [emit, parseValue]
    | int n => exact parse_int_suffix fuel n s
    | rational n d => exact parse_rational_suffix fuel n d s
    | text p =>
      simp only [valueOK, Bool.and_eq_true, decide_eq_true_eq] at h
      exact parse_text_suffix fuel p s h.1.2
    | array vs =>
      simp only [valueOK, Bool.and_eq_true, decide_eq_true_eq] at h
      apply parse_array_suffix fuel vs s h.1.2
      intro v hv t
      have hc := List.all_eq_true.mp h.2 ⟨v,hv⟩ (by simp)
      exact ih v (depth+1) t hc (by omega)
    | map ps =>
      simp only [valueOK, Bool.and_eq_true, decide_eq_true_eq] at h
      have hp (kv : Bytes × Value) (hkv : kv ∈ ps) :
          ((depth+1 ≤ 32 ∧ kv.1.length ≤ 16384) ∧ utf8 kv.1 = true) ∧
            valueOK (depth+1) kv.2 = true := by
        have hc := List.all_eq_true.mp h.2 ⟨kv,hkv⟩ (by simp)
        simpa only [Bool.and_eq_true, decide_eq_true_eq] using hc
      cases fuel with
      | zero =>
        have he : ps = [] := by
          apply List.eq_nil_iff_forall_not_mem.mpr
          intro kv hkv
          have hb := (hp kv hkv).1.1.1
          omega
        subst ps
        exact parse_empty_map_suffix 0 s
      | succ fuel =>
        apply parse_map_suffix fuel ps s h.1.1.2
        · intro kv hkv; exact (hp kv hkv).1.1.2
        · intro kv hkv t
          exact ih kv.2 (depth+1) t (hp kv hkv).2 (by omega)

theorem supported_record_inverse (r : Record) (h : Supported r) :
    decode (bytes r) = some r := by
  have hp := parse_value_suffix 33 (envelope r) 0 [] h.2.1 (by omega)
  simp only [List.append_nil] at hp
  have hs : ¬ (bytes r).length > 16384 := Nat.not_lt.mpr h.2.2
  have hm : (bytes r).take 5 = "GKC1\n".toList := by simp [bytes]
  have hd : (bytes r).drop 5 = emit (envelope r) := by simp [bytes]
  simp only [decode, hs, hm, hd, hp]
  simp [envelope, h.1]
  exact h.2.1

theorem supported_bytes_injective {r s : Record}
    (hr : Supported r) (hs : Supported s) (hb : bytes r = bytes s) : r = s := by
  have hd := congrArg decode hb
  rw [supported_record_inverse r hr, supported_record_inverse s hs] at hd
  exact Option.some.inj hd

#print axioms valueOK_depth_le
#print axioms parse_value_suffix
#print axioms supported_record_inverse
#print axioms supported_bytes_injective
end C2
```
