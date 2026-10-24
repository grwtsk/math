# Complete source: GRWTSK.Analysis.InnerProductSpace.Checks.Negative.ClosedComplexMissingEstimate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31824514028b4f4945acc1b020fb4f1aecdf14de` · SHA-256 `eddcbd675686bc32a647072de591c8ae922d9b80d558f85e9046bc0d2ece9105`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Intentionally rejected: two closed zero operators form a complex, and target
1 is in the second operator's graph kernel, but the positive coercive estimate
fails and no first-operator solution exists. One final application type
mismatch tries to substitute the target-kernel proof for that missing estimate.
Human project direction: grwtsk contributors. Assistance: OpenAI Codex.
Released under the repository MIT license. The imported adapted theorem
retains its upstream OpenAI Apache-2.0 attribution and license.
-/
import GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability

set_option autoImplicit false

namespace GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability.NegativeChecks

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

private def unitAdjoint : (0 : ℝ →ₗ.[ℝ] ℝ)†.domain := by
  refine ⟨1, ?_⟩
  apply LinearPMap.mem_adjoint_domain_of_exists
  refine ⟨0, fun x => ?_⟩
  change inner ℝ (0 : ℝ) (x : ℝ) = inner ℝ (1 : ℝ) (0 : ℝ)
  simp

private theorem zero_adjoint_unit : (0 : ℝ →ₗ.[ℝ] ℝ)† unitAdjoint = 0 := by
  apply LinearPMap.adjoint_apply_eq zero_dense
  intro x
  change inner ℝ (0 : ℝ) (x : ℝ) = inner ℝ (1 : ℝ) (0 : ℝ)
  simp

theorem zero_estimate_fails :
    ¬ ∀ v : (0 : ℝ →ₗ.[ℝ] ℝ)†.domain,
      ∀ hv : (v : ℝ) ∈ (0 : ℝ →ₗ.[ℝ] ℝ).domain,
      (1 : ℝ) * ‖(v : ℝ)‖ ^ 2 ≤
        ‖(0 : ℝ →ₗ.[ℝ] ℝ)† v‖ ^ 2 +
          ‖(0 : ℝ →ₗ.[ℝ] ℝ) ⟨(v : ℝ), hv⟩‖ ^ 2 := by
  intro h
  have bad := h unitAdjoint (by trivial)
  rw [zero_adjoint_unit] at bad
  change (1 : ℝ) * ‖(1 : ℝ)‖ ^ 2 ≤ ‖(0 : ℝ)‖ ^ 2 + ‖(0 : ℝ)‖ ^ 2 at bad
  simp at bad
  exact (not_le_of_gt (show (0 : ℝ) < 1 from zero_lt_one)) bad

/- EXPECTED TYPE MISMATCH: the actual coercive estimate has not been supplied. -/
example : ∃ u : (0 : ℝ →ₗ.[ℝ] ℝ).domain,
    (0 : ℝ →ₗ.[ℝ] ℝ) u = 1 ∧ ‖(u : ℝ)‖ ≤ ‖(1 : ℝ)‖ / Real.sqrt 1 := by
  exact exists_solution_of_complex_estimate (0 : ℝ →ₗ.[ℝ] ℝ) (0 : ℝ →ₗ.[ℝ] ℝ)
    zero_dense zero_closed zero_closed zero_complex
    (show (0 : ℝ) < 1 from zero_lt_one) zero_kernel_unit

end

end GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability.NegativeChecks
```
