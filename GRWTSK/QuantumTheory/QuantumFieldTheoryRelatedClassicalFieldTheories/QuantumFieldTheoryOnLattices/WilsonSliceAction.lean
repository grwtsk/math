/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceHaar
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonTimeReflection
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.YangMillsAndOtherGaugeTheoriesInQuantumFieldTheory.SU2WilsonPositiveType

/-!
# The actual spatial action and temporal Wilson factors

The temporal plaquette is g(s)*b(s,i)*g(s+e_i)^(-1)*a(s,i)^(-1).
Its penalty is matched to the existing wilsonKernel using penalty_inv.
The full action is reindexed by the actual plaquette bijection. V, M, W and K
below use the existing SU2 penalty and actual slice/gauge Haar probabilities.

SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceAction

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2WilsonPositiveType
open GRWTSK.Geometry.GaugeTheory.WilsonTimeReflection
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson

theorem spatialShift_comm {L : ℕ} (s : SpatialVertex L) (i j : Fin 3) :
    spatialShift (spatialShift s i) j = spatialShift (spatialShift s j) i := by
  funext k
  simp only [spatialShift]
  ac_rfl

section Group
variable {L : ℕ} {G : Type*} [Group G]

def sliceGaugeAction (h : SliceGauge L G) (a : Slice L G) : Slice L G :=
  fun e => h e.1 * a e * (h (spatialShift e.1 e.2))⁻¹

theorem sliceGauge_one (a : Slice L G) : sliceGaugeAction 1 a = a := by
  funext e
  simp [sliceGaugeAction]

theorem sliceGauge_mul (h k : SliceGauge L G) (a : Slice L G) :
    sliceGaugeAction (h * k) a = sliceGaugeAction h (sliceGaugeAction k a) := by
  funext e
  simp only [sliceGaugeAction, Pi.mul_apply, mul_inv_rev]
  group

def spatialPlaquetteHolonomy (a : Slice L G) (s : SpatialVertex L) (i j : Fin 3) : G :=
  a (s, i) * a (spatialShift s i, j) * (a (spatialShift s j, i))⁻¹ * (a (s, j))⁻¹

def sliceHolonomy (a : Slice L G) (p : SpatialPlaquette L) : G :=
  spatialPlaquetteHolonomy a p.1 p.2.val.1 p.2.val.2

def temporalHolonomy (a b : Slice L G) (g : SliceGauge L G) (e : SpatialLink L) : G :=
  g e.1 * b e * (g (spatialShift e.1 e.2))⁻¹ * (a e)⁻¹

/-- The slice gauge is the restriction of the actual four-dimensional gauge. -/
theorem spatialHistory_gauge (h : Gauge L G) (U : Configuration L G) (r : ZMod L) :
    spatialHistory (gaugeTransform h U) r =
      sliceGaugeAction (fun s => h (joinVertex r s)) (spatialHistory U r) := by
  funext e
  simp only [spatialHistory, gaugeTransform, sliceGaugeAction, shift_join_space]

/-- The temporal link keeps its distinct r and r+1 endpoint gauges. -/
theorem temporalHistory_gauge (h : Gauge L G) (U : Configuration L G)
    (r : ZMod L) (s : SpatialVertex L) :
    temporalHistory (gaugeTransform h U) r s =
      h (joinVertex r s) * temporalHistory U r s * (h (joinVertex (r + 1) s))⁻¹ := by
  simp only [temporalHistory, gaugeTransform, shift_join_time]

theorem spatialHolonomy_assemble (a : SpatialHistory L G) (g : TemporalHistory L G)
    (r : ZMod L) (p : SpatialPlaquette L) :
    holonomy (assemble a g) (plaquetteIndex (.inl (r, p))) = sliceHolonomy (a r) p := by
  change plaquetteHolonomy (assemble a g) (joinVertex r p.1)
    p.2.val.1.succ p.2.val.2.succ = _
  simp only [plaquetteHolonomy, shift_join_space, assemble_space,
    sliceHolonomy, spatialPlaquetteHolonomy]

/-- Literal original temporal plaquette, including both inverse links. -/
theorem temporalHolonomy_assemble (a : SpatialHistory L G) (g : TemporalHistory L G)
    (r : ZMod L) (e : SpatialLink L) :
    holonomy (assemble a g) (plaquetteIndex (.inr (r, e))) =
      temporalHolonomy (a r) (a (r + 1)) (g r) e := by
  change plaquetteHolonomy (assemble a g) (joinVertex r e.1) 0 e.2.succ = _
  simp only [plaquetteHolonomy, shift_join_time, shift_join_space,
    assemble_space, assemble_time, temporalHolonomy]

theorem sliceHolonomy_gauge (h : SliceGauge L G) (a : Slice L G)
    (p : SpatialPlaquette L) :
    sliceHolonomy (sliceGaugeAction h a) p =
      h p.1 * sliceHolonomy a p * (h p.1)⁻¹ := by
  unfold sliceHolonomy spatialPlaquetteHolonomy sliceGaugeAction
  rw [spatialShift_comm p.1 p.2.val.2 p.2.val.1]
  group

end Group

variable (L : ℕ) [NeZero L]

/-- V, the actual spatial plaquette sum; each of its three direction pairs occurs once. -/
def sliceAction (a : Slice L SU2) : ℝ :=
  ∑ p : SpatialPlaquette L, penalty (sliceHolonomy a p)

def temporalAction (a b : Slice L SU2) (g : SliceGauge L SU2) : ℝ :=
  ∑ e : SpatialLink L, penalty (temporalHolonomy a b g e)

/-- M is one half of a spatial action weight, with the prescribed normalization. -/
def halfSpatialWeight (β : ℝ) (a : Slice L SU2) : ℝ :=
  Real.exp (-β * sliceAction L a / 2)

/-- W uses every actual spatial link once and the maintained local kernel. -/
def sliceWilsonProduct (β : ℝ) (a b : Slice L SU2) : ℝ :=
  ∏ e : SpatialLink L, wilsonKernel β (a e) (b e)

/-- K is a constructed integral over every temporal link of one time layer. -/
def sliceKernel (β : ℝ) (a b : Slice L SU2) : ℝ :=
  halfSpatialWeight L β a * halfSpatialWeight L β b *
    ∫ g, sliceWilsonProduct L β a (sliceGaugeAction g b) ∂sliceGaugeHaar L

theorem temporalPenalty_match (a b : Slice L SU2) (g : SliceGauge L SU2)
    (e : SpatialLink L) :
    penalty (temporalHolonomy a b g e) =
      penalty (a e * (sliceGaugeAction g b e)⁻¹) := by
  have he : temporalHolonomy a b g e =
      (a e * (sliceGaugeAction g b e)⁻¹)⁻¹ := by
    unfold temporalHolonomy sliceGaugeAction
    group
  rw [he, penalty_inv]

theorem temporalWeight_eq_W (β : ℝ) (a b : Slice L SU2) (g : SliceGauge L SU2) :
    Real.exp (-β * temporalAction L a b g) =
      sliceWilsonProduct L β a (sliceGaugeAction g b) := by
  unfold temporalAction sliceWilsonProduct
  rw [Finset.mul_sum, Real.exp_sum]
  apply Finset.prod_congr rfl
  intro e _
  rw [temporalPenalty_match]
  rfl

/-- Complete original action reindexing. No boundary, direction or multiplicity is omitted. -/
theorem wilsonAction_assemble (a : SpatialHistory L SU2) (g : TemporalHistory L SU2) :
    wilsonAction L (assemble a g) =
      (∑ r : ZMod L, sliceAction L (a r)) +
        ∑ r : ZMod L, temporalAction L (a r) (a (r + 1)) (g r) := by
  unfold wilsonAction
  rw [← (plaquetteIndexEquiv L).sum_comp
    (fun p => penalty (holonomy (assemble a g) p))]
  simp only [Fintype.sum_sum_type, Fintype.sum_prod_type, spatialHolonomy_assemble,
    temporalHolonomy_assemble, sliceAction, temporalAction]

