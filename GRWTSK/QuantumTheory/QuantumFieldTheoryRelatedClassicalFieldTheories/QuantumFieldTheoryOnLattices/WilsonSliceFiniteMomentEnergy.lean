/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib and GRWTSK sources retain upstream attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceL2StrictPositivity
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.FiniteRealGramTruncation

/-!
# Whole finite moment energies for the existing invariant Wilson L2 operator

Every finite Taylor energy is charged ONCE against the actual quadratic.
The continuous identity retains all gauge integration, both spatial half
weights and exp(-beta*spatialLinkCount). Closedness extends the complete
finite inequality to all invariant L2 classes. The residual is the literal
difference of the two forms. No spectral values, regulator-uniform rate,
operator-norm Taylor bound or physical mass gap is asserted here.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceFiniteMomentEnergy

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceQuadraticPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceFeatures
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantContinuousDensity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantOperatorPositive
open GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousOperatorQuadratic
open GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousStrictPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2StrictPositivity
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramTruncation

variable (L : ℕ) [NeZero L]

def finiteMomentEnergy (β : ℝ) (m : ℕ) (h : gaugeInvariantSpace L) : ℝ :=
  Real.exp (-β * (spatialLinkCount L : ℝ)) *
    ∑ n ∈ Finset.range m, ((β / 2) ^ n / (n.factorial : ℝ)) *
      ∑ w : Fin n → SliceCoordinate L, (wordMoment L β w h) ^ 2

theorem finiteMomentEnergy_nonnegative (β : ℝ) (hβ : 0 ≤ β)
    (m : ℕ) (h : gaugeInvariantSpace L) : 0 ≤ finiteMomentEnergy L β m h := by
  classical
  unfold finiteMomentEnergy
  apply mul_nonneg (Real.exp_pos _).le
  apply Finset.sum_nonneg
  intro n _
  exact mul_nonneg
    (div_nonneg (pow_nonneg (div_nonneg hβ (by norm_num)) n) (Nat.cast_nonneg _))
    (Finset.sum_nonneg (fun _ _ => sq_nonneg _))

theorem continuous_finiteMomentEnergy (β : ℝ) (m : ℕ) :
    Continuous (finiteMomentEnergy L β m) := by
  classical
  unfold finiteMomentEnergy
  apply continuous_const.mul
  apply continuous_finsetSum
  intro n _
  apply continuous_const.mul
  apply continuous_finsetSum
  intro w _
  exact (continuous_wordMoment L β w).pow 2

theorem finiteMomentEnergy_embedding_le (β : ℝ) (hβ : 0 < β)
    (m : ℕ) (f : invariantContinuousSpace L) :
    finiteMomentEnergy L β m (invariantEmbedding L f) ≤
      inner ℝ (invariantEmbedding L f)
        (invariantOperator L β hβ.le (invariantEmbedding L f)) := by
  classical
  have hb := finiteWordSum_le_expGramIntegral (sliceHaar L)
    (div_nonneg hβ.le (by norm_num)) (sliceFeatures L) (continuous_sliceFeatures L)
    (sliceGram_abs_le L) (complexObservable L (weightedRealObservable L β f.val)) m
  have hm (n : ℕ) (w : Fin n → SliceCoordinate L) :
      (∫ a, wordObservable (sliceFeatures L) (continuous_sliceFeatures L)
        (complexObservable L (weightedRealObservable L β f.val)) w a ∂sliceHaar L) =
        (wordMoment L β w (invariantEmbedding L f) : ℂ) := by
    rw [wordMoment_embedding]
    simp only [wordObservable, complexObservable, ← Complex.ofReal_mul,
      integral_complex_ofReal]
  simp_rw [hm, Complex.norm_real, Real.norm_eq_abs, sq_abs] at hb
  have he : inner ℝ (invariantEmbedding L f)
      (invariantOperator L β hβ.le (invariantEmbedding L f)) =
      (GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeQuadratic.sliceQuadratic L β
        (complexObservable L f.val)).re :=
    inner_operator_of_continuous L β hβ.le f.val
  rw [he, sliceQuadratic_re_eq_expGram L β f.val f.property]
  exact mul_le_mul_of_nonneg_left hb (Real.exp_pos _).le

/-- Whole finite energy estimate on every class in the actual invariant L2 space. -/
theorem finiteMomentEnergy_le (β : ℝ) (hβ : 0 < β)
    (m : ℕ) (h : gaugeInvariantSpace L) :
    finiteMomentEnergy L β m h ≤ inner ℝ h (invariantOperator L β hβ.le h) := by
  have hc : IsClosed {v : gaugeInvariantSpace L |
      finiteMomentEnergy L β m v ≤ inner ℝ v (invariantOperator L β hβ.le v)} :=
    isClosed_le (continuous_finiteMomentEnergy L β m)
      (continuous_invariantQuadratic L β hβ.le)
  have hs : Set.range (invariantEmbedding L) ⊆ {v : gaugeInvariantSpace L |
      finiteMomentEnergy L β m v ≤ inner ℝ v (invariantOperator L β hβ.le v)} := by
    rintro v ⟨f, rfl⟩
    exact finiteMomentEnergy_embedding_le L β hβ m f
  exact (closure_minimal hs hc) ((invariantEmbedding_denseRange L) h)

theorem remainder_nonnegative (β : ℝ) (hβ : 0 < β)
    (m : ℕ) (h : gaugeInvariantSpace L) :
    0 ≤ inner ℝ h (invariantOperator L β hβ.le h) - finiteMomentEnergy L β m h :=
  sub_nonneg.mpr (finiteMomentEnergy_le L β hβ m h)

end GRWTSK.Geometry.GaugeTheory.WilsonSliceFiniteMomentEnergy
