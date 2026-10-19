import Mathlib.Data.Nat.Factorization.Divisors
namespace F
structure D (M : ℕ) where
  val : ℕ
  property : val ∣ M
instance (M : ℕ) : Coe (D M) ℕ := ⟨D.val⟩
instance (M : ℕ) : CoeOut (D M) ℕ := ⟨D.val⟩
#check (fun {M : ℕ} (d : D M) => (d : ℕ))
end F
