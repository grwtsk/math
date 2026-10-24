import Mathlib.Data.Nat.Prime.Basic

namespace GRWTSK.NumberTheory

-- Prepared user-supplied fixture only; not an accepted or freshly replayed artifact.
theorem two_is_first_prime :
    Nat.Prime 2 ∧
    ∀ p : ℕ, Nat.Prime p → 2 ≤ p := by
  exact ⟨Nat.prime_two, fun _ hp => hp.two_le⟩

end GRWTSK.NumberTheory
