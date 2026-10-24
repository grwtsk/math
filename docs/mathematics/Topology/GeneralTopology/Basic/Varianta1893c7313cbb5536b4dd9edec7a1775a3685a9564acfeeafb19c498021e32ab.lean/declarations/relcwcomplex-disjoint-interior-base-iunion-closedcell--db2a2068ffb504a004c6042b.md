# RelCWComplex.disjoint_interior_base_iUnion_closedCell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13e62092-4c9d-3ddd-cb7b-111db624b1b1",
  "kind": "lemma",
  "lexical_name": "RelCWComplex.disjoint_interior_base_iUnion_closedCell",
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
  "slug": "relcwcomplex-disjoint-interior-base-iunion-closedcell--db2a2068ffb504a004c6042b",
  "source": {
    "blob": "2cc6b3374c97b03c6a56d2c64b8139c81eb7cfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 726,
    "line": 701,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db2a2068ffb504a004c6042be4e054575c58f00fb7ec87bf9f93ad2c68151b1a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13e62092-4c9d-3ddd-cb7b-111db624b1b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 701–726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RelCWComplex.disjoint_interior_base_iUnion_closedCell [T2Space X] [RelCWComplex C D] :
    Disjoint (interior D) (⋃ (n : ℕ) (j : cell C n), closedCell n j) := by
  simp_rw [disjoint_iff_inter_eq_empty, inter_iUnion, disjoint_interior_base_closedCell.inter_eq,
    iUnion_empty]

namespace CWComplex

export RelCWComplex (pairwiseDisjoint disjoint_openCell_of_ne openCell_subset_closedCell
  cellFrontier_subset_closedCell cellFrontier_union_openCell_eq_closedCell map_zero_mem_openCell
  map_zero_mem_closedCell isCompact_closedCell isClosed_closedCell isCompact_cellFrontier
  isClosed_cellFrontier closure_openCell_eq_closedCell skeletonLT_top skeleton_top skeletonLT_mono
  skeleton_mono skeletonLT_monotone skeleton_monotone skeletonLT_subset_complex
  skeleton_subset_complex closedCell_subset_skeletonLT closedCell_subset_skeleton
  closedCell_subset_complex openCell_subset_skeletonLT openCell_subset_skeleton
  openCell_subset_complex cellFrontier_subset_skeletonLT cellFrontier_subset_skeleton
  cellFrontier_subset_complex iUnion_cellFrontier_subset_skeletonLT
  iUnion_cellFrontier_subset_skeleton closedCell_zero_eq_singleton openCell_zero_eq_singleton
  cellFrontier_zero_eq_empty isClosed skeletonLT_union_iUnion_closedCell_eq_skeletonLT_succ
  skeleton_union_iUnion_closedCell_eq_skeleton_succ
  eq_of_not_disjoint_openCell disjoint_skeletonLT_openCell
  disjoint_skeleton_openCell skeletonLT_inter_closedCell_eq_skeletonLT_inter_cellFrontier
  skeleton_inter_closedCell_eq_skeleton_inter_cellFrontier)

end CWComplex

end Topology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean#L701).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc6b3374c97b03c6a56d2c64b8139c81eb7cfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
