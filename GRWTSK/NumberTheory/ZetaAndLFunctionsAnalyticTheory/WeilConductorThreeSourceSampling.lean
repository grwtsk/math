/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeSourceModulus
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernelEnclosure

/-!
# Finite sampling of the complete conductor-three source

The sampled matrix uses the actual `sourceKernel`, including its complete
gamma integral. Its identity therefore depends on the spatial grid alone.
Finite gamma heads provide entry enclosures and quantitative estimates for
the source modulus; they do not replace the matrix whose sign is requested.

The modulus supplies whole-cell and integral errors, with the original
Lebesgue measure and complete complex moments. These errors decrease to
zero with spatial refinement. Approximation and entry enclosure alone do
not supply positivity or a family of accepted rational certificates.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open OddRootProjection
open GRWTSK.FunctionalAnalysis.IntegralKernelApproximation
open GRWTSK.FunctionalAnalysis.FiniteKernelEnclosure

@[simp]
theorem sourceKernel_zero : sourceKernel 0 = 0 := by
  have hi : (∫ r in Ioi (0 : ℝ), parityKernel 1 r * min (0 : ℝ) r) = 0 := by
    apply integral_eq_zero_of_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
    have hr0 : (0 : ℝ) ≤ r := le_of_lt hr
    simp only [min_eq_left hr0, mul_zero, Pi.zero_apply]
  simp only [sourceKernel, abs_zero, mul_zero, zero_div, hi,
    primeHinges_zero, sub_zero, add_zero]

@[simp]
theorem sourceKernel_neg (t : ℝ) : sourceKernel (-t) = sourceKernel t := by
  simp only [sourceKernel, abs_neg, primeHinges_neg]

/-- Exact samples of the complete integrated source. No gamma cutoff is
part of this matrix's identity. -/
def fullSampleMatrix (N : ℕ) : Matrix (Fin (N + 1)) (Fin (N + 1)) ℝ :=
  fun i j => sourceKernel (gridPoint N i - gridPoint N j)

/-- The exact complete-source matrix in the existing complex pairing API. -/
def complexFullSampleMatrix (N : ℕ) : Matrix (Fin (N + 1)) (Fin (N + 1)) ℂ :=
  fun i j => (fullSampleMatrix N i j : ℂ)

/-- Spatial price for the complete source, at the sum of the two exact
cell covering radii. A gamma cutoff only bounds this number externally. -/
def sourceSpatialBudget (N : ℕ) : ℝ :=
  sourceContinuityModulus (8 / (N + 1 : ℕ))

theorem sourceSpatialBudget_nonneg (N : ℕ) : 0 ≤ sourceSpatialBudget N := by
  exact sourceContinuityModulus_nonneg (by positivity)

@[simp]
theorem fullSampleMatrix_diagonal (N : ℕ) (i : Fin (N + 1)) :
    fullSampleMatrix N i i = 0 := by
  simp [fullSampleMatrix]

theorem fullSampleMatrix_symmetric (N : ℕ) (i j : Fin (N + 1)) :
    fullSampleMatrix N i j = fullSampleMatrix N j i := by
  unfold fullSampleMatrix
  rw [show gridPoint N i - gridPoint N j = -(gridPoint N j - gridPoint N i) by ring,
    sourceKernel_neg]

/-- The one-cell full-source matrix is exactly zero. Its spatial error
remains a separate, nonzero allowance. -/
theorem fullSampleMatrix_oneCell : fullSampleMatrix 0 = 0 := by
  ext i j
  have hi : i = 0 := by apply Fin.ext; omega
  have hj : j = 0 := by apply Fin.ext; omega
  subst i
  subst j
  simp [fullSampleMatrix]

/-- Every finite head bounds the same complete-source spatial price. -/
theorem sourceSpatialBudget_le (M N : ℕ) :
    sourceSpatialBudget N ≤ kernelApproximationBudget M N := by
  have h := sourceContinuityModulus_le M
    (show (0 : ℝ) ≤ 8 / (N + 1 : ℕ) by positivity)
  calc
    sourceSpatialBudget N ≤ partialLipschitzConstant M * (8 / (N + 1 : ℕ)) +
        truncationBudget M := h
    _ = kernelApproximationBudget M N := by
      unfold kernelApproximationBudget
      ring

