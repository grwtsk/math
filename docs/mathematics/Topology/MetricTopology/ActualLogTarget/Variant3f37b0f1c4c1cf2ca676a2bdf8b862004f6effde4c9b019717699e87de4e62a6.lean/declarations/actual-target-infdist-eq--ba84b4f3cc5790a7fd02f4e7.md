# actual_target_infDist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b84f5cb-572c-2e1e-df99-0495016e1cb7",
  "kind": "theorem",
  "lexical_name": "actual_target_infDist_eq",
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
  "slug": "actual-target-infdist-eq--ba84b4f3cc5790a7fd02f4e7",
  "source": {
    "blob": "6976806d8dd451773cc5476d35ba7a628d7c621d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 138,
    "path": "GRWTSK/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba84b4f3cc5790a7fd02f4e782d932d89175939be522b6e7f912e9f34ccdad0e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b84f5cb-572c-2e1e-df99-0495016e1cb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_target_infDist_eq (A : ℝ) (hA : 1 ≤ A) :
    infDist positiveTarget (positiveIntegerHull A hA : Set PositiveL2) =
      infDist logTarget (logIntegerHull A hA : Set LogL2) := by
  have he : logEquiv positiveTarget = logTarget := logMap_positiveTarget
  rw [←he,←actual_integer_hull_image]
  exact (infDist_image logEquiv.isometry).symm

end ContinuousResearch.ActualLogTarget

/- Complete newly authored type/proof/transitive dependency audits. -/

#check ContinuousResearch.ActualLogTarget.positiveTargetFunc
#print axioms ContinuousResearch.ActualLogTarget.positiveTargetFunc
#print ContinuousResearch.ActualLogTarget.positiveTargetFunc

#check ContinuousResearch.ActualLogTarget.positiveMeasure_unit_interval
#print axioms ContinuousResearch.ActualLogTarget.positiveMeasure_unit_interval
#print ContinuousResearch.ActualLogTarget.positiveMeasure_unit_interval

#check ContinuousResearch.ActualLogTarget.positiveTargetFunc_memLp
#print axioms ContinuousResearch.ActualLogTarget.positiveTargetFunc_memLp
#print ContinuousResearch.ActualLogTarget.positiveTargetFunc_memLp

#check ContinuousResearch.ActualLogTarget.positiveTarget
#print axioms ContinuousResearch.ActualLogTarget.positiveTarget
#print ContinuousResearch.ActualLogTarget.positiveTarget

#check ContinuousResearch.ActualLogTarget.positiveTarget_ae
#print axioms ContinuousResearch.ActualLogTarget.positiveTarget_ae
#print ContinuousResearch.ActualLogTarget.positiveTarget_ae

#check ContinuousResearch.ActualLogTarget.logTargetFunc
#print axioms ContinuousResearch.ActualLogTarget.logTargetFunc
#print ContinuousResearch.ActualLogTarget.logTargetFunc

#check ContinuousResearch.ActualLogTarget.logTargetFunc_pointwise
#print axioms ContinuousResearch.ActualLogTarget.logTargetFunc_pointwise
#print ContinuousResearch.ActualLogTarget.logTargetFunc_pointwise

#check ContinuousResearch.ActualLogTarget.logTargetFunc_memLp
#print axioms ContinuousResearch.ActualLogTarget.logTargetFunc_memLp
#print ContinuousResearch.ActualLogTarget.logTargetFunc_memLp

#check ContinuousResearch.ActualLogTarget.logTarget
#print axioms ContinuousResearch.ActualLogTarget.logTarget
#print ContinuousResearch.ActualLogTarget.logTarget

#check ContinuousResearch.ActualLogTarget.logTarget_ae
#print axioms ContinuousResearch.ActualLogTarget.logTarget_ae
#print ContinuousResearch.ActualLogTarget.logTarget_ae

#check ContinuousResearch.ActualLogTarget.logMap_positiveTarget
#print axioms ContinuousResearch.ActualLogTarget.logMap_positiveTarget
#print ContinuousResearch.ActualLogTarget.logMap_positiveTarget

#check ContinuousResearch.ActualLogTarget.positiveTarget_norm
#print axioms ContinuousResearch.ActualLogTarget.positiveTarget_norm
#print ContinuousResearch.ActualLogTarget.positiveTarget_norm

#check ContinuousResearch.ActualLogTarget.logTarget_norm
#print axioms ContinuousResearch.ActualLogTarget.logTarget_norm
#print ContinuousResearch.ActualLogTarget.logTarget_norm

#check ContinuousResearch.ActualLogTarget.positiveIntegerHull
#print axioms ContinuousResearch.ActualLogTarget.positiveIntegerHull
#print ContinuousResearch.ActualLogTarget.positiveIntegerHull

#check ContinuousResearch.ActualLogTarget.logIntegerOrbit
#print axioms ContinuousResearch.ActualLogTarget.logIntegerOrbit
#print ContinuousResearch.ActualLogTarget.logIntegerOrbit

#check ContinuousResearch.ActualLogTarget.logIntegerHull
#print axioms ContinuousResearch.ActualLogTarget.logIntegerHull
#print ContinuousResearch.ActualLogTarget.logIntegerHull

#check ContinuousResearch.ActualLogTarget.logMap_normalized_integerOrbit
#print axioms ContinuousResearch.ActualLogTarget.logMap_normalized_integerOrbit
#print ContinuousResearch.ActualLogTarget.logMap_normalized_integerOrbit

#check ContinuousResearch.ActualLogTarget.logEquiv_span_image
#print axioms ContinuousResearch.ActualLogTarget.logEquiv_span_image
#print ContinuousResearch.ActualLogTarget.logEquiv_span_image

#check ContinuousResearch.ActualLogTarget.actual_integer_hull_image
#print axioms ContinuousResearch.ActualLogTarget.actual_integer_hull_image
#print ContinuousResearch.ActualLogTarget.actual_integer_hull_image

#check ContinuousResearch.ActualLogTarget.actual_target_membership_iff
#print axioms ContinuousResearch.ActualLogTarget.actual_target_membership_iff
#print ContinuousResearch.ActualLogTarget.actual_target_membership_iff

#check ContinuousResearch.ActualLogTarget.actual_target_infDist_eq
#print axioms ContinuousResearch.ActualLogTarget.actual_target_infDist_eq
#print ContinuousResearch.ActualLogTarget.actual_target_infDist_eq
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6976806d8dd451773cc5476d35ba7a628d7c621d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
