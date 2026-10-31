/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonBlockArithmeticCovariance
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceRegularity

/-!
# Actual spatial plaquette blocks at fixed periodic time

The maintained plaquetteIndexEquiv supplies the spatial embedding. Finite images
preserve every plaquette once, and the literal block energy equals a continuous
spatial-history observable. Links of a spatial block remain at its time index;
distinct-time blocks therefore have disjoint actual link supports. This gives
no independence, decay, trace identity or ground-state substitution.
SOURCE_PROOF_CANDIDATE; compile, replay, axioms and expected interface NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockLift
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonBlockArithmeticCovariance
variable (L : ℕ) [NeZero L]

def spatialPlaquetteEmbedding (r : ZMod L) : SpatialPlaquette L ↪ Plaquette L where
  toFun p := plaquetteIndexEquiv L (.inl (r, p))
  inj' := by
    intro p q h
    exact congrArg Prod.snd (Sum.inl.inj ((plaquetteIndexEquiv L).injective h))

def liftBlock (r : ZMod L) (B : Finset (SpatialPlaquette L)) : Finset (Plaquette L) :=
  B.map (spatialPlaquetteEmbedding L r)

def sliceBlockEnergy (B : Finset (SpatialPlaquette L)) (a : Slice L SU2) : ℝ :=
  ∑ p ∈ B, penalty (sliceHolonomy a p)

def historyBlockEnergy (r : ZMod L) (B : Finset (SpatialPlaquette L))
    (a : SpatialHistory L SU2) : ℝ := sliceBlockEnergy L B (a r)

theorem continuous_sliceBlockEnergy (B : Finset (SpatialPlaquette L)) :
    Continuous (sliceBlockEnergy L B) := by
  apply continuous_finsetSum
  intro p _
  exact continuous_penalty.comp (continuous_sliceHolonomy L p)

theorem continuous_historyBlockEnergy (r : ZMod L) (B : Finset (SpatialPlaquette L)) :
    Continuous (historyBlockEnergy L r B) :=
  (continuous_sliceBlockEnergy L B).comp (continuous_apply r)

theorem blockEnergy_lift (r : ZMod L) (B : Finset (SpatialPlaquette L))
    (U : Configuration L SU2) :
    blockEnergy L (liftBlock L r B) U = historyBlockEnergy L r B (spatialHistory U) := by
  simp only [blockEnergy, liftBlock, Finset.sum_map, historyBlockEnergy, sliceBlockEnergy]
  apply Finset.sum_congr rfl
  intro p _
  have h := spatialHolonomy_assemble (spatialHistory U) (temporalHistory U) r p
  rw [assemble_histories] at h
  exact congrArg penalty h

theorem lifted_link_time (r : ZMod L) (p : SpatialPlaquette L) (e : Link L)
    (he : e ∈ plaquetteLinks L (spatialPlaquetteEmbedding L r p)) : e.1 0 = r := by
  change e ∈ {(joinVertex r p.1, p.2.val.1.succ),
    (shift (joinVertex r p.1) p.2.val.1.succ, p.2.val.2.succ),
    (shift (joinVertex r p.1) p.2.val.2.succ, p.2.val.1.succ),
    (joinVertex r p.1, p.2.val.2.succ)} at he
  simp only [Finset.mem_insert, Finset.mem_singleton] at he
  rcases he with rfl | rfl | rfl | rfl <;> simp [shift_join_space]

theorem liftBlock_link_time (r : ZMod L) (B : Finset (SpatialPlaquette L)) (e : Link L)
    (he : e ∈ linkSupport L (liftBlock L r B)) : e.1 0 = r := by
  rcases Finset.mem_biUnion.mp he with ⟨p, hp, he⟩
  rcases Finset.mem_map.mp hp with ⟨q, _, rfl⟩
  exact lifted_link_time L r q e he

theorem liftBlock_separated (r s : ZMod L) (hrs : r ≠ s)
    (B C : Finset (SpatialPlaquette L)) :
    Separated L (liftBlock L r B) (liftBlock L s C) := by
  apply Finset.disjoint_left.mpr
  intro e he he'
  exact hrs ((liftBlock_link_time L r B e he).symm.trans (liftBlock_link_time L s C e he'))

def exampleSpatialPlaquette : SpatialPlaquette 8 :=
  (fun _ => 0, ⟨(0, 1), by decide⟩)

/-- These have full directions 1,2 and distinct times 0,3 for the existing time axis 0. -/
theorem example_temporal_blocks_separated :
    Separated 8 (liftBlock 8 0 {exampleSpatialPlaquette})
      (liftBlock 8 3 {exampleSpatialPlaquette}) :=
  liftBlock_separated 8 0 3 (by decide) _ _

end GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockLift
