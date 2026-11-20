/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionalAnalysis.PositiveForestKernelTransfer
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.PositiveGeneratorForest
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilPositiveLimitCore

/-!
# The positive-generator forest conjecture and its conditional Weil return

`ForestConjecture` is a proposition asserting rational forest certificates on
every positive integer window at every dyadic accuracy. It is not an axiom,
and no term proving it for the zeta kernel is supplied. The continuous-to-finite
return is obtained from actual integral-kernel estimates and the proved Bessel
bound for normalized cells, rather than being stored as a positivity premise.

The exact source realization and the existing source-bound Weil criterion are
separate arguments to the RH theorem. In particular, this file does not define
the arithmetic Suzuki function, prove its explicit formula, or implement the
95-state machine. A mathematical certificate family alone also does not assert
computable extraction, termination of a program, or a polynomial time bound.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.RiemannHypothesis.PositiveGeneratorForest

open GRWTSK.FunctionalAnalysis.IntegralKernelApproximation
open GRWTSK.FunctionalAnalysis.FiniteKernelEnclosure
open GRWTSK.FunctionalAnalysis.PositiveForestKernelTransfer
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates

open GRWTSK.LinearAlgebra.PositiveGeneratorForest

/-- Index zero denotes the positive support radius one. -/
def radius (A : ℕ) : ℝ := (A : ℝ) + 1

theorem radius_pos (A : ℕ) : 0 < radius A := by
  unfold radius
  positivity

abbrev windowMeasure (A : ℕ) : Measure ℝ :=
  volume.restrict (Icc (-radius A) (radius A))

/-- The signed integrated-kernel expression for an externally specified real
function. This definition does not identify that function with Suzuki's Ψ. -/
def integratedKernel (Ψ : ℝ → ℝ) (t s : ℝ) : ℂ :=
  ((Ψ t + Ψ s - Ψ (t - s) : ℝ) : ℂ)

/-- A finite certificate for the actual kernel, on normalized complete cells.
Only rational matrix coefficients, residual budgets, and rational forest leaves
are admitted. The partition itself is fixed by exact measurable sets. -/
structure WindowCertificate (K : ℝ → ℝ → ℂ) (A : ℕ) where
  dimension : ℕ
  cell : ℝ → Fin dimension
  measurable_cells : ∀ i, MeasurableSet {x | cell x = i}
  cell_mass_pos : ∀ i, 0 < cellMass (windowMeasure A) cell i
  sample : Matrix (Fin dimension) (Fin dimension) ℚ
  sample_symmetric : ∀ i j, sample i j = sample j i
  forest : Forest (Fin dimension)
  rational_forest : IsRational forest
  epsilon : ℚ
  epsilon_nonneg : 0 ≤ epsilon
  residual : ℚ
  residual_nonneg : 0 ≤ residual
  kernel_close : ∀ x ∈ Icc (-radius A) (radius A),
    ∀ y ∈ Icc (-radius A) (radius A),
      ‖K x y - finiteKernel (normalizedCellFeature (windowMeasure A) cell)
        (fun i j => (sample i j : ℂ)) x y‖ ≤ (epsilon : ℝ)
  quadratic_residual : QuadraticResidual
    (fun i j => (sample i j : ℂ)) forest (residual : ℝ)

namespace WindowCertificate

/-- The complete scalar price: finite matrix residual plus whole-window error. -/
def budget {K : ℝ → ℝ → ℂ} {A : ℕ} (C : WindowCertificate K A) : ℝ :=
  (C.residual : ℝ) + 2 * radius A * (C.epsilon : ℝ)

theorem budget_nonneg {K : ℝ → ℝ → ℂ} {A : ℕ} (C : WindowCertificate K A) :
    0 ≤ C.budget := by
  have hε : 0 ≤ (C.epsilon : ℝ) := by exact_mod_cast C.epsilon_nonneg
  have hr : 0 ≤ (C.residual : ℝ) := by exact_mod_cast C.residual_nonneg
  exact add_nonneg hr (mul_nonneg (mul_nonneg (by norm_num) (radius_pos A).le) hε)

