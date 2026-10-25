# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ValueInverseV1.Variantaed5a16427fbf26f32ee39928693e812e1f99d6a2d0d4099914be424be7f39cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a87dee7c64fef72faa86546c0cb7e8cf9db54f24` · SHA-256 `aed5a16427fbf26f32ee39928693e812e1f99d6a2d0d4099914be424be7f39cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import formal.c2.ScalarMap

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
    | bool b => cases b <;> rfl
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
  have hs : ¬ (bytes r).length > 16384 := by omega
  simp [decode, bytes, hp, envelope, h.1, h.2.1, hs]

#print axioms valueOK_depth_le
#print axioms parse_value_suffix
#print axioms supported_record_inverse
end C2
```
