# br18_allPairsClassification

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef78556f358fb196beaac204f303a4d2d3b6ac8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e726660f1a2a5a5ebf0cc9037a0ac3071c5ded1af6abf00d26d3bca36f68c9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb0b2d95-9e77-b27a-4dfe-e2d9139d6f93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6fdd2d79-9c15-354d-1bd9-471405ffb682",
  "kind": "theorem",
  "lexical_name": "br18_allPairsClassification",
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
  "slug": "br18-allpairsclassification--67a25279a42f84f68196561a",
  "source": {
    "blob": "ef78556f358fb196beaac204f303a4d2d3b6ac8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 147,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RepositoryPersistentResidual/Variant4e726660f1a2a5a5ebf0cc9037a0ac3071c5ded1af6abf00d26d3bca36f68c9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67a25279a42f84f68196561ac4cd0a72d61a63becbd1ea6b93027ed393e2e852",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RepositoryPersistentResidual/Variant4e726660f1a2a5a5ebf0cc9037a0ac3071c5ded1af6abf00d26d3bca36f68c9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fdd2d79-9c15-354d-1bd9-471405ffb682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem br18_allPairsClassification
    (matrix : RepositoryBridgeMatrix)
    (source : TheoremOccurrence) (target : PRDIdentifier) :
    ∃ cell : BridgeMatrixCell,
      cell = matrix.classify source target ∧
      cell.metadata.sourceTheorem = source ∧
      cell.metadata.targetTheorem = target := by
  exact ⟨matrix.classify source target, rfl,
    matrix.sourceExact source target, matrix.targetExact source target⟩

/-- Only a source-to-target preservation law can discharge a target theorem.
Reverse-only evidence and structural premises remain useful graph records, but
cannot themselves close a PRD target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RepositoryPersistentResidual/Variant4e726660f1a2a5a5ebf0cc9037a0ac3071c5ded1af6abf00d26d3bca36f68c9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RepositoryPersistentResidual/Variant4e726660f1a2a5a5ebf0cc9037a0ac3071c5ded1af6abf00d26d3bca36f68c9d.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef78556f358fb196beaac204f303a4d2d3b6ac8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
