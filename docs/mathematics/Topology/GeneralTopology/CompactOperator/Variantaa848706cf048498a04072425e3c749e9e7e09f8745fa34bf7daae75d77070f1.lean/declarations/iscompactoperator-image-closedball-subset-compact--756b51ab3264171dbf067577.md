# IsCompactOperator.image_closedBall_subset_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad6f20323928ec80e6345c793fe419bff2da9f6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7eb40a8d-1fde-aeac-f961-c5f3d6170f8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6aa5510d-fe3f-e289-37cb-a28a8c27d8e5",
  "kind": "theorem",
  "lexical_name": "IsCompactOperator.image_closedBall_subset_compact",
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
  "slug": "iscompactoperator-image-closedball-subset-compact--756b51ab3264171dbf067577",
  "source": {
    "blob": "ad6f20323928ec80e6345c793fe419bff2da9f6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:756b51ab3264171dbf067577848c3125eb1a977f7be48f08db30917923d01c46",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aa5510d-fe3f-e289-37cb-a28a8c27d8e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompactOperator.image_closedBall_subset_compact [ContinuousConstSMul 𝕜₂ M₂]
    {f : M₁ →ₛₗ[σ₁₂] M₂} (hf : IsCompactOperator f) (r : ℝ) :
    ∃ K : Set M₂, IsCompact K ∧ f '' Metric.closedBall 0 r ⊆ K :=
  hf.image_subset_compact_of_isVonNBounded (NormedSpace.isVonNBounded_closedBall 𝕜₁ M₁ r)
#align is_compact_operator.image_closed_ball_subset_compact IsCompactOperator.image_closedBall_subset_compact

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6f20323928ec80e6345c793fe419bff2da9f6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
