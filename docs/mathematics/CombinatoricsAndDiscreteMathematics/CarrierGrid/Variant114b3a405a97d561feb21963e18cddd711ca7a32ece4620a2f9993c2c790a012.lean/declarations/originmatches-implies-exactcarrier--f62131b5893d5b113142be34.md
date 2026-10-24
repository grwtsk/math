# originMatches_implies_exactCarrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c150aa123482d10b5dfd8be666ae753b2ec3af31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab514e60-72e3-15a7-df1b-11fd4c7c315b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9549b170-3a65-1688-2cb0-3f3fa063ea41",
  "kind": "theorem",
  "lexical_name": "originMatches_implies_exactCarrier",
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
  "slug": "originmatches-implies-exactcarrier--f62131b5893d5b113142be34",
  "source": {
    "blob": "c150aa123482d10b5dfd8be666ae753b2ec3af31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f62131b5893d5b113142be34245881dd0b6b0ade6bf49de5c06b286e67c5e6ea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9549b170-3a65-1688-2cb0-3f3fa063ea41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem originMatches_implies_exactCarrier {size : Nat}
    {point : NormalizedPoint} {cell : GridCell size size}
    (origin : OriginMatches size point cell) :
    ExactCarrier size point cell := by
  exact ⟨axisOriginMatches_implies_support origin.1,
    axisOriginMatches_implies_support origin.2⟩

/-! ## Interior-stratum witnesses

The hypotheses below exclude the outer domain boundary.  A `cell` witness is
strictly inside one cell.  An `internalBoundary` witness names two adjacent
in-grid cells and the common boundary coordinate.  Thus the cardinality law
does not incorrectly assign two carriers at `0` or `1`.
-/

/-- An exact interior stratum on one grid axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c150aa123482d10b5dfd8be666ae753b2ec3af31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
