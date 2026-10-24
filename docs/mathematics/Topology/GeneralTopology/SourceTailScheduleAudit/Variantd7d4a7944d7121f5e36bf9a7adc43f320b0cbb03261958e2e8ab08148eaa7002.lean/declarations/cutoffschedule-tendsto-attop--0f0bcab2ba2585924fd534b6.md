# cutoffSchedule_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71735833-13ea-ba83-221f-2c99b8e678f2",
  "kind": "theorem",
  "lexical_name": "cutoffSchedule_tendsto_atTop",
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
  "slug": "cutoffschedule-tendsto-attop--0f0bcab2ba2585924fd534b6",
  "source": {
    "blob": "63343da2c6e4e3d1cee8bdea43fd692804dbaeeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f0bcab2ba2585924fd534b6c4d2fbbbe40786756afa0746877909d39ce8ba6b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71735833-13ea-ba83-221f-2c99b8e678f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffSchedule_tendsto_atTop : Tendsto cutoffSchedule atTop atTop := by
  have hL : Tendsto logScale atTop atTop :=
    tendsto_const_nhds.add_atTop (Real.tendsto_log_atTop.comp tendsto_natCast_atTop_atTop)
  exact ((tendsto_pow_atTop (by norm_num : (3 : ℕ) ≠ 0)).comp
    tendsto_natCast_atTop_atTop).atTop_mul_atTop₀
      ((tendsto_pow_atTop (by norm_num : (2 : ℕ) ≠ 0)).comp hL)

end
end SourceTailScheduleScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @SourceTailScheduleScratch.logScale
#print SourceTailScheduleScratch.logScale
#print axioms SourceTailScheduleScratch.logScale
#check @SourceTailScheduleScratch.epsilonSchedule
#print SourceTailScheduleScratch.epsilonSchedule
#print axioms SourceTailScheduleScratch.epsilonSchedule
#check @SourceTailScheduleScratch.cutoffSchedule
#print SourceTailScheduleScratch.cutoffSchedule
#print axioms SourceTailScheduleScratch.cutoffSchedule
#check @SourceTailScheduleScratch.schedule_admissible
#print SourceTailScheduleScratch.schedule_admissible
#print axioms SourceTailScheduleScratch.schedule_admissible
#check @SourceTailScheduleScratch.scheduled_endpoint_bounds
#print SourceTailScheduleScratch.scheduled_endpoint_bounds
#print axioms SourceTailScheduleScratch.scheduled_endpoint_bounds
#check @SourceTailScheduleScratch.explicit_tail_bounds_tendsto
#print SourceTailScheduleScratch.explicit_tail_bounds_tendsto
#print axioms SourceTailScheduleScratch.explicit_tail_bounds_tendsto
#check @SourceTailScheduleScratch.scheduled_actual_tails_tendsto
#print SourceTailScheduleScratch.scheduled_actual_tails_tendsto
#print axioms SourceTailScheduleScratch.scheduled_actual_tails_tendsto
#check @SourceTailScheduleScratch.epsilonSchedule_tendsto_zero
#print SourceTailScheduleScratch.epsilonSchedule_tendsto_zero
#print axioms SourceTailScheduleScratch.epsilonSchedule_tendsto_zero
#check @SourceTailScheduleScratch.cutoffSchedule_tendsto_atTop
#print SourceTailScheduleScratch.cutoffSchedule_tendsto_atTop
#print axioms SourceTailScheduleScratch.cutoffSchedule_tendsto_atTop
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63343da2c6e4e3d1cee8bdea43fd692804dbaeeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
