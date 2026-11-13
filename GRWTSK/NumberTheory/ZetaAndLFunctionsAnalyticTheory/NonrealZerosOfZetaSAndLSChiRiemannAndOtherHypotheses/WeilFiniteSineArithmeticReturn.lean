/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPrimePoleOutput
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSchurAccounting
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilPhysicalSineNegativeReturn
import Mathlib.Tactic

/-!
# Exact prime/pole return and the remaining gamma block

The literal zetaSineMatrix and primitivePairSineMatrix are not replaced.
The first source-specific comparison proves the negative zeta pole matrix
on the true odd sine basis, using the published exact source moment and
theorem coshMomentRow_eq_zero. The second proves the prime translation
quadratic equality for ARBITRARY real source coefficients w_n, including
pairedPrimeWeight chi n, with the complete activePrimePowers T inventory.

These two returns are unconditional finite algebra/finite integration results.
The only remaining component for the full finite-sine physical-source
identification is the gamma + conductor-constant energy block. It is recorded
as GammaBlockReturn, an EXPLICIT hypothesis, not an axiom or a proof.
Under this single source gamma identity, the two full-matrix-to-physical-form
returns follow for every coefficient vector in the original source matrices.
No RH/Dirichlet GRH or universal lower sign is claimed.

Exact mathematical consumer: WeilPhysicalSineNegativeReturn.NativeProjectedEnergyUpper
and the previously defined cofinal growth contradiction; the latter still
requires off-line source-test amplification and a cofinal all-mode arithmetic
lower budget. The present file does not manufacture these suppliers.

Source comparisons: CCM, Zeta Spectral Triples, arXiv:2511.22755v1,
(3.19)--(3.20); WeilOddSineForm.primeMatrix_quadratic_eq;
OddSchurAccounting.literal_pole_entry, zetaSineMatrix_quadratic;
OddPoleMoment.coshMomentRow_eq_zero;
OddPrimePoleOutput.integral_sine_mul_sinh;
WeilH1SourceContinuity.md (H1 continuity WRITTEN, not formalized).
Manual SOURCE_PROOF_CANDIDATE. Lean elaboration, full build, kernel checking,
transitive axiom audit, independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineArithmeticReturn

open OddRootProjection
open OddSineForm
open OddSchurAccounting
open OddPoleMoment
open OddPrimePoleOutput
open OddHighComplement
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.NumberTheory.WeilQuadraticForm.PhysicalSineNegativeReturn

/-- The even pole orientation is exactly zero on every literal odd sine
coordinate. Both original exponential moments were retained until here. -/
theorem pole_entry_eq_negative_sinh (T : ℝ) (hT : 0 < T)
    {M : ℕ} (i j : Fin M) :
    sinePoleEntry T (i.val + 1) (j.val + 1) =
      -2 * sinhMomentRow T M i * sinhMomentRow T M j := by
  rw [literal_pole_entry T M i j,
    coshMomentRow_eq_zero T hT i,
    coshMomentRow_eq_zero T hT j]
  ring

private theorem sine_sinh_integrable (T : ℝ) (n : ℕ) :
    Integrable (fun t : ℝ => zeroExtendedSine T n t * Real.sinh (t / 2)) := by
  have hshape :
      (fun t : ℝ => zeroExtendedSine T n t * Real.sinh (t / 2)) =
        (Icc (-T) T).indicator (fun t : ℝ =>
          (Real.sin (Real.pi * (n : ℝ) * t / T) / Real.sqrt T) *
            Real.sinh (t / 2)) := by
    funext t
    by_cases ht : t ∈ Icc (-T) T <;>
      simp [zeroExtendedSine, ht]
  rw [hshape, integrable_indicator_iff measurableSet_Icc]
  apply Continuous.integrableOn_Icc
  fun_prop

/-- The true original pole functional equals the Lebesgue pairing against
the odd sinh profile, for EVERY finite physical sine synthesis. -/
theorem finiteSine_sinh_moment (T : ℝ) (hT : 0 < T)
    {M : ℕ} (x : Fin M → ℝ) :
    sinhMomentRow T M ⬝ᵥ x =
      ∫ t : ℝ, finiteSine T x t * Real.sinh (t / 2) := by
  have hlin :
      (∫ t : ℝ, finiteSine T x t * Real.sinh (t / 2)) =
        ∑ i : Fin M, x i *
          (∫ t : ℝ, zeroExtendedSine T (i.val + 1) t *
            Real.sinh (t / 2)) := by
    calc
      _ = ∫ t : ℝ, ∑ i : Fin M,
          x i * (zeroExtendedSine T (i.val + 1) t *
            Real.sinh (t / 2)) := by
        apply integral_congr_ae
        filter_upwards [] with t
        change (∑ i : Fin M, x i * zeroExtendedSine T (i.val + 1) t) *
          Real.sinh (t / 2) = _
        rw [Finset.sum_mul]
        apply Finset.sum_congr rfl
        intro i _
        ring
      _ = _ := by
        rw [integral_finsetSum _ (fun i _ =>
          (sine_sinh_integrable T (i.val + 1)).const_mul (x i))]
        simp only [integral_const_mul]
  rw [hlin]
  unfold dotProduct
  apply Finset.sum_congr rfl
  intro i _
  rw [integral_sine_mul_sinh T hT i.val,
    sinhMomentRow_eq_sinePoleCoefficient T hT i]
  ring

