# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModCases.Variant1717093b97cf0c34da1b8719189a7ef3ba47394bed80e8dfd28e17496461c4d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7d8292197519ad6edc25fdea5b87973828464ad` · SHA-256 `1717093b97cf0c34da1b8719189a7ef3ba47394bed80e8dfd28e17496461c4d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.ModCases

private axiom test_sorry : ∀ {a}, a
example (n : ℤ) : 3 ∣ n ^ 3 - n := by
  mod_cases n % 3
  · guard_hyp H :ₛ n ≡ 0 [ZMOD 3]; guard_target = 3 ∣ n ^ 3 - n; exact test_sorry
  · guard_hyp H :ₛ n ≡ 1 [ZMOD 3]; guard_target = 3 ∣ n ^ 3 - n; exact test_sorry
  · guard_hyp H :ₛ n ≡ 2 [ZMOD 3]; guard_target = 3 ∣ n ^ 3 - n; exact test_sorry

example (n : ℕ) : 3 ∣ n ^ 3 + n := by
  mod_cases n % 3
  · guard_hyp H :~ n ≡ 0 [MOD 3]; guard_target = 3 ∣ n ^ 3 + n; exact test_sorry
  · guard_hyp H :~ n ≡ 1 [MOD 3]; guard_target = 3 ∣ n ^ 3 + n; exact test_sorry
  · guard_hyp H :~ n ≡ 2 [MOD 3]; guard_target = 3 ∣ n ^ 3 + n; exact test_sorry

-- test case for https://github.com/leanprover-community/mathlib4/issues/1851
example (n : ℕ) (z : ℤ) : n = n := by
  induction n with
  | zero => rfl
  | succ n _ih =>
     mod_cases _h : z % 2
     · exact test_sorry
     · exact test_sorry
```
