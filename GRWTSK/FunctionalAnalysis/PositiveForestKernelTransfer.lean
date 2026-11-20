/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionalAnalysis.FiniteKernelEnclosure

/-!
# Positive finite certificates with a complete integral-kernel return

A finite quadratic lower bound is returned to the actual kernel integral,
paying both its residual and the whole-cell kernel error. The feature-moment
bound is proved for normalized measurable finite partitions from per-cell
Cauchy--Schwarz and exact additivity of the cell energies. No positivity of a
Weil source, Suzuki source identity, or all-resolution certificate producer is
assumed proved here.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.FunctionalAnalysis.PositiveForestKernelTransfer

open IntegralKernelApproximation FiniteKernelEnclosure
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates

variable {X ι : Type*} [MeasurableSpace X] [Fintype ι] [DecidableEq ι]
  {μ : Measure X} [IsFiniteMeasure μ]

/-- Real mass of one complete measurable cell. -/
def cellMass (μ : Measure X) (cell : X → ι) (i : ι) : ℝ :=
  μ.real {x | cell x = i}

/-- Unit-L2 normalization of partition indicators; strictly positive cell
masses are required by the Bessel theorem below. -/
def normalizedCellFeature (μ : Measure X) (cell : X → ι)
    (i : ι) (x : X) : ℂ :=
  (((Real.sqrt (cellMass μ cell i))⁻¹ : ℝ) : ℂ) * cellFeature cell i x

/-- Normalization is retained explicitly in each finite-kernel entry. -/
theorem finiteKernel_normalizedCellFeature (cell : X → ι)
    (H : Matrix ι ι ℂ) (x y : X) :
    finiteKernel (normalizedCellFeature μ cell) H x y =
      (((Real.sqrt (cellMass μ cell (cell x)))⁻¹ : ℝ) : ℂ) *
        H (cell x) (cell y) *
          (((Real.sqrt (cellMass μ cell (cell y)))⁻¹ : ℝ) : ℂ) := by
  have hstar (j : ι) : conj (cellFeature cell j y) = cellFeature cell j y := by
    by_cases hj : cell y = j <;> simp [cellFeature, hj]
  simp only [finiteKernel, normalizedCellFeature, map_mul, Complex.conj_ofReal]
  simp_rw [hstar]
  simp [cellFeature, mul_ite, ite_mul]

