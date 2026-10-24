import scratch.common_mean_20261004.FiveModeCorrelationAdapter
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility
import FormalResearch.RiemannHypothesis.ZeroSide.Assembly

/-!
Geometric five-mode dictionary for the unchanged source. Angular frequency is
exp(+i*omega*x), with the complete gamma integral divided by 2*pi. Matrix-entry
gamma integrability is an explicit remaining hypothesis, not a research axiom.
Originating mathematical direction: grwtsk contributors.
Scratch formalization assistance: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeAdmissibility

def modeFourier (A : ℝ) (i : Fin 5) (ω : ℝ) : ℂ :=
  sourceFourier (normalizedMode A i) ω

theorem mode_fourier_integrable (A : ℝ) (i : Fin 5) (ω : ℝ) :
    Integrable (fun x : ℝ => (normalizedMode A i x : ℂ) *
      Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ))) := by
  let f := fun x : ℝ =>
    ((Real.sqrt (modeWeight i / (2*A)) * mode i (x/A) : ℝ) : ℂ) *
      Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ))
  have hc : Continuous f := by
    unfold f
    exact (Complex.continuous_ofReal.comp (continuous_const.mul
      ((mode_continuous i).comp (continuous_id.div_const A)))).mul (by fun_prop)
  have heq : (fun x : ℝ => (normalizedMode A i x : ℂ) *
      Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ))) = (Icc (-A) A).indicator f := by
    classical
    funext x
    simp only [normalizedMode, Set.indicator]
    by_cases hx : x ∈ Icc (-A) A <;> simp [hx, f]
  rw [heq]
  exact hc.integrableOn_Icc.integrable_indicator measurableSet_Icc

/-- Even real modes have real Fourier values on the real angular-frequency axis. -/
theorem mode_fourier_conj (A : ℝ) (i : Fin 5) (ω : ℝ) :
    star (modeFourier A i ω) = modeFourier A i ω := by
  unfold modeFourier sourceFourier
  change (starRingEnd ℂ) (∫ x : ℝ, (normalizedMode A i x : ℂ) *
    Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ))) = _
  rw [← integral_conj, ← integral_neg_eq_self]
  apply integral_congr_ae
  exact Eventually.of_forall fun x => by
    simp only [map_mul, map_neg, Complex.conj_ofReal, ← Complex.exp_conj,
      Complex.conj_I, Complex.ofReal_neg]
    rw [normalizedMode_even]
    congr 1
    ring

theorem mode_fourier_im_zero (A : ℝ) (i : Fin 5) (ω : ℝ) :
    (modeFourier A i ω).im = 0 := by
  have h := congrArg Complex.im (mode_fourier_conj A i ω)
  simp only [Complex.star_def, Complex.conj_im] at h
  linarith

theorem actual_fourier_reconstruction (A : ℝ) (hA : 1 ≤ A) (ω : ℝ) :
    sourceFourier (normalizedTest explicitSecondDerivative A) ω =
      ∑ i : Fin 5, (alpha A i : ℂ) * modeFourier A i ω := by
  unfold sourceFourier
  simp_rw [actual_source_reconstruction A hA, Complex.ofReal_sum, Complex.ofReal_mul,
    Finset.sum_mul]
  have hterm (x : ℝ) (i : Fin 5) : ((alpha A i : ℂ) * (normalizedMode A i x : ℂ)) *
      Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ)) =
      (alpha A i : ℂ) * ((normalizedMode A i x : ℂ) *
        Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ))) := by ring
  simp_rw [hterm]
  rw [integral_finsetSum _ (fun i _ => (mode_fourier_integrable A i ω).const_mul _)]
  simp only [integral_const_mul, modeFourier, sourceFourier]

theorem actual_fourier_square_reconstruction (A : ℝ) (hA : 1 ≤ A) (ω : ℝ) :
    Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω) =
      ∑ i : Fin 5, ∑ j : Fin 5,
        alpha A i * alpha A j * (modeFourier A i ω * modeFourier A j ω).re := by
  rw [actual_fourier_reconstruction A hA]
  simp only [Complex.normSq_apply, Complex.re_sum, Complex.im_sum, Complex.mul_re,
    Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im, mode_fourier_im_zero,
    zero_mul, mul_zero, add_zero, sub_zero, Finset.sum_const_zero]
  rw [Finset.sum_mul]
  simp_rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Full angular gamma integral; no truncation of its frequency range. -/
def gammaEntry (A : ℝ) (i j : Fin 5) : ℝ :=
  (∫ ω : ℝ, archimedeanMultiplier ω *
    (modeFourier A i ω * modeFourier A j ω).re) / (2*Real.pi)

/-- This analytic premise has yet to be instantiated for all basis pairs. -/
def GammaEntryIntegrability (A : ℝ) : Prop :=
  ∀ i j : Fin 5, Integrable (fun ω : ℝ => archimedeanMultiplier ω *
    (modeFourier A i ω * modeFourier A j ω).re)

