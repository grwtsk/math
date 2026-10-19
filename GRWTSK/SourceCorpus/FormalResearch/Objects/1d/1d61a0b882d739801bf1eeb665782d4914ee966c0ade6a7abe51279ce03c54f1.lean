import FormalResearch.RiemannHypothesis.Conversation.CountableDetails
import Mathlib.Topology.Algebra.Module.Basic

/-!
# A countable sequence of finite frames has a separable closed carrier

HC12's carrier is the closed real span of the complete countable finite-frame
inventory. This constructs a separable Hilbert subspace when the ambient space
is complete. A continuous readout consumes convergence of the actual finite
approximants and retains their common bound at the limit. Carrier existence
alone supplies no bound: the constant unit-frame model contains arbitrary real
readout values.

The exact arithmetic frames, nesting, strong projection convergence and uniform
source residual are separate obligations. No abstract carrier is substituted for
them. Human directed-limit and full-residual direction: grwtsk contributors.
Local completion and conditional readout consumer: OpenAI Codex. Mathlib span,
closure, separability and convergence laws retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.DirectedHilbertCarrier
open Filter Topology
noncomputable section
/-- The frame index in this module, with the following exact parameterization.

abbrev FrameIndex := (n : ℕ) × Fin (n + 1) variable {E : Type*} [NormedAddCommGroup E]
[InnerProductSpace ℝ E]
-/
abbrev FrameIndex := (n : ℕ) × Fin (n + 1)
variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

/-- The carrier in this module, with the following exact parameterization.

def carrier (frame : FrameIndex → E) : Submodule ℝ E := (Submodule.span ℝ (Set.range
frame)).topologicalClosure
-/
def carrier (frame : FrameIndex → E) : Submodule ℝ E :=
  (Submodule.span ℝ (Set.range frame)).topologicalClosure

theorem every_frame_vector_belongs (frame : FrameIndex → E) (i : FrameIndex) :
    frame i ∈ carrier frame := by
  exact (Submodule.le_topologicalClosure _) (Submodule.subset_span (Set.mem_range_self i))

theorem completed_carrier_is_closed (frame : FrameIndex → E) :
    IsClosed (carrier frame : Set E) := by
  exact Submodule.isClosed_topologicalClosure _

theorem completed_carrier_is_separable (frame : FrameIndex → E) :
    TopologicalSpace.IsSeparable (carrier frame : Set E) := by
  have hr := (Set.countable_range frame).isSeparable
  have hs := hr.span (R := ℝ)
  simpa only [carrier, Submodule.topologicalClosure_coe] using hs.closure

theorem completed_carrier_is_complete [CompleteSpace E] (frame : FrameIndex → E) :
    IsComplete (carrier frame : Set E) :=
  (completed_carrier_is_closed frame).isComplete

theorem continuous_readout_of_strong_approximants
    (ell : E →L[ℝ] ℝ) (v : ℕ → E) (x : E)
    (hv : Tendsto v atTop (𝓝 x)) :
    Tendsto (fun n ↦ ell (v n)) atTop (𝓝 (ell x)) :=
  ell.continuous.continuousAt.tendsto.comp hv

theorem common_finite_readout_bound_survives_completion
    (ell : E →L[ℝ] ℝ) (v : ℕ → E) (x : E) (B : ℝ)
    (hv : Tendsto v atTop (𝓝 x)) (hB : ∀ n, ell (v n) ≤ B) : ell x ≤ B := by
  exact le_of_tendsto (continuous_readout_of_strong_approximants ell v x hv)
    (Filter.Eventually.of_forall hB)

theorem completed_carrier_does_not_bound_a_readout (B : ℝ) :
    ∃ x : ℝ, x ∈ carrier (fun _ : FrameIndex ↦ (1 : ℝ)) ∧ B < x := by
  let x : ℝ := |B| + 1
  have hunit := every_frame_vector_belongs (fun _ : FrameIndex ↦ (1 : ℝ)) ⟨0, 0⟩
  refine ⟨x, ?_, ?_⟩
  · simpa only [smul_eq_mul, mul_one] using
      (carrier (fun _ : FrameIndex ↦ (1 : ℝ))).smul_mem x hunit
  · exact lt_of_le_of_lt (le_abs_self B) (lt_add_one _)

end
end GRWTSK.RiemannHypothesis.Conversation.DirectedHilbertCarrier
