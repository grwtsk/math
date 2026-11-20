/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.FunctionalAnalysis.FiniteKernelEnclosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernelTruncation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernelSampling

/-!
# Certified finite approximations to the actual conductor-three kernel form

The source, character, prime cutoff and gamma integral are the maintained
radius-four definitions. The finite exponential head and the finite spatial
matrix are separate approximations. Their errors are proved and combined
before the existing rational matrix checker is used.

All integrals use the original Lebesgue measure on [-4,4]. The test input is
`u`; if an application supplies `u = f'`, the error is derivative energy.
No derivative/source integration-by-parts identity, physical Green-metric
comparison, matrix certificate producer or arithmetic sign is assumed proved
by this module. Arbitrarily fine approximation is not positivity.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open GRWTSK.FunctionalAnalysis.IntegralKernelApproximation
open GRWTSK.FunctionalAnalysis.FiniteKernelEnclosure
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- The fixed window of the source; the prime cutoff is not enlarged. -/
abbrev kernelWindow : Measure ℝ := volume.restrict (Icc (-4 : ℝ) 4)

/-- The actual uncentered integrated convolution kernel. -/
def sourceConvolutionKernel (x y : ℝ) : ℂ := (sourceKernel (x - y) : ℂ)

/-- The signed source pairing, conjugate-linear in the first input. -/
def sourceKernelForm (u : ℝ → ℂ) : ℂ :=
  kernelForm kernelWindow sourceConvolutionKernel u u

/-- Exact real source samples, embedded in the full complex matrix API. -/
def complexSampleMatrix (M N : ℕ) : Matrix (Fin (N + 1)) (Fin (N + 1)) ℂ :=
  fun i j => (sampleMatrix M N i j : ℂ)

/-- Entire gamma-tail cost plus whole-cell spatial sampling cost. Rational
entry enclosure errors are paid separately by the existing matrix checker. -/
def kernelApproximationBudget (M N : ℕ) : ℝ :=
  truncationBudget M + 8 * partialLipschitzConstant M / (N + 1 : ℕ)

theorem kernelApproximationBudget_pos (M N : ℕ) :
    0 < kernelApproximationBudget M N := by
  exact add_pos_of_pos_of_nonneg (truncationBudget_pos M)
    (div_nonneg (mul_nonneg (by norm_num) (partialLipschitzConstant_nonneg M))
      (Nat.cast_nonneg _))

/-- The complete integrated source has a genuine uniform bound on the
radius-four square. Its measurability and L1 pairing integrability follow
from the actual source definitions and the proved gamma-tail estimate. -/
theorem sourceConvolutionKernel_bound {x y : ℝ}
    (hx : x ∈ Icc (-4 : ℝ) 4) (hy : y ∈ Icc (-4 : ℝ) 4) :
    ‖sourceConvolutionKernel x y‖ ≤
      truncationBudget 0 + 8 * partialLipschitzConstant 0 := by
  have hd : |x - y| ≤ (8 : ℝ) := by
    rw [abs_le]
    constructor <;> linarith [hx.1, hx.2, hy.1, hy.2]
  have hp := abs_partialSourceKernel_sub_le 0 (x - y) 0
  simp only [partialSourceKernel_zero, sub_zero] at hp
  have ht := abs_sourceKernel_sub_partial_le 0 (x - y)
  have htri : |sourceKernel (x - y)| ≤
      |sourceKernel (x - y) - partialSourceKernel 0 (x - y)| +
        |partialSourceKernel 0 (x - y)| := by
    simpa only [sub_add_cancel] using
      abs_add_le (sourceKernel (x - y) - partialSourceKernel 0 (x - y))
        (partialSourceKernel 0 (x - y))
  change ‖(sourceKernel (x - y) : ℂ)‖ ≤ _
  rw [Complex.norm_real, Real.norm_eq_abs]
  have hbound := mul_le_mul_of_nonneg_left hd (partialLipschitzConstant_nonneg 0)
  linarith

theorem integrable_sourceKernelForm (u : ℝ → ℂ) (hu : Integrable u kernelWindow) :
    Integrable (integrand sourceConvolutionKernel u u) (kernelWindow.prod kernelWindow) := by
  apply integrable_integrand_of_bound (ε := truncationBudget 0 +
    8 * partialLipschitzConstant 0) hu hu
  · exact (Complex.continuous_ofReal.measurable.comp
      (measurable_sourceKernel.comp (measurable_fst.sub measurable_snd))).aestronglyMeasurable
  · rw [Measure.prod_restrict]
    filter_upwards [ae_restrict_mem (measurableSet_Icc.prod measurableSet_Icc)] with p hp
    exact sourceConvolutionKernel_bound hp.1 hp.2

