# mem_graph_of_adjoint_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19f2cc2c-d467-356e-07d3-d6afe6e7bfb7",
  "kind": "theorem",
  "lexical_name": "mem_graph_of_adjoint_identity",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "mem-graph-of-adjoint-identity--da225349e6aa6a786812e217",
  "source": {
    "blob": "299ee0dd9079b606b269df371d74ceb8be5adb19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 39,
    "path": "GRWTSK/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da225349e6aa6a786812e217e523374e00af264f8746709f8361efd28588bb0b",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19f2cc2c-d467-356e-07d3-d6afe6e7bfb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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



```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `299ee0dd9079b606b269df371d74ceb8be5adb19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
