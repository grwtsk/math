# one_sub_inv_analyticOn_unitBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50e2ee92-ee4d-2428-a368-9e9c5f2dabde",
  "kind": "theorem",
  "lexical_name": "one_sub_inv_analyticOn_unitBall",
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
  "slug": "one-sub-inv-analyticon-unitball--073048acd048735be9507b7f",
  "source": {
    "blob": "424ca5e4b241195a15f23c28b3f818cb72cabba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 61,
    "path": "GRWTSK/Analysis/ComplexAnalysis/HolomorphicFunctions/UnitDiskResolvent/Variant12a7d270/Analyticity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:073048acd048735be9507b7f5f188c1049e8439fc40b6100e031e2c727068637",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicFunctions/UnitDiskResolvent/Variant12a7d270/Analyticity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50e2ee92-ee4d-2428-a368-9e9c5f2dabde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_sub_inv_analyticOn_unitBall :
    AnalyticOnNhd ℂ
      (fun z : ℂ => (1 - z)⁻¹)
      (Metric.ball (0 : ℂ) 1) := by
  intro z hz
  exact one_sub_inv_analyticAt (mem_ball_zero_iff.mp hz)


end GRWTSK.Analysis.ComplexAnalysis.HolomorphicFunctions.UnitDiskResolvent.Variant12a7d270
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/ComplexAnalysis/HolomorphicFunctions/UnitDiskResolvent/Variant12a7d270/Analyticity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/HolomorphicFunctions/UnitDiskResolvent/Variant12a7d270/Analyticity.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `424ca5e4b241195a15f23c28b3f818cb72cabba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
