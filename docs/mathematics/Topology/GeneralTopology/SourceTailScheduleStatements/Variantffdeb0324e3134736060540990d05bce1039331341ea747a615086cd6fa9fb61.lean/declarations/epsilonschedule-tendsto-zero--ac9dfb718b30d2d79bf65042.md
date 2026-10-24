# epsilonSchedule_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c467bd0c-0082-8df6-e598-99957a166d81",
  "kind": "theorem",
  "lexical_name": "epsilonSchedule_tendsto_zero",
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
  "slug": "epsilonschedule-tendsto-zero--ac9dfb718b30d2d79bf65042",
  "source": {
    "blob": "d31f8361efd5940938d32c7c59d770fee41b661f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac9dfb718b30d2d79bf65042761e6d1b9187b1d22663582631ee913029dbb704",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c467bd0c-0082-8df6-e598-99957a166d81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epsilonSchedule_tendsto_zero : Tendsto epsilonSchedule atTop (nhds 0) := by
  have hL : Tendsto logScale atTop atTop :=
    tendsto_const_nhds.add_atTop (Real.tendsto_log_atTop.comp tendsto_natCast_atTop_atTop)
  exact tendsto_const_nhds.div_atTop
    (((tendsto_pow_atTop (by norm_num : (3 : ℕ) ≠ 0)).comp hL).const_mul_atTop
      (by norm_num : (0 : ℝ) < 4))

/-- The exact positive-tail cutoff expands to infinity on the same complete natural diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d31f8361efd5940938d32c7c59d770fee41b661f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
