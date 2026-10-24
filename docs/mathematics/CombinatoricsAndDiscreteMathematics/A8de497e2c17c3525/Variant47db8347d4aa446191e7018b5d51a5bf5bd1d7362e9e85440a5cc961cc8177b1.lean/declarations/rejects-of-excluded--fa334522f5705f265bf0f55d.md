# rejects_of_excluded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0e9c3545a595273372276ef904317d8a7e2a34c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 13,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47db8347d4aa446191e7018b5d51a5bf5bd1d7362e9e85440a5cc961cc8177b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d59d46c4-61e1-2f4b-fb08-8fd6ab69300f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3edb60e6-5d3c-cbcc-1bf3-19bd9b150c7f",
  "kind": "theorem",
  "lexical_name": "rejects_of_excluded",
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
  "slug": "rejects-of-excluded--fa334522f5705f265bf0f55d",
  "source": {
    "blob": "f0e9c3545a595273372276ef904317d8a7e2a34c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 13,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A8de497e2c17c3525/Variant47db8347d4aa446191e7018b5d51a5bf5bd1d7362e9e85440a5cc961cc8177b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa334522f5705f265bf0f55d46f016ab5693337427e2867fd282e1e0e525c7a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A8de497e2c17c3525/Variant47db8347d4aa446191e7018b5d51a5bf5bd1d7362e9e85440a5cc961cc8177b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3edb60e6-5d3c-cbcc-1bf3-19bd9b150c7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rejects_of_excluded
    {boundary : Boundary} {profile : EntityProfile} {clause : SemanticClause}
    (inExcluded : clause ∈ boundary.excludes)
    (inProfile : clause ∈ profile.clauses) :
    ¬ boundary.Accepts profile := by
  intro accepted
  exact Finset.disjoint_left.mp accepted.2 inExcluded inProfile

end Boundary

end Mathematics.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A8de497e2c17c3525/Variant47db8347d4aa446191e7018b5d51a5bf5bd1d7362e9e85440a5cc961cc8177b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A8de497e2c17c3525/Variant47db8347d4aa446191e7018b5d51a5bf5bd1d7362e9e85440a5cc961cc8177b1.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0e9c3545a595273372276ef904317d8a7e2a34c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
