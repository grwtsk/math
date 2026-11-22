/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionalAnalysis.IntegralKernelApproximation
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalEnclosureCertificates

/-!
# Signed finite-feature kernels with certified integral return

The finite matrix need not be positive or real. Fubini identifies its actual
kernel integral with the full complex quadratic of the feature moments. The
existing rational realification checker then returns to this integral, with
the uniform kernel error charged against the original L2 mass.

The moments are exact integrals, not samples. Supplying a uniform approximation
to an arithmetic kernel remains a separate obligation. No finite compression,
model agreement, or matrix acceptance alone proves positivity of a Weil form.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped BigOperators ComplexConjugate

namespace GRWTSK.FunctionalAnalysis.FiniteKernelEnclosure

open IntegralKernelApproximation
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

variable {X ι ν : Type*} [MeasurableSpace X] [Fintype ι] [DecidableEq ι]
  {μ : Measure X} [IsFiniteMeasure μ]

/-- General finite-feature kernel. Signed and imaginary matrix entries are retained. -/
def finiteKernel (φ : ι → X → ℂ) (H : Matrix ι ι ℂ) (x y : X) : ℂ :=
  ∑ i, ∑ j, φ i x * H i j * conj (φ j y)

/-- Exact coefficient functional against each feature. -/
def featureMoment (μ : Measure X) (φ : ι → X → ℂ) (u : X → ℂ) (i : ι) : ℂ :=
  ∫ x, conj (φ i x) * u x ∂μ

omit [IsFiniteMeasure μ] in
private theorem integrable_conjugate {f : X → ℂ} (hf : Integrable f μ) :
    Integrable (fun x => conj (f x)) μ :=
  (RCLike.conjCLE : ℂ ≃L[ℝ] ℂ).integrable_comp_iff.mpr hf

