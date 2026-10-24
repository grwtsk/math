# chartFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:343689215355df238d950ad1f64856de196923beca54b1daa00dbed87c108a84",
  "kind": "def",
  "lexical_name": "chartFamily",
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
  "slug": "chartfamily--57e2e57483a52f4dc05f9d59",
  "source": {
    "blob": "7b9c7ad58f1d57e6a324eeca5cf8d0becc564f7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 653,
    "line": 650,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57e2e57483a52f4dc05f9d5930d1170b2c7af525aa37ac927af15c4caf707c41",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:343689215355df238d950ad1f64856de196923beca54b1daa00dbed87c108a84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chartFamily (state : Bool) : ParameterPlane → Space :=
  if state then cylinderChart else planeChart

/-- The same two-state label selects the corresponding signed surface-defining function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b9c7ad58f1d57e6a324eeca5cf8d0becc564f7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
