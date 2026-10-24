# tmp_topology_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e2c0c59-12d3-c1ca-7926-a3bbae637004",
  "kind": "theorem",
  "lexical_name": "tmp_topology_eq",
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
  "slug": "tmp-topology-eq--9be9cd1a063a047445e82a80",
  "source": {
    "blob": "d430a4d0f26a7ca7e607d1c5349583e2d4936119",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 363,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9be9cd1a063a047445e82a804a98c3c2e8edaffd09a6c020911e4684ee5199fb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e2c0c59-12d3-c1ca-7926-a3bbae637004`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem tmp_topology_eq :
    (ContinuousLinearMap.tmpTopologicalSpace : TopologicalSpace (E →SL[σ₁₂] F)) =
      ContinuousLinearMap.topologicalSpace := by
  refine'
    ContinuousLinearMap.tmpTopologicalAddGroup.ext inferInstance
      ((@Metric.nhds_basis_closedBall _ ContinuousLinearMap.tmpPseudoMetricSpace 0).ext
        (ContinuousLinearMap.hasBasis_nhds_zero_of_basis Metric.nhds_basis_closedBall) _ _)
  · rcases NormedField.exists_norm_lt_one 𝕜 with ⟨c, hc₀, hc₁⟩
    intro ε hε
    refine' ⟨⟨closedBall 0 (1 / ‖c‖), ε⟩, ⟨⟨_, hε⟩, _⟩⟩
    · exact NormedSpace.isVonNBounded_closedBall _ _ _
    intro f (hf : ∀ x, _)
    simp_rw [mem_closedBall_zero_iff] at hf
    convert (@mem_closedBall_zero_iff _ (_) f ε).2 _ -- Porting note: needed `convert`
    refine' op_norm_le_of_shell' (div_pos one_pos hc₀) hε.le hc₁ fun x hx₁ hxc => _
    rw [div_mul_cancel 1 hc₀.ne.symm] at hx₁
    exact (hf x hxc.le).trans (le_mul_of_one_le_right hε.le hx₁)
  · rintro ⟨S, ε⟩ ⟨hS, hε⟩
    rw [NormedSpace.isVonNBounded_iff, ← bounded_iff_isBounded] at hS
    rcases hS.subset_ball_lt 0 0 with ⟨δ, hδ, hSδ⟩
    exact ⟨ε / δ, div_pos hε hδ,
      (ContinuousLinearMap.tmp_closedBall_div_subset hε hδ).trans fun f hf x hx => hf x <| hSδ hx⟩
#align continuous_linear_map.tmp_topology_eq ContinuousLinearMap.tmp_topology_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d430a4d0f26a7ca7e607d1c5349583e2d4936119` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
