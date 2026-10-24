# actualXiSevenReturn_tendsto_pole_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63dba10f-07c3-e9b7-51b2-43ed5f67986a",
  "kind": "theorem",
  "lexical_name": "actualXiSevenReturn_tendsto_pole_one",
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
  "slug": "actualxisevenreturn-tendsto-pole-one--64626b4be962cce49061f220",
  "source": {
    "blob": "26b38e2912925233f60a85619c5404a17d04c0f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 194,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt06/Variant1325f021b004189a735765263e70314c22f694c839b98b59e1f31e4d2f7ebe1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64626b4be962cce49061f22079d54116732974fd94d0d4f0a6b5d20e7ae8dc4c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt06/Variant1325f021b004189a735765263e70314c22f694c839b98b59e1f31e4d2f7ebe1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63dba10f-07c3-e9b7-51b2-43ed5f67986a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiSevenReturn_tendsto_pole_one :
    Tendsto actualXiSevenReturn (𝓝[≠] 1) (𝓝 actualXiSevenPoleValue) := by
  have hr := actualXiSevenReturnRegularization_analyticAt_one.continuousAt.tendsto
  rw [actualXiSevenReturnRegularization_at_one] at hr
  exact (hr.mono_left nhdsWithin_le_nhds).congr'
    actualXiSevenReturn_eventually_eq_regularization.symm

/-- The locally regularized return has a finite genuine bound, not a critical-axis witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt06/Variant1325f021b004189a735765263e70314c22f694c839b98b59e1f31e4d2f7ebe1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt06/Variant1325f021b004189a735765263e70314c22f694c839b98b59e1f31e4d2f7ebe1f.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26b38e2912925233f60a85619c5404a17d04c0f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
