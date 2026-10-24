# tmp_topology_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a86695945e4c66640b661f94d3ce85955fba3bf0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 355,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57e5430a-5352-fcef-04a9-c2d67a45547d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d728191-ef92-91cd-efe9-af1b7748260d",
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
  "slug": "tmp-topology-eq--44cabdff564d2fc7fd8724d7",
  "source": {
    "blob": "a86695945e4c66640b661f94d3ce85955fba3bf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 355,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44cabdff564d2fc7fd8724d7b62d316b18fd48700d8e57acc3d2d2474285f9c4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d728191-ef92-91cd-efe9-af1b7748260d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–378.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a86695945e4c66640b661f94d3ce85955fba3bf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
