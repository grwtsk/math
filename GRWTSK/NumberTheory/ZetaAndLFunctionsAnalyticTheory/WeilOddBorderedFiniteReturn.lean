/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBorderedExpansion

/-!
# Exact finite compression of the shifted odd bordered energy

Pair the physical output with the finite sine trial. Its integral gives
the shifted core energy and one orientation of the pole coupling. Its
sine coefficients give the physical rows of the shifted bordered source
matrix. The literal sinh moment supplies the other orientation and the
scalar diagonal contributes `a^2/2` for every shift. The pure scalar
trial therefore has energy `a^2/2`, including when the physical block
is empty.

The return identifies the exact trial value consumed by the full-form
Schur expansion. Analytic transfer to the completed zeta source,
independent analytical review, and novelty assessment remain separate.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddBorderedFiniteReturn

open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver
open LowSchur OddRootProjection OddSineForm OddSineParseval OddShiftEnergy OddGammaOutput
open OddPrimePoleOutput OddConcreteResidual OddSchurAccounting OddResidualSourceComparison
open OddPoleMoment OddHighComplement OddBorderedExpansion

private theorem integral_finiteSine_mul {M : ℕ} (T : ℝ) (x : Fin M → ℝ) (g : ℝ → ℝ)
    (hg : ∀ i : Fin M, Integrable (fun t => zeroExtendedSine T (i.val + 1) t * g t)) :
    (∫ t : ℝ, finiteSine T x t * g t) = ∑ i, x i * sineCoefficient T g (i.val + 1) := by
  calc
    _ = ∫ t : ℝ, ∑ i : Fin M, x i * (zeroExtendedSine T (i.val + 1) t * g t) := by
      simp only [finiteSine, Finset.sum_mul, mul_assoc]
    _ = _ := by
      rw [integral_finsetSum _ (fun i _ => (hg i).const_mul (x i))]
      simp only [integral_const_mul, sineCoefficient]

private theorem finiteSine_sinh_moment {M : ℕ} (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ) :
    (∫ t : ℝ, finiteSine T x t * Real.sinh (t / 2)) = sinhMomentRow T M ⬝ᵥ x := by
  rw [integral_finiteSine_mul]
  · simp only [sineCoefficient, integral_sine_mul_sinh T hT, dotProduct,
      sinhMomentRow_eq_sinePoleCoefficient T hT]
    apply Finset.sum_congr rfl
    intro i _
    ring
  · intro i
    have h : (fun t : ℝ => zeroExtendedSine T (i.val + 1) t * Real.sinh (t / 2)) =
        (Icc (-T) T).indicator (fun t : ℝ =>
          (Real.sin (Real.pi * ((i.val + 1 : ℕ) : ℝ) * t / T) / Real.sqrt T) *
          Real.sinh (t / 2)) := by
      funext t
      by_cases ht : t ∈ Icc (-T) T <;> simp [zeroExtendedSine, ht]
    rw [h, integrable_indicator_iff measurableSet_Icc]
    apply Continuous.integrableOn_Icc
    fun_prop

private theorem sum_fin_succ_eq_sum_Icc {M : ℕ} (f : ℕ → ℝ) :
    (∑ i : Fin M, f (i.val + 1)) = ∑ n ∈ Finset.Icc 1 M, f n := by
  rw [← Finset.Ico_add_one_right_eq_Icc, Finset.sum_Ico_eq_sum_range,
    Fin.sum_univ_eq_sum_range (fun i : ℕ => f (i + 1))]
  simp only [Nat.add_sub_cancel, Nat.add_comm 1]

private theorem sineCoefficient_borderedTrialOutput_eq_row {M : ℕ} (T : ℝ) (hT : 0 < T)
    (β : ℝ) (x : Fin M → ℝ) (a : ℝ) (i : Fin M) :
    sineCoefficient T (borderedTrialOutput T β x a) (i.val + 1) =
      ((retainedCoreMatrix T M - β • 1) *ᵥ x) i + sinhMomentRow T M i * a := by
  let xn (n : ℕ) : ℝ := if h : n - 1 < M then x ⟨n - 1, h⟩ else 0
  have hx (j : Fin M) : xn (j.val + 1) = x j := by simp [xn, j.isLt]
  have h := sineCoefficient_borderedTrialOutput T hT β xn a i.val (M := M)
  simp_rw [hx] at h
  rw [h, literalAugmentedRow, ← sum_fin_succ_eq_sum_Icc, Matrix.mulVec, dotProduct]
  simp only [hx, Matrix.sub_apply, Matrix.smul_apply, smul_eq_mul]
  rw [show literalPoleEntry T (i.val + 1) = sinhMomentRow T M i by rfl]
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  rw [retainedCoreMatrix_eq_literalCoreEntry T hT]
  by_cases hij : i = j
  · subst j
    simp [mul_comm]
  · have hne : i.val ≠ j.val := fun h => hij (Fin.ext h)
    simp [hne, hij, mul_comm]

/-- The literal finite trial value is the exact source matrix quadratic with
the spectral shift on the physical coordinates. -/
theorem shiftedOddBorderedEnergy_finiteSine_eq_quadratic {M : ℕ} (T : ℝ) (hT : 0 < T)
    (β : ℝ) (x : Fin M → ℝ) (a : ℝ) :
    shiftedOddBorderedEnergy T β (finiteSine T x) a =
      quadratic (shiftedBlock (borderedSourceMatrix T M) poleShiftMetric β)
        (Sum.elim x fun _ => a) := by
  have hf := finiteSine_memLp T x
  obtain ⟨K, hK⟩ := finiteSine_exists_lipschitzWith T hT x
  have hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → finiteSine T x t = 0 :=
    Filter.Eventually.of_forall (fun _ ht => finiteSine_eq_zero_off_window T x ht)
  have hprime :
      (∫ t : ℝ, finiteSine T x t * primeOutput T (finiteSine T x) t) =
        primeEnergy T (finiteSine T x) := by
    rw [integral_mul_primeOutput T hf hf, primeEnergy, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro q _
    ring
  have hpair := integral_mul_borderedTrialOutput T hT β x a hf hK.continuous.measurable hsupport
  simp only [hprime, ← pow_two] at hpair
  rw [← oddArchimedeanEnergy, finiteSine_sinh_moment T hT x] at hpair
  have hrows :
      (∫ t : ℝ, finiteSine T x t * borderedTrialOutput T β x a t) =
        quadratic (retainedCoreMatrix T M - β • 1) x + a * (sinhMomentRow T M ⬝ᵥ x) := by
    rw [integral_finiteSine_mul T x _ (fun i =>
      (memLp_zeroExtendedSine T (i.val + 1)).integrable_mul (borderedTrialOutput_memLp T hT β x a))]
    simp_rw [sineCoefficient_borderedTrialOutput_eq_row T hT β x a, mul_add,
      Finset.sum_add_distrib]
    rw [quadratic, dotProduct, dotProduct, Finset.mul_sum]
    congr 1
    apply Finset.sum_congr rfl
    intro i _
    ring
  rw [hrows] at hpair
  have hcore :
      shiftedOddCoreEnergy T β (finiteSine T x) = quadratic (retainedCoreMatrix T M - β • 1) x := by
    simp only [shiftedOddCoreEnergy, Real.norm_eq_abs, sq_abs]
    linarith only [hpair]
  rw [shiftedOddBorderedEnergy, hcore, finiteSine_sinh_moment T hT x, borderedSourceMatrix,
    shiftedBlock_poleBorderedBlock, poleBorderedBlock_quadratic]
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.OddBorderedFiniteReturn
