# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SigmaTau.Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a823e8b3ec483b0a394f02a6e0e1fcf8813d7bb1` · SHA-256 `3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.NumberTheory.DivisorSum
import Mathlib.NumberTheory.Divisors

/-!
# Folder.Rebuild.NumberTheory.SigmaTau

Divisor-counting and divisor-sum functions for the rebuild branch.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators

def tau : ArithFn Nat :=
  fun n => (Nat.divisors n).card

def sigma : ArithFn Nat :=
  fun n => ∑ d ∈ Nat.divisors n, d

theorem tau_one : tau 1 = 1 := by
  simp [tau]

theorem sigma_one : sigma 1 = 1 := by
  simp [sigma]

theorem tau_prime
    {p : Nat}
    (hp : Nat.Prime p) :
    tau p = 2 := by
  rw [tau, hp.divisors]
  exact Finset.card_pair (Ne.symm hp.ne_one)

theorem sigma_prime
    {p : Nat}
    (hp : Nat.Prime p) :
    sigma p = p + 1 := by
  rw [sigma, hp.divisors, Finset.sum_pair (Ne.symm hp.ne_one)]
  rw [add_comm]

theorem tau_prime_power
    {p k : Nat}
    (hp : Nat.Prime p) :
    tau (p ^ k) = k + 1 := by
  simp [tau, Nat.divisors_prime_pow hp]

theorem sigma_prime_power
    {p k : Nat}
    (hp : Nat.Prime p) :
    sigma (p ^ k) = ∑ j ∈ Finset.range (k + 1), p ^ j := by
  simp [sigma, Nat.sum_divisors_prime_pow hp]

end NumberTheory
end Rebuild
end Folder
```
