# Complete source: GRWTSK.Topology.NodalPanelMinimality.Variantcbf69987faab15b7dd9ada1317d22979c672588bd4209685443dc4d8af9fd3a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3ee510ea6c745e2b55c5921d7f85b055fba8521` · SHA-256 `cbf69987faab15b7dd9ada1317d22979c672588bd4209685443dc4d8af9fd3a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ZeroSeamCountermodels
import Mathlib.Topology.Connected.Basic

/-!
# A zero-faithful connected-support representation needs every nodal component

Batch 05 AC05-01 is proved at actual connected-component granularity. Support
means the nonzero set, not its closure. Each atom has preconnected nonzero
support contained in the source nonzero set. Distinct nodal components require
distinct active atoms. When finitely many representatives cover that nonzero
set, its component indicators reconstruct the source with exactly this count.
Continuity of indicator atoms, analytic norm bounds and arithmetic debt are
separate; neither atoms crossing source zeros nor redundant labels are excluded
by a stronger claim than the explicit support hypotheses below.

Human zero-faithful direction: grwtsk contributors. Local component/count and
minimal representation proofs: OpenAI Codex. Mathlib topology stays upstream.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NodalPanelMinimality
open scoped BigOperators
open Set
noncomputable section

theorem active_atom_exists {α γ : Type*} [Fintype γ] (f : α → ℝ) (atom : γ → α → ℝ)
    (hreconstruct : ∀ x, (∑ j, atom j x) = f x) {x : α} (hx : f x ≠ 0) :
    ∃ j, atom j x ≠ 0 := by
  by_contra hn
  push Not at hn
  have hz : (∑ j, atom j x) = 0 := Finset.sum_eq_zero (fun j _ ↦ hn j)
  rw [hreconstruct x] at hz
  exact hx hz

theorem atom_meets_only_one_nodal_component {α : Type*} [TopologicalSpace α]
    (f g : α → ℝ) (hconnected : IsPreconnected (Function.support g))
    (hfaithful : Function.support g ⊆ Function.support f) {x y : α}
    (hx : g x ≠ 0) (hy : g y ≠ 0) :
    connectedComponentIn (Function.support f) x =
      connectedComponentIn (Function.support f) y := by
  have hs := hconnected.subset_connectedComponentIn hx hfaithful
  exact connectedComponentIn_eq (hs hy)

theorem nodal_component_count_lower {α κ γ : Type*} [TopologicalSpace α]
    [Fintype κ] [Fintype γ] (f : α → ℝ) (rep : κ → α) (atom : γ → α → ℝ)
    (hrep : ∀ k, f (rep k) ≠ 0)
    (hdistinct : Function.Injective (fun k ↦ connectedComponentIn (Function.support f) (rep k)))
    (hconnected : ∀ j, IsPreconnected (Function.support (atom j)))
    (hfaithful : ∀ j, Function.support (atom j) ⊆ Function.support f)
    (hreconstruct : ∀ x, (∑ j, atom j x) = f x) : Fintype.card κ ≤ Fintype.card γ := by
  classical
  have hex : ∀ k, ∃ j, atom j (rep k) ≠ 0 := fun k ↦
    active_atom_exists f atom hreconstruct (hrep k)
  let selected : κ → γ := fun k ↦ Classical.choose (hex k)
  have hselected : ∀ k, atom (selected k) (rep k) ≠ 0 := fun k ↦ Classical.choose_spec (hex k)
  apply Fintype.card_le_of_injective selected
  intro k l hkl
  apply hdistinct
  apply atom_meets_only_one_nodal_component f (atom (selected k))
    (hconnected _) (hfaithful _) (hselected k)
  rw [hkl]
  exact hselected l

def componentAtom {α : Type*} [TopologicalSpace α] (f : α → ℝ) (x : α) : α → ℝ :=
  (connectedComponentIn (Function.support f) x).indicator f

theorem component_atom_exact_support {α : Type*} [TopologicalSpace α]
    (f : α → ℝ) (x : α) :
    Function.support (componentAtom f x) = connectedComponentIn (Function.support f) x := by
  classical
  ext y
  by_cases hy : y ∈ connectedComponentIn (Function.support f) x
  · have hf : f y ≠ 0 := connectedComponentIn_subset (Function.support f) x hy
    simp [componentAtom, Function.mem_support, hy, hf]
  · simp [componentAtom, Function.mem_support, hy]

theorem component_atoms_are_connected_and_faithful {α : Type*} [TopologicalSpace α]
    (f : α → ℝ) (x : α) :
    IsPreconnected (Function.support (componentAtom f x)) ∧
      Function.support (componentAtom f x) ⊆ Function.support f := by
  rw [component_atom_exact_support]
  exact ⟨isPreconnected_connectedComponentIn, connectedComponentIn_subset _ _⟩

theorem finite_component_atoms_reconstruct {α κ : Type*} [TopologicalSpace α]
    [Fintype κ] (f : α → ℝ) (rep : κ → α)
    (hdistinct : Function.Injective (fun k ↦ connectedComponentIn (Function.support f) (rep k)))
    (hcover : ∀ x, f x ≠ 0 → ∃ k, x ∈ connectedComponentIn (Function.support f) (rep k))
    (x : α) : (∑ k, componentAtom f (rep k) x) = f x := by
  classical
  by_cases hx : f x = 0
  · simp [componentAtom, hx, Set.indicator]
  · obtain ⟨k, hk⟩ := hcover x hx
    rw [Finset.sum_eq_single k]
    · exact Set.indicator_of_mem hk f
    · intro l _ hlk
      have hl : x ∉ connectedComponentIn (Function.support f) (rep l) := by
        intro hl
        have he := (connectedComponentIn_eq hl).trans (connectedComponentIn_eq hk).symm
        exact hlk (hdistinct he)
      exact Set.indicator_of_notMem hl f
    · simp

/-- The same explicit finite component family supplies the matching upper count. -/
theorem component_representation_is_minimal {α κ γ : Type*} [TopologicalSpace α]
    [Fintype κ] [Fintype γ] (f : α → ℝ) (rep : κ → α) (atom : γ → α → ℝ)
    (hrep : ∀ k, f (rep k) ≠ 0)
    (hdistinct : Function.Injective (fun k ↦ connectedComponentIn (Function.support f) (rep k)))
    (hcover : ∀ x, f x ≠ 0 → ∃ k, x ∈ connectedComponentIn (Function.support f) (rep k))
    (hconnected : ∀ j, IsPreconnected (Function.support (atom j)))
    (hfaithful : ∀ j, Function.support (atom j) ⊆ Function.support f)
    (hreconstruct : ∀ x, (∑ j, atom j x) = f x) :
    (∀ x, (∑ k, componentAtom f (rep k) x) = f x) ∧ Fintype.card κ ≤ Fintype.card γ :=
  ⟨finite_component_atoms_reconstruct f rep hdistinct hcover,
    nodal_component_count_lower f rep atom hrep hdistinct hconnected hfaithful hreconstruct⟩

end
end GRWTSK.RiemannHypothesis.Conversation.NodalPanelMinimality
```