/-- A weight-preserving prime operator. The original paired-character weights
are fed to this operator unchanged, including negative and ramified values. -/
def weightedPrimeMatrix (w : ℕ → ℝ) (T : ℝ) (M : ℕ) :
    Matrix (Fin M) (Fin M) ℝ :=
  fun i j => ∑ n ∈ activePrimePowers T,
    w n * sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log (n : ℝ))

/-- Actual real physical prime energy, retaining both shifts through the
factor 2 after the exact real-correlation symmetry. -/
def weightedPrimeEnergy (w : ℕ → ℝ) (T : ℝ) (f : ℝ → ℝ) : ℝ :=
  2 * ∑ n ∈ activePrimePowers T,
    w n * (∫ t : ℝ, f t * f (t + Real.log (n : ℝ)))

private theorem finite_shift_entry_sum_eq_correlation
    {M : ℕ} (T r : ℝ) (x : Fin M → ℝ) :
    (∑ i : Fin M, ∑ j : Fin M, (x i * x j) *
      sineShiftEntry T (i.val + 1) (j.val + 1) r) =
        2 * ∫ t : ℝ, finiteSine T x t * finiteSine T x (t + r) := by
  have hswap :
      (∑ i : Fin M, ∑ j : Fin M, (x i * x j) *
        sineCorrelation T (j.val + 1) (i.val + 1) r) =
      ∑ i : Fin M, ∑ j : Fin M, (x i * x j) *
        sineCorrelation T (i.val + 1) (j.val + 1) r := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    rw [mul_comm (x j) (x i)]
  simp only [sineShiftEntry, mul_add, Finset.sum_add_distrib]
  rw [hswap, integral_finiteSine_product]
  ring

/-- Exact whole-prime-source return for arbitrary REAL von Mangoldt/character
weights, not only for the untwisted zeta primeMatrix. -/
theorem weightedPrimeMatrix_quadratic_eq {M : ℕ}
    (w : ℕ → ℝ) (T : ℝ) (x : Fin M → ℝ) :
    quadratic (weightedPrimeMatrix w T M) x =
      weightedPrimeEnergy w T (finiteSine T x) := by
  unfold weightedPrimeEnergy
  have hsum : quadratic (weightedPrimeMatrix w T M) x =
      ∑ i : Fin M, ∑ j : Fin M, ∑ n ∈ activePrimePowers T,
        w n * ((x i * x j) *
          sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log (n : ℝ))) := by
    simp only [quadratic, weightedPrimeMatrix, Matrix.mulVec, dotProduct,
      Finset.mul_sum, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [hsum]
  calc
    _ = ∑ i : Fin M, ∑ n ∈ activePrimePowers T, ∑ j : Fin M,
        w n * ((x i * x j) *
          sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log (n : ℝ))) := by
      apply Finset.sum_congr rfl
      intro i _
      exact Finset.sum_comm
    _ = ∑ n ∈ activePrimePowers T, ∑ i : Fin M, ∑ j : Fin M,
        w n * ((x i * x j) *
          sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log (n : ℝ))) :=
      Finset.sum_comm
    _ = _ := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      calc
        _ = ∑ i : Fin M, w n * ∑ j : Fin M,
            (x i * x j) *
              sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log (n : ℝ)) := by
          simp only [Finset.mul_sum]
        _ = w n * ∑ i : Fin M, ∑ j : Fin M, (x i * x j) *
              sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log (n : ℝ)) :=
          (Finset.mul_sum _ _ _).symm
        _ = _ := by rw [finite_shift_entry_sum_eq_correlation]; ring

private theorem backward_correlation_eq_forward (f : ℝ → ℝ) (r : ℝ) :
    (∫ t : ℝ, f t * f (t - r)) =
      ∫ t : ℝ, f t * f (t + r) := by
  simpa only [add_sub_cancel_right, mul_comm] using
    (integral_add_right_eq_self (fun t : ℝ => f t * f (t - r)) r).symm

