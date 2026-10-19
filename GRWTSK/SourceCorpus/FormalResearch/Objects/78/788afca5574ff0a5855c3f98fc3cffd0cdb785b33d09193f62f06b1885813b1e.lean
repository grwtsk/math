import Mathlib.Data.Nat.Prime.Basic

namespace Noeoueue.Modular.SoundFilter

def Accepts (r n : Nat) : Prop := n = r ∨ ¬ r ∣ n

theorem prime_or_not_dvd {p r : Nat} (hp : p.Prime) (hr : r.Prime) : p = r ∨ ¬ r ∣ p := by
  by_cases equal : p = r
  · exact Or.inl equal
  · right
    intro divides
    have cases := (Nat.dvd_prime hp).mp divides
    cases cases with
    | inl one => exact hr.ne_one one
    | inr same => exact equal same.symm

theorem sound_filter_retains_prime {p r : Nat} (hp : p.Prime) (hr : r.Prime) : Accepts r p := by
  simpa [Accepts, eq_comm] using prime_or_not_dvd hp hr

theorem filter_retains_own_prime (r : Nat) : Accepts r r := Or.inl rfl

end Noeoueue.Modular.SoundFilter
