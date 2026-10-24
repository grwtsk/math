# actual_weighted_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:423fa894-d5ec-da49-3147-87a15f07441a",
  "kind": "theorem",
  "lexical_name": "actual_weighted_norm_le",
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
  "slug": "actual-weighted-norm-le--2a4f721072aaa5f170d03fbb",
  "source": {
    "blob": "e1bb6a9849fefa374c83bd08874e30c4128feb50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 370,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantde98c7e4ef1930139a2f6c1c02784df25e57d9d9d33216272c5fb6f5e7775785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a4f721072aaa5f170d03fbb018a4de4a84415841753f574045f1fd064aa4480",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantde98c7e4ef1930139a2f6c1c02784df25e57d9d9d33216272c5fb6f5e7775785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:423fa894-d5ec-da49-3147-87a15f07441a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_weighted_norm_le {A u : ℝ} (hA : 91 ≤ A) (hu : 2 ≤ u)
    (F : ℝ → ℝ) (hc : Continuous F) :
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      |actualAdjointTimePrimitive A 0 t *
        actualPhysicalPeriodicPrimitive (vaughanCutoff A) u * F t|) ≤
      2 * (Real.log 4 + 4 + Real.log 2) * (A ^ 4 / 8) *
        ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ), |F t| := by
  have hA1 : 1 ≤ A := by linarith
  have hlb := (actual_orders hA1).2
  have hP := actualAdjointTimePrimitive_absolutelyContinuous A 0
    (Real.log (sourceKernelCutoff A : ℝ)) hlb
  have hi : IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualPhysicalPeriodicPrimitive (vaughanCutoff A) u * F t) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
    exact ((hP.continuousOn.mul continuousOn_const).mul hc.continuousOn).intervalIntegrable
  have hm := intervalIntegral.integral_mono_on hlb hi.abs
    ((hc.abs.intervalIntegrable _ _).const_mul
      (2 * (Real.log 4 + 4 + Real.log 2) * (A ^ 4 / 8))) (fun t ht => by
        have hp := actualAdjointTimePrimitive_abs_le (offset := 0) hA1 ht.1
        simp only [abs_zero, add_zero] at hp
        have hs := (actualPhysicalPeriodicPrimitive_abs_le (vaughanCutoff A) u
          (by linarith : 0 ≤ u)).trans (actual_periodic_size hA1)
        rw [abs_mul, abs_mul]
        exact mul_le_mul_of_nonneg_right
          (mul_le_mul hp hs (abs_nonneg _) (by positivity)) (abs_nonneg _))
  simpa only [intervalIntegral.integral_const_mul] using hm

/-- Both actual physical Abel endpoints have a genuinely integrated edge budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantde98c7e4ef1930139a2f6c1c02784df25e57d9d9d33216272c5fb6f5e7775785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantde98c7e4ef1930139a2f6c1c02784df25e57d9d9d33216272c5fb6f5e7775785.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1bb6a9849fefa374c83bd08874e30c4128feb50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