omit [MeasurableSpace X] [DecidableEq ι] in
/-- The conjugate orientations match the maintained kernel pairing. -/
theorem integrand_finiteKernel (φ : ι → X → ℂ) (H : Matrix ι ι ℂ)
    (u : X → ℂ) (p : X × X) :
    integrand (finiteKernel φ H) u u p =
      ∑ i, ∑ j, (conj (conj (φ i p.1) * u p.1) * H i j) *
        (conj (φ j p.2) * u p.2) := by
  simp only [integrand, finiteKernel, Finset.mul_sum, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  simp only [map_mul, starRingEnd_apply, star_star]
  ring

/-- Integrability is obtained from the L1 feature observables, not assumed for
the assembled finite kernel. -/
theorem integrable_finiteKernel (φ : ι → X → ℂ) (H : Matrix ι ι ℂ)
    (u : X → ℂ) (hφ : ∀ i, Integrable (fun x => conj (φ i x) * u x) μ) :
    Integrable (integrand (finiteKernel φ H) u u) (μ.prod μ) := by
  change Integrable (fun p => integrand (finiteKernel φ H) u u p) (μ.prod μ)
  simp_rw [integrand_finiteKernel]
  apply integrable_finsetSum
  intro i _
  apply integrable_finsetSum
  intro j _
  exact ((integrable_conjugate (hφ i)).mul_const (H i j)).mul_prod (hφ j)

/-- Exact finite return: the integral is the full Hermitian-convention
quadratic in exact feature moments, regardless of whether H is Hermitian. -/
theorem kernelForm_finiteKernel (φ : ι → X → ℂ) (H : Matrix ι ι ℂ)
    (u : X → ℂ) (hφ : ∀ i, Integrable (fun x => conj (φ i x) * u x) μ) :
    kernelForm μ (finiteKernel φ H) u u =
      ∑ i, ∑ j, conj (featureMoment μ φ u i) * H i j * featureMoment μ φ u j := by
  unfold kernelForm
  simp_rw [integrand_finiteKernel]
  rw [integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro i _
    rw [integral_finsetSum]
    · apply Finset.sum_congr rfl
      intro j _
      rw [integral_prod_mul (fun x => conj (conj (φ i x) * u x) * H i j)
        (fun y => conj (φ j y) * u y), integral_mul_const, integral_conj]
      rfl
    · intro j _
      exact ((integrable_conjugate (hφ i)).mul_const (H i j)).mul_prod (hφ j)
  · intro i _
    apply integrable_finsetSum
    intro j _
    exact ((integrable_conjugate (hφ i)).mul_const (H i j)).mul_prod (hφ j)

/-- Real part of the exact identity, in the existing complex quadratic API. -/
theorem real_kernelForm_finiteKernel (φ : ι → X → ℂ) (H : Matrix ι ι ℂ)
    (u : X → ℂ) (hφ : ∀ i, Integrable (fun x => conj (φ i x) * u x) μ) :
    (kernelForm μ (finiteKernel φ H) u u).re =
      complexQuadratic H (featureMoment μ φ u) := by
  rw [kernelForm_finiteKernel φ H u hφ]
  rfl

/-- The original rational matrix checker applies to the actual integral.
The retained metric is neither replaced by an identity nor assumed nonsingular. -/
theorem checked_finiteKernel_lower [Fintype ν]
    (P : Packet (ι ⊕ ι)) (C : Certificate ℚ (ι ⊕ ι) Empty Empty ν)
    (φ : ι → X → ℂ) (H : Matrix ι ι ℂ) (u : X → ℂ)
    (hφ : ∀ i, Integrable (fun x => conj (φ i x) * u x) μ)
    (hencloses : Encloses P (realification H)) (hcheck : intervalCheck P C = true) :
    -(P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ))
        (splitVector (featureMoment μ φ u)) ≤
      (kernelForm μ (finiteKernel φ H) u u).re := by
  rw [real_kernelForm_finiteKernel φ H u hφ]
  exact checked_complex_enclosure_lower P C H hencloses hcheck (featureMoment μ φ u)

/-- Uniform approximation to the actual source kernel gives an explicit,
error-paid lower bound. The finite-rank approximation acts on every supplied
test u, not merely on the span of the features. -/
theorem checked_kernel_lower [Fintype ν]
    (P : Packet (ι ⊕ ι)) (C : Certificate ℚ (ι ⊕ ι) Empty Empty ν)
    (φ : ι → X → ℂ) (H : Matrix ι ι ℂ) (K : X → X → ℂ) (u : X → ℂ)
    {ε : ℝ} (hε : 0 ≤ ε) (hu : Integrable u μ)
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) μ)
    (hφ : ∀ i, Integrable (fun x => conj (φ i x) * u x) μ)
    (hK : Integrable (integrand K u u) (μ.prod μ))
    (hbound : ∀ᵐ p ∂μ.prod μ, ‖K p.1 p.2 - finiteKernel φ H p.1 p.2‖ ≤ ε)
    (hencloses : Encloses P (realification H)) (hcheck : intervalCheck P C = true) :
    -(P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ))
        (splitVector (featureMoment μ φ u)) -
        (ε * μ.real Set.univ) * (∫ x, ‖u x‖ ^ 2 ∂μ) ≤
      (kernelForm μ K u u).re := by
  have hfinite := checked_finiteKernel_lower P C φ H u hφ hencloses hcheck
  have herr := (kernelForm_real_sandwich hε hu hu2 hK
    (integrable_finiteKernel φ H u hφ) hbound).1
  linarith

/-- Features of a finite partition specified by a total cell assignment.
Empty cells are allowed; disjointness and coverage hold by construction. -/
def cellFeature (cell : X → ι) (i : ι) (x : X) : ℂ :=
  if cell x = i then 1 else 0

omit [MeasurableSpace X] in
/-- The finite-feature kernel for partition indicators is the actual
piecewise-constant matrix kernel, not a sampled quadratic surrogate. -/
theorem finiteKernel_cellFeature (cell : X → ι) (H : Matrix ι ι ℂ) (x y : X) :
    finiteKernel (cellFeature cell) H x y = H (cell x) (cell y) := by
  simp [finiteKernel, cellFeature]

omit [Fintype ι] [IsFiniteMeasure μ] in
/-- Partition feature moments are the exact integrals over complete cells. -/
theorem featureMoment_cellFeature (cell : X → ι) (u : X → ℂ) (i : ι)
    (hcell : MeasurableSet {x | cell x = i}) :
    featureMoment μ (cellFeature cell) u i = ∫ x in {x | cell x = i}, u x ∂μ := by
  simp only [featureMoment, cellFeature]
  rw [← integral_indicator]
  · apply integral_congr_ae
    exact Filter.Eventually.of_forall fun x => by
      by_cases h : cell x = i <;> simp [h, Set.indicator]
  · exact hcell

