/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.FunctionalAnalysis.FiniteKernelEnclosure
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.MeasureTheory.Measure.Real

/-!
# Energy bounds for exact finite-partition moments

Cauchy--Schwarz on each restricted cell bounds the squared norm of its
actual integral by cell mass times cell energy. Summing over a measurable
finite partition gives a bound by the largest cell mass times the original
energy. This is a bound for exact moments of every L1/L2 input, with no
projection or point-sampling hypothesis.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped BigOperators

namespace GRWTSK.FunctionalAnalysis.CellMomentEnergy

open IntegralKernelApproximation FiniteKernelEnclosure

variable {X ι : Type*} [MeasurableSpace X] {μ : Measure X} [IsFiniteMeasure μ]

/-- The integral over one complete cell pays its actual mass. This also
handles null cells, without dividing by their measure. -/
theorem norm_setIntegral_sq_le_mass_energy (s : Set X) {u : X → ℂ}
    (hu : Integrable u μ) (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ) :
    ‖∫ x in s, u x ∂μ‖ ^ 2 ≤
      μ.real s * ∫ x in s, ‖u x‖ ^ 2 ∂μ := by
  have hn := norm_integral_le_integral_norm (fun x => u x) (μ := μ.restrict s)
  have hnonneg : 0 ≤ ∫ x in s, ‖u x‖ ∂μ := integral_nonneg (fun x => norm_nonneg _)
  have hsquare : ‖∫ x in s, u x ∂μ‖ ^ 2 ≤ (∫ x in s, ‖u x‖ ∂μ) ^ 2 := by
    nlinarith [norm_nonneg (∫ x in s, u x ∂μ)]
  have hCS := l1_sq_le_mass_l2 (μ := μ.restrict s) hu.integrableOn hu2.integrableOn
  simpa only [measureReal_restrict_apply_univ] using hsquare.trans hCS

variable [Fintype ι] [DecidableEq ι]

/-- The exact nonnegative cell energies add to the original energy. -/
theorem sum_cellEnergy (cell : X → ι) {u : X → ℂ}
    (hcell : ∀ i, MeasurableSet {x | cell x = i})
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ) :
    (∑ i, ∫ x in {x | cell x = i}, ‖u x‖ ^ 2 ∂μ) =
      ∫ x, ‖u x‖ ^ 2 ∂μ := by
  have hdisj : Pairwise (fun i j : ι =>
      Disjoint {x | cell x = i} {x | cell x = j}) := by
    intro i j hij
    apply Set.disjoint_left.mpr
    intro x hxi hxj
    exact hij (hxi.symm.trans hxj)
  have hcover : (⋃ i : ι, {x | cell x = i}) = Set.univ := by
    ext x
    simp
  have h := integral_iUnion_fintype hcell hdisj (fun i => hu2.integrableOn)
  simpa only [hcover, setIntegral_univ] using h.symm

/-- The weighted estimate retains each cell's actual measure. -/
theorem sum_cellMoment_sq_le_weighted_energy (cell : X → ι) {u : X → ℂ}
    (hcell : ∀ i, MeasurableSet {x | cell x = i})
    (hu : Integrable u μ) (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ) :
    (∑ i, ‖featureMoment μ (cellFeature cell) u i‖ ^ 2) ≤
      ∑ i, μ.real {x | cell x = i} * ∫ x in {x | cell x = i}, ‖u x‖ ^ 2 ∂μ := by
  apply Finset.sum_le_sum
  intro i _
  rw [featureMoment_cellFeature cell u i (hcell i)]
  exact norm_setIntegral_sq_le_mass_energy _ hu hu2

/-- A uniform upper bound on the cell masses bounds all exact moments at
once. The input need not lie in the span of the cell indicators. -/
theorem sum_cellMoment_sq_le (cell : X → ι) {u : X → ℂ} {h : ℝ}
    (hcell : ∀ i, MeasurableSet {x | cell x = i})
    (hu : Integrable u μ) (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ)
    (hmass : ∀ i, μ.real {x | cell x = i} ≤ h) :
    (∑ i, ‖featureMoment μ (cellFeature cell) u i‖ ^ 2) ≤
      h * ∫ x, ‖u x‖ ^ 2 ∂μ := by
  calc
    _ ≤ ∑ i, μ.real {x | cell x = i} *
        ∫ x in {x | cell x = i}, ‖u x‖ ^ 2 ∂μ :=
      sum_cellMoment_sq_le_weighted_energy cell hcell hu hu2
    _ ≤ ∑ i, h * ∫ x in {x | cell x = i}, ‖u x‖ ^ 2 ∂μ := by
      apply Finset.sum_le_sum
      intro i _
      exact mul_le_mul_of_nonneg_right (hmass i) (integral_nonneg (fun x => sq_nonneg _))
    _ = h * ∫ x, ‖u x‖ ^ 2 ∂μ := by
      rw [← Finset.mul_sum, sum_cellEnergy cell hcell hu2]

end GRWTSK.FunctionalAnalysis.CellMomentEnergy
