/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Integral.Lebesgue.Map
import Mathlib.MeasureTheory.Measure.WithDensity
import Mathlib.MeasureTheory.Function.SpecialFunctions.Basic
import Mathlib.Tactic

/-!
# Normalization of a bounded finite-regulator Boltzmann density

This analytic supplier is consumed by the finite SU(2) Wilson construction.
It does not construct a Haar measure: its concrete consumer must supply the
actual finite product Haar probability and prove its gauge invariance.
For a measurable action in [0,B] and beta>=0, the partition function lies
between exp(-beta*B) and 1. Its strictly positive value normalizes the actual
density measure. Invariance is transported from a proved measure-preserving
transformation and the literal action equality, not stored in a certificate.

These are finite probability statements. They supply no Hilbert-space
Hamiltonian, reflection positivity, continuum limit or mass gap.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Probability.StatisticalMechanics.FiniteBoltzmannNormalization

open MeasureTheory Set

variable {X : Type*} [MeasurableSpace X]

/-- The actual real Boltzmann weight, before normalization. -/
def boltzmannWeight (β : ℝ) (S : X → ℝ) (x : X) : ℝ :=
  Real.exp (-β * S x)

/-- The real partition function with respect to the specified reference measure. -/
def partitionFunction (ν : Measure X) (β : ℝ) (S : X → ℝ) : ℝ :=
  ∫ x, boltzmannWeight β S x ∂ν

/-- The normalized density measure, with the actual partition function in
the denominator. Positivity and mass one are proved below. -/
def boltzmannMeasure (ν : Measure X) (β : ℝ) (S : X → ℝ) : Measure X :=
  ν.withDensity (fun x =>
    ENNReal.ofReal (boltzmannWeight β S x / partitionFunction ν β S))

theorem measurable_boltzmannWeight {β : ℝ} {S : X → ℝ}
    (hS : Measurable S) : Measurable (boltzmannWeight β S) :=
  Real.measurable_exp.comp (measurable_const.mul hS)

theorem boltzmannWeight_pos (β : ℝ) (S : X → ℝ) (x : X) :
    0 < boltzmannWeight β S x := Real.exp_pos _

/-- Both sides of the finite pointwise Boltzmann bound. -/
theorem boltzmannWeight_bounds {β B : ℝ} {S : X → ℝ}
    (hβ : 0 ≤ β) (hS : ∀ x, 0 ≤ S x ∧ S x ≤ B) (x : X) :
    Real.exp (-β * B) ≤ boltzmannWeight β S x ∧
      boltzmannWeight β S x ≤ 1 := by
  constructor
  · exact Real.exp_le_exp.mpr
      (mul_le_mul_of_nonpos_left (hS x).2 (neg_nonpos.mpr hβ))
  · apply Real.exp_le_one_iff.mpr
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hβ) (hS x).1

/-- Bounded measurable real weights are integrable under the actual reference
probability. No compactness or unproved finite-integral field is needed. -/
theorem integrable_boltzmannWeight (ν : Measure X) [IsProbabilityMeasure ν]
    {β B : ℝ} {S : X → ℝ} (hβ : 0 ≤ β) (hSm : Measurable S)
    (hS : ∀ x, 0 ≤ S x ∧ S x ≤ B) :
    Integrable (boltzmannWeight β S) ν := by
  apply (integrable_const (1 : ℝ)).mono'
    (measurable_boltzmannWeight hSm).aestronglyMeasurable
  exact ae_of_all ν (fun x => by
    rw [Real.norm_eq_abs, abs_of_pos (boltzmannWeight_pos β S x)]
    exact (boltzmannWeight_bounds hβ hS x).2)

/-- Explicit two-sided partition-function bound for a bounded action. -/
theorem partitionFunction_bounds (ν : Measure X) [IsProbabilityMeasure ν]
    {β B : ℝ} {S : X → ℝ} (hβ : 0 ≤ β) (hSm : Measurable S)
    (hS : ∀ x, 0 ≤ S x ∧ S x ≤ B) :
    Real.exp (-β * B) ≤ partitionFunction ν β S ∧
      partitionFunction ν β S ≤ 1 := by
  have hi := integrable_boltzmannWeight ν hβ hSm hS
  constructor
  · have h := integral_mono (integrable_const (Real.exp (-β * B))) hi
      (fun x => (boltzmannWeight_bounds hβ hS x).1)
    simpa only [integral_const, probReal_univ, one_smul,
      partitionFunction] using h
  · have h := integral_mono hi (integrable_const (1 : ℝ))
      (fun x => (boltzmannWeight_bounds hβ hS x).2)
    simpa only [integral_const, probReal_univ, one_smul,
      partitionFunction] using h

