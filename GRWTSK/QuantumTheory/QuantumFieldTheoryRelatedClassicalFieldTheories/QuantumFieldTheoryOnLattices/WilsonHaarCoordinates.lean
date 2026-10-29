/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib finite-product measures retain Floris van Doorn's authorship.
Imported GRWTSK and other Mathlib retain their attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonTimeSplit
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.ReflectionHaar
import Mathlib.MeasureTheory.Function.LocallyIntegrable
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Actual product-Haar coordinates for both time halves and both crossing layers

The finite index bijection gives a measurable equivalence from two copies
of the positive interior coordinates and all crossing coordinates to the
full configuration. The second copy uses temporal inversion, exactly as
the maintained reflection. Each sum split, index permutation and inversion
is proved measure preserving. No boundary coordinate is discarded.
The terminal identity is actual product-Haar disintegration, used by the
conditional boundary-gauge integration argument.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
attribute [local instance] Classical.propDecidable

namespace GRWTSK.Geometry.GaugeTheory.WilsonHaarCoordinates

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2Haar
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.ReflectionHaar
open GRWTSK.Geometry.GaugeTheory.WilsonTimeSplit

abbrev HalfConfig (T : ℕ) := PlusLink T → SU2
abbrev CrossConfig (T : ℕ) := CrossLink T → SU2
abbrev Parts (T : ℕ) := (HalfConfig T × HalfConfig T) × CrossConfig T

section NonzeroPeriod
variable (T : ℕ) [NeZero (2 * T)]

def halfMeasure : Measure (HalfConfig T) := productHaar (PlusLink T)
def crossMeasure : Measure (CrossConfig T) := productHaar (CrossLink T)
def partsMeasure : Measure (Parts T) :=
  ((halfMeasure T).prod (halfMeasure T)).prod (crossMeasure T)

instance halfMeasure_isProbabilityMeasure : IsProbabilityMeasure (halfMeasure T) := by
  unfold halfMeasure
  infer_instance

instance crossMeasure_isProbabilityMeasure : IsProbabilityMeasure (crossMeasure T) := by
  unfold crossMeasure
  infer_instance

instance partsMeasure_isProbabilityMeasure : IsProbabilityMeasure (partsMeasure T) := by
  unfold partsMeasure
  infer_instance

/-- Temporal inversion on the second positive copy only. -/
def halfOrient (v : HalfConfig T) : HalfConfig T :=
  selectiveInverse (fun e : PlusLink T => e.val.2 = 0) v

theorem halfOrient_involutive : Function.Involutive (halfOrient T) := by
  intro v
  funext e
  by_cases he : e.val.2 = 0 <;> simp [halfOrient, selectiveInverse, he]

def halfOrientEquiv : HalfConfig T ≃ᵐ HalfConfig T where
  toEquiv := ⟨halfOrient T, halfOrient T, halfOrient_involutive T, halfOrient_involutive T⟩
  measurable_toFun :=
    (measurePreserving_selectiveInverse (fun e : PlusLink T => e.val.2 = 0)).measurable
  measurable_invFun :=
    (measurePreserving_selectiveInverse (fun e : PlusLink T => e.val.2 = 0)).measurable

def partsOrientEquiv : Parts T ≃ᵐ Parts T :=
  MeasurableEquiv.prodCongr
    (MeasurableEquiv.prodCongr (MeasurableEquiv.refl _) (halfOrientEquiv T))
    (MeasurableEquiv.refl _)