omit [Fintype ι] [IsFiniteMeasure μ] in
/-- Integrability of all cell moments follows from integrability of the test
and measurability of each cell. -/
theorem integrable_cellFeature (cell : X → ι) (u : X → ℂ)
    (hcell : ∀ i, MeasurableSet {x | cell x = i}) (hu : Integrable u μ) (i : ι) :
    Integrable (fun x => conj (cellFeature cell i x) * u x) μ := by
  convert hu.indicator (hcell i) using 1
  ext x
  by_cases h : cell x = i <;> simp [cellFeature, h, Set.indicator]

/-- Complete cell integrals recover the piecewise-constant kernel exactly.
No point-sampling approximation to u is used. -/
theorem kernelForm_cells (cell : X → ι) (H : Matrix ι ι ℂ) (u : X → ℂ)
    (hcell : ∀ i, MeasurableSet {x | cell x = i}) (hu : Integrable u μ) :
    kernelForm μ (fun x y => H (cell x) (cell y)) u u =
      ∑ i, ∑ j, conj (∫ x in {x | cell x = i}, u x ∂μ) * H i j *
        (∫ x in {x | cell x = j}, u x ∂μ) := by
  have hK : finiteKernel (cellFeature cell) H = fun x y => H (cell x) (cell y) := by
    funext x y
    exact finiteKernel_cellFeature cell H x y
  rw [← hK, kernelForm_finiteKernel (cellFeature cell) H u
    (integrable_cellFeature cell u hcell hu)]
  simp_rw [featureMoment_cellFeature cell u _ (hcell _)]

/-- Complete finite cells preserve the total integral, including its complex phase. -/
theorem sum_featureMoment_cellFeature (cell : X → ι) (u : X → ℂ)
    (hcell : ∀ i, MeasurableSet {x | cell x = i}) (hu : Integrable u μ) :
    (∑ i, featureMoment μ (cellFeature cell) u i) = ∫ x, u x ∂μ := by
  unfold featureMoment
  rw [← integral_finsetSum]
  · apply integral_congr_ae
    exact Filter.Eventually.of_forall fun x => by simp [cellFeature]
  · intro i _
    exact integrable_cellFeature cell u hcell hu i

/-- A mean-zero input gives the exact finite linear constraint on its moments.
This does not assert positivity of the sampled matrix away from that constraint. -/
theorem sum_featureMoment_eq_zero (cell : X → ι) (u : X → ℂ)
    (hcell : ∀ i, MeasurableSet {x | cell x = i}) (hu : Integrable u μ)
    (hzero : (∫ x, u x ∂μ) = 0) :
    (∑ i, featureMoment μ (cellFeature cell) u i) = 0 := by
  rw [sum_featureMoment_cellFeature cell u hcell hu, hzero]

/-- A quantitative sampling rule: a two-coordinate Lipschitz estimate and
certified node-entry errors pay the complete cell-kernel error. -/
theorem norm_sampledKernel_error [PseudoMetricSpace X]
    (K : X → X → ℂ) (H : Matrix ι ι ℂ) (cell : X → ι) (node : ι → X)
    {L δ η : ℝ} (hL : 0 ≤ L)
    (hLip : ∀ x y x' y', ‖K x y - K x' y'‖ ≤ L * (dist x x' + dist y y'))
    (hnode : ∀ i j, ‖K (node i) (node j) - H i j‖ ≤ η)
    (x y : X) (hx : dist x (node (cell x)) ≤ δ)
    (hy : dist y (node (cell y)) ≤ δ) :
    ‖K x y - finiteKernel (cellFeature cell) H x y‖ ≤ 2 * L * δ + η := by
  rw [finiteKernel_cellFeature]
  calc
    ‖K x y - H (cell x) (cell y)‖ ≤
        ‖K x y - K (node (cell x)) (node (cell y))‖ +
          ‖K (node (cell x)) (node (cell y)) - H (cell x) (cell y)‖ :=
      by simpa only [dist_eq_norm] using
        dist_triangle (K x y) (K (node (cell x)) (node (cell y))) (H (cell x) (cell y))
    _ ≤ L * (dist x (node (cell x)) + dist y (node (cell y))) + η :=
      add_le_add (hLip _ _ _ _) (hnode _ _)
    _ ≤ 2 * L * δ + η := by nlinarith

end GRWTSK.FunctionalAnalysis.FiniteKernelEnclosure