/-- Actual source-to-finite-rank error on every point of the square. The
finite matrix uses whole cells, not finitely many tests of a kernel error. -/
theorem sourceKernel_sample_error (M N : ℕ) {x y : ℝ}
    (hx : x ∈ Icc (-4 : ℝ) 4) (hy : y ∈ Icc (-4 : ℝ) 4) :
    ‖sourceConvolutionKernel x y -
      finiteKernel (cellFeature (gridCell N)) (complexSampleMatrix M N) x y‖ ≤
      kernelApproximationBudget M N := by
  rw [finiteKernel_cellFeature]
  change ‖(sourceKernel (x - y) : ℂ) -
    (sampleMatrix M N (gridCell N x) (gridCell N y) : ℂ)‖ ≤ _
  rw [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
  rw [show sourceKernel (x - y) - sampleMatrix M N (gridCell N x) (gridCell N y) =
    (sourceKernel (x - y) - partialSourceKernel M (x - y)) +
      (partialSourceKernel M (x - y) - sampleMatrix M N (gridCell N x) (gridCell N y)) by ring]
  exact (abs_add_le (sourceKernel (x - y) - partialSourceKernel M (x - y))
    (partialSourceKernel M (x - y) - sampleMatrix M N (gridCell N x) (gridCell N y))).trans
      (add_le_add (abs_sourceKernel_sub_partial_le M (x - y))
        (sampleMatrix_error M N hx hy))

/-- The exact finite quadratic in complete cell moments approximates the
actual source pairing uniformly for all L1/L2 test inputs. -/
theorem sourceKernelForm_finite_error (M N : ℕ) (u : ℝ → ℂ)
    (hu : Integrable u kernelWindow)
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) kernelWindow) :
    ‖sourceKernelForm u -
      (∑ i, ∑ j,
        conj (featureMoment kernelWindow (cellFeature (gridCell N)) u i) *
          complexSampleMatrix M N i j *
          featureMoment kernelWindow (cellFeature (gridCell N)) u j)‖ ≤
      (8 * kernelApproximationBudget M N) * ∫ x, ‖u x‖ ^ 2 ∂kernelWindow := by
  have hφ := integrable_cellFeature (gridCell N) u (gridCell_measurableSet N) hu
  have h := interval_kernelForm_error (A := (4 : ℝ)) (by norm_num)
    (kernelApproximationBudget_pos M N).le hu hu2
    (integrable_sourceKernelForm u hu)
    (integrable_finiteKernel (cellFeature (gridCell N)) (complexSampleMatrix M N) u hφ)
    (fun _ hx _ hy => sourceKernel_sample_error M N hx hy)
  rw [kernelForm_finiteKernel (cellFeature (gridCell N)) (complexSampleMatrix M N) u hφ] at h
  norm_num only [show (2 : ℝ) * 4 = 8 by norm_num] at h
  exact h

/-- The unchanged rational checker now returns to the actual signed kernel
integral. Its tolerance and complete metric remain visible; entry radii
are already paid in the checker's row-penalty target. -/
theorem checked_sourceKernelForm_lower {ν : Type*} [Fintype ν]
    (M N : ℕ) (P : Packet (Fin (N + 1) ⊕ Fin (N + 1)))
    (C : Certificate ℚ (Fin (N + 1) ⊕ Fin (N + 1)) Empty Empty ν)
    (u : ℝ → ℂ) (hu : Integrable u kernelWindow)
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) kernelWindow)
    (hencloses : Encloses P (realification (complexSampleMatrix M N)))
    (hcheck : intervalCheck P C = true) :
    -(P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ))
      (splitVector (featureMoment kernelWindow (cellFeature (gridCell N)) u)) -
      (8 * kernelApproximationBudget M N) * (∫ x, ‖u x‖ ^ 2 ∂kernelWindow) ≤
        (sourceKernelForm u).re := by
  have hb : ∀ᵐ p ∂kernelWindow.prod kernelWindow,
      ‖sourceConvolutionKernel p.1 p.2 -
        finiteKernel (cellFeature (gridCell N)) (complexSampleMatrix M N) p.1 p.2‖ ≤
        kernelApproximationBudget M N := by
    rw [Measure.prod_restrict]
    filter_upwards [ae_restrict_mem (measurableSet_Icc.prod measurableSet_Icc)] with p hp
    exact sourceKernel_sample_error M N hp.1 hp.2
  have h := checked_kernel_lower P C (cellFeature (gridCell N))
    (complexSampleMatrix M N) sourceConvolutionKernel u
    (kernelApproximationBudget_pos M N).le hu hu2
    (integrable_cellFeature (gridCell N) u (gridCell_measurableSet N) hu)
    (integrable_sourceKernelForm u hu) hb hencloses hcheck
  have hm : kernelWindow.real Set.univ = 8 := by
    calc
      kernelWindow.real Set.univ = 2 * (4 : ℝ) := interval_mass (by norm_num)
      _ = 8 := by norm_num
  rw [hm, mul_comm (kernelApproximationBudget M N) 8] at h
  exact h

