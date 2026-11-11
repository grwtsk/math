/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.DyadicDecayMoment
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationDecay

/-!
# Counting-to-moment return for the original Weil correlation

MSC2020: 11M26, 11M41, 42A38.

Reuse `correlation`, `Admissible`, `spectralCoordinate`, `derivativeL1Cost`,
and `decayWeight`. A supplied weighted height count at every H>=2 now gives
the complete moment, absolute convergence of the original correlation sum,
and an explicit bound for its entire complex-valued radial remainder.

The original transform is F(z)*conj(F(conj z)); it is not replaced by a
positive square. The upper bound is for its norm, not its sign. No actual
zero-counting theorem, source-identifying contour formula, or arithmetic
positivity is asserted. Counts refer to every finite subset with multiplicity.
Constants can depend on the source; no family-uniformity is inferred.

The coordinate lemma keeps beta and gamma and quantifies the distinction
between height and radius. It does not require or conclude critical-line
localization. For zeros already restricted to the critical strip, B=1/2.

Research execution mandate RP-OC-01/02 and workstream B, 2026-11-11.
SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit,
and independent review NOT_RUN. Novelty UNASSESSED. Coordination: math#1801.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilNegativeWitness

/-- Exact source-coordinate geometry, without projecting complex locations to heights. -/
theorem spectralCoordinate_radius_bounds_of_strip (rho : ℂ)
    (hl : 0 ≤ rho.re) (hr : rho.re ≤ 1) :
    |(spectralCoordinate rho).im| ≤ 1 / 2 ∧
    |rho.im| ≤ ‖spectralCoordinate rho‖ ∧
    ‖spectralCoordinate rho‖ ≤ |rho.im| + 1 / 2 := by
  have hre : (spectralCoordinate rho).re = rho.im := by
    simp [spectralCoordinate, Complex.mul_re, Complex.mul_im]
  have him : |(spectralCoordinate rho).im| ≤ 1 / 2 := by
    rw [spectralCoordinate_im]
    exact abs_le.mpr ⟨by linarith, by linarith⟩
  refine ⟨him, ?_, ?_⟩
  · simpa only [hre] using Complex.abs_re_le_norm (spectralCoordinate rho)
  · calc
      ‖spectralCoordinate rho‖ =
          ‖((spectralCoordinate rho).re : ℂ) +
            ((spectralCoordinate rho).im : ℂ) * Complex.I‖ := by rw [Complex.re_add_im]
      _ ≤ ‖((spectralCoordinate rho).re : ℂ)‖ +
          ‖((spectralCoordinate rho).im : ℂ) * Complex.I‖ := norm_add_le _ _
      _ = |rho.im| + |(spectralCoordinate rho).im| := by
        simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.norm_I, mul_one, hre]
      _ ≤ _ := add_le_add_left him _

end GRWTSK.NumberTheory.WeilNegativeWitness

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
open GRWTSK.MeasureAndIntegration.DyadicDecayMoment

/-- The full summable-moment hypothesis is derived from weighted height counting.
The actual arithmetic source must still supply this all-height count. -/
theorem summable_norm_correlation_of_height_count {ι : Type*}
    (m : ι → ℝ) (z : ι → ℂ) (hm : ∀ i, 0 ≤ m i)
    (A B D L : ℝ) (hA : 0 ≤ A) (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hstrip : ∀ i, |(z i).im| ≤ B)
    (hheight : ∀ H : ℝ, 2 ≤ H → ∀ s : Finset ι,
      (∀ i ∈ s, |(z i).re| < H) →
      (∑ i ∈ s, m i) ≤ D * H * (Real.log H + L))
    (f : ℝ → ℂ) (hf : WeilNegativeWitness.Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ) (hk : 1 ≤ k) :
    Summable (fun i => ‖(m i : ℂ) *
      ∫ r : ℝ, correlation f r * Complex.exp (Complex.I * z i * (r : ℂ))‖) := by
  have hM := full_moment m z A B (2 * D * (L + 1)) 1 hA (by positivity)
    (by norm_num) hm hstrip (dyadic_count_of_height_count m z D L hD hL hheight) k hk
  exact summable_norm_correlation_of_moment m z hm f A hf hs k hM.1

/-- Absolute convergence and norm control for the complete signed complex remainder.
The cutoff is radial: 1+norm(z)>=2^N, not abs(Re z)>=2^N. -/
theorem correlation_radial_tail_of_height_count {ι : Type*}
    (m : ι → ℝ) (z : ι → ℂ) (hm : ∀ i, 0 ≤ m i)
    (A B D L : ℝ) (hA : 0 ≤ A) (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hstrip : ∀ i, |(z i).im| ≤ B)
    (hheight : ∀ H : ℝ, 2 ≤ H → ∀ s : Finset ι,
      (∀ i ∈ s, |(z i).re| < H) →
      (∑ i ∈ s, m i) ≤ D * H * (Real.log H + L))
    (f : ℝ → ℂ) (hf : WeilNegativeWitness.Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k N : ℕ) (hk : 1 ≤ k) :
    Summable (fun i => ‖if (2 : ℝ) ^ N ≤ 1 + ‖z i‖ then (m i : ℂ) *
      (∫ r : ℝ, correlation f r * Complex.exp (Complex.I * z i * (r : ℂ))) else 0‖) ∧
    ‖∑' i, if (2 : ℝ) ^ N ≤ 1 + ‖z i‖ then (m i : ℂ) *
      (∫ r : ℝ, correlation f r * Complex.exp (Complex.I * z i * (r : ℂ))) else 0‖ ≤
      derivativeL1Cost f k ^ 2 * tailBudget A B (2 * D * (L + 1)) 1 k N := by
  classical
  let u : ι → ℝ := fun i => if (2 : ℝ) ^ N ≤ 1 + ‖z i‖ then
    m i * decayWeight A k (z i) ^ 2 else 0
  let v : ι → ℂ := fun i => if (2 : ℝ) ^ N ≤ 1 + ‖z i‖ then (m i : ℂ) *
    (∫ r : ℝ, correlation f r * Complex.exp (Complex.I * z i * (r : ℂ))) else 0
  have hM := radial_tail_moment m z A B (2 * D * (L + 1)) 1 hA (by positivity)
    (by norm_num) hm hstrip (dyadic_count_of_height_count m z D L hD hL hheight) k N hk
  have hu : Summable u := hM.1
  have hp (i : ι) : ‖v i‖ ≤ derivativeL1Cost f k ^ 2 * u i := by
    dsimp [u, v]
    split_ifs with hi
    · rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (hm i)]
      calc
        _ ≤ m i * (derivativeL1Cost f k ^ 2 * decayWeight A k (z i) ^ 2) :=
          mul_le_mul_of_nonneg_left (norm_fourier_correlation_le_decay f A hf hs k (z i)) (hm i)
        _ = _ := by ring
    · simp
  have hv : Summable (fun i => ‖v i‖) := by
    apply (hu.mul_left (derivativeL1Cost f k ^ 2)).of_norm_bounded
    intro i
    simpa only [norm_norm] using hp i
  have hb : ‖∑' i, v i‖ ≤ derivativeL1Cost f k ^ 2 * ∑' i, u i :=
    tsum_of_norm_bounded (hu.hasSum.mul_left (derivativeL1Cost f k ^ 2)) hp
  exact ⟨hv, hb.trans (mul_le_mul_of_nonneg_left hM.2 (sq_nonneg _))⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
