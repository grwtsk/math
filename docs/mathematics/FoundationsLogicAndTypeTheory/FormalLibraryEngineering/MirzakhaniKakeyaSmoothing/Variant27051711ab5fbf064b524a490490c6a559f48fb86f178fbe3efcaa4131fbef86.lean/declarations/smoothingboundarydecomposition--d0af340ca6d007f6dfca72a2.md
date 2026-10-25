# SmoothingBoundaryDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa846b1e4be6aed12b5a9a9dcaa753668634595dfb38801beff3cb075e9c1868",
  "kind": "structure",
  "lexical_name": "SmoothingBoundaryDecomposition",
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
  "slug": "smoothingboundarydecomposition--d0af340ca6d007f6dfca72a2",
  "source": {
    "blob": "02b0a51b0e34ccc7499cb987199124e01acc00cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MirzakhaniKakeyaSmoothing/Variant27051711ab5fbf064b524a490490c6a559f48fb86f178fbe3efcaa4131fbef86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0af340ca6d007f6dfca72a250b94e04d7ad39033b792f36c2d17e047b711ef0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MirzakhaniKakeyaSmoothing/Variant27051711ab5fbf064b524a490490c6a559f48fb86f178fbe3efcaa4131fbef86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa846b1e4be6aed12b5a9a9dcaa753668634595dfb38801beff3cb075e9c1868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SmoothingBoundaryDecomposition where
  moduli : SmoothingPathModuli
  smoothExit : BoundaryStratum
  stickyObstruction : BoundaryStratum
  degaussResidue : BoundaryStratum
  failedPivot : BoundaryStratum
  boundaryDecomposes : Prop
  boundaryDecomposes_certified : boundaryDecomposes
  sourceLabel : String

/--
Mirzakhani-style recursive volume control.

This models the theorem target: admissible smoothing-path volumes decompose
recursively into lower-complexity pieces and boundary strata.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MirzakhaniKakeyaSmoothing/Variant27051711ab5fbf064b524a490490c6a559f48fb86f178fbe3efcaa4131fbef86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MirzakhaniKakeyaSmoothing/Variant27051711ab5fbf064b524a490490c6a559f48fb86f178fbe3efcaa4131fbef86.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02b0a51b0e34ccc7499cb987199124e01acc00cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
