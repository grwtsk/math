# twistedPsiCriticalBound_iff_matrixCriticalDecay_of_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bc3277e-d67f-9418-3741-18cc7cdbb159",
  "kind": "theorem",
  "lexical_name": "twistedPsiCriticalBound_iff_matrixCriticalDecay_of_reindex",
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
  "slug": "twistedpsicriticalbound-iff-matrixcriticaldecay-of-reindex--5122e8c02dcd5c38e1798b46",
  "source": {
    "blob": "288b88141a9bce7fbd30ad3ff9698f3dac9b6a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 119,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeGRHMatrix/Variant1fd48b43a0bd3d1db5b67200b5f137682e1f777c48e21fd06aa7233ad2473eee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5122e8c02dcd5c38e1798b467243b7162f04200593f0ac1f1e0c7c2a31a6a995",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeGRHMatrix/Variant1fd48b43a0bd3d1db5b67200b5f137682e1f777c48e21fd06aa7233ad2473eee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bc3277e-d67f-9418-3741-18cc7cdbb159`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twistedPsiCriticalBound_iff_matrixCriticalDecay_of_reindex
    (hReindex : CriticalReindexBridge) :
    TwistedPsiCriticalBound ↔
      MatrixCriticalDecay actualResidueSixCounts :=
  twistedPsiCriticalBound_iff_matrixCriticalDecay_of_bridges
    partialSummationCriticalBridge_proved hReindex

/-- The entire classical middle path from the twisted Chebyshev estimate to
the canonical indexed matrix estimate is kernel checked. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeGRHMatrix/Variant1fd48b43a0bd3d1db5b67200b5f137682e1f777c48e21fd06aa7233ad2473eee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeGRHMatrix/Variant1fd48b43a0bd3d1db5b67200b5f137682e1f777c48e21fd06aa7233ad2473eee.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `288b88141a9bce7fbd30ad3ff9698f3dac9b6a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
