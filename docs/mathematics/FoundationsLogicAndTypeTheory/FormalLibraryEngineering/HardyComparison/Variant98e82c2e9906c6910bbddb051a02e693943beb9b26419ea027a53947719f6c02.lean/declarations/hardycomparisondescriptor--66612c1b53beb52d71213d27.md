# HardyComparisonDescriptor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4100d97763f72466c8a2c25e484430809ef3b152cf2aa160faa62faa078b5fde",
  "kind": "structure",
  "lexical_name": "HardyComparisonDescriptor",
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
  "slug": "hardycomparisondescriptor--66612c1b53beb52d71213d27",
  "source": {
    "blob": "fb2a8e0fdcd369475004787937e6a62ced0aac69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 13,
    "line": 5,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HardyComparison/Variant98e82c2e9906c6910bbddb051a02e693943beb9b26419ea027a53947719f6c02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66612c1b53beb52d71213d275e66897e4971ce9a21c8ff4a44f6657997810ccb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HardyComparison/Variant98e82c2e9906c6910bbddb051a02e693943beb9b26419ea027a53947719f6c02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4100d97763f72466c8a2c25e484430809ef3b152cf2aa160faa62faa078b5fde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5–13.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HardyComparisonDescriptor where
  comparisonRef : String
  hardyDefectRef : String
  soninProjectionRef : String
  relationCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .hardySoninComparison

end Mathematics.SemiLocalDefect.Sonin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HardyComparison/Variant98e82c2e9906c6910bbddb051a02e693943beb9b26419ea027a53947719f6c02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HardyComparison/Variant98e82c2e9906c6910bbddb051a02e693943beb9b26419ea027a53947719f6c02.lean#L5).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb2a8e0fdcd369475004787937e6a62ced0aac69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