/-- The proved modulus decreases as the concrete spatial grid is refined. -/
theorem sourceSpatialBudget_antitone : Antitone sourceSpatialBudget := by
  intro N K hNK
  apply sourceContinuityModulus_mono (by positivity)
  apply div_le_div_of_nonneg_left (by norm_num) (by positivity)
  exact_mod_cast Nat.succ_le_succ hNK

/-- Whole-square error for the actual complete-source matrix, including
the endpoint cells. The gamma cutoff is absent from the target. -/
theorem fullSampleMatrix_error (N : ℕ) {x y : ℝ}
    (hx : x ∈ Icc (-4 : ℝ) 4) (hy : y ∈ Icc (-4 : ℝ) 4) :
    |sourceKernel (x - y) - fullSampleMatrix N (gridCell N x) (gridCell N y)| ≤
      sourceSpatialBudget N := by
  have hdist : |(x - y) - (gridPoint N (gridCell N x) -
      gridPoint N (gridCell N y))| ≤ 8 / (N + 1 : ℕ) := by
    calc
      _ = |(x - gridPoint N (gridCell N x)) -
          (y - gridPoint N (gridCell N y))| := by congr 1; ring
      _ ≤ |x - gridPoint N (gridCell N x)| +
          |y - gridPoint N (gridCell N y)| := by
        simpa only [sub_eq_add_neg, abs_neg] using
          abs_add_le (x - gridPoint N (gridCell N x))
            (-(y - gridPoint N (gridCell N y)))
      _ ≤ 4 / (N + 1 : ℕ) + 4 / (N + 1 : ℕ) :=
        add_le_add (gridCell_error N hx) (gridCell_error N hy)
      _ = 8 / (N + 1 : ℕ) := by ring
  exact (abs_sourceKernel_sub_le_modulus (x - y)
    (gridPoint N (gridCell N x) - gridPoint N (gridCell N y))).trans
      (sourceContinuityModulus_mono (abs_nonneg _) hdist)

/-- The complete source and its finite-rank cell kernel use the same
complex convention as the established integral return. -/
theorem sourceKernel_fullSample_error (N : ℕ) {x y : ℝ}
    (hx : x ∈ Icc (-4 : ℝ) 4) (hy : y ∈ Icc (-4 : ℝ) 4) :
    ‖sourceConvolutionKernel x y -
      finiteKernel (cellFeature (gridCell N)) (complexFullSampleMatrix N) x y‖ ≤
      sourceSpatialBudget N := by
  rw [finiteKernel_cellFeature]
  change ‖(sourceKernel (x - y) : ℂ) -
    (fullSampleMatrix N (gridCell N x) (gridCell N y) : ℂ)‖ ≤ _
  rw [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
  exact fullSampleMatrix_error N hx hy

/-- Exact complex cell moments approximate the actual source integral.
The factor eight is the original window mass; no physical-energy norm is
substituted for the displayed input energy. -/
theorem sourceKernelForm_full_finite_error (N : ℕ) (u : ℝ → ℂ)
    (hu : Integrable u kernelWindow)
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) kernelWindow) :
    ‖sourceKernelForm u -
      (∑ i, ∑ j,
        conj (featureMoment kernelWindow (cellFeature (gridCell N)) u i) *
          complexFullSampleMatrix N i j *
          featureMoment kernelWindow (cellFeature (gridCell N)) u j)‖ ≤
      (8 * sourceSpatialBudget N) * ∫ x, ‖u x‖ ^ 2 ∂kernelWindow := by
  have hφ := integrable_cellFeature (gridCell N) u (gridCell_measurableSet N) hu
  have h := interval_kernelForm_error (A := (4 : ℝ)) (by norm_num)
    (sourceSpatialBudget_nonneg N) hu hu2
    (integrable_sourceKernelForm u hu)
    (integrable_finiteKernel (cellFeature (gridCell N)) (complexFullSampleMatrix N) u hφ)
    (fun _ hx _ hy => sourceKernel_fullSample_error N hx hy)
  rw [kernelForm_finiteKernel (cellFeature (gridCell N)) (complexFullSampleMatrix N) u hφ] at h
  norm_num only [show (2 : ℝ) * 4 = 8 by norm_num] at h
  exact h