/-- All-accuracy approximation has a proved producer: first choose the
gamma cutoff and then the spatial grid. This does not produce a positive
matrix or an accepted sign certificate. -/
theorem exists_kernelApproximationBudget_lt {ε : ℝ} (hε : 0 < ε) :
    ∃ M N : ℕ, kernelApproximationBudget M N < ε := by
  obtain ⟨M, hM⟩ := exists_nat_one_div_lt (half_pos hε)
  have htail : truncationBudget M < ε / 2 := by
    apply lt_of_le_of_lt ?_ hM
    unfold truncationBudget
    apply one_div_le_one_div_of_le (by positivity)
    have hm0 : (0 : ℝ) ≤ M := Nat.cast_nonneg M
    linarith
  obtain ⟨N, hN⟩ := exists_nat_gt (16 * partialLipschitzConstant M / ε)
  have hn : 16 * partialLipschitzConstant M < (N : ℝ) * ε :=
    (div_lt_iff₀ hε).mp hN
  have hspace : 8 * partialLipschitzConstant M / (N + 1 : ℕ) < ε / 2 := by
    apply (div_lt_iff₀ (by positivity : (0 : ℝ) < (N + 1 : ℕ))).mpr
    push_cast
    nlinarith
  exact ⟨M, N, by unfold kernelApproximationBudget; linarith⟩

/-- The chosen finite rank works at the requested accuracy for every input
simultaneously. The norm is the stated L2 norm of u, not a substituted norm. -/
theorem sourceKernelForm_uniform_finite_approximation {ε : ℝ} (hε : 0 < ε) :
    ∃ M N : ℕ, ∀ u : ℝ → ℂ, Integrable u kernelWindow →
      Integrable (fun x => ‖u x‖ ^ 2) kernelWindow →
      ‖sourceKernelForm u -
        (∑ i, ∑ j,
          conj (featureMoment kernelWindow (cellFeature (gridCell N)) u i) *
            complexSampleMatrix M N i j *
            featureMoment kernelWindow (cellFeature (gridCell N)) u j)‖ ≤
        ε * ∫ x, ‖u x‖ ^ 2 ∂kernelWindow := by
  obtain ⟨M, N, hb⟩ := exists_kernelApproximationBudget_lt (div_pos hε (by norm_num : (0 : ℝ) < 8))
  refine ⟨M, N, fun u hu hu2 => (sourceKernelForm_finite_error M N u hu hu2).trans ?_⟩
  apply mul_le_mul_of_nonneg_right (by linarith : 8 * kernelApproximationBudget M N ≤ ε)
  exact integral_nonneg (fun x => sq_nonneg ‖u x‖)

namespace OneCell

/-- A literal rational packet for the actual one-cell sample matrix. -/
def packet : Packet (Fin 1 ⊕ Fin 1) where
  center := 0
  radius := 0
  metric := 0
  tolerance := 0

/-- Empty Gram rows certify precisely the zero finite matrix. -/
def certificate : Certificate ℚ (Fin 1 ⊕ Fin 1) Empty Empty Empty where
  gram := 0
  equalityMultipliers := Empty.elim
  inequalityMultipliers := Empty.elim

/-- Actual kernel-reduced rational acceptance; no native evaluator is used. -/
theorem checks : intervalCheck packet certificate = true := by decide +kernel

/-- Source enclosure is proved separately from rational checker acceptance. -/
theorem encloses (M : ℕ) : Encloses packet (realification (complexSampleMatrix M 0)) := by
  have hzero : complexSampleMatrix M 0 = 0 := by
    ext i j
    simp [complexSampleMatrix, sampleMatrix_oneCell M]
  rw [hzero]
  intro i j
  cases i <;> cases j <;> norm_num [packet, realification, Matrix.fromBlocks]

/-- A passing zero-matrix check still pays the complete source approximation
error. This fixture does not claim nonnegativity of the source form. -/
theorem source_lower (M : ℕ) (u : ℝ → ℂ) (hu : Integrable u kernelWindow)
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) kernelWindow) :
    -(8 * kernelApproximationBudget M 0) * (∫ x, ‖u x‖ ^ 2 ∂kernelWindow) ≤
      (sourceKernelForm u).re := by
  have h := checked_sourceKernelForm_lower M 0 packet certificate u hu hu2 (encloses M) checks
  simpa [packet, neg_mul] using h

end OneCell

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
