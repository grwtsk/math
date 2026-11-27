import Mathlib.NumberTheory.LegendreSymbol.QuadraticReciprocity

/-!
# An auxiliary prime at q = 2 gives a quadratic nonresidue

Local source attribution: grwtsk contributors.
OpenAI #142, auxiliary-prime reduction and analytic auxiliary-prime proposition
at 3344da59991ed94f9ba711217b29c1d760badfa6. The premises describe the
q = 2 congruences for two distinct primes. The supplier of a bounded prime is
an independent hypothesis. See AuxiliaryPrimeNonresidue.md.
-/

namespace GRWTSK.IntegerFactorization

theorem nonresidue_of_auxiliary_prime {p l : ℕ} [Fact p.Prime] [Fact l.Prime]
    (hp : p ≠ 2) (hne : l ≠ p) (hc : l % 24 = 1)
    (hpow : (p : ZMod l) ^ ((l - 1) / 2) ≠ 1) :
    0 < l % p ∧ l % p < p ∧ legendreSym p (l % p : ℕ) = -1 := by
  have h4 : l % 4 = 1 := by
    rw [← Nat.mod_mod_of_dvd l (by decide : 4 ∣ 24), hc]
  have he : (l - 1) / 2 = l / 2 := by
    have hodd := (Nat.mod_mod_of_dvd l (by decide : 2 ∣ 24)).symm
    rw [hc] at hodd
    change l % 2 = 1 at hodd
    omega
  have hs : ¬ IsSquare (p : ZMod l) := by
    intro h
    apply hpow
    rw [he]
    exact (ZMod.euler_criterion l (ZMod.prime_ne_zero l p hne)).mp h
  have hr : ¬ IsSquare (l : ZMod p) := by
    exact fun sq => hs ((ZMod.exists_sq_eq_prime_iff_of_mod_four_eq_one h4 hp).mpr sq)
  have hmod : l % p ≠ 0 := by
    intro hz
    apply hr
    rw [← ZMod.natCast_mod l p, hz, Nat.cast_zero]
    exact ⟨0, by simp⟩
  refine ⟨Nat.pos_of_ne_zero hmod, Nat.mod_lt _ (Fact.out : p.Prime).pos, ?_⟩
  apply (legendreSym.eq_neg_one_iff' p).mpr
  rwa [ZMod.natCast_mod]

end GRWTSK.IntegerFactorization