/-- Refinement makes the complete-source spatial error eventually small.
The auxiliary finite head pays the estimate, not the sign target. -/
theorem sourceSpatialBudget_eventually_lt {ε : ℝ} (hε : 0 < ε) :
    ∃ N : ℕ, ∀ K : ℕ, N ≤ K → sourceSpatialBudget K < ε := by
  obtain ⟨M, N, hN⟩ := exists_kernelApproximationBudget_lt hε
  exact ⟨N, fun K hNK => (sourceSpatialBudget_antitone hNK).trans_lt
    ((sourceSpatialBudget_le M N).trans_lt hN)⟩

/-- One sufficiently fine grid and all subsequent grids work uniformly
on every point of the complete source square. -/
theorem fullSampleMatrix_uniform_approximation {ε : ℝ} (hε : 0 < ε) :
    ∃ N : ℕ, ∀ K : ℕ, N ≤ K →
      ∀ x ∈ Icc (-4 : ℝ) 4, ∀ y ∈ Icc (-4 : ℝ) 4,
      |sourceKernel (x - y) - fullSampleMatrix K (gridCell K x) (gridCell K y)| < ε := by
  obtain ⟨N, hN⟩ := sourceSpatialBudget_eventually_lt hε
  exact ⟨N, fun K hNK _ hx _ hy =>
    (fullSampleMatrix_error K hx hy).trans_lt (hN K hNK)⟩

/-- The full sampled matrices approximate the same original integral for
all L1/L2 inputs at once; their index is purely spatial. -/
theorem sourceKernelForm_uniform_fullSample_approximation {ε : ℝ} (hε : 0 < ε) :
    ∃ N : ℕ, ∀ K : ℕ, N ≤ K →
      ∀ u : ℝ → ℂ, Integrable u kernelWindow →
        Integrable (fun x => ‖u x‖ ^ 2) kernelWindow →
      ‖sourceKernelForm u -
        (∑ i, ∑ j,
          conj (featureMoment kernelWindow (cellFeature (gridCell K)) u i) *
            complexFullSampleMatrix K i j *
            featureMoment kernelWindow (cellFeature (gridCell K)) u j)‖ ≤
        ε * ∫ x, ‖u x‖ ^ 2 ∂kernelWindow := by
  obtain ⟨N, hN⟩ := sourceSpatialBudget_eventually_lt
    (div_pos hε (by norm_num : (0 : ℝ) < 8))
  refine ⟨N, fun K hNK u hu hu2 =>
    (sourceKernelForm_full_finite_error K u hu hu2).trans ?_⟩
  apply mul_le_mul_of_nonneg_right (by
    have hb := hN K hNK
    linarith : 8 * sourceSpatialBudget K ≤ ε)
  exact integral_nonneg (fun x => sq_nonneg ‖u x‖)

/-- Every exact full-source entry has a one-sided finite-head enclosure.
This is entry order, not matrix or quadratic-form order. -/
theorem fullSampleMatrix_sub_partial_bounds (M N : ℕ) (i j : Fin (N + 1)) :
    -truncationBudget M ≤ fullSampleMatrix N i j - sampleMatrix M N i j ∧
      fullSampleMatrix N i j - sampleMatrix M N i j ≤ 0 := by
  exact sourceKernel_sub_partial_bounds M (gridPoint N i - gridPoint N j)

/-- Uniform entry uncertainty for executable finite-head arithmetic. -/
theorem abs_fullSampleMatrix_sub_partial_le (M N : ℕ) (i j : Fin (N + 1)) :
    |fullSampleMatrix N i j - sampleMatrix M N i j| ≤ truncationBudget M := by
  exact abs_sourceKernel_sub_partial_le M (gridPoint N i - gridPoint N j)

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
