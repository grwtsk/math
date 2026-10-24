# fast_actual_tail_norm_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac19b45c-e118-c498-1f77-6f18be3f4d3b",
  "kind": "theorem",
  "lexical_name": "fast_actual_tail_norm_bounds",
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
  "slug": "fast-actual-tail-norm-bounds--35a0f22e86a25c8710cbc2b1",
  "source": {
    "blob": "bafbeea2b78457e2dff83c2823e8914c81cbe09c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35a0f22e86a25c8710cbc2b1f0af9122cb7cd8bb579b59329a3a4cc368097401",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac19b45c-e118-c498-1f77-6f18be3f4d3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fast_actual_tail_norm_bounds (X : ℕ) (hX : 4 ≤ X) :
    ‖((logResidual_memLp X (fastEpsilon X) (by omega)).indicator measurableSet_Iio).toLp
      ((Iio (0 : ℝ)).indicator (logResidual X (fastEpsilon X)))‖ ≤ logScale X ^ 2 / (X : ℝ) ∧
    ‖((logResidual_memLp X (fastEpsilon X) (by omega)).indicator measurableSet_Ioi).toLp
      ((Ioi (Real.log (cutoffSchedule X))).indicator (logResidual X (fastEpsilon X)))‖ ≤
        3 / Real.sqrt (X : ℝ) := by
  constructor
  · rw [logResidual_negative_norm X (fastEpsilon X) (by omega)]
    exact (fast_endpoint_bounds X hX).1
  · exact (logResidual_positive_norm_le X (fastEpsilon X) (by omega) (cutoffSchedule X)
      (fast_schedule_admissible X hX).2.2).trans (fast_endpoint_bounds X hX).2

end
end DampedDivisorScheduleScratch

set_option pp.proofs true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#print DampedDivisorScheduleScratch.fastEpsilon
#print axioms DampedDivisorScheduleScratch.fastEpsilon
#print DampedDivisorScheduleScratch.fast_schedule_admissible
#print axioms DampedDivisorScheduleScratch.fast_schedule_admissible
#print DampedDivisorScheduleScratch.fast_endpoint_bounds
#print axioms DampedDivisorScheduleScratch.fast_endpoint_bounds
#print DampedDivisorScheduleScratch.fast_taylor_bound
#print axioms DampedDivisorScheduleScratch.fast_taylor_bound
#print DampedDivisorScheduleScratch.fast_explicit_budgets_tendsto
#print axioms DampedDivisorScheduleScratch.fast_explicit_budgets_tendsto
#print DampedDivisorScheduleScratch.fast_actual_budgets_tendsto
#print axioms DampedDivisorScheduleScratch.fast_actual_budgets_tendsto
#print DampedDivisorScheduleScratch.fast_actual_tail_norm_bounds
#print axioms DampedDivisorScheduleScratch.fast_actual_tail_norm_bounds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bafbeea2b78457e2dff83c2823e8914c81cbe09c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
