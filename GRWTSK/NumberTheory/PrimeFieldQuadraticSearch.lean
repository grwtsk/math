import GRWTSK.NumberTheory.PrimeFieldAuxiliarySearch
import GRWTSK.NumberTheory.AuxiliaryPrimeNonresidue

/-!
# An executable nonresidue search in the two branches of the prime-field reduction

Local source attribution: grwtsk contributors. See `PrimeFieldAuxiliarySearch.md`.
The small branch uses the existence of nonsquares in every finite field of odd
characteristic. The other branch assumes a bounded auxiliary prime only for
q = 2. No Kummer or Hecke theorem is assumed for the small branch.
-/

namespace GRWTSK.PrimeFieldFactoring
open GRWTSK.IntegerFactorization

/-- Euler test on strictly positive, least nonnegative representatives. -/
def nonresidueTest (p z : ℕ) : Bool :=
  decide (0 < z ∧ z < p ∧ (z : ZMod p) ^ (p / 2) ≠ 1)

theorem nonresidueTest_iff (p : ℕ) [Fact p.Prime] (z : ℕ) :
    nonresidueTest p z = true ↔ 0 < z ∧ z < p ∧ legendreSym p (z : ℤ) = -1 := by
  simp only [nonresidueTest, decide_eq_true_eq, legendreSym.eq_neg_one_iff']
  apply and_congr_right
  intro hz
  apply and_congr_right
  intro hzp
  have hz0 : (z : ZMod p) ≠ 0 := by
    intro h
    exact (Nat.le_of_dvd hz ((ZMod.natCast_eq_zero_iff z p).mp h)).not_gt hzp
  exact (not_congr (ZMod.euler_criterion p hz0)).symm

private theorem exists_small_nonresidue (p : ℕ) [Fact p.Prime] (hp : p ≠ 2) :
    ∃ z < p, 0 < z ∧ legendreSym p (z : ℤ) = -1 := by
  obtain ⟨a, ha⟩ := FiniteField.exists_nonsquare (F := ZMod p) (by rwa [ringChar.eq (ZMod p) p])
  have hn : ¬ IsSquare (a.val : ZMod p) := by simpa only [ZMod.natCast_zmod_val] using ha
  refine ⟨a.val, a.val_lt, ?_, (legendreSym.eq_neg_one_iff' _).mpr hn⟩
  apply Nat.pos_of_ne_zero
  intro h
  exact hn (by rw [h, Nat.cast_zero]; exact ⟨0, by simp⟩)

/-- One predicate and one bounded search work in both branches.
Set T = B^200000 and E to a uniform numerical cap in the large branch.
The small branch costs at most p tests, with p ≤ T. In the other branch the
residue is no larger than E, even when p is much larger than E. -/
theorem find_nonresidue_two_branches (p T E : ℕ) [Fact p.Prime] (hp : p ≠ 2)
    (supply : T < p → ∃ l ≤ E, AuxiliaryPrime p 2 l) :
    let fuel := if p ≤ T then p else min p (E+1)
    ∃ z, (firstWithCount (nonresidueTest p) 0 fuel).1 = some z ∧
      0 < z ∧ z < p ∧ z ≤ max T E ∧ legendreSym p (z : ℤ) = -1 ∧
      (firstWithCount (nonresidueTest p) 0 fuel).2 ≤ fuel := by
  intro fuel
  have existsHit : ∃ j, 0 ≤ j ∧ j < 0 + fuel ∧ nonresidueTest p j = true := by
    by_cases h : p ≤ T
    · obtain ⟨j, hj, hjpos, hleg⟩ := exists_small_nonresidue p hp
      exact ⟨j, by omega, by simpa [fuel, h] using hj, (nonresidueTest_iff p j).mpr ⟨hjpos,hj,hleg⟩⟩
    · obtain ⟨l, hl, haux⟩ := supply (by omega)
      obtain ⟨hlp, _, _, hne, _, hc, hpow⟩ := haux
      let : Fact l.Prime := ⟨hlp⟩
      have hres := nonresidue_of_auxiliary_prime hp hne hc hpow
      have hle : l % p ≤ E := (Nat.mod_le _ _).trans hl
      exact ⟨l % p, by omega, by simpa [fuel, h] using lt_min hres.2.1 (Nat.lt_succ_of_le hle),
        (nonresidueTest_iff p _).mpr hres⟩
  obtain ⟨j, hj⟩ := firstWithCount_exists _ _ _ existsHit
  obtain ⟨_, hb, yes, _⟩ := firstWithCount_found.mp hj
  obtain ⟨hzpos, hzp, hleg⟩ := (nonresidueTest_iff _ _).mp yes
  refine ⟨j,hj,hzpos,hzp,?_,hleg,firstWithCount_le _ _ _⟩
  by_cases h : p ≤ T
  · exact (hzp.le.trans h).trans (Nat.le_max_left _ _)
  · have he : j < min p (E+1) := by simpa [fuel,h] using hb
    exact (Nat.le_of_lt_succ (he.trans_le (Nat.min_le_right _ _))).trans (Nat.le_max_right _ _)

end GRWTSK.PrimeFieldFactoring