theorem gamma_contraction (A : ℝ) (hA : 1 ≤ A) (hg : GammaEntryIntegrability A) :
    (∑ i : Fin 5, ∑ j : Fin 5,
      alpha A i * alpha A j * gammaEntry A i j) = archimedeanValue explicitSecondDerivative A := by
  unfold archimedeanValue archimedeanIntegrand
  simp_rw [actual_fourier_square_reconstruction A hA, Finset.mul_sum]
  have hterm (ω : ℝ) (i j : Fin 5) : archimedeanMultiplier ω *
      (alpha A i * alpha A j * (modeFourier A i ω * modeFourier A j ω).re) =
      (alpha A i * alpha A j) * (archimedeanMultiplier ω *
        (modeFourier A i ω * modeFourier A j ω).re) := by ring
  simp_rw [hterm]
  rw [integral_finsetSum _ (fun i _ => integrable_finsetSum _
    (fun j _ => (hg i j).const_mul _))]
  simp_rw [integral_finsetSum _ (fun j _ => (hg _ j).const_mul _), integral_const_mul,
    Finset.sum_div]
  simp only [gammaEntry]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Complete closed inventory, including every prime power and the touching endpoint. -/
def arithmeticEntry (A : ℝ) (i j : Fin 5) : ℝ :=
  -2 * ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2*A)⌋₊,
    ArithmeticFunction.vonMangoldt n / Real.sqrt n * modeCorrelation A i j (Real.log n)

def geometricEntry (A : ℝ) (i j : Fin 5) : ℝ :=
  2 * poleMoment A i * poleMoment A j + gammaEntry A i j + arithmeticEntry A i j

theorem negative_pole_eq_positive (A : ℝ) (i : Fin 5) :
    (∫ x : ℝ, Real.exp (-x/2) * normalizedMode A i x) = poleMoment A i := by
  unfold poleMoment
  rw [← integral_neg_eq_self]
  apply integral_congr_ae
  exact Eventually.of_forall fun x => by
    dsimp only
    rw [normalizedMode_even]
    simp

theorem actual_closed_arithmetic (A : ℝ) (hA : 1 ≤ A) :
    primePowerContribution explicitSecondDerivative A =
      ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2*A)⌋₊,
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
          sourceCorrelation explicitSecondDerivative A (Real.log n) := by
  rw [PrimePowerDescent.source_prime_power_contribution_eq_closed
    explicitSecondDerivative A (sourceCorrelation_upper_endpoint A (by linarith))]
  apply Finset.sum_congr rfl
  intro n hn
  have hn2 : 2 ≤ n := (Finset.mem_Icc.mp hn).1
  rw [PrimePowerDescent.exponentialTest_log _ n (by omega)]
  ring

theorem arithmetic_contraction (A : ℝ) (hA : 1 ≤ A) :
    (∑ i : Fin 5, ∑ j : Fin 5,
      alpha A i * alpha A j * arithmeticEntry A i j) =
        -2 * primePowerContribution explicitSecondDerivative A := by
  rw [actual_closed_arithmetic A hA]
  unfold arithmeticEntry
  simp_rw [actual_correlation_reconstruction A _ hA, Finset.mul_sum]
  simp_rw [Finset.sum_comm (s := (Finset.univ : Finset (Fin 5)))
    (t := Finset.Icc 2 ⌊Real.exp (2*A)⌋₊)]
  apply Finset.sum_congr rfl
  intro n _
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

theorem geometric_matrix_dictionary (A : ℝ) (hA : 1 ≤ A)
    (hg : GammaEntryIntegrability A) :
    (∑ i : Fin 5, ∑ j : Fin 5,
      alpha A i * alpha A j * geometricEntry A i j) =
        sourceQuadraticValue explicitSecondDerivative A := by
  simp_rw [geometricEntry, mul_add, Finset.sum_add_distrib]
  rw [pole_matrix_contraction A hA, gamma_contraction A hA hg,
    arithmetic_contraction A hA]
  unfold sourceQuadraticValue
  ring

/-- Existing finite-regularity descent, applied to the exact source contraction.
The complete multiplicity-occurrence sum consists of ordinary complex squares.
The unnormalized source transform retains its original Z_A scaling here. -/
theorem geometric_matrix_zero_dictionary (A : ℝ) (hA : 1 ≤ A)
    (hg : GammaEntryIntegrability A) :
    ((sourceNormalization A *
      (∑ i : Fin 5, ∑ j : Fin 5,
        alpha A i * alpha A j * geometricEntry A i j) : ℝ) : ℂ) =
      ∑' o : ZeroObject.ZeroOccurrence,
        ZeroSideTargets.bilateralTransform A (ZeroObject.shiftedValue o) ^ 2 := by
  rw [geometric_matrix_dictionary A hA hg]
  obtain ⟨_, _, _, hnorm, hzero⟩ :=
    FormalResearch.RiemannHypothesis.ZeroSide.Assembly.zero_side_identity A hA
  exact hnorm.trans hzero

theorem gammaEntry_symm (A : ℝ) (i j : Fin 5) : gammaEntry A i j = gammaEntry A j i := by
  simp only [gammaEntry, mul_comm (modeFourier A i _) (modeFourier A j _)]

theorem arithmeticEntry_symm (A : ℝ) (i j : Fin 5) :
    arithmeticEntry A i j = arithmeticEntry A j i := by
  simp only [arithmeticEntry, modeCorrelation_symm A _ i j]

theorem geometricEntry_symm (A : ℝ) (i j : Fin 5) :
    geometricEntry A i j = geometricEntry A j i := by
  rw [geometricEntry, geometricEntry, gammaEntry_symm A i j, arithmeticEntry_symm A i j]
  ring

end CommonMeanScratch
