# projectionOnly_not_canonical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a72ecedeea2cb0e992d56de21b4fa9beb877262",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7b1bccd4c436a0118921a43a06fcbff7cb9d92fb8ffd2458d26d38921f6e668.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff2ba789-3a2c-22ea-f003-dc0615177375",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1be2265b-00b3-be76-4b6d-0e9898470bc5",
  "kind": "theorem",
  "lexical_name": "projectionOnly_not_canonical",
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
  "slug": "projectiononly-not-canonical--d8e4c659d9df912349710d73",
  "source": {
    "blob": "5a72ecedeea2cb0e992d56de21b4fa9beb877262",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 155,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Invariant/Varianta7b1bccd4c436a0118921a43a06fcbff7cb9d92fb8ffd2458d26d38921f6e668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8e4c659d9df912349710d738600c74c607e8b12df1dfeefac766087de2d9db9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Invariant/Varianta7b1bccd4c436a0118921a43a06fcbff7cb9d92fb8ffd2458d26d38921f6e668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1be2265b-00b3-be76-4b6d-0e9898470bc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projectionOnly_not_canonical
    {projection : TreeProjection}
    (valid : projection.StructurallyValid)
    {occurrence : TreeOccurrence}
    (mem : occurrence ∈ projection.occurrences)
    (projectionOnly : occurrence.projectionOnly = true) :
    occurrence.nodeKind ≠ .semantic := by
  intro semantic
  have notProjectionOnly : occurrence.projectionOnly = false :=
    valid.1 occurrence mem semantic
  rw [projectionOnly] at notProjectionOnly
  cases notProjectionOnly

end TreeProjection

end MathDiscovery.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Invariant/Varianta7b1bccd4c436a0118921a43a06fcbff7cb9d92fb8ffd2458d26d38921f6e668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Invariant/Varianta7b1bccd4c436a0118921a43a06fcbff7cb9d92fb8ffd2458d26d38921f6e668.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a72ecedeea2cb0e992d56de21b4fa9beb877262` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