/-- Raw coordinate joining before the negative temporal inversions. -/
def rawGlueEquiv (hT : 2 ≤ T) : Parts T ≃ᵐ Config T :=
  ((MeasurableEquiv.prodCongr
    (MeasurableEquiv.sumPiEquivProdPi (fun _ : PlusLink T ⊕ PlusLink T => SU2)).symm
    (MeasurableEquiv.refl _)).trans
      (MeasurableEquiv.sumPiEquivProdPi
        (fun _ : (PlusLink T ⊕ PlusLink T) ⊕ CrossLink T => SU2)).symm).trans
    (MeasurableEquiv.arrowCongr' (linkIndexEquiv T hT) (MeasurableEquiv.refl SU2))

/-- Actual full-coordinate gluing, including every crossing variable. -/
def glueEquiv (hT : 2 ≤ T) : Parts T ≃ᵐ Config T :=
  (partsOrientEquiv T).trans (rawGlueEquiv T hT)

def glue (hT : 2 ≤ T) (u v : HalfConfig T) (t : CrossConfig T) : Config T :=
  glueEquiv T hT ((u, v), t)

theorem rawGlue_at_index (hT : 2 ≤ T) (a : Parts T)
    (k : (PlusLink T ⊕ PlusLink T) ⊕ CrossLink T) :
    rawGlueEquiv T hT a (linkIndex T k) =
      Sum.elim (Sum.elim a.1.1 a.1.2) a.2 k := by
  change Sum.elim (Sum.elim a.1.1 a.1.2) a.2
    ((linkIndexEquiv T hT).symm (linkIndexEquiv T hT k)) = _
  rw [Equiv.symm_apply_apply]

@[simp] theorem glue_plus (hT : 2 ≤ T) (u v : HalfConfig T) (t : CrossConfig T)
    (e : PlusLink T) : glue T hT u v t e.val = u e :=
  rawGlue_at_index T hT ((u, halfOrient T v), t) (.inl (.inl e))

@[simp] theorem glue_minus (hT : 2 ≤ T) (u v : HalfConfig T) (t : CrossConfig T)
    (e : PlusLink T) :
    glue T hT u v t (reflectLink e.val) =
      if e.val.2 = 0 then (v e)⁻¹ else v e :=
  rawGlue_at_index T hT ((u, halfOrient T v), t) (.inl (.inr e))

@[simp] theorem glue_cross (hT : 2 ≤ T) (u v : HalfConfig T) (t : CrossConfig T)
    (e : CrossLink T) : glue T hT u v t e.val = t e :=
  rawGlue_at_index T hT ((u, halfOrient T v), t) (.inr e)

theorem continuous_glue (hT : 2 ≤ T) :
    Continuous (fun a : Parts T => glue T hT a.1.1 a.1.2 a.2) := by
  apply continuous_pi
  intro e
  obtain ⟨k, rfl⟩ := linkIndex_surjective hT e
  rcases k with (p | p) | c
  · simpa only [linkIndex, glue_plus] using
      (continuous_apply p).comp continuous_fst.fst
  · by_cases hp : p.val.2 = 0
    · simpa only [linkIndex, glue_minus, if_pos hp] using
        ((continuous_apply p).comp continuous_fst.snd).inv
    · simpa only [linkIndex, glue_minus, if_neg hp] using
        (continuous_apply p).comp continuous_fst.snd
  · simpa only [linkIndex, glue_cross] using
      (continuous_apply c).comp continuous_snd

theorem measurePreserving_partsOrient :
    MeasurePreserving (partsOrientEquiv T) (partsMeasure T) (partsMeasure T) := by
  have hid : MeasurePreserving (fun u : HalfConfig T => u) (halfMeasure T) (halfMeasure T) :=
    ⟨measurable_id, by simp⟩
  have hic : MeasurePreserving (fun t : CrossConfig T => t) (crossMeasure T) (crossMeasure T) :=
    ⟨measurable_id, by simp⟩
  have hi : MeasurePreserving (halfOrientEquiv T) (halfMeasure T) (halfMeasure T) :=
    measurePreserving_selectiveInverse (fun e : PlusLink T => e.val.2 = 0)
  exact (hid.prod hi).prod hic

theorem measurePreserving_rawGlue (hT : 2 ≤ T) :
    MeasurePreserving (rawGlueEquiv T hT) (partsMeasure T) (referenceMeasure (2 * T)) := by
  have h1 := measurePreserving_sumPiEquivProdPi_symm
    (fun _ : PlusLink T ⊕ PlusLink T => haarProbability)
  have hc : MeasurePreserving (fun t : CrossConfig T => t) (crossMeasure T) (crossMeasure T) :=
    ⟨measurable_id, by simp⟩
  have h2 := measurePreserving_sumPiEquivProdPi_symm
    (fun _ : (PlusLink T ⊕ PlusLink T) ⊕ CrossLink T => haarProbability)
  have h3 := measurePreserving_arrowCongr'
    (fun _ : (PlusLink T ⊕ PlusLink T) ⊕ CrossLink T => haarProbability)
    (fun _ : Link (2 * T) => haarProbability)
    (linkIndexEquiv T hT) (MeasurableEquiv.refl SU2)
    (fun _ => (show MeasurePreserving (fun g : SU2 => g)
      haarProbability haarProbability from ⟨measurable_id, by simp⟩))
  exact h3.comp (h2.comp (h1.prod hc))

/-- No invariance is assumed: each finite split, permutation and inverse is paid. -/
theorem measurePreserving_glue (hT : 2 ≤ T) :
    MeasurePreserving (glueEquiv T hT) (partsMeasure T) (referenceMeasure (2 * T)) :=
  (measurePreserving_rawGlue T hT).comp (measurePreserving_partsOrient T)

/-- The literal product-Haar coordinate disintegration, before gauge fixing. -/
theorem integral_glue (hT : 2 ≤ T) (I : C(Config T, ℂ)) :
    (∫ U, I U ∂referenceMeasure (2 * T)) =
      ∫ a, ∫ t, I (glue T hT a.1 a.2 t) ∂crossMeasure T
        ∂((halfMeasure T).prod (halfMeasure T)) := by
  have hi : Integrable (fun a : Parts T => I (glueEquiv T hT a)) (partsMeasure T) :=
    (I.continuous.comp (continuous_glue T hT)).integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)
  calc
    _ = ∫ a : Parts T, I (glueEquiv T hT a) ∂partsMeasure T :=
      ((measurePreserving_glue T hT).integral_comp'
        (fun U : Config T => I U)).symm
    _ = _ := integral_prod _ hi

