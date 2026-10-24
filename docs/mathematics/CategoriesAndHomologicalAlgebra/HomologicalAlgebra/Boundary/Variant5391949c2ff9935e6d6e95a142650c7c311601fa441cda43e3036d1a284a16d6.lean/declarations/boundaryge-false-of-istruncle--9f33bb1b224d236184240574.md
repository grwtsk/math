# BoundaryGE.false_of_isTruncLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba74cf27f8b41366467c9dff84e70114a68740c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:346d9f16-db88-b7aa-7ec3-cdb70d9936ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bb66653-a4f2-3dc4-a969-09c0701b6377",
  "kind": "lemma",
  "lexical_name": "BoundaryGE.false_of_isTruncLE",
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
  "slug": "boundaryge-false-of-istruncle--9f33bb1b224d236184240574",
  "source": {
    "blob": "ba74cf27f8b41366467c9dff84e70114a68740c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f33bb1b224d2361842405748745bdf5a8996675b737a44be9d1fc6e219b8a4b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bb66653-a4f2-3dc4-a969-09c0701b6377`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma BoundaryGE.false_of_isTruncLE {j : ι} (hj : e.BoundaryGE j) [e.IsTruncLE] : False := by
  obtain ⟨i, hi⟩ := e.mem_prev hj.1
  exact hj.2 i (by simpa only [hi] using hj.1)

/-- The upper boundary of an embedding `e : Embedding c c'`, as a predicate on `ι`.
It is satisfied by `j : ι` when there exists `k' : ι'` not in the image of `e.f`
such that `c'.Rel (e.f j) k'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba74cf27f8b41366467c9dff84e70114a68740c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
