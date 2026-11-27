import GRWTSK.NumberTheory.PrimeFieldAuxiliarySearch
import Mathlib.NumberTheory.LegendreSymbol.QuadraticReciprocity

/-!
# A ramified-input obstruction to auxiliary-prime existence

Local source attribution: grwtsk contributors.

The numerical existence theorem requires the genuine Kummer extension of degree
`q`. Dropping its unramified-input condition is false already at `p = q = 2`:
every prime congruent to one modulo 24 has 2 as a quadratic residue.
-/

namespace GRWTSK.PrimeFieldFactoring

/-- There is no admissible prime for `p = q = 2`, at any scale. The auxiliary
congruence forces the power test to succeed, opposite to the required predicate. -/
theorem no_auxiliary_prime_two_two (l : ℕ) : ¬ AuxiliaryPrime 2 2 l := by
  rintro ⟨hl, hl2, _, _, _, h24, hpow⟩
  have : Fact l.Prime := ⟨hl⟩
  have : Fact (Nat.Prime 2) := ⟨by decide⟩
  have h24' : l % 24 = 1 := h24
  have h8 : l % 8 = 1 := by
    rw [← Nat.mod_mod_of_dvd l (by decide : 8 ∣ 24), h24']
  have hsq : IsSquare (2 : ZMod l) := (ZMod.exists_sq_eq_two_iff hl2).mpr (Or.inl h8)
  have hodd : l % 2 = 1 := by
    rw [← Nat.mod_mod_of_dvd l (by decide : 2 ∣ 24), h24']
  have he : (l - 1) / 2 = l / 2 := by omega
  apply hpow
  rw [he]
  exact (ZMod.euler_criterion l (ZMod.prime_ne_zero l 2 hl2)).mp hsq

end GRWTSK.PrimeFieldFactoring
