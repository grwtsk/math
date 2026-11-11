/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroMultiplicity
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationMoment

/-!
# The Fourier-moment consumer on genuine primitive Dirichlet zeros

MSC2020: 11M26, 11M41, 42A38.

The source index and multiplicities now come from the actual analytically
continued L-function, including the explicit conductor-one zeta case proved
in DirichletZeroMultiplicity. The full complex spectral coordinate, original
correlation and compact-smooth domain are unchanged. No arbitrary divisor,
assumed local finiteness or freely chosen multiplicity remains in this input.

The all-height H*log(H) count remains a genuine quantitative assumption.
This theorem identifies the remaining source supplier precisely; it does not
prove that supplier, the full arithmetic explicit formula, or positivity.

SOURCE_PROOF_CANDIDATE: elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED. Issue math#1801.
-/

set_option autoImplicit false
noncomputable section

open Set MeasureTheory

namespace GRWTSK.NumberTheory.WeilNegativeWitness

variable {N : ℕ} [NeZero N]

/-- The old convergence consumer now has actual source locations and analytic weights.
Only the quantitative all-height growth estimate remains supplied here; local finiteness
and the meaning/positivity of multiplicities are not assumptions. The full arithmetic
explicit formula and positivity remain separate obligations. -/
theorem summable_primitive_correlation_of_heightCount (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (D L : ℝ) (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ H : ℝ, 2 ≤ H →
      (heightCount chi hprim H : ℝ) ≤ D * H * (Real.log H + L))
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ) (hk : 1 ≤ k) :
    Summable (fun rho : CriticalStripZero chi => ‖(zeroMultiplicity chi rho : ℂ) *
      ∫ r : ℝ, WeilQuadraticForm.SourcePrimeCorrelation.correlation f r *
        Complex.exp (Complex.I * spectralCoordinate rho.1 * (r : ℂ))‖) := by
  have hre (rho : CriticalStripZero chi) : (spectralCoordinate rho.1).re = rho.1.im := by
    simp [spectralCoordinate, Complex.mul_re, Complex.mul_im]
  have hheight : ∀ H : ℝ, 2 ≤ H → ∀ s : Finset (CriticalStripZero chi),
      (∀ rho ∈ s, |(spectralCoordinate rho.1).re| < H) →
      (∑ rho ∈ s, (zeroMultiplicity chi rho : ℝ)) ≤ D * H * (Real.log H + L) := by
    intro H hH s hs'
    exact (heightCount_le_iff chi hprim H _).mp (hcount H hH) s
      (fun rho hrho => by simpa only [hre] using hs' rho hrho)
  have h := WeilQuadraticForm.SourcePrimeCorrelation.summable_norm_correlation_of_height_count
    (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℝ))
    (fun rho => spectralCoordinate rho.1) (fun _ => Nat.cast_nonneg _) A (1 / 2) D L
    hA hD hL
    (fun rho => (spectralCoordinate_radius_bounds_of_strip rho.1
      rho.2.2.1.le rho.2.2.2.le).1)
    hheight f hf hs k hk
  simpa only [Complex.ofReal_natCast] using h

end GRWTSK.NumberTheory.WeilNegativeWitness
