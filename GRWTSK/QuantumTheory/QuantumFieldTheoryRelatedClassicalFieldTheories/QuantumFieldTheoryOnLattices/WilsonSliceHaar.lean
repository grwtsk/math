/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib finite-product measures retain Floris van Doorn's authorship;
finite-product integration retains Xavier Roblot's authorship and
Apache-2.0 license. Other imports retain their upstream attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceGeometry
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.FiniteSU2Wilson
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.MeasureTheory.Integral.Pi
import Mathlib.MeasureTheory.Function.LocallyIntegrable

/-!
# Full product-Haar disintegration into spatial and temporal histories

The currying bridge is proved on actual Haar rectangles, then composed with
the full link bijection and the sum-product measurable equivalence. Every
time layer and link is retained. The final disintegration is for every
continuous real or complex insertion on the full configuration.

SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar

open MeasureTheory Set
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2Haar
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson

/-- Only currying of the actual SU2 coordinate functions. -/
def uncurryEquiv (I J : Type*) : (I → J → SU2) ≃ᵐ (I × J → SU2) where
  toEquiv :=
    { toFun := fun a p => a p.1 p.2
      invFun := fun f i j => f (i, j)
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl }
  measurable_toFun := by
    apply Measurable.of_eval
    intro p
    exact (measurable_pi_apply p.2).comp (measurable_pi_apply p.1)
  measurable_invFun := by
    apply Measurable.of_eval
    intro i
    apply Measurable.of_eval
    intro j
    exact measurable_pi_apply (i, j)

/-- The nested product Haar equals the flat product under actual currying.
The proof checks all product rectangles, not an invariant-measure field. -/
theorem measurePreserving_uncurry (I J : Type*) [Fintype I] [Fintype J] :
    MeasurePreserving (uncurryEquiv I J)
      (Measure.pi (fun _ : I => productHaar J)) (productHaar (I × J)) where
  measurable := (uncurryEquiv I J).measurable
  map_eq := by
    unfold productHaar
    refine (Measure.pi_eq (fun s hs => ?_)).symm
    have hp : (uncurryEquiv I J) ⁻¹' Set.univ.pi s =
        Set.univ.pi (fun i => Set.univ.pi (fun j => s (i, j))) := by
      ext a
      simp only [Set.mem_preimage, Set.mem_pi, Set.mem_univ, forall_true_left]
      constructor
      · intro h i j
        exact h (i, j)
      · intro h p
        exact h p.1 p.2
    rw [Measure.map_apply (uncurryEquiv I J).measurable
      (MeasurableSet.univ_pi hs), hp, Measure.pi_pi]
    simp_rw [Measure.pi_pi]
    exact (Fintype.prod_prod_type (fun p : I × J => haarProbability (s p))).symm

variable (L : ℕ) [NeZero L]

def sliceHaar : Measure (Slice L SU2) := productHaar (SpatialLink L)
def sliceGaugeHaar : Measure (SliceGauge L SU2) := productHaar (SpatialVertex L)
def spatialHistoryHaar : Measure (SpatialHistory L SU2) :=
  Measure.pi (fun _ : ZMod L => sliceHaar L)
def temporalHistoryHaar : Measure (TemporalHistory L SU2) :=
  Measure.pi (fun _ : ZMod L => sliceGaugeHaar L)

instance sliceHaar_probability : IsProbabilityMeasure (sliceHaar L) := by
  unfold sliceHaar
  infer_instance
instance sliceGaugeHaar_probability : IsProbabilityMeasure (sliceGaugeHaar L) := by
  unfold sliceGaugeHaar
  infer_instance
instance spatialHistoryHaar_probability : IsProbabilityMeasure (spatialHistoryHaar L) := by
  unfold spatialHistoryHaar
  infer_instance
instance temporalHistoryHaar_probability : IsProbabilityMeasure (temporalHistoryHaar L) := by
  unfold temporalHistoryHaar
  infer_instance

