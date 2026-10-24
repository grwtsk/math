# prepartition_isSubordinate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35313037decf6ef9b9d7127d1e9ffc27c67d14f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b56cc75-305e-319b-4e19-2f3ae1329529",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9512660c-b5f9-3945-d4bc-a23b22ce9168",
  "kind": "theorem",
  "lexical_name": "prepartition_isSubordinate",
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
  "slug": "prepartition-issubordinate--0e1fef6a3bdabd360bfc5439",
  "source": {
    "blob": "35313037decf6ef9b9d7127d1e9ffc27c67d14f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 278,
    "path": "GRWTSK/Topology/GeneralTopology/UnitPartition/Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e1fef6a3bdabd360bfc54392b4b14aec0827348352655153f35baaba095fa0f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitPartition/Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9512660c-b5f9-3945-d4bc-a23b22ce9168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prepartition_isSubordinate (B : Box ι) {r : ℝ} (hr : 0 < r) (hn : 1 / n ≤ r) :
    (prepartition n B).IsSubordinate (fun _ ↦ ⟨r, hr⟩) := by
  intro _ hI
  obtain ⟨ν, hν, rfl⟩ := mem_prepartition_iff.mp hI
  refine fun _ h ↦ le_trans (Metric.dist_le_diam_of_mem (Box.isBounded_Icc _) h ?_) ?_
  · rw [prepartition_tag n hν]
    exact Box.coe_subset_Icc (tag_mem _ _)
  · exact le_trans (diam_boxIcc n ν) hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitPartition/Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitPartition/Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35313037decf6ef9b9d7127d1e9ffc27c67d14f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
