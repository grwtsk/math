# SmoothingBoundaryDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1596372c424ccc1d8706c2e65a4587b10f05775b72b93337ffdfb1870244607c",
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
  "slug": "smoothingboundarydecomposition--129e4463fb421568a9650efe",
  "source": {
    "blob": "bd71460539a89b8d5ed38bc896ff38d155e3fffe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MirzakhaniKakeyaSmoothing/Variant1e3a3527b01c521e22169bc1dc333ac483f7f7e5b81987cce83ae96cba543899.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:129e4463fb421568a9650efeddb3db10fdcdb988a8d805d54937df1306cfdca0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MirzakhaniKakeyaSmoothing/Variant1e3a3527b01c521e22169bc1dc333ac483f7f7e5b81987cce83ae96cba543899.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1596372c424ccc1d8706c2e65a4587b10f05775b72b93337ffdfb1870244607c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–65.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MirzakhaniKakeyaSmoothing/Variant1e3a3527b01c521e22169bc1dc333ac483f7f7e5b81987cce83ae96cba543899.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MirzakhaniKakeyaSmoothing/Variant1e3a3527b01c521e22169bc1dc333ac483f7f7e5b81987cce83ae96cba543899.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd71460539a89b8d5ed38bc896ff38d155e3fffe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
