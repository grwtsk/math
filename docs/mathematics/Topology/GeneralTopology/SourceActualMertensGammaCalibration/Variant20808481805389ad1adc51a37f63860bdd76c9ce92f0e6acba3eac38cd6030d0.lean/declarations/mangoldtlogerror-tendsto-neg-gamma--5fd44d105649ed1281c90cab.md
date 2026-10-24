# mangoldtLogError_tendsto_neg_gamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6ca069c-0674-009f-75a9-1b9626ba5ebb",
  "kind": "theorem",
  "lexical_name": "mangoldtLogError_tendsto_neg_gamma",
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
  "slug": "mangoldtlogerror-tendsto-neg-gamma--5fd44d105649ed1281c90cab",
  "source": {
    "blob": "ff0c401a1a09dbe03656bc9555eb8b0b2a3193bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant20808481805389ad1adc51a37f63860bdd76c9ce92f0e6acba3eac38cd6030d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fd44d105649ed1281c90cabb7ace844327d035694dc8f01cecb90702b4a4a73",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant20808481805389ad1adc51a37f63860bdd76c9ce92f0e6acba3eac38cd6030d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6ca069c-0674-009f-75a9-1b9626ba5ebb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtLogError_tendsto_neg_gamma :
    Tendsto mangoldtLogError atTop (𝓝 (-Real.eulerMascheroniConstant)) := by
  simpa only [actualPntMertensLimit_eq_neg_gamma] using
    mangoldtLogError_tendsto_actualPntMertensLimit

/-- The literal actual gamma-centered Mangoldt error tends ordinarily to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant20808481805389ad1adc51a37f63860bdd76c9ce92f0e6acba3eac38cd6030d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant20808481805389ad1adc51a37f63860bdd76c9ce92f0e6acba3eac38cd6030d0.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff0c401a1a09dbe03656bc9555eb8b0b2a3193bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
