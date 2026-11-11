/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
import GRWTSK.FunctionalAnalysis.WeightedConjugatePairing
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationFourier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilNegativeWitness

/-!
# Derivative decay returned to the original arithmetic correlation

MSC2020: 11M26, 11M41, 42A38.

Use the existing correlation, the corrected canonical Admissible predicate,
and the exact complex Fourier return. Its transform is F(z)*conj(F(conj z)),
not a squared modulus at a nonreal z. The new derivative estimate supplies
an explicit positive majorant, retaining both the norm and imaginary part of z.

The generic weighted consumer reuses WeightedConjugatePairing, with the full
summable moment left as an explicit hypothesis. It neither constructs the
arithmetic zero divisor nor proves its counting estimate. The return to the
original correlation is exact; the full prime/gamma/conductor/pole explicit
formula is still a separate obligation. No arithmetic form or RH target changes.

Source: research execution mandate RP-OC-01/02, plus-sign convention, and the
canonical sources at da00dc90fe356e06c9ac83c6a8e64a77cc951703.
Adjacent declaration records retain the analytic argument and dependency map.
SOURCE_PROOF_CANDIDATE: elaboration, fresh kernel replay, transitive axiom audit,
and independent analytical review NOT_RUN. Novelty UNASSESSED. Issue #1801.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped ContDiff ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
open GRWTSK.FunctionalAnalysis.WeightedConjugatePairing

/-- The derivative estimate bounds the actual correlation transform at every complex z.
The prior source identity, not an imposed positive-square model, supplies the return. -/
theorem norm_fourier_correlation_le_decay (f : ℝ → ℂ) (A : ℝ)
    (hf : WeilNegativeWitness.Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ) (z : ℂ) :
    ‖∫ r : ℝ, correlation f r * Complex.exp (Complex.I * z * (r : ℂ))‖ ≤
      derivativeL1Cost f k ^ 2 * decayWeight A k z ^ 2 := by
  have h0 := norm_fourier_integral_le_decay f A hf.1 hf.2 hs k z
  have h1 := norm_fourier_integral_le_decay f A hf.1 hf.2 hs k (conj z)
  rw [decayWeight_conj] at h1
  rw [fourier_correlation_eq_reflected_product f A
    (hf.1.continuous.integrable_of_hasCompactSupport hf.2) (supported_of_tsupport hs) z,
    norm_mul, Complex.norm_conj]
  calc
    _ ≤ (derivativeL1Cost f k * decayWeight A k z) *
        (derivativeL1Cost f k * decayWeight A k z) :=
      mul_le_mul h0 h1 (norm_nonneg _)
        (mul_nonneg (derivativeL1Cost_nonneg f k) (decayWeight_pos A k z).le)
    _ = _ := by ring

/-- Absolute convergence of correlation evaluations from the entire weighted moment.
The locations and multiplicity weights are arbitrary; arithmetic counting is not supplied. -/
theorem summable_norm_correlation_of_moment {ι : Type*}
    (m : ι → ℝ) (z : ι → ℂ) (hm : ∀ i, 0 ≤ m i)
    (f : ℝ → ℂ) (A : ℝ) (hf : WeilNegativeWitness.Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ)
    (hM : Summable (fun i => m i * decayWeight A k (z i) ^ 2)) :
    Summable (fun i => ‖(m i : ℂ) *
      ∫ r : ℝ, correlation f r * Complex.exp (Complex.I * z i * (r : ℂ))‖) := by
  apply (hM.mul_left (derivativeL1Cost f k ^ 2)).of_norm_bounded
  intro i
  rw [norm_norm, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (hm i)]
  calc
    _ ≤ m i * (derivativeL1Cost f k ^ 2 * decayWeight A k (z i) ^ 2) :=
      mul_le_mul_of_nonneg_left (norm_fourier_correlation_le_decay f A hf hs k (z i)) (hm i)
    _ = _ := by ring

/-- The existing signed-pairing comparison now receives proved Fourier envelopes.
The reflected locations and the full moment remain explicit. No source-zero count
or arithmetic explicit formula follows merely from this conditional comparison. -/
theorem reflected_fourier_pairing_of_moment {ι : Type*}
    (m : ι → ℝ) (j : ι → ι) (z : ι → ℂ)
    (hm : ∀ i, 0 ≤ m i) (hz : ∀ i, z (j i) = conj (z i))
    (f g : ℝ → ℂ) (A : ℝ)
    (hf : WeilNegativeWitness.Admissible f) (hg : WeilNegativeWitness.Admissible g)
    (hsf : tsupport f ⊆ Icc (-A) A) (hsg : tsupport g ⊆ Icc (-A) A) (k : ℕ)
    (hM : Summable (fun i => m i * decayWeight A k (z i) ^ 2)) :
    Summable (fun i => ‖term m j
      (fun i => ∫ t : ℝ, f t * Complex.exp (Complex.I * z i * (t : ℂ)))
      (fun i => ∫ t : ℝ, g t * Complex.exp (Complex.I * z i * (t : ℂ))) i‖) ∧
    ‖pairing m j
      (fun i => ∫ t : ℝ, f t * Complex.exp (Complex.I * z i * (t : ℂ)))
      (fun i => ∫ t : ℝ, g t * Complex.exp (Complex.I * z i * (t : ℂ)))‖ ≤
        (∑' i, m i * decayWeight A k (z i) ^ 2) *
          derivativeL1Cost f k * derivativeL1Cost g k := by
  let w : ι → ℝ := fun i => decayWeight A k (z i)
  let u : ι → ℂ := fun i => ∫ t : ℝ, f t * Complex.exp (Complex.I * z i * (t : ℂ))
  let v : ι → ℂ := fun i => ∫ t : ℝ, g t * Complex.exp (Complex.I * z i * (t : ℂ))
  have hw (i : ι) : 0 ≤ w i := (decayWeight_pos A k (z i)).le
  have hj (i : ι) : w (j i) = w i := by
    dsimp [w]
    rw [hz i, decayWeight_conj]
  have hu (i : ι) : ‖u i‖ ≤ derivativeL1Cost f k * w i :=
    norm_fourier_integral_le_decay f A hf.1 hf.2 hsf k (z i)
  have hv (i : ι) : ‖v i‖ ≤ derivativeL1Cost g k * w i :=
    norm_fourier_integral_le_decay g A hg.1 hg.2 hsg k (z i)
  exact ⟨summable_norm_term m w j u v _ _ hm hw hj
      (derivativeL1Cost_nonneg f k) hu hv hM,
    norm_pairing_le m w j u v _ _ _ hm hw hj
      (derivativeL1Cost_nonneg f k) (derivativeL1Cost_nonneg g k) hu hv hM le_rfl⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
