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
