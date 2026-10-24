# Complete source: GRWTSK.Analysis.InnerProductSpace.Checks.Positive.ClosedComplexSolvability

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c25a19c08edad5e0b6caca613f3defb2faad4e6` · SHA-256 `ac2694a56cc53e51dbb0311a5d8568b5cc833f684d49c47a50e9b0342a8b5b2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Positive consumers for the closed-complex solvability estimate.
Human project direction: grwtsk contributors. Assistance: OpenAI Codex.
Released under the repository MIT license. The imported adapted theorem
retains its upstream OpenAI Apache-2.0 attribution and license.
-/
import GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability

set_option autoImplicit false

namespace GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability.PositiveChecks

noncomputable section

open LinearPMap

variable {𝕜 E F H : Type*} [RCLike 𝕜]
variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
variable [NormedAddCommGroup F] [InnerProductSpace 𝕜 F] [CompleteSpace F]
variable [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]

example (T : E →ₗ.[𝕜] F) (S : F →ₗ.[𝕜] H)
    (hT : Dense (T.domain : Set E)) (hTc : T.IsClosed) (hSc : S.IsClosed)
    (hcomplex : ∀ x : T.domain, (T x, 0) ∈ S.graph)
    {ε : ℝ} (hε : 0 < ε)
    (hestimate : ∀ v : T†.domain, ∀ hv : (v : F) ∈ S.domain,
      ε * ‖(v : F)‖ ^ 2 ≤ ‖T† v‖ ^ 2 + ‖S ⟨(v : F), hv⟩‖ ^ 2)
    {f : F} (hf : (f, 0) ∈ S.graph) :
    ∃ u : T.domain, T u = f ∧ ‖(u : E)‖ ≤ ‖f‖ / Real.sqrt ε :=
  exists_solution_of_complex_estimate T S hT hTc hSc hcomplex hε hestimate hf

private def identityOp : ℝ →ₗ.[ℝ] ℝ :=
  (LinearMap.id : ℝ →ₗ[ℝ] ℝ).toPMap ⊤

private theorem identity_dense : Dense (identityOp.domain : Set ℝ) := by
  change Dense (Set.univ : Set ℝ)
  exact dense_univ

private theorem identity_closed : identityOp.IsClosed := by
  have he : (identityOp.graph : Set (ℝ × ℝ)) = {p | p.1 = p.2} := by
    ext p
    change p ∈ identityOp.graph ↔ p.1 = p.2
    rw [LinearPMap.mem_graph_iff]
    constructor
    · rintro ⟨x, hx, hy⟩
      exact hx.symm.trans hy
    · intro hy
      exact ⟨⟨p.1, by trivial⟩, rfl, hy⟩
  change IsClosed (identityOp.graph : Set (ℝ × ℝ))
  rw [he]
  exact isClosed_eq continuous_fst continuous_snd

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

private theorem identity_adjoint_apply (v : identityOp†.domain) :
    identityOp† v = (v : ℝ) := by
  apply LinearPMap.adjoint_apply_eq identity_dense
  intro x
  rfl

private theorem identity_zero_complex (x : identityOp.domain) :
    (identityOp x, 0) ∈ (0 : ℝ →ₗ.[ℝ] ℝ).graph := by
  exact (0 : ℝ →ₗ.[ℝ] ℝ).mem_graph_iff.mpr
    ⟨⟨identityOp x, by trivial⟩, rfl, rfl⟩

private theorem identity_estimate (v : identityOp†.domain)
    (hv : (v : ℝ) ∈ (0 : ℝ →ₗ.[ℝ] ℝ).domain) :
    (1 : ℝ) * ‖(v : ℝ)‖ ^ 2 ≤
      ‖identityOp† v‖ ^ 2 + ‖(0 : ℝ →ₗ.[ℝ] ℝ) ⟨(v : ℝ), hv⟩‖ ^ 2 := by
  rw [identity_adjoint_apply]
  change (1 : ℝ) * ‖(v : ℝ)‖ ^ 2 ≤ ‖(v : ℝ)‖ ^ 2 + ‖(0 : ℝ)‖ ^ 2
  simp

example : ∃ u : identityOp.domain, identityOp u = 1 ∧ ‖(u : ℝ)‖ ≤ 1 := by
  have hkernel : ((1 : ℝ), (0 : ℝ)) ∈ (0 : ℝ →ₗ.[ℝ] ℝ).graph :=
    (0 : ℝ →ₗ.[ℝ] ℝ).mem_graph_iff.mpr ⟨⟨1, by trivial⟩, rfl, rfl⟩
  have h := exists_solution_of_complex_estimate identityOp (0 : ℝ →ₗ.[ℝ] ℝ)
    identity_dense identity_closed zero_closed identity_zero_complex
    (show (0 : ℝ) < 1 from zero_lt_one) identity_estimate hkernel
  simpa using h

end

end GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability.PositiveChecks
```