/-- All active prime powers retain their actual paired weights and BOTH
original translation orientations. No same-character phase is erased. -/
theorem weightedPrimeMatrix_quadratic_two_orientations {M : ℕ}
    (w : ℕ → ℝ) (T : ℝ) (x : Fin M → ℝ) :
    quadratic (weightedPrimeMatrix w T M) x =
      ∑ n ∈ activePrimePowers T, w n *
        ((∫ t : ℝ, finiteSine T x t *
          finiteSine T x (t + Real.log (n : ℝ))) +
         (∫ t : ℝ, finiteSine T x t *
          finiteSine T x (t - Real.log (n : ℝ)))) := by
  rw [weightedPrimeMatrix_quadratic_eq, weightedPrimeEnergy, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  rw [backward_correlation_eq_forward]
  ring

/-- Literal archimedean gamma-plus-constant block; no prime or pole terms. -/
def archBlockMatrix (T c : ℝ) (a M : ℕ) :
    Matrix (Fin M) (Fin M) ℝ :=
  fun i j => sineArchimedeanEntry T c a (i.val + 1) (j.val + 1)

def archPhysicalValue (c : ℝ) (a : ℕ) (f : ℝ → ℝ) : ℝ :=
  c * (∫ t : ℝ, (f t) ^ 2) +
    ∫ r in Ioi (0 : ℝ), parityKernel a r *
      (∫ t : ℝ, (f (t + r) - f t) ^ 2)

/-- The ONE remaining finite-sine source-return proposition. A written
finite-sum and gamma-integral argument exists, but no Lean theorem proving
this statement is imported here. It must not be treated as a certificate. -/
def GammaBlockReturn (T c : ℝ) (a M : ℕ) : Prop :=
  ∀ x : Fin M → ℝ,
    quadratic (archBlockMatrix T c a M) x =
      archPhysicalValue c a (finiteSine T x)

private theorem quadratic_sub (M : ℕ) (A B : Matrix (Fin M) (Fin M) ℝ)
    (x : Fin M → ℝ) :
    quadratic (A - B) x = quadratic A x - quadratic B x := by
  simp only [quadratic, Matrix.sub_mulVec, dotProduct_sub]

/-- All positive pole matrix directions disappear ONLY after the imported
genuine odd sine-cosh moment vanishing theorem is used. -/
theorem retainedCore_eq_arch_sub_prime (T : ℝ) (hT : 0 < T) (M : ℕ) :
    retainedCoreMatrix T M =
      archBlockMatrix T (gammaConstant 1 0) 0 M - primeMatrix T M := by
  ext i j
  rw [retainedCoreMatrix_entry T M i j,
    coshMomentRow_eq_zero T hT i, coshMomentRow_eq_zero T hT j]
  simp [archBlockMatrix, primeMatrix, Matrix.sub_apply]

private theorem integral_norm_sq_eq_sq (f : ℝ → ℝ) :
    (∫ t : ℝ, ‖f t‖ ^ 2) = ∫ t : ℝ, (f t) ^ 2 := by
  apply integral_congr_ae
  filter_upwards [] with t
  simp only [Real.norm_eq_abs, sq_abs]

/-- The COMPLETE zeta sine matrix has the exact ORIGINAL physical source
value, assuming only the explicitly supplied gamma-block return. The prime
energy and both signed pole orientations have been discharged above. -/
theorem zeta_matrix_eq_physical_of_gamma_return (T : ℝ) (hT : 0 < T)
    (M : ℕ)
    (hgamma : GammaBlockReturn T (gammaConstant 1 0) 0 M)
    (x : Fin M → ℝ) :
    quadratic (zetaSineMatrix T M) x =
      zetaOddPhysicalValue T (finiteSine T x) := by
  have hsource :
      quadratic (zetaSineMatrix T M) x =
        quadratic (archBlockMatrix T (gammaConstant 1 0) 0 M) x -
          quadratic (primeMatrix T M) x -
          2 * (sinhMomentRow T M ⬝ᵥ x) ^ 2 := by
    rw [zetaSineMatrix_quadratic,
      retainedCore_eq_arch_sub_prime T hT M,
      quadratic_sub]
  rw [hsource, hgamma x, primeMatrix_quadratic_eq,
    finiteSine_sinh_moment T hT x]
  unfold zetaOddPhysicalValue shiftedOddCoreEnergy oddArchimedeanEnergy
    archPhysicalValue
  rw [integral_norm_sq_eq_sq]
  ring

/-- Same original character-specific prime source, with no new modulus,
weight array, gamma parity or pole conventions. -/
theorem primitivePairSineMatrix_eq_arch_sub_weightedPrime {q : ℕ}
    [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1) (T : ℝ) (M : ℕ) :
    primitivePairSineMatrix chi hp hn T M =
      archBlockMatrix T (gammaConstant q (gammaParity chi))
        (gammaParity chi) M -
      weightedPrimeMatrix (pairedPrimeWeight chi) T M := by
  ext i j
  rfl

/-- The primitive nonprincipal conjugate-paired source returns exactly to
its physical form on each finite odd sine trial, with the sole gamma-block
return remaining explicit. This is NOT a pole-free zeta assertion. -/
theorem primitive_matrix_eq_physical_of_gamma_return
    {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (M : ℕ)
    (hgamma : GammaBlockReturn T (gammaConstant q (gammaParity chi))
      (gammaParity chi) M)
    (x : Fin M → ℝ) :
    quadratic (primitivePairSineMatrix chi hp hn T M) x =
      primitivePairedOddPhysicalValue chi hp hn T (finiteSine T x) := by
  rw [primitivePairSineMatrix_eq_arch_sub_weightedPrime,
    quadratic_sub, hgamma x,
    weightedPrimeMatrix_quadratic_two_orientations]
  unfold primitivePairedOddPhysicalValue archPhysicalValue
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineArithmeticReturn
