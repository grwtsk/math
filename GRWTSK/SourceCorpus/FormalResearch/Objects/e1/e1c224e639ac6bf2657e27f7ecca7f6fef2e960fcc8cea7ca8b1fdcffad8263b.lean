import FormalResearch.RiemannHypothesis.Conversation.NodalPanelMinimality
import Mathlib.Topology.Connected.LocallyConnected
import Mathlib.Analysis.Normed.Group.Indicator

/-!
# The actual nodal component atoms preserve continuity

The next AC05-01 consumer uses each component indicator multiplied by the same
continuous source. On its nonzero set, local connectedness makes the components
open. At a source zero, the atom is bounded in norm by the source itself, so it
remains continuous across the seam. This includes continuous real interval
sources and preserves the finite minimal reconstruction. No differentiability,
energy estimate, or arithmetic nodal bound is supplied by this gluing law.

Human source-seam fidelity: grwtsk contributors. Local continuity and reconstruction
consumer: OpenAI Codex. Mathlib locally connected topology retains upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NodalContinuousConsumer
open NodalPanelMinimality Set Filter
open scoped Topology BigOperators
noncomputable section

theorem component_atom_norm_le_source {α : Type*} [TopologicalSpace α]
    (f : α → ℝ) (c x : α) : ‖componentAtom f c x‖ ≤ ‖f x‖ :=
  norm_indicator_le_norm_self f x

theorem component_atom_continuous {α : Type*} [TopologicalSpace α] [LocallyConnectedSpace α]
    {f : α → ℝ} (hf : Continuous f) (c : α) : Continuous (componentAtom f c) := by
  classical
  apply continuous_iff_continuousAt.mpr
  intro x
  by_cases hfx : f x = 0
  · have hgx : componentAtom f c x = 0 := by simp [componentAtom, Set.indicator, hfx]
    have ht : Tendsto (fun y ↦ ‖f y‖) (𝓝 x) (𝓝 0) := by
      simpa [hfx] using hf.norm.continuousAt.tendsto (x := x)
    have hg := squeeze_zero_norm (component_atom_norm_le_source f c) ht
    simpa only [ContinuousAt, hgx] using hg
  · have hsupport : IsOpen (Function.support f) := hf.isOpen_support
    by_cases hxc : x ∈ connectedComponentIn (Function.support f) c
    · have he : componentAtom f c =ᶠ[𝓝 x] f := by
        filter_upwards [hsupport.connectedComponentIn.mem_nhds hxc] with y hy
        exact Set.indicator_of_mem hy f
      exact hf.continuousAt.congr_of_eventuallyEq he
    · have he : componentAtom f c =ᶠ[𝓝 x] (fun _ ↦ 0) := by
        filter_upwards [hsupport.connectedComponentIn.mem_nhds (mem_connectedComponentIn hfx)] with y hy
        have hnot : y ∉ connectedComponentIn (Function.support f) c := by
          intro hyc
          have hc_eq := (connectedComponentIn_eq hyc).trans (connectedComponentIn_eq hy).symm
          have hx : x ∈ connectedComponentIn (Function.support f) x := mem_connectedComponentIn hfx
          rw [← hc_eq] at hx
          exact hxc hx
        exact Set.indicator_of_notMem hnot f
      exact continuous_const.continuousAt.congr_of_eventuallyEq he

theorem finite_minimal_reconstruction_is_continuous {α κ : Type*} [TopologicalSpace α]
    [LocallyConnectedSpace α] [Fintype κ] {f : α → ℝ} (hf : Continuous f) (rep : κ → α)
    (hdistinct : Function.Injective (fun k ↦ connectedComponentIn (Function.support f) (rep k)))
    (hcover : ∀ x, f x ≠ 0 → ∃ k, x ∈ connectedComponentIn (Function.support f) (rep k)) :
    (∀ k, Continuous (componentAtom f (rep k))) ∧
      (∀ x, (∑ k, componentAtom f (rep k) x) = f x) :=
  ⟨fun k ↦ component_atom_continuous hf (rep k),
    finite_component_atoms_reconstruct f rep hdistinct hcover⟩

end
end GRWTSK.RiemannHypothesis.Conversation.NodalContinuousConsumer
