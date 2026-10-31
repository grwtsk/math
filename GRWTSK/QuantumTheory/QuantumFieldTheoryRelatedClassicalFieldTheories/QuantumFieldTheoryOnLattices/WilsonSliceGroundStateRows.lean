/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceResidualKernel

/-!
# Actual Wilson ground-state integral rows

The principal continuous representative supplies normalized positive integral
rows and a common minorizing density. Normalization is proved from the actual
pointwise integral equation; stationarity and spectral contraction are not
assumed or concluded. The coefficient remains exp(-12 beta L^3).
SOURCE_PROOF_CANDIDATE; compile, fresh replay, axioms and interface NOT_RUN.
No uniform physical scaling or continuum construction is supplied.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceGroundStateRows
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivityImproving
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalRepresentativeBounds
open GRWTSK.Geometry.GaugeTheory.WilsonSliceResidualKernel
variable (L : ℕ) [NeZero L]

def principalMass (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L) : ℝ :=
  ∫ b, principalRepresentative L β hβ f b ∂sliceHaar L

def commonDensity (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
    (b : Slice L SU2) : ℝ := principalRepresentative L β hβ f b / principalMass L β hβ f

def rowDensity (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
    (a b : Slice L SU2) : ℝ :=
  sliceKernel L β a b * principalRepresentative L β hβ f b /
    (lambda0 L β hβ.le * principalRepresentative L β hβ f a)

theorem principalMass_eq (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f) :
    principalMass L β hβ f = ∫ b, (f : RealSliceL2 L) b ∂sliceHaar L := by
  exact (integral_congr_ae (principalRepresentative_eq_ae L β hβ f he)).symm

theorem principalMass_pos (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f) :
    0 < principalMass L β hβ f := by
  rw [principalMass_eq L β hβ f he]
  exact integral_pos_of_nonnegative_ne_zero L f hf (fun hz => hne (Subtype.ext hz))

theorem rowDenominator_pos (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)
    (a : Slice L SU2) : 0 < lambda0 L β hβ.le * principalRepresentative L β hβ f a :=
  mul_pos (lambda0_pos L β hβ) (principalRepresentative_pos L β hβ f hf hne a)

theorem commonDensity_continuous (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L) :
    Continuous (commonDensity L β hβ f) :=
  (principalRepresentative L β hβ f).continuous.div_const _

theorem commonDensity_integrable (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L) :
    Integrable (commonDensity L β hβ f) (sliceHaar L) :=
  (commonDensity_continuous L β hβ f).integrable_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

theorem commonDensity_nonnegative (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
    (b : Slice L SU2) : 0 ≤ commonDensity L β hβ f b :=
  (div_pos (principalRepresentative_pos L β hβ f hf hne b)
    (principalMass_pos L β hβ f hf hne he)).le

theorem commonDensity_integral (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f) :
    (∫ b, commonDensity L β hβ f b ∂sliceHaar L) = 1 := by
  simp only [commonDensity, integral_div, ← principalMass]
  exact div_self (principalMass_pos L β hβ f hf hne he).ne'

theorem rowDensity_continuous (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0) :
    Continuous (fun p : Slice L SU2 × Slice L SU2 => rowDensity L β hβ f p.1 p.2) := by
  apply ((continuous_K L β).mul
    ((principalRepresentative L β hβ f).continuous.comp continuous_snd)).div
    (continuous_const.mul ((principalRepresentative L β hβ f).continuous.comp continuous_fst))
  intro p
  exact (rowDenominator_pos L β hβ f hf hne p.1).ne'

theorem rowDensity_integrable (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
    (a : Slice L SU2) : Integrable (rowDensity L β hβ f a) (sliceHaar L) := by
  exact (integrable_kernelIntegrand L β hβ.le
    ((principalRepresentative L β hβ f).continuous.integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)) a).div_const _

theorem rowDensity_nonnegative (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)
    (a b : Slice L SU2) : 0 ≤ rowDensity L β hβ f a b := by
  exact div_nonneg (mul_nonneg ((Real.exp_pos _).le.trans (K_bounds_explicit L β hβ.le a b).1)
    (principalRepresentative_pos L β hβ f hf hne b).le)
    (rowDenominator_pos L β hβ f hf hne a).le

theorem rowDensity_integral (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
    (a : Slice L SU2) : (∫ b, rowDensity L β hβ f a b ∂sliceHaar L) = 1 := by
  rw [rowDensity, integral_div, principal_integral_equation L β hβ f he a]
  exact div_self (rowDenominator_pos L β hβ f hf hne a).ne'

theorem common_minorization (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
    (a b : Slice L SU2) :
    Real.exp (-12 * β * (L : ℝ)^3) * commonDensity L β hβ f b ≤
      rowDensity L β hβ f a b := by
  have hI := principalMass_pos L β hβ f hf hne he
  have hD := rowDenominator_pos L β hβ f hf hne a
  have hup := (principalRepresentative_bounds L β hβ f hf a).2
  rw [← principalMass_eq L β hβ f he] at hup
  have hDI : lambda0 L β hβ.le * principalRepresentative L β hβ f a ≤
      principalMass L β hβ f := by
    have hh := (le_div_iff₀ (lambda0_pos L β hβ)).mp hup
    simpa only [mul_comm] using hh
  have hnum := mul_le_mul_of_nonneg_right (K_bounds_explicit L β hβ.le a b).1
    (principalRepresentative_pos L β hβ f hf hne b).le
  change Real.exp (-12 * β * (L : ℝ)^3) *
    (principalRepresentative L β hβ f b / principalMass L β hβ f) ≤ _
  rw [← mul_div_assoc]
  exact (div_le_div_of_nonneg_left
    (mul_nonneg (Real.exp_pos _).le (principalRepresentative_pos L β hβ f hf hne b).le)
    hD hDI).trans (div_le_div_of_nonneg_right hnum hD.le)

end GRWTSK.Geometry.GaugeTheory.WilsonSliceGroundStateRows
