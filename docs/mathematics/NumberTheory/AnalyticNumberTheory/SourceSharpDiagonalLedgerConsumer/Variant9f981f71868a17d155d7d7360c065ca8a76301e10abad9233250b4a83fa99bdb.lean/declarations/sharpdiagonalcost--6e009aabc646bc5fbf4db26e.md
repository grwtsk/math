# sharpDiagonalCost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2db100dcd86c0e92350f1ca71f80c4a8af16c6c2fdfbec3ee8639f92f05916b5",
  "kind": "def",
  "lexical_name": "sharpDiagonalCost",
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
  "slug": "sharpdiagonalcost--6e009aabc646bc5fbf4db26e",
  "source": {
    "blob": "1a574a347d3e54f6ee5dd2cc05943a3a8a5a04f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpDiagonalLedgerConsumer/Variant9f981f71868a17d155d7d7360c065ca8a76301e10abad9233250b4a83fa99bdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e009aabc646bc5fbf4db26e25961ff462521ec1f0bf0eec37596613ef7d0918",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceSharpDiagonalLedgerConsumer/Variant9f981f71868a17d155d7d7360c065ca8a76301e10abad9233250b4a83fa99bdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2db100dcd86c0e92350f1ca71f80c4a8af16c6c2fdfbec3ee8639f92f05916b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sharpDiagonalCost (Q : ℝ) : ℝ :=
  powerTailBudget (⌊Q ^ 2⌋₊ : ℝ) +
    (Real.log 4 + 4) * (1 + 2 * Real.sqrt (tailEnergyCoefficient Q)) +
    16 * tailEnergyCoefficient Q * Real.log Q ^ 3 / (3 * Q ^ 2)

/-- No diagonal or prime-log witness is supplied: both are source theorems. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceSharpDiagonalLedgerConsumer/Variant9f981f71868a17d155d7d7360c065ca8a76301e10abad9233250b4a83fa99bdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpDiagonalLedgerConsumer/Variant9f981f71868a17d155d7d7360c065ca8a76301e10abad9233250b4a83fa99bdb.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a574a347d3e54f6ee5dd2cc05943a3a8a5a04f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
