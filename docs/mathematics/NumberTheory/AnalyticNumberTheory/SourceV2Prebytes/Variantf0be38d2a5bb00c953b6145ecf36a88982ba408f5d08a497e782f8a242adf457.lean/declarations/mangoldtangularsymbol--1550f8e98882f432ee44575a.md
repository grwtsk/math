# mangoldtAngularSymbol

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff1935f3f1072629bc2654f2c5dd0801aa3d3dca24c255d64744b578bdf20f03",
  "kind": "def",
  "lexical_name": "mangoldtAngularSymbol",
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
  "slug": "mangoldtangularsymbol--1550f8e98882f432ee44575a",
  "source": {
    "blob": "3d4005b8763e3790977a237dbea3e1013d175e35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 251,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV2Prebytes/Variantf0be38d2a5bb00c953b6145ecf36a88982ba408f5d08a497e782f8a242adf457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1550f8e98882f432ee44575ae8c900f5dfef47a1b2e6f400aadc7fd4be7b9c64",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceV2Prebytes/Variantf0be38d2a5bb00c953b6145ecf36a88982ba408f5d08a497e782f8a242adf457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff1935f3f1072629bc2654f2c5dd0801aa3d3dca24c255d64744b578bdf20f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mangoldtAngularSymbol (A ω : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A), mangoldtCoefficient n * Real.cos (ω * Real.log n)

/-- The standard-to-positive-angular frequency substitution is explicit, despite cosine evenness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceV2Prebytes/Variantf0be38d2a5bb00c953b6145ecf36a88982ba408f5d08a497e782f8a242adf457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV2Prebytes/Variantf0be38d2a5bb00c953b6145ecf36a88982ba408f5d08a497e782f8a242adf457.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d4005b8763e3790977a237dbea3e1013d175e35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
