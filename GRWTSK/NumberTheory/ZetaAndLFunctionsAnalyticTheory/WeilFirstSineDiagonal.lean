/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaRationalWeights
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineProjection
import Mathlib.Tactic

/-!
# A finite positive-kernel lower estimate for the literal first sine diagonal

MSC2020: 11M06, 42A38, 65G20.
The accompanying note proves and evaluates the complete radius-one first-sine
source value. Here the finite-kernel inequality is proved on the ORIGINAL
integrals, and the numerical source-return theorem exposes its mass,
integrability and four component-enclosure premises. The note's elementary
Laplace evaluations and the external rational computation have NOT been turned
into closed Lean proofs of those premises. No whole-window sign follows.

SOURCE_PROOF_CANDIDATE. Lean elaboration, kernel replay and transitive axiom
audit NOT_RUN. The finite rational run is separate evidence, not a kernel proof.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstSineDiagonal

open OddRootProjection LowSchur GammaRationalWeights

/-- The literal scalar jump energy, not an ordinate or finite-frequency model. -/
def jumpEnergy (T : ℝ) (n : ℕ) (r : ℝ) : ℝ :=
  ∫ t : ℝ, (zeroExtendedSine T n (t + r) - zeroExtendedSine T n t) ^ 2

/-- All positive lags remain: the finite cutoff is in kernel exponentials. -/
def finiteGamma (T : ℝ) (n J : ℕ) : ℝ :=
  ∫ r in Ioi (0 : ℝ), finiteKernel J r * jumpEnergy T n r

/-- The unchanged full gamma energy in the literal diagonal. -/
def fullGamma (T : ℝ) (n : ℕ) : ℝ :=
  ∫ r in Ioi (0 : ℝ), parityKernel 0 r * jumpEnergy T n r

theorem jumpEnergy_nonneg (T : ℝ) (n : ℕ) (r : ℝ) :
    0 ≤ jumpEnergy T n r := by
  exact integral_nonneg (fun _ => sq_nonneg _)

theorem finiteKernel_nonneg (J : ℕ) (r : ℝ) :
    0 ≤ finiteKernel J r := by
  exact Finset.sum_nonneg (fun _ _ => (Real.exp_pos _).le)

/-- Source comparison is pointwise BEFORE any integration. -/
theorem finiteKernel_le_source (J : ℕ) {r : ℝ} (hr : 0 < r) :
    finiteKernel J r ≤ parityKernel 0 r := by
  rw [kernel_decomposition J hr]
  exact le_add_of_nonneg_right (remainder_bounds J hr le_rfl).1

/-- This lower estimate never discards a signed prime or pole term. -/
theorem finiteGamma_le (T : ℝ) (n J : ℕ)
    (hf : IntegrableOn (fun r => finiteKernel J r * jumpEnergy T n r) (Ioi 0))
    (hg : IntegrableOn (fun r => parityKernel 0 r * jumpEnergy T n r) (Ioi 0)) :
    finiteGamma T n J ≤ fullGamma T n := by
  apply integral_mono_ae hf hg
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
  exact mul_le_mul_of_nonneg_right (finiteKernel_le_source J hr)
    (jumpEnergy_nonneg T n r)

/-- Increasing the kernel rank increases the lower gamma approximation. -/
theorem finiteGamma_mono (T : ℝ) (n J : ℕ)
    (hf : IntegrableOn (fun r => finiteKernel J r * jumpEnergy T n r) (Ioi 0))
    (hg : IntegrableOn (fun r => finiteKernel (J + 1) r * jumpEnergy T n r) (Ioi 0)) :
    finiteGamma T n J ≤ finiteGamma T n (J + 1) := by
  apply integral_mono_ae hf hg
  filter_upwards [] with r
  have he : 0 ≤ exponentialTerm J r * jumpEnergy T n r :=
    mul_nonneg (Real.exp_pos _).le (jumpEnergy_nonneg T n r)
  simp only [finiteKernel, Finset.sum_range_succ, add_mul]
  exact le_add_of_nonneg_right he

/-- The literal diagonal energy has the same gamma integral. -/
theorem archimedean_diagonal (T c : ℝ) (n : ℕ) :
    sineArchimedeanEntry T c 0 n n =
      c * (∫ t : ℝ, zeroExtendedSine T n t * zeroExtendedSine T n t) +
        fullGamma T n := by
  simp only [sineArchimedeanEntry, fullGamma, jumpEnergy, pow_two]

/-- A source-local lower estimate for the single retained original sine. -/
theorem diagonal_lower (T : ℝ) (J : ℕ) (c g p u : ℝ)
    (hmass : (∫ t : ℝ, zeroExtendedSine T 1 t * zeroExtendedSine T 1 t) = 1)
    (hf : IntegrableOn (fun r => finiteKernel J r * jumpEnergy T 1 r) (Ioi 0))
    (hg : IntegrableOn (fun r => parityKernel 0 r * jumpEnergy T 1 r) (Ioi 0))
    (hc : c ≤ gammaConstant 1 0)
    (hgamma : g ≤ finiteGamma T 1 J)
    (hpole : p ≤ sinePoleEntry T 1 1)
    (hprime : (∑ q ∈ activePrimePowers T,
      primeWeight q * sineShiftEntry T 1 1 (Real.log (q : ℝ))) ≤ u) :
    c + g + p - u ≤ zetaSineMatrix T 1 0 0 := by
  have hfull := hgamma.trans (finiteGamma_le T 1 J hf hg)
  simp only [zetaSineMatrix, Fin.val_zero, zero_add,
    archimedean_diagonal, hmass, mul_one]
  linarith

/-- Checked rational final arithmetic; the analytic observations remain explicit. -/
theorem first_diagonal_gt_of_component_enclosures
    (hmass : (∫ t : ℝ, zeroExtendedSine 1 1 t * zeroExtendedSine 1 1 t) = 1)
    (hf : IntegrableOn (fun r => finiteKernel 128 r * jumpEnergy 1 1 r) (Ioi 0))
    (hg : IntegrableOn (fun r => parityKernel 0 r * jumpEnergy 1 1 r) (Ioi 0))
    (hc : -(5372427539983 / 1000000000000 : ℝ) ≤ gammaConstant 1 0)
    (hgamma : (4441923634096 / 1000000000000 : ℝ) ≤ finiteGamma 1 1 128)
    (hpole : -(209361578090 / 1000000000000 : ℝ) ≤ sinePoleEntry 1 1 1)
    (hprime : (∑ q ∈ activePrimePowers 1,
      primeWeight q * sineShiftEntry 1 1 1 (Real.log (q : ℝ))) ≤
        -(1142209800523 / 1000000000000 : ℝ)) :
    (1 / 500 : ℝ) < zetaSineMatrix 1 1 0 0 := by
  have h := diagonal_lower 1 128
    (-(5372427539983 / 1000000000000)) (4441923634096 / 1000000000000)
    (-(209361578090 / 1000000000000)) (-(1142209800523 / 1000000000000))
    hmass hf hg hc hgamma hpole hprime
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstSineDiagonal
