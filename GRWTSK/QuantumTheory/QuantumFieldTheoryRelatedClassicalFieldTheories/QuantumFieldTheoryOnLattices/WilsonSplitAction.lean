/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonHalfObservables
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonCrossPlaquetteKernel

/-!
# The actual Wilson action at unit crossing transports

Plaquettes are partitioned using their first positive edge. Since the
second direction is spatial, positivity of that edge is equivalent to all
four vertices being positive; all four link incidences are proved. The
negative action is reindexed by the existing reflected plaquette bijection.
Both sets of temporal crossing plaquettes remain.

At time0 the crossing holonomy is u(ell)*v(ell)^-1; at timeT it is
v(ell)*u(ell)^-1. The spatial index ell is constructed from the actual
plaquette. Kernel symmetry pays exactly the reversed time-T orientation.
The final exponential identity is consumed by the reflection-form gluing
theorem; no factorization certificate or positivity premise is supplied.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
attribute [local instance] Classical.propDecidable
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.WilsonSplitAction

open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.WilsonTimeReflection
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2WilsonPositiveType
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonTimeSplit
open GRWTSK.Geometry.GaugeTheory.WilsonHaarCoordinates
open GRWTSK.Geometry.GaugeTheory.WilsonHalfObservables

def firstLink {L : ℕ} (p : Plaquette L) : Link L := (p.1, p.2.1.1)

def positivePlaquette (T : ℕ) (p : Plaquette (2 * T)) : Prop :=
  positiveInteriorLink T (firstLink p)

