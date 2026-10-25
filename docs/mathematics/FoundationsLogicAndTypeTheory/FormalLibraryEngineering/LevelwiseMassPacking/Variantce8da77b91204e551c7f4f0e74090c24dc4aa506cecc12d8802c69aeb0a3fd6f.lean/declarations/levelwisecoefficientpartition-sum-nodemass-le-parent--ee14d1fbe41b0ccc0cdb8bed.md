# LevelwiseCoefficientPartition.sum_nodeMass_le_parent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26d9b17fb0d0e7666410412a4acff183c8fc621a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f6858c0-de4c-f7d4-19b3-e2f8fa244f8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d48dc7a-5471-2ae4-5fce-0670947cb63d",
  "kind": "theorem",
  "lexical_name": "LevelwiseCoefficientPartition.sum_nodeMass_le_parent",
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
  "slug": "levelwisecoefficientpartition-sum-nodemass-le-parent--ee14d1fbe41b0ccc0cdb8bed",
  "source": {
    "blob": "26d9b17fb0d0e7666410412a4acff183c8fc621a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee14d1fbe41b0ccc0cdb8bed417bcb325f284163348fb8abad4b6a8789305cf8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d48dc7a-5471-2ae4-5fce-0670947cb63d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LevelwiseCoefficientPartition.sum_nodeMass_le_parent
    {Depth Left Right : Type*} [Fintype Depth]
    [Fintype Left] [Fintype Right]
    (partition : LevelwiseCoefficientPartition Depth Left Right)
    (left : EuclideanSpace ℂ Left) (right : EuclideanSpace ℂ Right)
    (depth : Depth) :
    letI := partition.nodeFintype depth
    letI := partition.nodeDecidableEq depth
    (∑ node : partition.Node depth,
        partition.nodeMass left right depth node) ≤ ‖left‖ * ‖right‖ := by
  letI := partition.nodeFintype depth
  letI := partition.nodeDecidableEq depth
  exact (partition.atDepth depth).sum_childMass_le_parent left right

end

end Surface.Core.TypeII
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26d9b17fb0d0e7666410412a4acff183c8fc621a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