/-- The finite forest returns to the complete kernel integral, including all
directions outside the finite feature span. Cell normalization is proved by
the Bessel bound, not added as an unexplained energy contract. -/
theorem lower {K : ℝ → ℝ → ℂ} {A : ℕ} (C : WindowCertificate K A)
    (u : ℝ → ℂ) (hu : Integrable u (windowMeasure A))
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) (windowMeasure A))
    (hK : Integrable (integrand K u u) ((windowMeasure A).prod (windowMeasure A))) :
    -C.budget * (∫ x, ‖u x‖ ^ 2 ∂windowMeasure A) ≤
      (kernelForm (windowMeasure A) K u u).re := by
  have hε : 0 ≤ (C.epsilon : ℝ) := by exact_mod_cast C.epsilon_nonneg
  have hr : 0 ≤ (C.residual : ℝ) := by exact_mod_cast C.residual_nonneg
  exact interval_kernel_lower
    (normalizedCellFeature (windowMeasure A) C.cell)
    (fun i j => (C.sample i j : ℂ)) K u (radius_pos A).le hε hr hu hu2
    (integrable_normalizedCellFeature C.cell u C.measurable_cells hu) hK C.kernel_close
    (normalizedCellMoments_energy_le C.cell u C.measurable_cells C.cell_mass_pos hu hu2)
    (fun c => by
      simpa only [vectorEnergy] using quadratic_lower_of_residual
        (fun i j => (C.sample i j : ℂ)) C.forest (C.residual : ℝ)
        C.quadratic_residual c)

end WindowCertificate

/-- The literal equal-width cells; only the final cell includes its right
endpoint. A certificate must prove its cell assignment has this geometry. -/
def uniformCellSet (A m : ℕ) (i : Fin m) : Set ℝ :=
  let h := 2 * radius A / (m : ℝ)
  let left := -radius A + (i.val : ℝ) * h
  let right := -radius A + ((i.val + 1 : ℕ) : ℝ) * h
  if i.val + 1 = m then Icc left right else Ico left right

/-- The square-grid specialization retains explicit interval geometry and
the mass weighting H = h * rawSample in rational arithmetic. These fields
state proof obligations, not existence of a successful arithmetic grid. -/
structure UniformWindowCertificate (K : ℝ → ℝ → ℂ) (A : ℕ)
    extends WindowCertificate K A where
  dimension_pos : 0 < dimension
  uniform_cells : ∀ i,
    {x | x ∈ Icc (-radius A) (radius A) ∧ cell x = i} = uniformCellSet A dimension i
  uniform_mass : ∀ i,
    cellMass (windowMeasure A) cell i = 2 * radius A / (dimension : ℝ)
  rawSample : Matrix (Fin dimension) (Fin dimension) ℚ
  sample_mass_weighted : ∀ i j,
    sample i j = (2 * ((A : ℚ) + 1) / (dimension : ℚ)) * rawSample i j

/-- The unresolved analytic existence claim, with one fixed kernel at every
stage. No positivity or computability theorem is installed by this definition. -/
def ForestConjecture (K : ℝ → ℝ → ℂ) : Prop :=
  ∀ A k : ℕ, ∃ C : UniformWindowCertificate K A,
    C.toWindowCertificate.budget ≤ (1 / 2 : ℝ) ^ k

/-- Specialize the conjecture's syntax to a supplied integrated Weil candidate.
The identity of Ψ with the actual arithmetic function remains external. -/
def IntegratedForestConjecture (Ψ : ℝ → ℝ) : Prop :=
  ForestConjecture (integratedKernel Ψ)

