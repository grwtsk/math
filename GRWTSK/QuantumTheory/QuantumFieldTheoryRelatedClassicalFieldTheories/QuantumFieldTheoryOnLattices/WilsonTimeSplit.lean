/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.PositiveTimeObservables
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.BondTimeReflection
import Mathlib.Tactic.Omega

/-!
# The literal two-boundary link partition

The positive half uses the existing two-endpoint predicate. The negative
half is its pullback by the actual reflected link involution. The remaining
links are exactly the temporal links based at representatives 0 and T.
All modular incidences are proved for period 2*T, T>=2. The resulting finite
index equivalence is consumed by product-Haar coordinate gluing.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonTimeSplit

open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables

def negativeInteriorLink (T : ℕ) (e : Link (2 * T)) : Prop :=
  positiveInteriorLink T (reflectLink e)

def crossingLink (T : ℕ) (e : Link (2 * T)) : Prop :=
  e.2 = 0 ∧ ((e.1 0).val = 0 ∨ (e.1 0).val = T)

abbrev PlusLink (T : ℕ) := {e : Link (2 * T) // positiveInteriorLink T e}
abbrev MinusLink (T : ℕ) := {e : Link (2 * T) // negativeInteriorLink T e}
abbrev CrossLink (T : ℕ) := {e : Link (2 * T) // crossingLink T e}
abbrev InteriorLink (T : ℕ) := {e : Link (2 * T) // ¬ crossingLink T e}

theorem successor_time_val {T : ℕ} (hT : 2 ≤ T) (z : ZMod (2 * T)) :
    (z + 1).val = if z.val + 1 < 2 * T then z.val + 1 else 0 := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  have h1 : (1 : ZMod (2 * T)).val = 1 := ZMod.val_one'' (by omega)
  have hz := ZMod.val_lt z
  split_ifs with h
  · simpa only [h1] using (ZMod.val_add_of_lt (a := z) (b := 1) (by omega))
  · rw [ZMod.val_add_of_le (a := z) (b := 1) (by omega), h1]
    omega

theorem negative_time_val {T : ℕ} (hT : 2 ≤ T) (z : ZMod (2 * T)) :
    (-z).val = if z.val = 0 then 0 else 2 * T - z.val := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  rw [ZMod.neg_val]
  by_cases hz : z.val = 0
  · simp [hz, (ZMod.val_eq_zero z).mp hz]
  · have hn : z ≠ 0 := fun h => hz ((ZMod.val_eq_zero z).mpr h)
    simp [hz, hn]

theorem reflected_time_val {T : ℕ} (hT : 2 ≤ T) (z : ZMod (2 * T)) :
    (1 - z).val = if z.val ≤ 1 then 1 - z.val else 2 * T + 1 - z.val := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  have h1 : (1 : ZMod (2 * T)).val = 1 := ZMod.val_one'' (by omega)
  by_cases hz : z.val ≤ 1
  · rw [if_pos hz]
    simpa only [h1] using (ZMod.val_sub (a := 1) (b := z) (by omega))
  · rw [if_neg hz]
    have hv : (z - 1).val = z.val - 1 := by
      simpa only [h1] using (ZMod.val_sub (a := z) (b := 1) (by omega))
    have hn : z - 1 ≠ 0 := by
      intro he
      have := (ZMod.val_eq_zero (z - 1)).mpr he
      rw [hv] at this
      omega
    rw [show (1 : ZMod (2 * T)) - z = -(z - 1) by ring,
      ZMod.neg_val, if_neg hn, hv]
    have hb := ZMod.val_lt z
    omega

theorem positive_temporal_iff {T : ℕ} (hT : 2 ≤ T) (x : Vertex (2 * T)) :
    positiveInteriorLink T (x, 0) ↔ 1 ≤ (x 0).val ∧ (x 0).val < T := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  have hb := ZMod.val_lt (x 0)
  change ((1 ≤ (x 0).val ∧ (x 0).val ≤ T) ∧
    (1 ≤ (x 0 + 1).val ∧ (x 0 + 1).val ≤ T)) ↔ _
  rw [successor_time_val hT]
  split_ifs <;> omega

theorem negative_temporal_iff {T : ℕ} (hT : 2 ≤ T) (x : Vertex (2 * T)) :
    negativeInteriorLink T (x, 0) ↔ T < (x 0).val := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  have hb := ZMod.val_lt (x 0)
  unfold negativeInteriorLink
  rw [reflectLink_temporal, positive_temporal_iff hT]
  simp only [temporalBack_time]
  rw [negative_time_val hT]
  split_ifs <;> omega

theorem positive_spatial_iff {T : ℕ} (x : Vertex (2 * T))
    (μ : Fin 4) (hμ : μ ≠ 0) :
    positiveInteriorLink T (x, μ) ↔ 1 ≤ (x 0).val ∧ (x 0).val ≤ T :=
  positiveInteriorLink_spatial_iff x μ hμ

theorem negative_spatial_iff {T : ℕ} (hT : 2 ≤ T) (x : Vertex (2 * T))
    (μ : Fin 4) (hμ : μ ≠ 0) :
    negativeInteriorLink T (x, μ) ↔ (x 0).val = 0 ∨ T < (x 0).val := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  have hb := ZMod.val_lt (x 0)
  unfold negativeInteriorLink
  rw [reflectLink_spatial x μ hμ, positive_spatial_iff _ μ hμ]
  simp only [reflectVertex_time]
  rw [reflected_time_val hT]
  split_ifs <;> omega

/-- Coverage of every literal link, not just interior representatives. -/
theorem link_cover {T : ℕ} (hT : 2 ≤ T) (e : Link (2 * T)) :
    positiveInteriorLink T e ∨ negativeInteriorLink T e ∨ crossingLink T e := by
  rcases e with ⟨x, μ⟩
  by_cases hμ : μ = 0
  · subst μ
    rw [positive_temporal_iff hT, negative_temporal_iff hT]
    simp only [crossingLink, true_and]
    omega
  · rw [positive_spatial_iff x μ hμ, negative_spatial_iff hT x μ hμ]
    simp only [crossingLink, hμ, false_and, or_false]
    omega

theorem positive_negative_disjoint {T : ℕ} (hT : 2 ≤ T) (e : Link (2 * T)) :
    ¬ (positiveInteriorLink T e ∧ negativeInteriorLink T e) := by
  rcases e with ⟨x, μ⟩
  by_cases hμ : μ = 0
  · subst μ
    rw [positive_temporal_iff hT, negative_temporal_iff hT]
    omega
  · rw [positive_spatial_iff x μ hμ, negative_spatial_iff hT x μ hμ]
    omega

theorem positive_crossing_disjoint {T : ℕ} (hT : 2 ≤ T) (e : Link (2 * T)) :
    ¬ (positiveInteriorLink T e ∧ crossingLink T e) := by
  rcases e with ⟨x, μ⟩
  intro ⟨hp, hμ, hx⟩
  subst μ
  rw [positive_temporal_iff hT] at hp
  omega

theorem negative_crossing_disjoint {T : ℕ} (hT : 2 ≤ T) (e : Link (2 * T)) :
    ¬ (negativeInteriorLink T e ∧ crossingLink T e) := by
  rcases e with ⟨x, μ⟩
  intro ⟨hn, hμ, hx⟩
  subst μ
  rw [negative_temporal_iff hT] at hn
  omega

@[simp] theorem negative_reflect_iff {T : ℕ} (e : Link (2 * T)) :
    negativeInteriorLink T (reflectLink e) ↔ positiveInteriorLink T e := by
  simp only [negativeInteriorLink, reflectLink_involutive]

theorem crossing_reflect_iff {T : ℕ} (hT : 2 ≤ T) (e : Link (2 * T)) :
    crossingLink T (reflectLink e) ↔ crossingLink T e := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  rcases e with ⟨x, μ⟩
  by_cases hμ : μ = 0
  · subst μ
    simp only [reflectLink_temporal, crossingLink, true_and, temporalBack_time]
    rw [negative_time_val hT]
    have hb := ZMod.val_lt (x 0)
    split_ifs <;> omega
  · simp [crossingLink, reflectLink_direction, hμ]

/-- The exact sum inventory, with a second positive copy for reflected links. -/
def linkIndex (T : ℕ) : (PlusLink T ⊕ PlusLink T) ⊕ CrossLink T → Link (2 * T)
  | .inl (.inl e) => e.val
  | .inl (.inr e) => reflectLink e.val
  | .inr e => e.val

theorem linkIndex_injective {T : ℕ} (hT : 2 ≤ T) :
    Function.Injective (linkIndex T) := by
  intro a b hab
  rcases a with (a | a) | a <;> rcases b with (b | b) | b
  · exact congrArg (fun e : PlusLink T => Sum.inl (Sum.inl e)) (Subtype.ext hab)
  · have hn : negativeInteriorLink T (reflectLink b.val) := (negative_reflect_iff b.val).mpr b.prop
    have hp := a.prop
    change a.val = reflectLink b.val at hab
    rw [hab] at hp
    exact False.elim (positive_negative_disjoint hT _ ⟨hp, hn⟩)
  · have hp := a.prop
    change a.val = b.val at hab
    rw [hab] at hp
    exact False.elim (positive_crossing_disjoint hT _ ⟨hp, b.prop⟩)
  · have hn : negativeInteriorLink T (reflectLink a.val) := (negative_reflect_iff a.val).mpr a.prop
    have hp := b.prop
    change reflectLink a.val = b.val at hab
    rw [← hab] at hp
    exact False.elim (positive_negative_disjoint hT _ ⟨hp, hn⟩)
  · have hv : a.val = b.val := by
      have hh := congrArg (reflectLink : Link (2 * T) → Link (2 * T)) hab
      simpa only [linkIndex, reflectLink_involutive] using hh
    exact congrArg (fun e : PlusLink T => Sum.inl (Sum.inr e)) (Subtype.ext hv)
  · have hn : negativeInteriorLink T (reflectLink a.val) := (negative_reflect_iff a.val).mpr a.prop
    change reflectLink a.val = b.val at hab
    rw [hab] at hn
    exact False.elim (negative_crossing_disjoint hT _ ⟨hn, b.prop⟩)
  · have hp := b.prop
    change a.val = b.val at hab
    rw [← hab] at hp
    exact False.elim (positive_crossing_disjoint hT _ ⟨hp, a.prop⟩)
  · have hn : negativeInteriorLink T (reflectLink b.val) := (negative_reflect_iff b.val).mpr b.prop
    change a.val = reflectLink b.val at hab
    rw [← hab] at hn
    exact False.elim (negative_crossing_disjoint hT _ ⟨hn, a.prop⟩)
  · exact congrArg (fun e : CrossLink T => Sum.inr e) (Subtype.ext hab)

theorem linkIndex_surjective {T : ℕ} (hT : 2 ≤ T) :
    Function.Surjective (linkIndex T) := by
  intro e
  rcases link_cover hT e with hp | hn | hc
  · exact ⟨.inl (.inl ⟨e, hp⟩), rfl⟩
  · exact ⟨.inl (.inr ⟨reflectLink e, hn⟩), reflectLink_involutive e⟩
  · exact ⟨.inr ⟨e, hc⟩, rfl⟩

/-- A proved bijection of the complete lattice inventory. -/
def linkIndexEquiv (T : ℕ) (hT : 2 ≤ T) :
    (PlusLink T ⊕ PlusLink T) ⊕ CrossLink T ≃ Link (2 * T) :=
  Equiv.ofBijective (linkIndex T) ⟨linkIndex_injective hT, linkIndex_surjective hT⟩

@[simp] theorem linkIndexEquiv_apply (T : ℕ) (hT : 2 ≤ T)
    (e : (PlusLink T ⊕ PlusLink T) ⊕ CrossLink T) :
    linkIndexEquiv T hT e = linkIndex T e := rfl

end GRWTSK.Geometry.GaugeTheory.WilsonTimeSplit