/-- The same full disintegration with the crossing Haar integration outermost. -/
theorem integral_glue_cross_first (hT : 2 ≤ T) (I : C(Config T, ℂ)) :
    (∫ U, I U ∂referenceMeasure (2 * T)) =
      ∫ t, ∫ a, I (glue T hT a.1 a.2 t)
        ∂((halfMeasure T).prod (halfMeasure T)) ∂crossMeasure T := by
  have hi : Integrable (fun a : Parts T => I (glueEquiv T hT a)) (partsMeasure T) :=
    (I.continuous.comp (continuous_glue T hT)).integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)
  calc
    _ = ∫ a : Parts T, I (glueEquiv T hT a) ∂partsMeasure T :=
      ((measurePreserving_glue T hT).integral_comp'
        (fun U : Config T => I U)).symm
    _ = _ := integral_prod_symm _ hi

/-- The second half is precisely the positive restriction of the reflected field. -/
theorem reflection_glue_plus (hT : 2 ≤ T) (u v : HalfConfig T)
    (t : CrossConfig T) (e : PlusLink T) :
    reflection (glue T hT u v t) e.val = v e := by
  by_cases he : e.val.2 = 0
  · simp only [reflection, if_pos he, glue_minus, if_pos he, inv_inv]
  · simp only [reflection, if_neg he, glue_minus, if_neg he]

/-- Positive, reflected-positive and crossing restrictions determine the full field. -/
theorem config_ext (hT : 2 ≤ T) {U V : Config T}
    (hp : ∀ e : PlusLink T, U e.val = V e.val)
    (hn : ∀ e : PlusLink T, reflection U e.val = reflection V e.val)
    (hc : ∀ e : CrossLink T, U e.val = V e.val) : U = V := by
  funext e
  obtain ⟨k, rfl⟩ := linkIndex_surjective hT e
  rcases k with (p | p) | c
  · exact hp p
  · have hh := hn p
    by_cases he : p.val.2 = 0
    · simp only [reflection, if_pos he] at hh
      exact inv_injective hh
    · simpa only [reflection, if_neg he] using hh
  · exact hc c

end NonzeroPeriod
end GRWTSK.Geometry.GaugeTheory.WilsonHaarCoordinates