theorem partitionFunction_pos (ν : Measure X) [IsProbabilityMeasure ν]
    {β B : ℝ} {S : X → ℝ} (hβ : 0 ≤ β) (hSm : Measurable S)
    (hS : ∀ x, 0 ≤ S x ∧ S x ≤ B) :
    0 < partitionFunction ν β S :=
  (Real.exp_pos _).trans_le (partitionFunction_bounds ν hβ hSm hS).1

/-- The constructed normalized density has total mass exactly one. -/
theorem boltzmannMeasure_univ (ν : Measure X) [IsProbabilityMeasure ν]
    {β B : ℝ} {S : X → ℝ} (hβ : 0 ≤ β) (hSm : Measurable S)
    (hS : ∀ x, 0 ≤ S x ∧ S x ≤ B) :
    boltzmannMeasure ν β S univ = 1 := by
  have hZ := partitionFunction_pos ν hβ hSm hS
  have hi := (integrable_boltzmannWeight ν hβ hSm hS).div_const
    (partitionFunction ν β S)
  have hnonneg : ∀ x,
      0 ≤ boltzmannWeight β S x / partitionFunction ν β S :=
    fun x => div_nonneg (boltzmannWeight_pos β S x).le hZ.le
  have hint : (∫ x, boltzmannWeight β S x / partitionFunction ν β S ∂ν) = 1 := by
    rw [integral_div]
    change partitionFunction ν β S / partitionFunction ν β S = 1
    exact div_self hZ.ne'
  unfold boltzmannMeasure
  rw [Measure.withDensity_apply _ MeasurableSet.univ, Measure.restrict_univ,
    ← ofReal_integral_eq_lintegral_ofReal hi (ae_of_all ν hnonneg), hint]
  exact ENNReal.ofReal_one

/-- The probability property is proved from the constructed density's mass,
rather than assumed as a structure field. -/
theorem isProbabilityMeasure_boltzmannMeasure (ν : Measure X) [IsProbabilityMeasure ν]
    {β B : ℝ} {S : X → ℝ} (hβ : 0 ≤ β) (hSm : Measurable S)
    (hS : ∀ x, 0 ≤ S x ∧ S x ≤ B) :
    IsProbabilityMeasure (boltzmannMeasure ν β S) :=
  ⟨boltzmannMeasure_univ ν hβ hSm hS⟩

/-- A proved reference-measure symmetry and literal action invariance preserve
the actual density measure. The finite Wilson consumer supplies both proofs. -/
theorem boltzmannMeasure_map_eq (ν : Measure X) {β : ℝ} {S : X → ℝ}
    (hSm : Measurable S) {T : X → X} (hT : MeasurePreserving T ν ν)
    (hSinv : ∀ x, S (T x) = S x) :
    (boltzmannMeasure ν β S).map T = boltzmannMeasure ν β S := by
  let ρ : X → ℝ≥0∞ := fun x =>
    ENNReal.ofReal (boltzmannWeight β S x / partitionFunction ν β S)
  have hρ : Measurable ρ :=
    ((measurable_boltzmannWeight hSm).div_const _).ennreal_ofReal
  have hρinv (x : X) : ρ (T x) = ρ x := by
    simp only [ρ, boltzmannWeight, hSinv]
  apply Measure.ext
  intro s hs
  rw [Measure.map_apply hT.measurable hs]
  change ν.withDensity ρ (T ⁻¹' s) = ν.withDensity ρ s
  rw [Measure.withDensity_apply _ (hT.measurable hs),
    Measure.withDensity_apply _ hs]
  calc
    (∫⁻ x in T ⁻¹' s, ρ x ∂ν) = ∫⁻ x in T ⁻¹' s, ρ (T x) ∂ν := by
      exact lintegral_congr_ae (ae_of_all _ (fun x => (hρinv x).symm))
    _ = ∫⁻ x in s, ρ x ∂ν := hT.setLIntegral_comp_preimage hs hρ

end GRWTSK.Probability.StatisticalMechanics.FiniteBoltzmannNormalization