/-- The matrix entries must carry the square roots of both cell masses.
For equal masses `h`, this is precisely the matrix `h * sampleMatrix`. -/
theorem finiteKernel_massWeighted (cell : X → ι) (S : Matrix ι ι ℂ)
    (hmass : ∀ i, 0 < cellMass μ cell i) (x y : X) :
    finiteKernel (normalizedCellFeature μ cell)
      (Matrix.of fun i j => ((Real.sqrt (cellMass μ cell i) *
        Real.sqrt (cellMass μ cell j) : ℝ) : ℂ) * S i j) x y =
      S (cell x) (cell y) := by
  have h := finiteKernel_normalizedCellFeature (μ := μ) cell
    (Matrix.of fun i j => ((Real.sqrt (cellMass μ cell i) *
      Real.sqrt (cellMass μ cell j) : ℝ) : ℂ) * S i j) x y
  rw [h]
  have hx : (Real.sqrt (cellMass μ cell (cell x)) : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (ne_of_gt (Real.sqrt_pos.mpr (hmass (cell x))))
  have hy : (Real.sqrt (cellMass μ cell (cell y)) : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (ne_of_gt (Real.sqrt_pos.mpr (hmass (cell y))))
  simp only [Matrix.of_apply, Complex.ofReal_inv, Complex.ofReal_mul]
  field_simp [hx, hy] <;> ring

omit [Fintype ι] [IsFiniteMeasure μ] in
/-- Normalized moments are the complete cell integrals divided by the square
root of the cell mass, including their complex phase. -/
theorem featureMoment_normalizedCellFeature (cell : X → ι) (u : X → ℂ) (i : ι)
    (hcell : MeasurableSet {x | cell x = i}) :
    featureMoment μ (normalizedCellFeature μ cell) u i =
      (((Real.sqrt (cellMass μ cell i))⁻¹ : ℝ) : ℂ) *
        ∫ x in {x | cell x = i}, u x ∂μ := by
  unfold featureMoment normalizedCellFeature
  simp only [map_mul, Complex.conj_ofReal]
  simp_rw [mul_assoc]
  rw [integral_const_mul]
  change _ * featureMoment μ (cellFeature cell) u i = _
  rw [featureMoment_cellFeature cell u i hcell]

omit [Fintype ι] [IsFiniteMeasure μ] in
/-- Integrability of normalized feature observables is inherited from the
test function and measurability of each cell. -/
theorem integrable_normalizedCellFeature (cell : X → ι) (u : X → ℂ)
    (hcell : ∀ i, MeasurableSet {x | cell x = i})
    (hu : Integrable u μ) (i : ι) :
    Integrable (fun x => conj (normalizedCellFeature μ cell i x) * u x) μ := by
  have h := (integrable_cellFeature cell u hcell hu i).const_mul
    ((((Real.sqrt (cellMass μ cell i))⁻¹ : ℝ) : ℂ))
  simpa only [normalizedCellFeature, map_mul, Complex.conj_ofReal, mul_assoc] using h

/-- Cauchy--Schwarz on one whole cell; this is an actual integral estimate. -/
theorem norm_cellIntegral_sq_le (cell : X → ι) (u : X → ℂ) (i : ι)
    (hu : Integrable u μ) (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ) :
    ‖∫ x in {x | cell x = i}, u x ∂μ‖ ^ 2 ≤
      cellMass μ cell i * ∫ x in {x | cell x = i}, ‖u x‖ ^ 2 ∂μ := by
  have hcs := l1_sq_le_mass_l2 (μ := μ.restrict {x | cell x = i})
    hu.restrict hu2.restrict
  rw [measureReal_restrict_apply_univ] at hcs
  have hn : ‖∫ x in {x | cell x = i}, u x ∂μ‖ ≤
      ∫ x in {x | cell x = i}, ‖u x‖ ∂μ := norm_integral_le_integral_norm _
  have hprod := mul_nonneg (sub_nonneg.mpr hn)
    (add_nonneg (integral_nonneg (μ := μ.restrict {x | cell x = i})
      (fun x => norm_nonneg (u x)))
      (norm_nonneg (∫ x in {x | cell x = i}, u x ∂μ)))
  change _ ≤ μ.real {x | cell x = i} * _
  nlinarith

/-- Each normalized cell moment costs no more than that cell's L2 energy. -/
theorem normalizedCellMoment_sq_le (cell : X → ι) (u : X → ℂ) (i : ι)
    (hcell : MeasurableSet {x | cell x = i}) (hmass : 0 < cellMass μ cell i)
    (hu : Integrable u μ) (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ) :
    ‖featureMoment μ (normalizedCellFeature μ cell) u i‖ ^ 2 ≤
      ∫ x in {x | cell x = i}, ‖u x‖ ^ 2 ∂μ := by
  rw [featureMoment_normalizedCellFeature cell u i hcell]
  calc
    ‖(((Real.sqrt (cellMass μ cell i))⁻¹ : ℝ) : ℂ) *
        ∫ x in {x | cell x = i}, u x ∂μ‖ ^ 2 =
        (Real.sqrt (cellMass μ cell i))⁻¹ ^ 2 *
          ‖∫ x in {x | cell x = i}, u x ∂μ‖ ^ 2 := by
      rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (inv_nonneg.mpr (Real.sqrt_nonneg _)), mul_pow]
    _ = ‖∫ x in {x | cell x = i}, u x ∂μ‖ ^ 2 / cellMass μ cell i := by
      rw [inv_pow, Real.sq_sqrt hmass.le]
      ring
    _ ≤ _ := (div_le_iff₀ hmass).mpr (by
      simpa only [mul_comm] using norm_cellIntegral_sq_le cell u i hu hu2)

/-- Complete finite cells account for the full energy, without a sampling
approximation to the input function. -/
theorem sum_cellEnergy (cell : X → ι) (u : X → ℂ)
    (hcell : ∀ i, MeasurableSet {x | cell x = i})
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ) :
    (∑ i, ∫ x in {x | cell x = i}, ‖u x‖ ^ 2 ∂μ) =
      ∫ x, ‖u x‖ ^ 2 ∂μ := by
  have hind : ∀ i, Integrable ({x | cell x = i}.indicator (fun x => ‖u x‖ ^ 2)) μ :=
    fun i => hu2.indicator (hcell i)
  simp_rw [← integral_indicator (hcell _)]
  rw [← integral_finsetSum Finset.univ (fun i _ => hind i)]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun x => by simp [Set.indicator])

/-- Bessel bound for the explicitly normalized finite partition features. -/
theorem normalizedCellMoments_energy_le (cell : X → ι) (u : X → ℂ)
    (hcell : ∀ i, MeasurableSet {x | cell x = i})
    (hmass : ∀ i, 0 < cellMass μ cell i)
    (hu : Integrable u μ) (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ) :
    (∑ i, ‖featureMoment μ (normalizedCellFeature μ cell) u i‖ ^ 2) ≤
      ∫ x, ‖u x‖ ^ 2 ∂μ := by
  calc
    _ ≤ ∑ i, ∫ x in {x | cell x = i}, ‖u x‖ ^ 2 ∂μ :=
      Finset.sum_le_sum (fun i _ =>
        normalizedCellMoment_sq_le cell u i (hcell i) (hmass i) hu hu2)
    _ = _ := sum_cellEnergy cell u hcell hu2

