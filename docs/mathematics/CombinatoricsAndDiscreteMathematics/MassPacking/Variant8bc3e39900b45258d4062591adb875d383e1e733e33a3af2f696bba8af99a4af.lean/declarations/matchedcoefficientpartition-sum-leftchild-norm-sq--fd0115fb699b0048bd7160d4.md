# MatchedCoefficientPartition.sum_leftChild_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f66ec3f51860c4af8baf3adfa64f8ec3eb783e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a820b8a-02a1-ec65-2bf5-1c2956c29486",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62200ebe-89fd-77c3-08e6-7aed8fe998a0",
  "kind": "theorem",
  "lexical_name": "MatchedCoefficientPartition.sum_leftChild_norm_sq",
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
  "slug": "matchedcoefficientpartition-sum-leftchild-norm-sq--fd0115fb699b0048bd7160d4",
  "source": {
    "blob": "5f66ec3f51860c4af8baf3adfa64f8ec3eb783e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd0115fb699b0048bd7160d48108a9e9a714ee4aa40f79a5233868c872605c84",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62200ebe-89fd-77c3-08e6-7aed8fe998a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MatchedCoefficientPartition.sum_leftChild_norm_sq
    {Child Left Right : Type*} [Fintype Child] [DecidableEq Child]
    [Fintype Left] [Fintype Right]
    (partition : MatchedCoefficientPartition Child Left Right)
    (left : EuclideanSpace ℂ Left) :
    ∑ child : Child, ‖partition.leftChild left child‖ ^ 2 = ‖left‖ ^ 2 := by
  classical
  simp only [EuclideanSpace.norm_sq_eq, MatchedCoefficientPartition.leftChild]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro index _
  rw [Finset.sum_eq_single (partition.leftBlock index)]
  · simp
  · intro child _ hne
    simp [hne.symm]
  · simp

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f66ec3f51860c4af8baf3adfa64f8ec3eb783e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
