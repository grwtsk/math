/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedEulerMaximalTrail
import Mathlib.Data.Nat.Find
import Mathlib.Data.Finset.SDiff

/-!
# Finite exhaustion consumer for the remaining splice-vertex lemma

This theorem is explicitly CONDITIONAL on
`remaining_active_support_splice_vertex`. That argument is the precise
remaining connectivity bridge, not a theorem proved by this file and not an
axiom or a field of an asserted Euler structure. The native source owner is
proving the active-support connectivity result separately. No duplicate
connectivity declaration is introduced here.

The consumer proves the remaining finite-exhaustion argument from that
bridge, using the actual maximal-trail and splicing constructions. A longest
supported nonempty closed trail exists because nodup edge-ID lists have
length at most the finite supply cardinal. A residual outgoing edge at an
actual split vertex yields a disjoint nonempty residual closed trail and a
strictly longer splice, contradicting maximal length.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedEulerSplicing.Walk

universe u v

/-- Conditional consumer only: the named remaining splice-vertex bridge
must still be supplied by the active-support connectivity proof. -/
theorem exists_exhaustive_closed_trail_of_splice_vertex
    {V : Type u} {E : Type v} {tail head : E → V} [DecidableEq V]
    (available : Finset E) (a : V)
    (hbalance : ∀ x : V,
      (available.val.map tail).count x = (available.val.map head).count x)
    (hstart : ∃ e ∈ available, tail e = a)
    (remaining_active_support_splice_vertex :
      ∀ p : Walk tail head a a,
        p.edges.Nodup →
        (∀ e ∈ p.edges, e ∈ available) →
        p.edges ≠ [] →
        (∃ e ∈ available, e ∉ p.edges) →
        ∃ (b : V) (pre : Walk tail head a b) (post : Walk tail head b a),
          p = pre.append post ∧
          ∃ e ∈ available, e ∉ p.edges ∧ tail e = b) :
    ∃ p : Walk tail head a a,
      p.edges.Nodup ∧ p.edges ≠ [] ∧
      ∀ e, e ∈ p.edges ↔ e ∈ available := by
  classical
  have hbound (p : Walk tail head a a) (hnodup : p.edges.Nodup)
      (hallowed : ∀ e ∈ p.edges, e ∈ available) :
      p.edges.length ≤ available.card := by
    have hsub : p.edges.toFinset ⊆ available := by
      intro e he
      exact hallowed e (List.mem_toFinset.mp he)
    have hc := Finset.card_le_card hsub
    rw [List.toFinset_card_of_nodup hnodup] at hc
    exact hc
  let P : ℕ → Prop := fun n =>
    ∃ p : Walk tail head a a,
      p.edges.Nodup ∧ (∀ e ∈ p.edges, e ∈ available) ∧
      p.edges ≠ [] ∧ p.edges.length = n
  obtain ⟨p₀, h₀nodup, h₀allowed, h₀ne, _⟩ :=
    exists_nonempty_closed_trail available a hbalance hstart
  let n := Nat.findGreatest P available.card
  have hP : P n := Nat.findGreatest_spec
    (hbound p₀ h₀nodup h₀allowed) ⟨p₀, h₀nodup, h₀allowed, h₀ne, rfl⟩
  obtain ⟨p, hnodup, hallowed, hne, hlength⟩ := hP
  refine ⟨p, hnodup, hne, ?_⟩
  intro e
  refine ⟨hallowed e, ?_⟩
  intro he
  by_contra hunused
  obtain ⟨b, pre, post, hsplit, f, hf, hfnot, hftail⟩ :=
    remaining_active_support_splice_vertex p hnodup hallowed hne ⟨e, he, hunused⟩
  let remaining := available \ p.edges.toFinset
  have husedval : p.edges.toFinset.val = (p.edges : Multiset E) := by
    rw [List.toFinset_val, List.dedup_eq_self.mpr hnodup]
  have hle : (p.edges : Multiset E) ≤ available.val :=
    (Multiset.le_iff_subset (Multiset.coe_nodup.mpr hnodup)).mpr
      (fun e he => hallowed e he)
  have hpartition : available.val = (p.edges : Multiset E) + remaining.val := by
    dsimp only [remaining]
    rw [Finset.sdiff_val, husedval, add_comm]
    exact (Multiset.sub_add_cancel hle).symm
  have hremainingBalance : ∀ x : V,
      (remaining.val.map tail).count x = (remaining.val.map head).count x :=
    residual_incidence_balance p available.val remaining.val hpartition hbalance
  have hremainingStart : ∃ e ∈ remaining, tail e = b := by
    refine ⟨f, Finset.mem_sdiff.mpr ⟨hf, ?_⟩, hftail⟩
    simpa only [List.mem_toFinset] using hfnot
  obtain ⟨loop, hloopNodup, hloopAllowed, hloopNe, _⟩ :=
    exists_nonempty_closed_trail remaining b hremainingBalance hremainingStart
  have hold : (pre.append post).edges.Nodup := by
    rw [← hsplit]
    exact hnodup
  have hdisjoint : List.Disjoint (pre.append post).edges loop.edges := by
    rw [← hsplit]
    apply List.disjoint_left.mpr
    intro g hg hgl
    exact (Finset.mem_sdiff.mp (hloopAllowed g hgl)).2 (List.mem_toFinset.mpr hg)
  obtain ⟨r, hrNodup, hrMultiset, hrLonger⟩ :=
    exists_strict_closed_trail_extension pre loop post hold hloopNodup hdisjoint hloopNe
  have hrAllowed : ∀ e ∈ r.edges, e ∈ available := by
    intro g hg
    have hgm : g ∈ (r.edges : Multiset E) := hg
    rw [hrMultiset] at hgm
    rcases Multiset.mem_add.mp hgm with hg | hg
    · apply hallowed g
      simpa only [← hsplit, Multiset.mem_coe] using hg
    · exact (Finset.mem_sdiff.mp (hloopAllowed g hg)).1
  have hrNe : r.edges ≠ [] := by
    intro hempty
    rw [hempty] at hrLonger
    simp only [List.length_nil, Nat.not_lt_zero] at hrLonger
  have hrBound := Nat.le_findGreatest (P := P) (hbound r hrNodup hrAllowed)
    ⟨r, hrNodup, hrAllowed, hrNe, rfl⟩
  change r.edges.length ≤ n at hrBound
  have hrStrict : n < r.edges.length := by
    simpa only [← hsplit, hlength] using hrLonger
  exact (not_lt_of_ge hrBound) hrStrict

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedEulerSplicing.Walk
