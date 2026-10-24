# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.EulerPhi.Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f5083d79e6276e6b65cfebcd2130826fb4499b1` · SHA-256 `8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.NumberTheory.MultiplicativeFunction
import Mathlib.Data.Nat.Totient

/-!
# Folder.Rebuild.NumberTheory.EulerPhi

Euler phi wrappers for the rebuild branch.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

def eulerPhi : ArithFn Nat :=
  Nat.totient

theorem eulerPhi_one :
    eulerPhi 1 = 1 := by
  simp [eulerPhi]

theorem eulerPhi_prime
    {p : Nat}
    (hp : Nat.Prime p) :
    eulerPhi p = p - 1 := by
  simpa [eulerPhi] using Nat.totient_prime hp

theorem eulerPhi_prime_power
    {p k : Nat}
    (hp : Nat.Prime p)
    (hk : 0 < k) :
    eulerPhi (p ^ k) = p ^ k - p ^ (k - 1) := by
  rw [eulerPhi, Nat.totient_prime_pow hp hk]
  have hkpred : k = k - 1 + 1 := by omega
  have hpow : p ^ k = p ^ (k - 1) * p := by
    conv_lhs => rw [hkpred]
    rw [pow_succ]
  calc
    p ^ (k - 1) * (p - 1)
        = p ^ (k - 1) * p - p ^ (k - 1) := by
            rw [Nat.mul_sub_left_distrib, mul_one]
    _ = p ^ k - p ^ (k - 1) := by
            rw [hpow]

theorem eulerPhi_mul_of_coprime
    {a b : Nat}
    (hab : Nat.Coprime a b) :
    eulerPhi (a * b) = eulerPhi a * eulerPhi b := by
  simpa [eulerPhi] using Nat.totient_mul hab

end NumberTheory
end Rebuild
end Folder
```
