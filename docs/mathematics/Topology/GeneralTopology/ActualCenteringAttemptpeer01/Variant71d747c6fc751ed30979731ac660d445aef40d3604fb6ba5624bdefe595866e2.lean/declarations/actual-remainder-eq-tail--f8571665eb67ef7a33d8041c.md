# actual_remainder_eq_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2d1a26a-e85c-5822-529b-b55a2bd53fef",
  "kind": "theorem",
  "lexical_name": "actual_remainder_eq_tail",
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
  "slug": "actual-remainder-eq-tail--f8571665eb67ef7a33d8041c",
  "source": {
    "blob": "fa754a87e20eff99bd88a81060064d9cb6a6cf12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCenteringAttemptpeer01/Variant71d747c6fc751ed30979731ac660d445aef40d3604fb6ba5624bdefe595866e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8571665eb67ef7a33d8041c175398683df3a624bcdc284474f9b2e3c3ee886b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCenteringAttemptpeer01/Variant71d747c6fc751ed30979731ac660d445aef40d3604fb6ba5624bdefe595866e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2d1a26a-e85c-5822-529b-b55a2bd53fef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_remainder_eq_tail {t : ℝ} (ht : 0 ≤ t) :
    actualRemainder t = psiRelativeError t - (∫ u in Ioi t, psiRelativeError u) := by
  have ha := mangoldtLogError_centered_eq_interval ht
  have hi := intervalIntegral.integral_interval_add_Ioi psiRelativeError_integrable
    (psiRelativeError_integrable.mono_set (Ioi_subset_Ioi ht))
  rw [actual_euler_centering] at hi
  change actualRemainder t = _ at ha
  linarith

end ContinuousResearch.ActualCentering

set_option pp.fullNames true
set_option pp.universes true
#check ContinuousResearch.ActualCentering.actual_remainder_tendsto_integral
#print ContinuousResearch.ActualCentering.actual_remainder_tendsto_integral
#print axioms ContinuousResearch.ActualCentering.actual_remainder_tendsto_integral
#check ContinuousResearch.ActualCentering.actual_scaled_laplace_tendsto_zero
#print ContinuousResearch.ActualCentering.actual_scaled_laplace_tendsto_zero
#print axioms ContinuousResearch.ActualCentering.actual_scaled_laplace_tendsto_zero
#check ContinuousResearch.ActualCentering.actual_euler_centering
#print ContinuousResearch.ActualCentering.actual_euler_centering
#print axioms ContinuousResearch.ActualCentering.actual_euler_centering
#check ContinuousResearch.ActualCentering.actual_remainder_tendsto_zero
#print ContinuousResearch.ActualCentering.actual_remainder_tendsto_zero
#print axioms ContinuousResearch.ActualCentering.actual_remainder_tendsto_zero
#check ContinuousResearch.ActualCentering.actual_remainder_eq_tail
#print ContinuousResearch.ActualCentering.actual_remainder_eq_tail
#print axioms ContinuousResearch.ActualCentering.actual_remainder_eq_tail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCenteringAttemptpeer01/Variant71d747c6fc751ed30979731ac660d445aef40d3604fb6ba5624bdefe595866e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCenteringAttemptpeer01/Variant71d747c6fc751ed30979731ac660d445aef40d3604fb6ba5624bdefe595866e2.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa754a87e20eff99bd88a81060064d9cb6a6cf12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
