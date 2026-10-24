# ConflictRecord.IsOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62fb0c9b18015151f046bdc68fabc222937a5b627414e5a5a98f1d98a3cf6991",
  "kind": "def",
  "lexical_name": "ConflictRecord.IsOpen",
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
  "slug": "conflictrecord-isopen--9037f3cce1a568a3e2959cc2",
  "source": {
    "blob": "c4c9a335b6b8d250b47b6759228a27beb1054242",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 28,
    "path": "GRWTSK/Topology/GeneralTopology/Conflict/Variant99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9037f3cce1a568a3e2959cc21ac276e58c5bc4bc0c4401225eab44ee43cc8b21",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Conflict/Variant99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62fb0c9b18015151f046bdc68fabc222937a5b627414e5a5a98f1d98a3cf6991`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ConflictRecord.IsOpen (conflict : ConflictRecord) : Prop :=
  conflict.resolution = none

end Mathematics.Federation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Conflict/Variant99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Conflict/Variant99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4c9a335b6b8d250b47b6759228a27beb1054242` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
