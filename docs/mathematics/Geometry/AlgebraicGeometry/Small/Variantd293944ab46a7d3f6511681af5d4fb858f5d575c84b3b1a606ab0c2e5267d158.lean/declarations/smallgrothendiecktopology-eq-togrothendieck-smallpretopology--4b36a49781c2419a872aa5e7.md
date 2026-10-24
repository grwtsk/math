# smallGrothendieckTopology_eq_toGrothendieck_smallPretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2910c2ae389da3516752425d9d3369913895f2b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b033672-330f-9079-ff9b-48f33deef419",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a670423f-269c-0242-aca3-550f47cec603",
  "kind": "lemma",
  "lexical_name": "smallGrothendieckTopology_eq_toGrothendieck_smallPretopology",
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
  "slug": "smallgrothendiecktopology-eq-togrothendieck-smallpretopology--4b36a49781c2419a872aa5e7",
  "source": {
    "blob": "2910c2ae389da3516752425d9d3369913895f2b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 154,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b36a49781c2419a872aa5e7e42d0cb0cd0cc9cfa1e09bdb28e54e74a18bfbf4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a670423f-269c-0242-aca3-550f47cec603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smallGrothendieckTopology_eq_toGrothendieck_smallPretopology (hPQ : P ≤ Q) :
    S.smallGrothendieckTopology P = (S.smallPretopology P Q).toGrothendieck := by
  rw [smallGrothendieckTopology, overGrothendieckTopology_eq_toGrothendieck_overPretopology,
    Precoverage.toGrothendieck_toPretopology_eq_toGrothendieck,
    Precoverage.toGrothendieck_toPretopology_eq_toGrothendieck]
  exact (Precoverage.toGrothendieck_comap_eq_restrictedTopology _ _
    (map_functorPullback_mem_coverings hPQ _)).symm

@[deprecated (since := "2026-05-28")]
alias smallGrothendieckTopologyOfLE_eq_toGrothendieck_smallPretopology :=
  smallGrothendieckTopology_eq_toGrothendieck_smallPretopology

variable {P Q}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2910c2ae389da3516752425d9d3369913895f2b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
