/-
Positive consumers for the closed-operator solvability API.
Human project direction: grwtsk contributors. Assistance: OpenAI Codex.
Released under the repository MIT license. Imported adapted results retain
their upstream OpenAI Apache-2.0 attribution and license.
-/
import GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability

set_option autoImplicit false

namespace GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability.PositiveChecks

open LinearPMap

variable {𝕜 E F : Type*} [RCLike 𝕜]
variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
variable [NormedAddCommGroup F] [InnerProductSpace 𝕜 F] [CompleteSpace F]

example (T : E →ₗ.[𝕜] F) (hT : Dense (T.domain : Set E)) (hclosed : T.IsClosed)
    {u : E} {f : F}
    (hweak : ∀ v : T†.domain, inner 𝕜 u (T† v) = inner 𝕜 f (v : F)) :
    (u, f) ∈ T.graph :=
  mem_graph_of_adjoint_identity T hT hclosed hweak

example (T : E →ₗ.[𝕜] F) (hT : Dense (T.domain : Set E)) (hclosed : T.IsClosed)
    (f : F) {C : ℝ} (hC : 0 ≤ C)
    (hbound : ∀ v : T†.domain, ‖inner 𝕜 f (v : F)‖ ≤ C * ‖T† v‖) :
    ∃ u : T.domain, T u = f ∧ ‖(u : E)‖ ≤ C :=
  exists_solution_of_adjoint_bound T hT hclosed f hC hbound

private theorem zero_dense : Dense ((0 : ℝ →ₗ.[ℝ] ℝ).domain : Set ℝ) := by
  change Dense (Set.univ : Set ℝ)
  exact dense_univ

private theorem zero_closed : (0 : ℝ →ₗ.[ℝ] ℝ).IsClosed := by
  have he : ((0 : ℝ →ₗ.[ℝ] ℝ).graph : Set (ℝ × ℝ)) = {p | p.2 = 0} := by
    ext p
    change p ∈ (0 : ℝ →ₗ.[ℝ] ℝ).graph ↔ p.2 = 0
    rw [LinearPMap.mem_graph_iff]
    constructor
    · rintro ⟨x, _, hy⟩
      exact hy.symm
    · intro hy
      exact ⟨⟨p.1, by trivial⟩, rfl, hy.symm⟩
  change IsClosed ((0 : ℝ →ₗ.[ℝ] ℝ).graph : Set (ℝ × ℝ))
  rw [he]
  exact isClosed_eq continuous_snd continuous_const

example : ((0 : ℝ), (0 : ℝ)) ∈ (0 : ℝ →ₗ.[ℝ] ℝ).graph := by
  apply mem_graph_of_adjoint_identity (0 : ℝ →ₗ.[ℝ] ℝ) zero_dense zero_closed
  intro v
  simp

example : ∃ u : (0 : ℝ →ₗ.[ℝ] ℝ).domain,
    (0 : ℝ →ₗ.[ℝ] ℝ) u = 0 ∧ ‖(u : ℝ)‖ ≤ 0 := by
  apply exists_solution_of_adjoint_bound (0 : ℝ →ₗ.[ℝ] ℝ) zero_dense zero_closed 0
    (show (0 : ℝ) ≤ 0 from le_rfl)
  intro v
  simp

end GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability.PositiveChecks
