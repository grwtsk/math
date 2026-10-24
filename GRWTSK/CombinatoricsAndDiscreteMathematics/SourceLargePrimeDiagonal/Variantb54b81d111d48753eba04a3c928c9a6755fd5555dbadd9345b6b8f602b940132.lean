import SourceLargePrimeLinear

/-!
Exact invariant coefficient on the physical diagonal of each full large-prime train.
Direction and conceptual origin: grwtsk contributors.
Finite source arithmetic and formalization: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16LargePrimeDiagonal
open scoped BigOperators InnerProductSpace
open ArithmeticFunction
open RH16MangoldtPrimeDisclosure
open RH16Tandem.SourcePrimeDisclosure
open FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
open FormalResearch.RiemannHypothesis.SourceWeightedOrbitAdapter
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateBetaCentering

theorem centeredBeta_of_minFac_gt (U n : ℕ) (hU : 1 ≤ U) (hn : U < n)
    (hmin : U < n.minFac) : centeredBeta U n = alpha U - 1 := by
  classical
  have hshort : n.divisors.filter (fun d ↦ d ≤ U) = {1} := by
    ext d
    simp only [Finset.mem_filter, Finset.mem_singleton]
    constructor
    · rintro ⟨hd, hdU⟩
      have hd0 : 0 < d := Nat.pos_of_dvd_of_pos (Nat.dvd_of_mem_divisors hd) (by omega)
      by_contra hd1
      have hdm : n.minFac ≤ d := Nat.minFac_le_of_dvd (by omega)
        (Nat.dvd_of_mem_divisors hd)
      omega
    · rintro rfl
      exact ⟨Nat.mem_divisors.mpr ⟨one_dvd n, by omega⟩, hU⟩
  unfold centeredBeta
  rw [beta_eq_delta_sub_short, if_neg (by omega), hshort]
  simp
  ring

theorem centeredBeta_at_large_prime_power (U p k : ℕ) (hU : 1 ≤ U)
    (hp : p.Prime) (hUp : U < p) (hk : 0 < k) :
    centeredBeta U (p ^ k) = alpha U - 1 := by
  apply centeredBeta_of_minFac_gt U (p ^ k) hU
  · exact hUp.trans_le (le_self_pow hp.one_lt.le hk.ne')
  · simpa only [hp.pow_minFac hk.ne'] using hUp

theorem fresh_beta_coefficient_product (U N p n : ℕ) (hU : 1 ≤ U)
    (hUp : U < p) (hn : n ∈ Finset.Ioc U N) :
    star (freshMangoldtRow p n) * centeredCoefficient U n =
      ((alpha U - 1 : ℝ) : ℂ) *
        (star (freshMangoldtRow p n) * ((1 / Real.sqrt (n : ℝ) : ℝ) : ℂ)) := by
  by_cases hnp : n.minFac = p
  · have hb := centeredBeta_of_minFac_gt U n hU (Finset.mem_Ioc.mp hn).1
      (by simpa only [hnp] using hUp)
    unfold centeredCoefficient
    rw [hb, div_eq_mul_inv, Complex.ofReal_mul]
    simp only [one_div, Complex.ofReal_inv]
    ring
  · simp only [freshMangoldtRow, if_neg hnp, star_zero, zero_mul, mul_zero]

/-- The physical diagonal's invariant scalar is exact; its reflected self-interaction remains signed. -/
theorem large_prime_physical_diagonal (q : ComplexL2) (U N p : ℕ)
    (hU : 1 ≤ U) (hUp : U < p) :
    physicalDiagonal q (Finset.Ioc U N) (freshMangoldtRow p) (centeredCoefficient U) =
      (alpha U - 1) * physicalDiagonal q (Finset.Ioc U N) (freshMangoldtRow p)
        (fun n => ((1 / Real.sqrt (n : ℝ) : ℝ) : ℂ)) := by
  unfold physicalDiagonal
  have hs :
      (∑ n ∈ Finset.Ioc U N, star (freshMangoldtRow p n) * centeredCoefficient U n *
        ⟪orbitAtom q false false n, reflection (orbitAtom q false false n)⟫_ℂ) =
      ((alpha U - 1 : ℝ) : ℂ) *
        ∑ n ∈ Finset.Ioc U N, star (freshMangoldtRow p n) *
          ((1 / Real.sqrt (n : ℝ) : ℝ) : ℂ) *
            ⟪orbitAtom q false false n, reflection (orbitAtom q false false n)⟫_ℂ := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n hn
    rw [fresh_beta_coefficient_product U N p n hU hUp hn]
    ring
  rw [hs, Complex.mul_re]
  simp

end RH16LargePrimeDiagonal
