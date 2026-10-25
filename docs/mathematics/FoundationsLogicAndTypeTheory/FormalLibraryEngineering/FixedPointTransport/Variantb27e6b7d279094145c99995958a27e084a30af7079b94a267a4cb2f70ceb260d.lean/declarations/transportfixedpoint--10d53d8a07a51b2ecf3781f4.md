# transportFixedPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08748254bb6af1e70c2bcef0baa3732ad9357670d3938d9cacae004a99a2cbd3",
  "kind": "def",
  "lexical_name": "transportFixedPoint",
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
  "slug": "transportfixedpoint--10d53d8a07a51b2ecf3781f4",
  "source": {
    "blob": "1c0e2bf0e8b986272ac22500af77c1171cf03c25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10d53d8a07a51b2ecf3781f4536aad06622e5473a643f654981c5c2d71e8a159",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08748254bb6af1e70c2bcef0baa3732ad9357670d3938d9cacae004a99a2cbd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transportFixedPoint
    (naturality : OperatorPathNaturality operators action)
    {source target : Base}
    (path : action.Path source target)
    (point : CertifiedFixedPoint (operators source)) :
    CertifiedFixedPoint (operators target) where
  point := action.map path point.point
  fixed := by
    exact
      (naturality.fixedPointNaturality default).natural
        path point.point point.fixed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c0e2bf0e8b986272ac22500af77c1171cf03c25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