abbrev CrossPlaquette (T : ℕ) :=
  {p : Plaquette (2 * T) // crossingLink T (firstLink p)}

theorem second_direction_ne_zero {L : ℕ} (p : Plaquette L) : p.2.1.2 ≠ 0 := by
  rcases p with ⟨x, ⟨⟨μ, ν⟩, hlt⟩⟩
  intro h
  subst ν
  exact (Nat.not_lt_zero μ.val) hlt

theorem positiveVertex_shift_spatial {T : ℕ} (x : Vertex (2 * T))
    (ν : Fin 4) (hν : ν ≠ 0) :
    positiveVertex T (shift x ν) ↔ positiveVertex T x := by
  simp only [positiveVertex, shift, if_neg (Ne.symm hν), add_zero]

/-- Every link incidence is in the original positive interior inventory. -/
theorem positivePlaquette_edges {T : ℕ} (p : Plaquette (2 * T))
    (hp : positivePlaquette T p) :
    positiveInteriorLink T (p.1, p.2.1.1) ∧
      positiveInteriorLink T (shift p.1 p.2.1.1, p.2.1.2) ∧
      positiveInteriorLink T (shift p.1 p.2.1.2, p.2.1.1) ∧
      positiveInteriorLink T (p.1, p.2.1.2) := by
  let x := p.1
  let μ := p.2.1.1
  let ν := p.2.1.2
  have hν : ν ≠ 0 := second_direction_ne_zero p
  change positiveInteriorLink T (x, μ) at hp
  refine ⟨hp, ?_, ?_, ?_⟩
  · exact (positiveInteriorLink_spatial_iff (shift x μ) ν hν).mpr hp.2
  · constructor
    · exact (positiveVertex_shift_spatial x ν hν).mpr hp.1
    · rw [shift_comm x ν μ]
      exact (positiveVertex_shift_spatial (shift x μ) ν hν).mpr hp.2
  · exact (positiveInteriorLink_spatial_iff x ν hν).mpr hp.1

/-- The first-edge criterion is exactly the wholly-positive vertex inventory. -/
theorem positivePlaquette_iff_vertices {T : ℕ} (p : Plaquette (2 * T)) :
    positivePlaquette T p ↔
      positiveVertex T p.1 ∧ positiveVertex T (shift p.1 p.2.1.1) ∧
        positiveVertex T (shift p.1 p.2.1.2) ∧
          positiveVertex T (shift (shift p.1 p.2.1.1) p.2.1.2) := by
  constructor
  · intro hp
    have he := positivePlaquette_edges p hp
    exact ⟨he.1.1, he.1.2, he.2.2.2.2,
      he.2.1.2⟩
  · intro hp
    exact ⟨hp.1, hp.2.1⟩

theorem holonomy_eq_of_positive_agreement {T : ℕ} (U V : Config T)
    (hUV : ∀ e : Link (2 * T), positiveInteriorLink T e → U e = V e)
    (p : Plaquette (2 * T)) (hp : positivePlaquette T p) :
    holonomy U p = holonomy V p := by
  have he := positivePlaquette_edges p hp
  unfold holonomy plaquetteHolonomy
  rw [hUV _ he.1, hUV _ he.2.1, hUV _ he.2.2.1, hUV _ he.2.2.2]

@[simp] theorem firstLink_reflect {T : ℕ} (p : Plaquette (2 * T)) :
    firstLink (reflectPlaquette p) = reflectLink (firstLink p) := rfl

section ActualPeriod
variable (T : ℕ) [NeZero (2 * T)]

/-- The literal action over the proved wholly-positive plaquette inventory. -/
def positiveAction (U : Config T) : ℝ :=
  ∑ p : Plaquette (2 * T), if positivePlaquette T p then penalty (holonomy U p) else 0

def crossingAction (U : Config T) : ℝ :=
  ∑ p : CrossPlaquette T, penalty (holonomy U p.val)

theorem positiveAction_congr (U V : Config T)
    (hUV : ∀ e : Link (2 * T), positiveInteriorLink T e → U e = V e) :
    positiveAction T U = positiveAction T V := by
  apply Finset.sum_congr rfl
  intro p _
  by_cases hp : positivePlaquette T p
  · simp only [if_pos hp, holonomy_eq_of_positive_agreement U V hUV p hp]
  · simp only [if_neg hp]

theorem crossingAction_eq_sum (U : Config T) :
    (∑ p : Plaquette (2 * T),
      if crossingLink T (firstLink p) then penalty (holonomy U p) else 0) =
        crossingAction T U := by
  change (∑ p : Plaquette (2 * T), dite (crossingLink T (firstLink p))
    (fun _ => penalty (holonomy U p)) (fun _ => 0)) = _
  rw [Fintype.sum_dite]
  simp only [crossingAction, Finset.sum_const_zero, add_zero]

/-- Reflected plaquette reindexing pays the complete negative action. -/
theorem negativeAction_eq_positive_reflection (U : Config T) :
    (∑ p : Plaquette (2 * T),
      if negativeInteriorLink T (firstLink p) then penalty (holonomy U p) else 0) =
        positiveAction T (reflection U) := by
  let f : Plaquette (2 * T) → ℝ := fun p =>
    if positivePlaquette T p then penalty (holonomy (reflection U) p) else 0
  calc
    _ = ∑ p : Plaquette (2 * T), f (reflectPlaquette p) := by
      apply Finset.sum_congr rfl
      intro p _
      simp only [f, positivePlaquette, firstLink_reflect, negativeInteriorLink,
        penalty_holonomy_reflection, reflectPlaquette_involutive]
    _ = positiveAction T (reflection U) :=
      (reflectPlaquetteEquiv (2 * T)).sum_comp f

/-- No plaquette is omitted: positive, reflected-positive and both crossings. -/
theorem wilsonAction_split (hT : 2 ≤ T) (U : Config T) :
    wilsonAction (2 * T) U = positiveAction T U +
      positiveAction T (reflection U) + crossingAction T U := by
  have heq : wilsonAction (2 * T) U = positiveAction T U +
      (∑ p : Plaquette (2 * T),
        if negativeInteriorLink T (firstLink p) then penalty (holonomy U p) else 0) +
      (∑ p : Plaquette (2 * T),
        if crossingLink T (firstLink p) then penalty (holonomy U p) else 0) := by
    calc
      _ = ∑ p : Plaquette (2 * T),
          ((if positivePlaquette T p then penalty (holonomy U p) else 0) +
          (if negativeInteriorLink T (firstLink p) then penalty (holonomy U p) else 0)) +
          (if crossingLink T (firstLink p) then penalty (holonomy U p) else 0) := by
        apply Finset.sum_congr rfl
        intro p _
        rcases link_cover hT (firstLink p) with hp | hn | hc
        · have hn : ¬ negativeInteriorLink T (firstLink p) :=
            fun h => positive_negative_disjoint hT _ ⟨hp, h⟩
          have hc : ¬ crossingLink T (firstLink p) :=
            fun h => positive_crossing_disjoint hT _ ⟨hp, h⟩
          simp only [positivePlaquette, hp, hn, hc, if_pos, if_neg, add_zero]
        · have hp : ¬ positiveInteriorLink T (firstLink p) :=
            fun h => positive_negative_disjoint hT _ ⟨h, hn⟩
          have hc : ¬ crossingLink T (firstLink p) :=
            fun h => negative_crossing_disjoint hT _ ⟨hn, h⟩
          simp only [positivePlaquette, hp, hn, hc, if_pos, if_neg, zero_add, add_zero]
        · have hp : ¬ positiveInteriorLink T (firstLink p) :=
            fun h => positive_crossing_disjoint hT _ ⟨h, hc⟩
          have hn : ¬ negativeInteriorLink T (firstLink p) :=
            fun h => negative_crossing_disjoint hT _ ⟨h, hc⟩
          simp only [positivePlaquette, hp, hn, hc, if_pos, if_neg, zero_add]
      _ = _ := by
        simp only [Finset.sum_add_distrib, positiveAction]
  rw [negativeAction_eq_positive_reflection, crossingAction_eq_sum] at heq
  exact heq

def halfAction (hT : 2 ≤ T) (u : HalfConfig T) : ℝ :=
  positiveAction T (glue T hT u 1 1)

theorem positiveAction_glue (hT : 2 ≤ T) (u v : HalfConfig T) (t : CrossConfig T) :
    positiveAction T (glue T hT u v t) = halfAction T hT u := by
  apply positiveAction_congr
  intro e he
  exact (glue_plus T hT u v t ⟨e, he⟩).trans
    (glue_plus T hT u 1 1 ⟨e, he⟩).symm

theorem wilsonAction_glue_unit (hT : 2 ≤ T) (u v : HalfConfig T) :
    wilsonAction (2 * T) (glue T hT u v 1) =
      halfAction T hT u + halfAction T hT v + crossingAction T (glue T hT u v 1) := by
  rw [wilsonAction_split T hT, reflection_glue_unit, positiveAction_glue, positiveAction_glue]

/-- Both crossing temporal bases are fixed by temporalBack, including the modular T case. -/
theorem temporalBack_cross (hT : 2 ≤ T) (x : Vertex (2 * T))
    (hx : (x 0).val = 0 ∨ (x 0).val = T) : temporalBack x = x := by
  funext ρ
  by_cases hρ : ρ = 0
  · subst ρ
    apply ZMod.val_injective (2 * T)
    simp only [temporalBack_time]
    rw [negative_time_val hT]
    rcases hx with hx | hx
    · simp only [hx, if_pos rfl]
    · rw [hx, if_neg (by omega : T ≠ 0)]
      omega
  · simp only [temporalBack, if_neg hρ]

theorem reflectVertex_cross (hT : 2 ≤ T) (x : Vertex (2 * T))
    (hx : (x 0).val = 0 ∨ (x 0).val = T) : reflectVertex x = shift x 0 := by
  have h := shift_temporalBack_time x
  rw [temporalBack_cross T hT x hx] at h
  exact h.symm

/-- The literal positive spatial edge paired with each actual crossing plaquette. -/
def boundaryPositiveLink (hT : 2 ≤ T) (p : CrossPlaquette T) : PlusLink T :=
  if h0 : (p.val.1 0).val = 0 then
    ⟨(shift p.val.1 0, p.val.2.1.2), by
      rw [positive_spatial_iff _ _ (second_direction_ne_zero p.val)]
      have hv : (shift p.val.1 0 0).val = 1 := by
        change (p.val.1 0 + 1).val = 1
        rw [successor_time_val hT, h0]
        simp only [zero_add, if_pos (by omega : 1 < 2 * T)]
      rw [hv]
      omega⟩
  else
    ⟨(p.val.1, p.val.2.1.2), by
      rw [positive_spatial_iff _ _ (second_direction_ne_zero p.val)]
      have ht := p.prop.2
      have hv : (p.val.1 0).val = T := ht.resolve_left h0
      rw [hv]
      omega⟩

/-- Exact orientation at both boundaries, with the actual reflected spatial index. -/
theorem crossingHolonomy_glue_unit (hT : 2 ≤ T) (u v : HalfConfig T)
    (p : CrossPlaquette T) :
    holonomy (glue T hT u v 1) p.val =
      if (p.val.1 0).val = 0 then
        u (boundaryPositiveLink T hT p) * (v (boundaryPositiveLink T hT p))⁻¹
      else v (boundaryPositiveLink T hT p) * (u (boundaryPositiveLink T hT p))⁻¹ := by
  let x := p.val.1
  let ν := p.val.2.1.2
  let ell := boundaryPositiveLink T hT p
  have hν : ν ≠ 0 := second_direction_ne_zero p.val
  have hμ : p.val.2.1.1 = 0 := p.prop.1
  have hx : (x 0).val = 0 ∨ (x 0).val = T := p.prop.2
  have hc2 : crossingLink T (shift x ν, 0) := by
    refine ⟨rfl, ?_⟩
    simpa only [shift, if_neg (Ne.symm hν), add_zero] using hx
  have ht1 : glue T hT u v 1 (x, 0) = 1 :=
    glue_cross T hT u v 1 ⟨(x, 0), ⟨rfl, hx⟩⟩
  have ht2 : glue T hT u v 1 (shift x ν, 0) = 1 :=
    glue_cross T hT u v 1 ⟨(shift x ν, 0), hc2⟩
  change plaquetteHolonomy (glue T hT u v 1) x p.val.2.1.1 ν = _
  rw [hμ]
  simp only [plaquetteHolonomy, ht1, ht2, inv_one, one_mul, mul_one]
  by_cases h0 : (x 0).val = 0
  · have hel : ell.val = (shift x 0, ν) := by
      simp only [ell, boundaryPositiveLink, dif_pos h0]
    have hr : reflectLink ell.val = (x, ν) := by
      rw [hel, reflectLink_spatial _ ν hν, reflectVertex_shift_time, temporalBack_cross T hT x hx]
    have hd : ell.val.2 ≠ 0 := by rw [hel]; exact hν
    have hu := glue_plus T hT u v 1 ell
    have hv := glue_minus T hT u v 1 ell
    rw [hel] at hu
    rw [hr, if_neg hd] at hv
    rw [if_pos h0, hu, hv]
  · have hel : ell.val = (x, ν) := by
      simp only [ell, boundaryPositiveLink, dif_neg h0]
    have hr : reflectLink ell.val = (shift x 0, ν) := by
      rw [hel, reflectLink_spatial _ ν hν, reflectVertex_cross T hT x hx]
    have hd : ell.val.2 ≠ 0 := by rw [hel]; exact hν
    have hu := glue_plus T hT u v 1 ell
    have hv := glue_minus T hT u v 1 ell
    rw [hel] at hu
    rw [hr, if_neg hd] at hv
    rw [if_neg h0, hu, hv]

theorem crossingBoltzmann_glue_unit (hT : 2 ≤ T) (β : ℝ) (u v : HalfConfig T)
    (p : CrossPlaquette T) :
    Real.exp (-β * penalty (holonomy (glue T hT u v 1) p.val)) =
      wilsonKernel β (u (boundaryPositiveLink T hT p)) (v (boundaryPositiveLink T hT p)) := by
  rw [crossingHolonomy_glue_unit]
  split_ifs
  · rfl
  · exact wilsonKernel_symm β _ _

/-- All actual crossing plaquettes, at both periodic boundaries, occur once. -/
def boundaryKernelProduct (hT : 2 ≤ T) (β : ℝ) (u v : HalfConfig T) : ℝ :=
  ∏ p : CrossPlaquette T,
    wilsonKernel β (u (boundaryPositiveLink T hT p)) (v (boundaryPositiveLink T hT p))

theorem crossingWeight_glue_unit (hT : 2 ≤ T) (β : ℝ) (u v : HalfConfig T) :
    Real.exp (-β * crossingAction T (glue T hT u v 1)) =
      boundaryKernelProduct T hT β u v := by
  unfold crossingAction boundaryKernelProduct
  rw [Finset.mul_sum, Real.exp_sum]
  apply Finset.prod_congr rfl
  intro p _
  exact crossingBoltzmann_glue_unit T hT β u v p

/-- Literal finite action factorization, with no assumed gluing certificate. -/
theorem boltzmann_glue_unit (hT : 2 ≤ T) (β : ℝ) (u v : HalfConfig T) :
    Real.exp (-β * wilsonAction (2 * T) (glue T hT u v 1)) =
      Real.exp (-β * (halfAction T hT u + halfAction T hT v)) *
        boundaryKernelProduct T hT β u v := by
  rw [wilsonAction_glue_unit, mul_add, Real.exp_add, crossingWeight_glue_unit]

end ActualPeriod
end GRWTSK.Geometry.GaugeTheory.WilsonSplitAction