def historyMeasurableEquiv :
    SpatialHistory L SU2 × TemporalHistory L SU2 ≃ᵐ Configuration L SU2 :=
  ((MeasurableEquiv.prodCongr
    (uncurryEquiv (ZMod L) (SpatialLink L))
    (uncurryEquiv (ZMod L) (SpatialVertex L))).trans
      (MeasurableEquiv.sumPiEquivProdPi (fun _ : LinkIndex L => SU2)).symm).trans
    (MeasurableEquiv.arrowCongr' (linkIndexEquiv L) (MeasurableEquiv.refl SU2))

theorem historyMeasurableEquiv_at_index
    (p : SpatialHistory L SU2 × TemporalHistory L SU2) (k : LinkIndex L) :
    historyMeasurableEquiv L p (linkIndex k) =
      Sum.elim (fun q => p.1 q.1 q.2) (fun q => p.2 q.1 q.2) k := by
  change Sum.elim (fun q => p.1 q.1 q.2) (fun q => p.2 q.1 q.2)
    ((linkIndexEquiv L).symm (linkIndexEquiv L k)) = _
  rw [Equiv.symm_apply_apply]

theorem historyMeasurableEquiv_eq_assemble :
    (historyMeasurableEquiv L :
      SpatialHistory L SU2 × TemporalHistory L SU2 → Configuration L SU2) =
      (fun p => assemble p.1 p.2) := by
  funext p e
  obtain ⟨k, rfl⟩ := (linkIndexEquiv L).surjective e
  rw [historyMeasurableEquiv_at_index]
  rcases k with ⟨r, s, i⟩ | ⟨r, s⟩ <;> rfl

theorem measurePreserving_historyEquiv :
    MeasurePreserving (historyMeasurableEquiv L)
      ((spatialHistoryHaar L).prod (temporalHistoryHaar L)) (referenceMeasure L) := by
  have h1 := (measurePreserving_uncurry (ZMod L) (SpatialLink L)).prod
    (measurePreserving_uncurry (ZMod L) (SpatialVertex L))
  have h2 := measurePreserving_sumPiEquivProdPi_symm
    (fun _ : LinkIndex L => haarProbability)
  have h3 := measurePreserving_arrowCongr'
    (fun _ : LinkIndex L => haarProbability) (fun _ : Link L => haarProbability)
    (linkIndexEquiv L) (MeasurableEquiv.refl SU2)
    (fun _ => (show MeasurePreserving (fun x : SU2 => x)
      haarProbability haarProbability from ⟨measurable_id, by simp⟩))
  exact h3.comp (h2.comp h1)

theorem measurePreserving_assemble :
    MeasurePreserving
      (fun p : SpatialHistory L SU2 × TemporalHistory L SU2 => assemble p.1 p.2)
      ((spatialHistoryHaar L).prod (temporalHistoryHaar L)) (referenceMeasure L) := by
  rw [← historyMeasurableEquiv_eq_assemble L]
  exact measurePreserving_historyEquiv L

/-- All temporal histories remain as the full inner Haar integration. -/
theorem integral_assemble {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [CompleteSpace E] (I : C(Configuration L SU2, E)) :
    (∫ U, I U ∂referenceMeasure L) =
      ∫ a, ∫ g, I (assemble a g) ∂temporalHistoryHaar L ∂spatialHistoryHaar L := by
  have hi : Integrable (fun p : SpatialHistory L SU2 × TemporalHistory L SU2 =>
      I (assemble p.1 p.2)) ((spatialHistoryHaar L).prod (temporalHistoryHaar L)) :=
    (I.continuous.comp continuous_assemble).integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)
  calc
    _ = ∫ p, I (assemble p.1 p.2)
        ∂((spatialHistoryHaar L).prod (temporalHistoryHaar L)) :=
      ((measurePreserving_assemble L).integral_comp
        (configurationHomeomorph L SU2).measurableEmbedding I).symm
    _ = _ := integral_prod _ hi

end GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar

