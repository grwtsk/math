# exists_forall_closedBall_subset_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7350021d85fdc20b4edd9566da2ed2ec888fdef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d997049d-239a-1936-cd94-f2ed7ae6b9ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe8197eb-0ee8-3b18-480a-b06e1e9dbfb7",
  "kind": "theorem",
  "lexical_name": "exists_forall_closedBall_subset_aux₂",
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
  "slug": "exists-forall-closedball-subset-aux--f2315c600394dd39f95ccdaf",
  "source": {
    "blob": "a7350021d85fdc20b4edd9566da2ed2ec888fdef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2315c600394dd39f95ccdafbacdb0eb4287d83d095f59e63677313e925b9f95",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe8197eb-0ee8-3b18-480a-b06e1e9dbfb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_forall_closedBall_subset_aux₂ (y : X) :
    Convex ℝ
      (Ioi (0 : ℝ) ∩ ENNReal.ofReal ⁻¹' ⋂ (i) (_ : y ∈ K i), { r | closedBall y r ⊆ U i }) :=
  (convex_Ioi _).inter <| OrdConnected.convex <| OrdConnected.preimage_ennreal_ofReal <|
    ordConnected_iInter fun i => ordConnected_iInter fun (_ : y ∈ K i) =>
      ordConnected_setOf_closedBall_subset y (U i)

/-- Let `X` be an extended metric space. Let `K : ι → Set X` be a locally finite family of closed
sets, let `U : ι → Set X` be a family of open sets such that `K i ⊆ U i` for all `i`. Then there
exists a positive continuous function `δ : C(X, ℝ)` such that for any `i` and `x ∈ K i`,
we have `EMetric.closedBall x (ENNReal.ofReal (δ x)) ⊆ U i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7350021d85fdc20b4edd9566da2ed2ec888fdef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
