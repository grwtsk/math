# Complete source: GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57f14941a4522e9ea77f804b69d33687f4f5fbbd` · SHA-256 `67d2dbbba5219aa3f44e2c5154e00d97a094f7603f0084999743b14d763dd518`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Adapted from OpenAI's openai/math, revision
1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/Analysis/InnerProductSpace/ComplexSolvability.lean.
Upstream authorship: OpenAI, per lean/formalization.yaml.
Released under Apache-2.0; see LICENSES/OpenAI-Apache-2.0.txt.
Changes: extract the actual joint-graph definition and dense-core estimate into
one mathematical module, reuse admitted complex solvability, and retain every
domain, topology, density, coercivity and graph-kernel premise.
Human project direction: grwtsk contributors. Adaptation assistance: OpenAI Codex.
Mathlib retains its upstream authorship and licensing.
-/
import GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability
import Mathlib.Tactic.FunProp

/-!
# Solvability from an estimate on a dense subset of the joint graph

The joint graph is the actual subtype of the product `F × E × H`, carrying
its induced topology. Density is required in that whole subtype. An estimate
on separate component samples, or an estimate on an empty subset, does not
supply this hypothesis. The final inner-product space need not be complete.
-/

set_option autoImplicit false

open scoped InnerProductSpace

namespace GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability

noncomputable section

open LinearPMap
open GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability

variable {𝕜 E F H : Type*} [RCLike 𝕜]
variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
variable [NormedAddCommGroup F] [InnerProductSpace 𝕜 F] [CompleteSpace F]
variable [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]

def jointGraph (T : E →ₗ.[𝕜] F) (S : F →ₗ.[𝕜] H) : Set (F × E × H) :=
  {p | (p.1, p.2.1) ∈ T†.graph ∧ (p.1, p.2.2) ∈ S.graph}



theorem exists_solution_of_core_estimate
    (T : E →ₗ.[𝕜] F) (S : F →ₗ.[𝕜] H)
    (hT : Dense (T.domain : Set E)) (hTc : T.IsClosed) (hSc : S.IsClosed)
    (hcomplex : ∀ x : T.domain, (T x, 0) ∈ S.graph)
    (D : Set (jointGraph T S)) (hD : Dense D)
    {ε : ℝ} (hε : 0 < ε)
    (hestimate : ∀ v ∈ D,
      ε * ‖v.val.1‖ ^ 2 ≤ ‖v.val.2.1‖ ^ 2 + ‖v.val.2.2‖ ^ 2)
    {f : F} (hf : (f, 0) ∈ S.graph) :
    ∃ u : T.domain, T u = f ∧ ‖(u : E)‖ ≤ ‖f‖ / Real.sqrt ε := by
  apply exists_solution_of_complex_estimate T S hT hTc hSc hcomplex hε _ hf
  intro v hv
  let p : jointGraph T S := ⟨((v : F), T† v, S ⟨(v : F), hv⟩),
    T†.mem_graph_iff.mpr ⟨v, rfl, rfl⟩,
    S.mem_graph_iff.mpr ⟨⟨(v : F), hv⟩, rfl, rfl⟩⟩
  have hc : IsClosed {w : jointGraph T S |
      ε * ‖w.val.1‖ ^ 2 ≤ ‖w.val.2.1‖ ^ 2 + ‖w.val.2.2‖ ^ 2} := by
    apply isClosed_le <;> fun_prop
  exact (closure_minimal hestimate hc) (hD p)

end

end GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability
```
