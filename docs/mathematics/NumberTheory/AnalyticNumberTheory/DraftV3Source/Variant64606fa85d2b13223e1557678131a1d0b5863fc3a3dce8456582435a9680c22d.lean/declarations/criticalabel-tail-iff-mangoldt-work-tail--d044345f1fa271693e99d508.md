# criticalAbel_tail_iff_Mangoldt_work_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc68f54c-937c-3681-a2cb-784d201a8b6c",
  "kind": "theorem",
  "lexical_name": "criticalAbel_tail_iff_Mangoldt_work_tail",
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
  "slug": "criticalabel-tail-iff-mangoldt-work-tail--d044345f1fa271693e99d508",
  "source": {
    "blob": "14077489b9154e42a7f31e5941a2f4b03c005db9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 327,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant64606fa85d2b13223e1557678131a1d0b5863fc3a3dce8456582435a9680c22d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d044345f1fa271693e99d5087b7335c25d176d88c4c545ce8806b4aec894d57d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant64606fa85d2b13223e1557678131a1d0b5863fc3a3dce8456582435a9680c22d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc68f54c-937c-3681-a2cb-784d201a8b6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalAbel_tail_iff_Mangoldt_work_tail :
    CriticalAbelTailLowerBound ↔ MangoldtWorkTailLowerBound :=
  mertens_residual_tail_iff_criticalAbel_tail.symm.trans
    mangoldt_work_tail_iff_residual_tail.symm

/-- Actual square and higher-power correction remains quantitatively bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant64606fa85d2b13223e1557678131a1d0b5863fc3a3dce8456582435a9680c22d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant64606fa85d2b13223e1557678131a1d0b5863fc3a3dce8456582435a9680c22d.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14077489b9154e42a7f31e5941a2f4b03c005db9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
