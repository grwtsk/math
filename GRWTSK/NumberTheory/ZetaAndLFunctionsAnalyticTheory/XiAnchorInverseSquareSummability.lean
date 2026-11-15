/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiZetaDivisorAlignment
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CanonicalHighCounting
import GRWTSK.FunctionalAnalysis.NormedLinearSpacesAndBanachSpacesBanachLattices.ScaledHeightCountingTail

/-!
# Inverse-square summability of the actual positive ξ tail

The canonical zeta count bounds the mass of every finite high subfamily by
`(44 / log (6 / 5)) * t * log t`. The exact ξ–ζ order alignment transports
that bound through the injection sending each strict positive ξ zero to
the same complex point of the canonical zeta divisor. At these points,
absolute height equals positive height. Finite partial summation then
uniformly bounds the inverse-square sums, giving convergence on the
whole tail through nonnegative finite sums.
-/

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.SpectralProductDivisorReturn

open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.CanonicalHighCounting
open GRWTSK.Analysis.Series.HeightCountingTail
open GRWTSK.Analysis.Series.ScaledHeightCountingTail

/-- The original ξ orders give a convergent strict positive tail and an explicit bound. -/
theorem xiPositiveTail_inverseSquare_summable_and_bound {T : ℝ} (hT : 2 ≤ T) :
    Summable (xiInverseSquareTailTerm (xiPositiveTailOrder T)) ∧
      (∑' ρ : xiPositiveZeroTail T, xiInverseSquareTailTerm (xiPositiveTailOrder T) ρ) ≤
        countingCoefficient * inverseSquareBudget T := by
  let e : xiPositiveZeroTail T ↪ ZeroPoint :=
    ⟨fun ρ => ⟨ρ.val, (xi_eq_zero_iff_nontrivialZetaZero ρ.val).mp ρ.property.1⟩,
      fun _ _ h => Subtype.ext (congrArg (fun z : ZeroPoint => z.val) h)⟩
  let ordinate : xiPositiveZeroTail T → ℝ := fun ρ => ρ.val.im
  let weight : xiPositiveZeroTail T → ℝ := fun ρ => (xiPositiveTailOrder T ρ : ℝ)
  have hcut (ρ : xiPositiveZeroTail T) : T < ordinate ρ := ρ.property.2
  have hheight : (fun ρ => height (e ρ)) = ordinate := by
    funext ρ
    change |ρ.val.im| = ρ.val.im
    exact abs_of_nonneg ((show 0 ≤ T by linarith).trans (hcut ρ).le)
  have hweight : (fun ρ => (multiplicity (e ρ) : ℝ)) = weight := by
    funext ρ
    obtain ⟨hl, hr⟩ := point_mem_strip (e ρ)
    have horder := congrArg ENat.toNat (xiAnalyticOrderAt_eq_riemannZeta hl hr)
    exact congrArg (fun n : ℕ => (n : ℝ)) horder.symm
  have hcount (S : Finset (xiPositiveZeroTail T)) (t : ℝ) (ht : T ≤ t) :
      finiteCountingMass S ordinate weight t ≤ countingCoefficient * (t * Real.log t) := by
    have hhigh (z : ZeroPoint) (hz : z ∈ S.map e) : 2 < height z := by
      obtain ⟨ρ, _, rfl⟩ := Finset.mem_map.mp hz
      have he := congrFun hheight ρ
      rw [he]
      exact hT.trans_lt (hcut ρ)
    have hc := finiteCountingMass_high_le (S.map e) t (hT.trans ht) hhigh
    rwa [finiteCountingMass_map, hheight, hweight] at hc
  have hfinite (S : Finset (xiPositiveZeroTail T)) :
      (∑ ρ ∈ S, xiInverseSquareTailTerm (xiPositiveTailOrder T) ρ) ≤
        countingCoefficient * inverseSquareBudget T :=
    finite_inverseSquare_le_scaled S ordinate weight T countingCoefficient
      (by linarith) countingCoefficient_pos (fun ρ _ => hcut ρ) (hcount S)
  have hnonneg (ρ : xiPositiveZeroTail T) :
      0 ≤ xiInverseSquareTailTerm (xiPositiveTailOrder T) ρ :=
    div_nonneg (Nat.cast_nonneg _) (sq_nonneg _)
  exact ⟨summable_of_sum_le hnonneg hfinite, Real.tsum_le_of_sum_le hnonneg hfinite⟩

end GRWTSK.NumberTheory.SpectralProductDivisorReturn
