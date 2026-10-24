# Complete source: GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `299ee0dd9079b606b269df371d74ceb8be5adb19` · SHA-256 `13ee83a41238b7e1630b05061843952fece1820cb647d454e27f26b785c74965`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Adapted from OpenAI's openai/math, revision
1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/Analysis/InnerProductSpace/ComplexSolvability.lean.
Upstream authorship: OpenAI, per lean/formalization.yaml.
Released under Apache-2.0; see LICENSES/OpenAI-Apache-2.0.txt.
Changes: extract only the graph/adjoint-bound results into a mathematical
namespace, minimize imports, and replay under the pinned Lean environment.
Human project direction: grwtsk contributors. Adaptation assistance: OpenAI Codex.
Mathlib retains its upstream authorship and licensing.
-/
import Mathlib.Analysis.InnerProductSpace.LinearPMap
import Mathlib.Analysis.InnerProductSpace.Dual
import Mathlib.Analysis.Normed.Module.HahnBanach

/-!
# Solvability of densely defined closed operators

Pairing identities and bounds quantify over the actual adjoint domain. The
operator domain must be dense and its graph closed. The solution estimate also
retains the nonnegative bound constant. No Hilbert-complex or dense-core
application is included here.
-/

set_option autoImplicit false

open scoped InnerProductSpace

namespace GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability

noncomputable section

open LinearPMap WithLp

variable {𝕜 E F : Type*} [RCLike 𝕜]
variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
variable [NormedAddCommGroup F] [InnerProductSpace 𝕜 F] [CompleteSpace F]

theorem mem_graph_of_adjoint_identity
    (T : E →ₗ.[𝕜] F) (hT : Dense (T.domain : Set E)) (hclosed : T.IsClosed)
    {u : E} {f : F}
    (hweak : ∀ v : T†.domain, inner 𝕜 u (T† v) = inner 𝕜 f (v : F)) :
    (u, f) ∈ T.graph := by
  let G : Submodule 𝕜 (WithLp 2 (E × F)) :=
    T.graph.comap (WithLp.linearEquiv 2 𝕜 (E × F)).toLinearMap
  have hGc : IsClosed (G : Set (WithLp 2 (E × F))) :=
    hclosed.preimage (WithLp.prod_continuous_ofLp 2 E F)
  have hm : toLp 2 (u, f) ∈ Gᗮᗮ := by
    rw [Submodule.mem_orthogonal']
    intro z hz
    have hz' (x : T.domain) :
        inner 𝕜 (ofLp z).1 (x : E) + inner 𝕜 (ofLp z).2 (T x) = 0 := by
      have hx : toLp 2 ((x : E), T x) ∈ G := by
        change ((x : E), T x) ∈ T.graph
        exact T.mem_graph_iff.mpr ⟨x, rfl, rfl⟩
      have h := (G.mem_orthogonal' z).mp hz (toLp 2 ((x : E), T x)) hx
      simpa only [prod_inner_apply, ofLp_toLp] using h
    have hv : (ofLp z).2 ∈ T†.domain := by
      apply LinearPMap.mem_adjoint_domain_of_exists
      refine ⟨-(ofLp z).1, fun x => ?_⟩
      rw [inner_neg_left]
      exact (eq_neg_of_add_eq_zero_right (hz' x)).symm
    have ha : T† ⟨(ofLp z).2, hv⟩ = -(ofLp z).1 := by
      apply LinearPMap.adjoint_apply_eq hT
      intro x
      rw [inner_neg_left]
      exact (eq_neg_of_add_eq_zero_right (hz' x)).symm
    have hw := hweak ⟨(ofLp z).2, hv⟩
    rw [ha, inner_neg_right] at hw
    simp only [prod_inner_apply]
    rw [← hw]
    exact add_neg_cancel _
  rw [G.orthogonal_orthogonal_eq_closure, hGc.submodule_topologicalClosure_eq] at hm
  exact hm



theorem exists_solution_of_adjoint_bound
    (T : E →ₗ.[𝕜] F) (hT : Dense (T.domain : Set E)) (hclosed : T.IsClosed)
    (f : F) {C : ℝ} (hC : 0 ≤ C)
    (hbound : ∀ v : T†.domain, ‖inner 𝕜 f (v : F)‖ ≤ C * ‖T† v‖) :
    ∃ u : T.domain, T u = f ∧ ‖(u : E)‖ ≤ C := by
  let A : T†.domain →ₗ[𝕜] E := T†.toFun
  let ell : T†.domain →ₗ[𝕜] 𝕜 := (innerₛₗ 𝕜 f).comp T†.domain.subtype
  have hk : A.ker ≤ ell.ker := by
    intro v hv
    rw [LinearMap.mem_ker] at hv ⊢
    change inner 𝕜 f (v : F) = 0
    apply norm_eq_zero.mp
    have hb := hbound v
    change ‖inner 𝕜 f (v : F)‖ ≤ C * ‖A v‖ at hb
    rw [hv, norm_zero, mul_zero] at hb
    exact le_antisymm hb (norm_nonneg _)
  let g : A.range →ₗ[𝕜] 𝕜 :=
    (A.ker.liftQ ell hk).comp A.quotKerEquivRange.symm.toLinearMap
  have hg (v : T†.domain) : g (A.rangeRestrict v) = ell v := by
    have he : A.quotKerEquivRange (Submodule.Quotient.mk v) = A.rangeRestrict v := by
      apply Subtype.ext
      exact A.quotKerEquivRange_apply_mk v
    simp only [g, LinearMap.comp_apply, LinearEquiv.coe_coe, ← he,
      LinearEquiv.symm_apply_apply, Submodule.liftQ_apply]
  have hgb (x : A.range) : ‖g x‖ ≤ C * ‖x‖ := by
    obtain ⟨v, hv⟩ := x.property
    have he : A.rangeRestrict v = x := Subtype.ext hv
    rw [← he, hg]
    exact hbound v
  let gc : StrongDual 𝕜 A.range := g.mkContinuous C hgb
  obtain ⟨L, hL, hnL⟩ := exists_extension_norm_eq A.range gc
  let u : E := (InnerProductSpace.toDual 𝕜 E).symm L
  have hun : ‖u‖ ≤ C := by
    rw [show ‖u‖ = ‖L‖ from (InnerProductSpace.toDual 𝕜 E).symm.norm_map L, hnL]
    exact g.mkContinuous_norm_le hC hgb
  have hu : (u, f) ∈ T.graph := by
    apply mem_graph_of_adjoint_identity T hT hclosed
    intro v
    change inner 𝕜 ((InnerProductSpace.toDual 𝕜 E).symm L) (A v) = ell v
    rw [InnerProductSpace.toDual_symm_apply]
    have h := hL (A.rangeRestrict v)
    exact h.trans (hg v)
  obtain ⟨u', hu', hTu'⟩ := T.mem_graph_iff.mp hu
  exact ⟨u', hTu', hu' ▸ hun⟩

end

end GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability
```