/-- A finite quadratic lower bound returns to the full source integral.
The supplied Bessel estimate specifies the exact normalization of the features. -/
theorem kernel_lower_of_finite_lower
    (φ : ι → X → ℂ) (H : Matrix ι ι ℂ) (K : X → X → ℂ) (u : X → ℂ)
    {ε r : ℝ} (hε : 0 ≤ ε) (hr : 0 ≤ r)
    (hu : Integrable u μ) (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ)
    (hφ : ∀ i, Integrable (fun x => conj (φ i x) * u x) μ)
    (hK : Integrable (integrand K u u) (μ.prod μ))
    (hbound : ∀ᵐ p ∂μ.prod μ, ‖K p.1 p.2 - finiteKernel φ H p.1 p.2‖ ≤ ε)
    (hmoments : (∑ i, ‖featureMoment μ φ u i‖ ^ 2) ≤ ∫ x, ‖u x‖ ^ 2 ∂μ)
    (hlower : ∀ c : ι → ℂ, -r * (∑ i, ‖c i‖ ^ 2) ≤ complexQuadratic H c) :
    -(r + ε * μ.real Set.univ) * (∫ x, ‖u x‖ ^ 2 ∂μ) ≤
      (kernelForm μ K u u).re := by
  have hfinite := hlower (featureMoment μ φ u)
  have hprice := mul_le_mul_of_nonneg_left hmoments hr
  have herr := (kernelForm_real_sandwich hε hu hu2 hK
    (integrable_finiteKernel φ H u hφ) hbound).1
  rw [real_kernelForm_finiteKernel φ H u hφ] at herr
  nlinarith

/-- The finite-partition transfer derives the Bessel bound from the cells,
rather than leaving it as an unproved normalization assumption. -/
theorem normalizedCells_kernel_lower
    (cell : X → ι) (H : Matrix ι ι ℂ) (K : X → X → ℂ) (u : X → ℂ)
    {ε r : ℝ} (hε : 0 ≤ ε) (hr : 0 ≤ r)
    (hcell : ∀ i, MeasurableSet {x | cell x = i})
    (hmass : ∀ i, 0 < cellMass μ cell i)
    (hu : Integrable u μ) (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ)
    (hK : Integrable (integrand K u u) (μ.prod μ))
    (hbound : ∀ᵐ p ∂μ.prod μ,
      ‖K p.1 p.2 - finiteKernel (normalizedCellFeature μ cell) H p.1 p.2‖ ≤ ε)
    (hlower : ∀ c : ι → ℂ, -r * (∑ i, ‖c i‖ ^ 2) ≤ complexQuadratic H c) :
    -(r + ε * μ.real Set.univ) * (∫ x, ‖u x‖ ^ 2 ∂μ) ≤
      (kernelForm μ K u u).re :=
  kernel_lower_of_finite_lower (normalizedCellFeature μ cell) H K u hε hr hu hu2
    (integrable_normalizedCellFeature cell u hcell hu) hK hbound
    (normalizedCellMoments_energy_le cell u hcell hmass hu hu2) hlower

/-- Exact interval specialization: the kernel error is multiplied by `2*A`.
The remaining source-to-Weil identity is not asserted by this theorem. -/
theorem interval_kernel_lower
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (φ : ι → ℝ → ℂ) (H : Matrix ι ι ℂ) (K : ℝ → ℝ → ℂ) (u : ℝ → ℂ)
    {A ε r : ℝ} (hA : 0 ≤ A) (hε : 0 ≤ ε) (hr : 0 ≤ r)
    (hu : IntegrableOn u (Icc (-A) A))
    (hu2 : IntegrableOn (fun x => ‖u x‖ ^ 2) (Icc (-A) A))
    (hφ : ∀ i, IntegrableOn (fun x => conj (φ i x) * u x) (Icc (-A) A))
    (hK : Integrable (integrand K u u)
      ((volume.restrict (Icc (-A) A)).prod (volume.restrict (Icc (-A) A))))
    (hbound : ∀ x ∈ Icc (-A) A, ∀ y ∈ Icc (-A) A,
      ‖K x y - finiteKernel φ H x y‖ ≤ ε)
    (hmoments : (∑ i, ‖featureMoment (volume.restrict (Icc (-A) A)) φ u i‖ ^ 2) ≤
      ∫ x in Icc (-A) A, ‖u x‖ ^ 2)
    (hlower : ∀ c : ι → ℂ, -r * (∑ i, ‖c i‖ ^ 2) ≤ complexQuadratic H c) :
    -(r + 2 * A * ε) * (∫ x in Icc (-A) A, ‖u x‖ ^ 2) ≤
      (kernelForm (volume.restrict (Icc (-A) A)) K u u).re := by
  have hb : ∀ᵐ p ∂(volume.restrict (Icc (-A) A)).prod
      (volume.restrict (Icc (-A) A)), ‖K p.1 p.2 - finiteKernel φ H p.1 p.2‖ ≤ ε := by
    rw [Measure.prod_restrict]
    filter_upwards [ae_restrict_mem (measurableSet_Icc.prod measurableSet_Icc)] with p hp
    exact hbound p.1 hp.1 p.2 hp.2
  have h := kernel_lower_of_finite_lower φ H K u hε hr hu hu2 hφ hK hb hmoments hlower
  rw [interval_mass hA] at h
  convert h using 1 <;> ring

end GRWTSK.FunctionalAnalysis.PositiveForestKernelTransfer
