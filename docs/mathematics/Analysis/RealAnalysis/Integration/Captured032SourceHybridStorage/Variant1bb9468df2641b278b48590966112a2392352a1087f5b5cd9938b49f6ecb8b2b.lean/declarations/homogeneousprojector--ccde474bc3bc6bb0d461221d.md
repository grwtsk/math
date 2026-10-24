# homogeneousProjector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a9cad9d3ac35d91c309aa91adb30fb56b9ffdbb875ee47383264e57c03240a5",
  "kind": "def",
  "lexical_name": "homogeneousProjector",
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
  "slug": "homogeneousprojector--ccde474bc3bc6bb0d461221d",
  "source": {
    "blob": "87ec638aaaed97988b3ed96754e7d2e247e3826c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccde474bc3bc6bb0d461221ddb53f5b3ea1e5be1970f0f90dad803399f50283a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a9cad9d3ac35d91c309aa91adb30fb56b9ffdbb875ee47383264e57c03240a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homogeneousProjector [DecidableEq n] (last : n) : Matrix n n ℂ :=
  Matrix.diagonal (Pi.single last 1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87ec638aaaed97988b3ed96754e7d2e247e3826c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
