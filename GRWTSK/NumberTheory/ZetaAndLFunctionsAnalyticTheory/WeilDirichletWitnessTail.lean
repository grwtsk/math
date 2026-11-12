/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroCounting

/-!
# The Jensen count in the signed Dirichlet witness bound

MSC2020: 11M26, 11M41, 42A38. SOURCE_PROOF_CANDIDATE, math#1801.
-/

set_option autoImplicit false
noncomputable section

open Set MeasureTheory
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
open GRWTSK.MeasureAndIntegration.DyadicDecayMoment

namespace GRWTSK.NumberTheory.WeilNegativeWitness

variable {N : ℕ} [NeZero N]

/-- The full complex zero sum is within the Jensen-derived budget of its finite
radial head. A signed head certificate with a strictly larger margin transfers
to the full zero sum. The cutoff boundary belongs to the remainder. -/
theorem primitive_correlation_head_bound
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k j : ℕ) (hk : 1 ≤ k) :
    let summand := fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) *
      (∫ r : ℝ, WeilQuadraticForm.SourcePrimeCorrelation.correlation f r *
        Complex.exp (Complex.I * spectralCoordinate rho.1 * (r : ℂ)))
    let head := (heightWindow chi hprim ((2 : ℝ) ^ j)).filter
      (fun rho => 1 + ‖spectralCoordinate rho.1‖ < (2 : ℝ) ^ j)
    let budget := derivativeL1Cost f k ^ 2 *
      tailBudget A (1 / 2) (2 * sourceCountConstant chi * (3 + 1)) 1 k j
    ‖(∑' rho, summand rho) - ∑ rho ∈ head, summand rho‖ ≤ budget ∧
      ∀ eta : ℝ, (∑ rho ∈ head, summand rho).re ≤ -eta → budget < eta →
        (∑' rho, summand rho).re < 0 := by
  classical
  intro summand head budget
  let z := fun rho : CriticalStripZero chi => spectralCoordinate rho.1
  have hre (rho : CriticalStripZero chi) : (z rho).re = rho.1.im := by
    simp [z, spectralCoordinate, Complex.mul_re, Complex.mul_im]
  have hcount : ∀ H : ℝ, 2 ≤ H → ∀ s : Finset (CriticalStripZero chi),
      (∀ rho ∈ s, |(z rho).re| < H) →
      (∑ rho ∈ s, (zeroMultiplicity chi rho : ℝ)) ≤
        sourceCountConstant chi * H * (Real.log H + 3) := by
    intro H hH s hs'
    exact (heightCount_le_iff chi hprim H _).mp
      (heightCount_le_source_bound chi hprim H hH) s
      (fun rho hrho => by simpa only [hre] using hs' rho hrho)
  have htail := WeilQuadraticForm.SourcePrimeCorrelation.correlation_radial_tail_of_height_count
    (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℝ))
    z (fun _ => Nat.cast_nonneg _) A (1 / 2) (sourceCountConstant chi) 3
    hA (sourceCountConstant_nonneg chi) (by norm_num)
    (fun rho => (spectralCoordinate_radius_bounds_of_strip rho.1
      rho.2.2.1.le rho.2.2.2.le).1)
    hcount f hf hs k j hk
  let high := fun rho : CriticalStripZero chi =>
    if (2 : ℝ) ^ j ≤ 1 + ‖z rho‖ then summand rho else 0
  have hhigh : Summable (fun rho => ‖high rho‖) ∧ ‖∑' rho, high rho‖ ≤ budget := by
    simpa only [high, summand, budget, Complex.ofReal_natCast] using htail
  have hmem (rho : CriticalStripZero chi) :
      rho ∈ head ↔ 1 + ‖z rho‖ < (2 : ℝ) ^ j := by
    change rho ∈ (heightWindow chi hprim ((2 : ℝ) ^ j)).filter
      (fun r => 1 + ‖z r‖ < (2 : ℝ) ^ j) ↔ _
    rw [Finset.mem_filter, mem_heightWindow]
    refine ⟨And.right, fun h => ⟨?_, h⟩⟩
    have hle := (spectralCoordinate_radius_bounds_of_strip rho.1
      rho.2.2.1.le rho.2.2.2.le).2.1
    change |rho.1.im| ≤ ‖z rho‖ at hle
    linarith
  let low := fun rho : CriticalStripZero chi => if rho ∈ head then summand rho else 0
  have hzero : ∀ rho ∉ head, low rho = 0 := fun rho hrho => by simp [low, hrho]
  have hlow : Summable low := summable_of_ne_finset_zero (s := head) hzero
  have hsplit (rho : CriticalStripZero chi) : summand rho = low rho + high rho := by
    by_cases h : (2 : ℝ) ^ j ≤ 1 + ‖z rho‖
    · have hn : rho ∉ head := fun hm => (not_lt_of_ge h) ((hmem rho).mp hm)
      simp [low, high, h, hn]
    · have hm : rho ∈ head := (hmem rho).mpr (lt_of_not_ge h)
      simp [low, high, h, hm]
  have hsum : (∑' rho, summand rho) =
      (∑ rho ∈ head, summand rho) + ∑' rho, high rho := by
    calc
      _ = ∑' rho, low rho + high rho := tsum_congr hsplit
      _ = (∑' rho, low rho) + ∑' rho, high rho := hlow.tsum_add hhigh.1.of_norm
      _ = _ := by
        rw [tsum_eq_sum (s := head) hzero]
        congr 1
        exact Finset.sum_congr rfl (fun rho hrho => by simp [low, hrho])
  have herror : ‖(∑' rho, summand rho) - ∑ rho ∈ head, summand rho‖ ≤ budget := by
    rw [hsum, add_sub_cancel_left]
    exact hhigh.2
  exact ⟨herror, fun eta hhead hmargin =>
    GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.re_neg_of_error_budget
      _ _ eta budget hhead herror hmargin⟩

end GRWTSK.NumberTheory.WeilNegativeWitness
