# Complete source: GRWTSK.Analysis.InnerProductSpace.Checks.Negative.JointGraphMissingDensity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19bcffe163c84b2958ec2c2f942d6598234aa80d` · SHA-256 `be37fa96de078543eb589764ffc70f34317721f68b658babcfec93cc80aa89c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Intentionally rejected: a vacuous estimate on the empty joint-graph subset
cannot replace density in the actual joint-graph subtype. The two real zero
operators satisfy all structural complex/kernel assumptions, yet target 1 has
no solution. Structural helper proofs are reused from the repository's
ClosedComplexMissingEstimate control under its MIT license.
Human project direction: grwtsk contributors. Assistance: OpenAI Codex.
The imported adapted results retain upstream OpenAI Apache-2.0 attribution.
-/
import GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability

set_option autoImplicit false

namespace GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability.NegativeChecks

noncomputable section

open LinearPMap

theorem zero_dense : Dense ((0 : ℝ →ₗ.[ℝ] ℝ).domain : Set ℝ) := by
  change Dense (Set.univ : Set ℝ)
  exact dense_univ

theorem zero_closed : (0 : ℝ →ₗ.[ℝ] ℝ).IsClosed := by
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

theorem zero_complex (x : (0 : ℝ →ₗ.[ℝ] ℝ).domain) :
    ((0 : ℝ →ₗ.[ℝ] ℝ) x, 0) ∈ (0 : ℝ →ₗ.[ℝ] ℝ).graph :=
  (0 : ℝ →ₗ.[ℝ] ℝ).graph.zero_mem

theorem zero_kernel_unit : ((1 : ℝ), (0 : ℝ)) ∈ (0 : ℝ →ₗ.[ℝ] ℝ).graph :=
  (0 : ℝ →ₗ.[ℝ] ℝ).mem_graph_iff.mpr ⟨⟨1, by trivial⟩, rfl, rfl⟩

theorem zero_has_no_unit_solution :
    ¬ ∃ u : (0 : ℝ →ₗ.[ℝ] ℝ).domain, (0 : ℝ →ₗ.[ℝ] ℝ) u = 1 := by
  rintro ⟨u, hu⟩
  exact zero_ne_one (show (0 : ℝ) = 1 from hu)

private def zeroJointPoint : jointGraph (0 : ℝ →ₗ.[ℝ] ℝ) (0 : ℝ →ₗ.[ℝ] ℝ) :=
  ⟨((0 : ℝ), (0 : ℝ), (0 : ℝ)),
    (0 : ℝ →ₗ.[ℝ] ℝ)†.graph.zero_mem, (0 : ℝ →ₗ.[ℝ] ℝ).graph.zero_mem⟩

theorem empty_core_not_dense :
    ¬ Dense (∅ : Set (jointGraph (0 : ℝ →ₗ.[ℝ] ℝ) (0 : ℝ →ₗ.[ℝ] ℝ))) := by
  intro hD
  have bad := hD zeroJointPoint
  simp at bad

theorem empty_estimate :
    ∀ v ∈ (∅ : Set (jointGraph (0 : ℝ →ₗ.[ℝ] ℝ) (0 : ℝ →ₗ.[ℝ] ℝ))),
      (1 : ℝ) * ‖v.val.1‖ ^ 2 ≤ ‖v.val.2.1‖ ^ 2 + ‖v.val.2.2‖ ^ 2 := by
  intro v hv
  exact False.elim hv

/- EXPECTED TYPE MISMATCH: the vacuous estimate is not density of the core. -/
example : ∃ u : (0 : ℝ →ₗ.[ℝ] ℝ).domain,
    (0 : ℝ →ₗ.[ℝ] ℝ) u = 1 ∧ ‖(u : ℝ)‖ ≤ ‖(1 : ℝ)‖ / Real.sqrt 1 := by
  exact exists_solution_of_core_estimate (0 : ℝ →ₗ.[ℝ] ℝ) (0 : ℝ →ₗ.[ℝ] ℝ)
    zero_dense zero_closed zero_closed zero_complex
    (∅ : Set (jointGraph (0 : ℝ →ₗ.[ℝ] ℝ) (0 : ℝ →ₗ.[ℝ] ℝ))) empty_estimate

end

end GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability.NegativeChecks
```
