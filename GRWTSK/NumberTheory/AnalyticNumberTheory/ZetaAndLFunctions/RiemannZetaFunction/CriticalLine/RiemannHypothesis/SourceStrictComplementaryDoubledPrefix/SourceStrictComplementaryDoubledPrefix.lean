import SourceStrictComplementaryLocalization

/-!
The first possible nonzero strict divisor-log atom is 2(U+1): the k=1 rows
are logarithmically zero. The true closed negative-floor prefix therefore
extends through 2U+1; its next real seam is kept open. No later atom, tail,
prime power or signed arithmetic requirement is discarded.
Research direction: grwtsk contributors. Prefix observation: independent
OpenAI Codex challenge. Formal source adapter: OpenAI Codex issue ingestion.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceStrictComplementaryDoubledPrefix

open scoped BigOperators
open SourceStrictComplementaryAbel SourceStrictComplementaryLocalization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel

noncomputable section

/-- The first possible strict nonzero atom is at 2(U+1), never at U+1. -/
theorem strictDivisorLogCoefficient_zero_of_le_two_mul_add_one {U n : ℕ}
    (hn : n ≤ 2 * U + 1) : strictDivisorLogCoefficient U n = 0 := by
  unfold strictDivisorLogCoefficient
  apply Finset.sum_eq_zero
  intro dk hdk
  by_cases hd : U < dk.1
  · by_cases hk : dk.2 = 1
    · simp [hk]
    · have hk0 := Nat.right_ne_zero_of_mem_divisorsAntidiagonal hdk
      have hk2 : 2 ≤ dk.2 := by omega
      have hd1 : U + 1 ≤ dk.1 := by omega
      have hm := Nat.mul_le_mul hd1 hk2
      have hnprod := (Nat.mem_divisorsAntidiagonal.mp hdk).1
      rw [hnprod] at hm
      omega
  · simp only [if_neg hd]

/-- Exact closed cumulative short source agrees with actual psi through 2U+1. -/
theorem shortDivisorCumulative_eq_psi_of_floor_le_two_mul_add_one {U : ℕ} {x : ℝ}
    (hx : ⌊x⌋₊ ≤ 2 * U + 1) : shortDivisorCumulative U x = Chebyshev.psi x := by
  unfold shortDivisorCumulative
  rw [Chebyshev.psi_eq_sum_Icc]
  apply Finset.sum_congr rfl
  intro n hn
  have hz := strictDivisorLogCoefficient_zero_of_le_two_mul_add_one
    ((Finset.mem_Icc.mp hn).2.trans hx)
  have hs := strict_add_short_eq_vonMangoldt U n
  rw [hz, zero_add] at hs
  exact hs

/-- Actual G is exactly the negative closed floor, including the last integer 2U+1. -/
theorem complementaryCumulative_eq_neg_floor_of_floor_le_two_mul_add_one {U : ℕ} {x : ℝ}
    (hx : ⌊x⌋₊ ≤ 2 * U + 1) : complementaryCumulative U x = -(⌊x⌋₊ : ℝ) := by
  rw [complementaryCumulative_eq, shortDivisorCumulative_eq_psi_of_floor_le_two_mul_add_one hx]
  ring

/-- The real seam x=2(U+1) is open because it can contain the first actual strict atom. -/
theorem complementaryCumulative_eq_neg_floor_before_first_atom {U : ℕ} {x : ℝ}
    (hx : x < (2 * (U + 1) : ℕ)) : complementaryCumulative U x = -(⌊x⌋₊ : ℝ) := by
  apply complementaryCumulative_eq_neg_floor_of_floor_le_two_mul_add_one
  by_cases hx0 : 0 ≤ x
  · have hf := (Nat.floor_lt hx0).mpr hx
    omega
  · have hf : ⌊x⌋₊ = 0 := Nat.floor_of_nonpos (le_of_not_ge hx0)
    omega

/-- The first possible atom is preserved exactly, with its genuine Möbius/log sign. -/
theorem strictDivisorLogCoefficient_first_possible_atom (U : ℕ) :
    strictDivisorLogCoefficient U (2 * (U + 1)) =
      realMoebius (U + 1) * Real.log (2 : ℝ) := by
  unfold strictDivisorLogCoefficient
  rw [Finset.sum_eq_single (U + 1, 2)]
  · simp
  · intro dk hdk hne
    by_cases hd : U < dk.1
    · by_cases hk : dk.2 = 1
      · simp [hk]
      · have hk0 := Nat.right_ne_zero_of_mem_divisorsAntidiagonal hdk
        have hk2 : 2 ≤ dk.2 := by omega
        have hnprod := (Nat.mem_divisorsAntidiagonal.mp hdk).1
        have hm := Nat.mul_le_mul_left dk.1 hk2
        rw [hnprod] at hm
        have hd1 : dk.1 = U + 1 := by omega
        have hkprod : (U + 1) * dk.2 = (U + 1) * 2 := by
          simpa only [hd1, Nat.mul_comm] using hnprod
        have hk1 : dk.2 = 2 := Nat.eq_of_mul_eq_mul_left (by omega : 0 < U + 1) hkprod
        exact (hne (Prod.ext hd1 hk1)).elim
    · simp only [if_neg hd]
  · intro hnot
    exfalso
    apply hnot
    exact Nat.mem_divisorsAntidiagonal.mpr ⟨by omega, by omega⟩

end
end FormalResearch.RiemannHypothesis.SourceStrictComplementaryDoubledPrefix