theorem boltzmann_assemble (β : ℝ) (a : SpatialHistory L SU2) (g : TemporalHistory L SU2) :
    Real.exp (-β * wilsonAction L (assemble a g)) =
      (∏ r : ZMod L, Real.exp (-β * sliceAction L (a r))) *
        ∏ r : ZMod L, sliceWilsonProduct L β (a r) (sliceGaugeAction (g r) (a (r + 1))) := by
  rw [wilsonAction_assemble, mul_add, Real.exp_add]
  congr 1
  · rw [Finset.mul_sum, Real.exp_sum]
  · rw [Finset.mul_sum, Real.exp_sum]
    apply Finset.prod_congr rfl
    intro r _
    exact temporalWeight_eq_W L β (a r) (a (r + 1)) (g r)

theorem sliceAction_bounds (a : Slice L SU2) :
    0 ≤ sliceAction L a ∧ sliceAction L a ≤ 2 * (Fintype.card (SpatialPlaquette L) : ℝ) := by
  constructor
  · exact Finset.sum_nonneg (fun p _ => (penalty_bounds (sliceHolonomy a p)).1)
  · calc
      _ ≤ ∑ _p : SpatialPlaquette L, (2 : ℝ) :=
        Finset.sum_le_sum (fun p _ => (penalty_bounds (sliceHolonomy a p)).2)
      _ = _ := by simp; ring

theorem sliceAction_gauge (h : SliceGauge L SU2) (a : Slice L SU2) :
    sliceAction L (sliceGaugeAction h a) = sliceAction L a := by
  unfold sliceAction
  apply Finset.sum_congr rfl
  intro p _
  rw [sliceHolonomy_gauge, penalty_conjugation]

theorem W_symm (β : ℝ) (a b : Slice L SU2) :
    sliceWilsonProduct L β a b = sliceWilsonProduct L β b a := by
  unfold sliceWilsonProduct
  apply Finset.prod_congr rfl
  intro e _
  exact wilsonKernel_symm β (a e) (b e)

theorem W_gauge (β : ℝ) (h : SliceGauge L SU2) (a b : Slice L SU2) :
    sliceWilsonProduct L β (sliceGaugeAction h a) (sliceGaugeAction h b) =
      sliceWilsonProduct L β a b := by
  unfold sliceWilsonProduct
  apply Finset.prod_congr rfl
  intro e _
  exact wilsonKernel_bitransport β (h e.1) (h (spatialShift e.1 e.2)) (a e) (b e)

def timeSuccessorEquiv : ZMod L ≃ ZMod L where
  toFun r := r + 1
  invFun r := r - 1
  left_inv r := by ring
  right_inv r := by ring

theorem M_square (β : ℝ) (a : Slice L SU2) :
    halfSpatialWeight L β a * halfSpatialWeight L β a =
      Real.exp (-β * sliceAction L a) := by
  unfold halfSpatialWeight
  rw [← Real.exp_add]
  congr 1
  ring

/-- The cyclic successor is a permutation. Both adjacent half weights restore
each full spatial action exactly, including at the periodic seam. -/
theorem product_adjacent_M (β : ℝ) (a : SpatialHistory L SU2) :
    (∏ r : ZMod L, halfSpatialWeight L β (a r) * halfSpatialWeight L β (a (r + 1))) =
      ∏ r : ZMod L, Real.exp (-β * sliceAction L (a r)) := by
  rw [Finset.prod_mul_distrib]
  have hs : (∏ r : ZMod L, halfSpatialWeight L β (a (r + 1))) =
      ∏ r : ZMod L, halfSpatialWeight L β (a r) :=
    (timeSuccessorEquiv L).prod_comp (fun r => halfSpatialWeight L β (a r))
  rw [hs, ← Finset.prod_mul_distrib]
  apply Finset.prod_congr rfl
  intro r _
  exact M_square L β (a r)

theorem cyclicKernel_factor (β : ℝ) (a : SpatialHistory L SU2) :
    (∏ r : ZMod L, sliceKernel L β (a r) (a (r + 1))) =
      (∏ r : ZMod L, Real.exp (-β * sliceAction L (a r))) *
        ∏ r : ZMod L,
          ∫ g, sliceWilsonProduct L β (a r) (sliceGaugeAction g (a (r + 1)))
            ∂sliceGaugeHaar L := by
  simp only [sliceKernel, Finset.prod_mul_distrib]
  rw [← Finset.prod_mul_distrib, product_adjacent_M]

end GRWTSK.Geometry.GaugeTheory.WilsonSliceAction

