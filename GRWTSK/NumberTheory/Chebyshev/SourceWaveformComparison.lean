/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.Convolution.CompactProfileCorrelation
import GRWTSK.Analysis.TestFunctions.PolynomialBumpNormalization
import GRWTSK.NumberTheory.LSeries.LogarithmicWaveform

/-!
# Exact geometry / prime-power waveform comparison on the original compact source

First identify the two existing normalizations: the Gram source's squared
integral and the reflected arithmetic source's prescribed polynomial. Neither
is replaced. The strict prime-power inventory, sqrt weights and positive Fourier
convention are retained. The common core is extracted from actual finite modes;
both residuals survive. Only the observed signed difference is priced.
No infinite Mangoldt-series convergence at damping 1/2 is asserted.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.Chebyshev.SourceWaveformComparison

open GRWTSK.ProofHorizon.CorkscrewChamberCap
open GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticSupplier
open GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceGram
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap

/-- The two concrete polynomial residuals agree, including both support endpoints. -/
theorem residual_eq_dilationTest {A : ℝ} (hA : 0 < A) (x : ℝ) :
    sourceResidual A x =
      GRWTSK.RiemannHypothesis.SourcePairing.dilationTest explicitSecondDerivative A x := by
  rw [SourceResidual.sourceResidual_eq_ite hA x]
  unfold GRWTSK.RiemannHypothesis.SourcePairing.dilationTest explicitSecondDerivative
  rw [scaledBump_eq_indicator A hA]
  simp only [Set.indicator_apply]
  by_cases hx : x ∈ Icc (-A) A
  · simp only [if_pos hx]
    unfold SourceResidual.residualPolynomial secondInterior bumpInterior
    rw [Real.rpow_neg hA.le, ← Real.sqrt_eq_rpow]
    simp only [div_eq_mul_inv, mul_inv_rev, inv_pow]
    ring
  · simp [hx]

/-- The independent integral normalization equals the already evaluated source polynomial. -/
theorem normalization_eq_sourceNormalization {A : ℝ} (hA : 1 ≤ A) :
    sourceNormalization A = GRWTSK.RiemannHypothesis.SourcePairing.sourceNormalization A := by
  have hp : 0 < A := lt_of_lt_of_le zero_lt_one hA
  unfold sourceNormalization
  simp_rw [residual_eq_dilationTest hp, sq_abs]
  exact GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization.explicit_normalization A hA

/-- This is equality of the actual normalized profiles, not a numerical analogy. -/
theorem normalizedSource_eq_normalizedTest {A : ℝ} (hA : 1 ≤ A) :
    normalizedSource A =
      GRWTSK.RiemannHypothesis.SourcePairing.normalizedTest explicitSecondDerivative A := by
  funext x
  unfold normalizedSource GRWTSK.RiemannHypothesis.SourcePairing.normalizedTest
  rw [normalization_eq_sourceNormalization hA,
    residual_eq_dilationTest (lt_of_lt_of_le zero_lt_one hA)]

theorem correlation_eq_sourceCorrelation {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    correlation A t =
      GRWTSK.RiemannHypothesis.SourcePairing.sourceCorrelation explicitSecondDerivative A t := by
  unfold correlation GRWTSK.RiemannHypothesis.SourcePairing.sourceCorrelation
  rw [normalizedSource_eq_normalizedTest hA]

/-- No prime power is removed; coefficients vanish at non-prime-powers by the
original von Mangoldt definition. The touching upper endpoint stays excluded. -/
def primeInventory (A : ℝ) : Finset ℕ :=
  (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter (fun n : ℕ => (n : ℝ) < Real.exp (2 * A))

def primeWeight (n : ℕ) : ℝ := ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)

def primeWaveform (A : ℝ) : ℝ → ℝ := weightedSource A (primeInventory A) primeWeight

def readout (A : ℝ) (S : Finset ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ n ∈ S, w n * correlation A (Real.log (n : ℝ))

theorem primeInventory_positive {A : ℝ} {n : ℕ} (hn : n ∈ primeInventory A) : 0 < n := by
  have h := (Finset.mem_Icc.mp (Finset.mem_filter.mp hn).1).1
  omega

theorem readout_integrable {A : ℝ} (hA : 0 < A) (S : Finset ℕ) (w : ℕ → ℝ) :
    Integrable (fun x : ℝ => normalizedSource A x * weightedSource A S w x) := by
  unfold weightedSource
  simp_rw [Finset.mul_sum]
  apply integrable_finsetSum S
  intro n _
  have h := (source_vectors_product_integrable hA 1 n).const_mul (w n)
  convert h using 1
  funext x
  simp only [sourceVector, Nat.cast_one, Real.log_one, sub_zero]
  ring

/-- The arithmetic readout is an actual waveform pairing with the unit source. -/
theorem readout_eq_integral {A : ℝ} (hA : 0 < A) (S : Finset ℕ) (w : ℕ → ℝ) :
    readout A S w = ∫ x : ℝ, normalizedSource A x * weightedSource A S w x := by
  have hi (n : ℕ) : Integrable (fun x : ℝ =>
      normalizedSource A x * (w n * sourceVector A n x)) := by
    have h := (source_vectors_product_integrable hA 1 n).const_mul (w n)
    convert h using 1
    funext x
    simp only [sourceVector, Nat.cast_one, Real.log_one, sub_zero]
    ring
  unfold weightedSource
  simp_rw [Finset.mul_sum]
  rw [integral_finsetSum S (fun n _ => hi n)]
  unfold readout
  apply Finset.sum_congr rfl
  intro n _
  calc
    w n * correlation A (Real.log (n : ℝ)) =
        ∫ x : ℝ, w n * (normalizedSource A x * sourceVector A n x) := by
      rw [integral_const_mul]
      rfl
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [] with x
      ring

/-- Exact source identification with the pre-existing arithmetic consumer. -/
theorem primePowerContribution_eq_readout {A : ℝ} (hA : 1 ≤ A) :
    GRWTSK.RiemannHypothesis.SourcePairing.primePowerContribution explicitSecondDerivative A =
      readout A (primeInventory A) primeWeight := by
  unfold GRWTSK.RiemannHypothesis.SourcePairing.primePowerContribution
    readout primeInventory primeWeight
  simp_rw [correlation_eq_sourceCorrelation hA]

/-- Existing Gram geometry now belongs to the literal prime-power waveform. -/
theorem primeWaveform_energy_eq_gram {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, primeWaveform A x ^ 2) =
      ∑ m ∈ primeInventory A, ∑ n ∈ primeInventory A,
        (primeWeight m * primeWeight n) * sourceGram A m n :=
  source_energy_eq_gram hA (primeInventory A) primeWeight
    (fun _ hn => primeInventory_positive hn)

/-- Same logarithmic spectral kernel, with the exact critical finite weights.
This does not identify an infinite Dirichlet series at sigma=1/2. -/
theorem primeWaveform_fourier {A : ℝ} (hA : 0 < A) (ξ : ℝ) :
    GRWTSK.RiemannHypothesis.SourcePairing.sourceFourier (primeWaveform A) ξ =
      GRWTSK.RiemannHypothesis.SourcePairing.sourceFourier (normalizedSource A) ξ *
        GRWTSK.NumberTheory.LSeries.LogarithmicWaveform.finiteWaveform
          (primeInventory A) (fun n => (ArithmeticFunction.vonMangoldt n : ℂ))
          (1 / 2) (-ξ) := by
  have hf : primeWaveform A =
      GRWTSK.Analysis.InnerProductSpace.TranslatedWaveform.synthesis
        (normalizedSource A) (primeInventory A) (fun n => Real.log (n : ℝ))
          (fun n => ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (1 / 2 : ℝ)) := by
    funext x
    simp only [primeWaveform, weightedSource, primeWeight, sourceVector,
      GRWTSK.Analysis.InnerProductSpace.TranslatedWaveform.synthesis,
      GRWTSK.Analysis.InnerProductSpace.TranslatedWaveform.atom, Real.sqrt_eq_rpow]
  rw [hf]
  exact GRWTSK.NumberTheory.LSeries.LogarithmicWaveform.sourceFourier_log_synthesis
    (SourceRegularity.normalized_source_integrable hA) _ _ _ _
    (fun _ hn => primeInventory_positive hn)

/-- Geometry contributes its actual coefficient on shared labels. -/
def commonWaveform (A : ℝ) (S : Finset ℕ) (g : ℕ → ℝ) : ℝ → ℝ :=
  sharedCore S (primeInventory A) (fun n x => g n * sourceVector A n x)

def geometricRemainderWaveform (A : ℝ) (S : Finset ℕ) (g : ℕ → ℝ) : ℝ → ℝ :=
  geometryRemainder S (primeInventory A) (fun n x => g n * sourceVector A n x)

def arithmeticRemainderWaveform (A : ℝ) (S : Finset ℕ) (g : ℕ → ℝ) : ℝ → ℝ :=
  arithmeticRemainder S (primeInventory A)
    (fun n x => g n * sourceVector A n x)
    (fun n x => primeWeight n * sourceVector A n x)

theorem waveform_reconstructions (A : ℝ) (S : Finset ℕ) (g : ℕ → ℝ) :
    weightedSource A S g = commonWaveform A S g + geometricRemainderWaveform A S g ∧
    primeWaveform A = commonWaveform A S g + arithmeticRemainderWaveform A S g := by
  constructor
  · funext x
    have h := congrFun
      (geometry_reconstruct S (primeInventory A) (fun n x => g n * sourceVector A n x)) x
    simpa only [weightedSource, commonWaveform, geometricRemainderWaveform,
      Finset.sum_apply, Pi.add_apply] using h
  · funext x
    have h := congrFun
      (arithmetic_reconstruct S (primeInventory A)
        (fun n x => g n * sourceVector A n x)
        (fun n x => primeWeight n * sourceVector A n x)) x
    simpa only [primeWaveform, weightedSource, commonWaveform, arithmeticRemainderWaveform,
      Finset.sum_apply, Pi.add_apply] using h

/-- These are the two distinct residual READOUTS, including the overlap mismatch. -/
def geometricRemainderReadout (A : ℝ) (S : Finset ℕ) (g : ℕ → ℝ) : ℝ :=
  geometryRemainder S (primeInventory A) (fun n => g n * correlation A (Real.log (n : ℝ)))

def arithmeticRemainderReadout (A : ℝ) (S : Finset ℕ) (g : ℕ → ℝ) : ℝ :=
  arithmeticRemainder S (primeInventory A)
    (fun n => g n * correlation A (Real.log (n : ℝ)))
    (fun n => primeWeight n * correlation A (Real.log (n : ℝ)))

/-- The geometric residual sum and its literal waveform have the same observer. -/
theorem geometric_remainder_readout {A : ℝ} (hA : 0 < A)
    (S : Finset ℕ) (g : ℕ → ℝ) :
    geometricRemainderReadout A S g =
      ∫ x : ℝ, normalizedSource A x * geometricRemainderWaveform A S g x := by
  simpa only [geometricRemainderReadout, geometricRemainderWaveform,
    geometryRemainder, readout, weightedSource, Finset.sum_apply] using
      readout_eq_integral hA (S \ primeInventory A) g

/-- Both the unmatched arithmetic modes and the overlap mismatch are observed. -/
theorem arithmetic_remainder_readout {A : ℝ} (hA : 0 < A)
    (S : Finset ℕ) (g : ℕ → ℝ) :
    arithmeticRemainderReadout A S g =
      ∫ x : ℝ, normalizedSource A x * arithmeticRemainderWaveform A S g x := by
  have hw : arithmeticRemainderWaveform A S g =
      weightedSource A (primeInventory A \ S) primeWeight +
        weightedSource A (S ∩ primeInventory A) (fun n => primeWeight n - g n) := by
    funext x
    simp only [arithmeticRemainderWaveform, arithmeticRemainder, weightedSource,
      Finset.sum_apply, Pi.add_apply, Pi.sub_apply]
    congr 1
    apply Finset.sum_congr rfl
    intro n _
    ring
  have hr : arithmeticRemainderReadout A S g =
      readout A (primeInventory A \ S) primeWeight +
        readout A (S ∩ primeInventory A) (fun n => primeWeight n - g n) := by
    unfold arithmeticRemainderReadout arithmeticRemainder readout
    congr 1
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [hw, hr]
  simp only [Pi.add_apply, mul_add]
  rw [integral_add (readout_integrable hA _ _) (readout_integrable hA _ _),
    ← readout_eq_integral hA, ← readout_eq_integral hA]

/-- Source-specific signed comparison, not an unrestricted newly chosen error. -/
theorem prime_readout_sub_geometric {A : ℝ} (hA : 1 ≤ A)
    (S : Finset ℕ) (g : ℕ → ℝ) :
    GRWTSK.RiemannHypothesis.SourcePairing.primePowerContribution explicitSecondDerivative A -
      readout A S g = arithmeticRemainderReadout A S g - geometricRemainderReadout A S g := by
  rw [primePowerContribution_eq_readout hA]
  exact difference_eq_remainders S (primeInventory A) _ _

/-- The original archimedean term is unchanged. This is the actual quadratic
source consumer, not an identification with the distinct pickup-energy family. -/
theorem sourceQuadraticValue_eq_geometric_model {A : ℝ} (hA : 1 ≤ A)
    (S : Finset ℕ) (g : ℕ → ℝ) :
    GRWTSK.RiemannHypothesis.SourcePairing.sourceQuadraticValue explicitSecondDerivative A =
      (GRWTSK.RiemannHypothesis.SourcePairing.archimedeanValue explicitSecondDerivative A -
        2 * readout A S g) +
      2 * (geometricRemainderReadout A S g - arithmeticRemainderReadout A S g) := by
  have h := prime_readout_sub_geometric hA S g
  unfold GRWTSK.RiemannHypothesis.SourcePairing.sourceQuadraticValue
  linarith

/-- Only the unfavorable signed difference is required for a source lower bound. -/
theorem source_lower_bound_of_geometry {A L D : ℝ} (hA : 1 ≤ A)
    (S : Finset ℕ) (g : ℕ → ℝ)
    (hgeometry : L ≤ GRWTSK.RiemannHypothesis.SourcePairing.archimedeanValue
      explicitSecondDerivative A - 2 * readout A S g)
    (hdefect : arithmeticRemainderReadout A S g - geometricRemainderReadout A S g ≤ D) :
    L - 2 * D ≤ GRWTSK.RiemannHypothesis.SourcePairing.sourceQuadraticValue
      explicitSecondDerivative A := by
  rw [sourceQuadraticValue_eq_geometric_model hA S g]
  linarith

/-- Reverse quantitative transport through the same exact identity. -/
theorem geometry_lower_bound_of_source {A L D : ℝ} (hA : 1 ≤ A)
    (S : Finset ℕ) (g : ℕ → ℝ)
    (hsource : L ≤ GRWTSK.RiemannHypothesis.SourcePairing.sourceQuadraticValue
      explicitSecondDerivative A)
    (hdefect : geometricRemainderReadout A S g - arithmeticRemainderReadout A S g ≤ D) :
    L - 2 * D ≤ GRWTSK.RiemannHypothesis.SourcePairing.archimedeanValue
      explicitSecondDerivative A - 2 * readout A S g := by
  rw [sourceQuadraticValue_eq_geometric_model hA S g] at hsource
  linarith

/-- The uniform original-source witness is constructed from actual uniform inputs;
no hypothesis says that the entire waveform has to be recovered. -/
theorem uniform_source_lower_bound_of_geometry
    (S : ℝ → Finset ℕ) (g : ℝ → ℕ → ℝ) (L D : ℝ)
    (hgeometry : ∀ A : ℝ, 1 ≤ A → L ≤
      GRWTSK.RiemannHypothesis.SourcePairing.archimedeanValue explicitSecondDerivative A -
        2 * readout A (S A) (g A))
    (hdefect : ∀ A : ℝ, 1 ≤ A →
      arithmeticRemainderReadout A (S A) (g A) - geometricRemainderReadout A (S A) (g A) ≤ D) :
    ∃ lower : ℝ, ∀ A : ℝ, 1 ≤ A → lower ≤
      GRWTSK.RiemannHypothesis.SourcePairing.sourceQuadraticValue explicitSecondDerivative A := by
  exact ⟨L - 2 * D, fun A hA =>
    source_lower_bound_of_geometry hA (S A) (g A) (hgeometry A hA) (hdefect A hA)⟩

end GRWTSK.NumberTheory.Chebyshev.SourceWaveformComparison