/-- A certificate at every precision forces nonnegativity of each actual
kernel integral. The test is fixed throughout the limit. -/
theorem kernel_nonneg_of_forestConjecture
    {K : ℝ → ℝ → ℂ} (hforest : ForestConjecture K)
    (A : ℕ) (u : ℝ → ℂ) (hu : Integrable u (windowMeasure A))
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) (windowMeasure A))
    (hK : Integrable (integrand K u u) ((windowMeasure A).prod (windowMeasure A))) :
    0 ≤ (kernelForm (windowMeasure A) K u u).re := by
  have henergy : 0 ≤ ∫ x, ‖u x‖ ^ 2 ∂windowMeasure A :=
    integral_nonneg (fun x => sq_nonneg ‖u x‖)
  apply nonneg_of_scaled_dyadic_lower henergy
  intro k
  obtain ⟨C, hbudget⟩ := hforest A k
  have hlower := C.toWindowCertificate.lower u hu hu2 hK
  have hmul := mul_le_mul_of_nonneg_right hbudget henergy
  linarith

/-- A genuine negative kernel witness excludes the proposed uniform family. -/
theorem no_forestConjecture_of_negative_kernel
    {K : ℝ → ℝ → ℂ} (A : ℕ) (u : ℝ → ℂ)
    (hu : Integrable u (windowMeasure A))
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) (windowMeasure A))
    (hK : Integrable (integrand K u u) ((windowMeasure A).prod (windowMeasure A)))
    (hnegative : (kernelForm (windowMeasure A) K u u).re < 0) :
    ¬ ForestConjecture K := by
  intro hforest
  exact (not_lt_of_ge (kernel_nonneg_of_forestConjecture hforest A u hu hu2 hK)) hnegative

/-- The exact source return: each admitted test has a finite integration window,
an integrable signal (normally its derivative), and a proved equality to the
same target diagonal. This record does not supply an arithmetic source identity. -/
structure SourceRealization (T : Type*) (W : T → T → ℝ) (K : ℝ → ℝ → ℂ) where
  window : T → ℕ
  signal : T → ℝ → ℂ
  integrable_signal : ∀ f, Integrable (signal f) (windowMeasure (window f))
  integrable_energy : ∀ f,
    Integrable (fun x => ‖signal f x‖ ^ 2) (windowMeasure (window f))
  integrable_kernel : ∀ f,
    Integrable (integrand K (signal f) (signal f))
      ((windowMeasure (window f)).prod (windowMeasure (window f)))
  diagonal_eq : ∀ f, W f f =
    (kernelForm (windowMeasure (window f)) K (signal f) (signal f)).re

/-- Every admitted target test is covered by its supplied exact source return. -/
theorem source_nonneg_of_forestConjecture
    {T : Type*} {W : T → T → ℝ} {K : ℝ → ℝ → ℂ}
    (source : SourceRealization T W K) (hforest : ForestConjecture K) :
    ∀ f, 0 ≤ W f f := by
  intro f
  rw [source.diagonal_eq f]
  exact kernel_nonneg_of_forestConjecture hforest (source.window f) (source.signal f)
    (source.integrable_signal f) (source.integrable_energy f) (source.integrable_kernel f)

/-- Conditional return to Mathlib's actual RH proposition. The criterion,
source identity, and all-precision forest supplier remain explicit arguments. -/
theorem riemannHypothesis_of_forestConjecture
    {T : Type*} {W : T → T → ℝ} {K : ℝ → ℝ → ℂ}
    (source : SourceRealization T W K)
    (criterion : GRWTSK.RiemannHypothesis.WeilCriterionForZeta T W)
    (hforest : ForestConjecture K) : _root_.RiemannHypothesis :=
  criterion.positivity_iff_rh.mp (source_nonneg_of_forestConjecture source hforest)

/-- A negative target test prevents such a family even before an RH criterion
is supplied. No negative directions can be erased by forest notation. -/
theorem no_forestConjecture_of_negative_source
    {T : Type*} {W : T → T → ℝ} {K : ℝ → ℝ → ℂ}
    (source : SourceRealization T W K) (f : T) (hnegative : W f f < 0) :
    ¬ ForestConjecture K := by
  intro hforest
  exact (not_lt_of_ge (source_nonneg_of_forestConjecture source hforest f)) hnegative

end GRWTSK.RiemannHypothesis.PositiveGeneratorForest
