# profileD2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8320faa4cadf345efe53578966a95e5085385dbe07dd5857a6c4efe46b69ce63",
  "kind": "def",
  "lexical_name": "profileD2",
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
  "slug": "profiled2--91178f4e9c879ebd8beab6b7",
  "source": {
    "blob": "cfe96c45a881a4d7ac1daa218eb71fa9a2cfd9a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantfb244a1e7a16f3b257e026594240cac733a620e5cb76601b472d8446ab8708a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91178f4e9c879ebd8beab6b7a4d434341c8d0fa5f3160c67ba2ae2f088d81348",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantfb244a1e7a16f3b257e026594240cac733a620e5cb76601b472d8446ab8708a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8320faa4cadf345efe53578966a95e5085385dbe07dd5857a6c4efe46b69ce63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def profileD2 (A t : ℝ) : ℝ :=
  (((-131072 / 45045)) / A ^ 2 +
    ((98304 / 5005)) * t ^ 2 / A ^ 4 +
    ((-8192 / 231)) * t ^ 4 / A ^ 6 +
    ((2048 / 45)) * t ^ 6 / A ^ 8 +
    ((-1024 / 35)) * t ^ 7 / A ^ 9 +
    ((256 / 63)) * t ^ 9 / A ^ 11 +
    ((-192 / 385)) * t ^ 11 / A ^ 13 +
    ((16 / 429)) * t ^ 13 / A ^ 15 +
    ((-8 / 6435)) * t ^ 15 / A ^ 17) / sourceNormalization A

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantfb244a1e7a16f3b257e026594240cac733a620e5cb76601b472d8446ab8708a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantfb244a1e7a16f3b257e026594240cac733a620e5cb76601b472d8446ab8708a2.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfe96c45a881a4d7ac1daa218eb71fa9a2cfd9a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
