# actual_source_mellin_log_class

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24714754-8eaa-1173-b6fa-36c34a14e439",
  "kind": "theorem",
  "lexical_name": "actual_source_mellin_log_class",
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
  "slug": "actual-source-mellin-log-class--62c8c511ffa2acf896d111e0",
  "source": {
    "blob": "4709fde7db5712c4c6690b92be3b8a4eaa205522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 183,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellin/Variant03c751acf03c910c074d22c5cf97d63ee1955a2837bb9bf1b48e3b2847d9971a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62c8c511ffa2acf896d111e0051147773aee32f5f25d0074ad11e8096023da0a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogMellin/Variant03c751acf03c910c074d22c5cf97d63ee1955a2837bb9bf1b48e3b2847d9971a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24714754-8eaa-1173-b6fa-36c34a14e439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_mellin_log_class (A : ℝ) (hA : 1 ≤ A) (ξ : ℝ) :
    mellin (complexSource A) ((1:ℂ)/2+Complex.I*(ξ:ℂ)) =
      angularIntegral (logMap (actualSourceL2 A hA)) ξ := by
  rw [actual_source_mellin_log]
  apply integral_congr_ae
  filter_upwards [actual_source_log_ae A hA] with u hu
  rw [hu]

end ContinuousResearch.LogMellin

/- Complete public type, proof and trusted-dependency audits. -/

#check ContinuousResearch.LogMellin.angularIntegral
#print axioms ContinuousResearch.LogMellin.angularIntegral
#print ContinuousResearch.LogMellin.angularIntegral

#check ContinuousResearch.LogMellin.critical_jacobian
#print axioms ContinuousResearch.LogMellin.critical_jacobian
#print ContinuousResearch.LogMellin.critical_jacobian

#check ContinuousResearch.LogMellin.mellin_critical_log
#print axioms ContinuousResearch.LogMellin.mellin_critical_log
#print ContinuousResearch.LogMellin.mellin_critical_log

#check ContinuousResearch.LogMellin.critical_integrable_iff
#print axioms ContinuousResearch.LogMellin.critical_integrable_iff
#print ContinuousResearch.LogMellin.critical_integrable_iff

#check ContinuousResearch.LogMellin.phase_norm
#print axioms ContinuousResearch.LogMellin.phase_norm
#print ContinuousResearch.LogMellin.phase_norm

#check ContinuousResearch.LogMellin.logFunc_integrable_of_critical
#print axioms ContinuousResearch.LogMellin.logFunc_integrable_of_critical
#print ContinuousResearch.LogMellin.logFunc_integrable_of_critical

#check ContinuousResearch.LogMellin.actualSource_memLp
#print axioms ContinuousResearch.LogMellin.actualSource_memLp
#print ContinuousResearch.LogMellin.actualSource_memLp

#check ContinuousResearch.LogMellin.actualSourceL2
#print axioms ContinuousResearch.LogMellin.actualSourceL2
#print ContinuousResearch.LogMellin.actualSourceL2

#check ContinuousResearch.LogMellin.actualSourceL2_ae
#print axioms ContinuousResearch.LogMellin.actualSourceL2_ae
#print ContinuousResearch.LogMellin.actualSourceL2_ae

#check ContinuousResearch.LogMellin.actual_source_log_pointwise
#print axioms ContinuousResearch.LogMellin.actual_source_log_pointwise
#print ContinuousResearch.LogMellin.actual_source_log_pointwise

#check ContinuousResearch.LogMellin.actual_source_log_ae
#print axioms ContinuousResearch.LogMellin.actual_source_log_ae
#print ContinuousResearch.LogMellin.actual_source_log_ae

#check ContinuousResearch.LogMellin.actual_source_angular_integrable
#print axioms ContinuousResearch.LogMellin.actual_source_angular_integrable
#print ContinuousResearch.LogMellin.actual_source_angular_integrable

#check ContinuousResearch.LogMellin.actual_muntz_angular_integrable
#print axioms ContinuousResearch.LogMellin.actual_muntz_angular_integrable
#print ContinuousResearch.LogMellin.actual_muntz_angular_integrable

#check ContinuousResearch.LogMellin.actual_muntz_log_integrable
#print axioms ContinuousResearch.LogMellin.actual_muntz_log_integrable
#print ContinuousResearch.LogMellin.actual_muntz_log_integrable

#check ContinuousResearch.LogMellin.actual_source_mellin_log
#print axioms ContinuousResearch.LogMellin.actual_source_mellin_log
#print ContinuousResearch.LogMellin.actual_source_mellin_log

#check ContinuousResearch.LogMellin.actual_muntz_mellin_log
#print axioms ContinuousResearch.LogMellin.actual_muntz_mellin_log
#print ContinuousResearch.LogMellin.actual_muntz_mellin_log

#check ContinuousResearch.LogMellin.actual_muntz_mellin_log_class
#print axioms ContinuousResearch.LogMellin.actual_muntz_mellin_log_class
#print ContinuousResearch.LogMellin.actual_muntz_mellin_log_class

#check ContinuousResearch.LogMellin.actualQ_memLp
#print axioms ContinuousResearch.LogMellin.actualQ_memLp
#print ContinuousResearch.LogMellin.actualQ_memLp

#check ContinuousResearch.LogMellin.actualQClass
#print axioms ContinuousResearch.LogMellin.actualQClass
#print ContinuousResearch.LogMellin.actualQClass

#check ContinuousResearch.LogMellin.actualQClass_ae
#print axioms ContinuousResearch.LogMellin.actualQClass_ae
#print ContinuousResearch.LogMellin.actualQClass_ae

#check ContinuousResearch.LogMellin.actual_source_log_eq
#print axioms ContinuousResearch.LogMellin.actual_source_log_eq
#print ContinuousResearch.LogMellin.actual_source_log_eq

#check ContinuousResearch.LogMellin.actual_muntz_log_class_integrable
#print axioms ContinuousResearch.LogMellin.actual_muntz_log_class_integrable
#print ContinuousResearch.LogMellin.actual_muntz_log_class_integrable

#check ContinuousResearch.LogMellin.actual_muntz_log_class_angular_integrable
#print axioms ContinuousResearch.LogMellin.actual_muntz_log_class_angular_integrable
#print ContinuousResearch.LogMellin.actual_muntz_log_class_angular_integrable

#check ContinuousResearch.LogMellin.actual_source_mellin_log_class
#print axioms ContinuousResearch.LogMellin.actual_source_mellin_log_class
#print ContinuousResearch.LogMellin.actual_source_mellin_log_class
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogMellin/Variant03c751acf03c910c074d22c5cf97d63ee1955a2837bb9bf1b48e3b2847d9971a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogMellin/Variant03c751acf03c910c074d22c5cf97d63ee1955a2837bb9bf1b48e3b2847d9971a.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4709fde7db5712c4c6690b92be3b8a4eaa205522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
