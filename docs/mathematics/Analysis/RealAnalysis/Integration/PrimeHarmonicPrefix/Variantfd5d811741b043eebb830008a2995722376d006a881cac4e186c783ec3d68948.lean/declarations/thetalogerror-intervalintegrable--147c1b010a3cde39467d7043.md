# thetaLogError_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d50d0bd3-10d5-220d-db97-b64a03656955",
  "kind": "theorem",
  "lexical_name": "thetaLogError_intervalIntegrable",
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
  "slug": "thetalogerror-intervalintegrable--147c1b010a3cde39467d7043",
  "source": {
    "blob": "aa7981229d8ebb78bc8e1aa671d16619ae5ad83a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 131,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variantfd5d811741b043eebb830008a2995722376d006a881cac4e186c783ec3d68948.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:147c1b010a3cde39467d704357623d79850cda0c03e7448aed92211bfe5210a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variantfd5d811741b043eebb830008a2995722376d006a881cac4e186c783ec3d68948.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d50d0bd3-10d5-220d-db97-b64a03656955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaLogError_intervalIntegrable (u : ℝ) :
    IntervalIntegrable thetaLogError volume 0 u := by
  have habs := thetaLogError_moment_prefix_integrable 0 (max u 0)
  simp only [pow_zero, one_mul] at habs
  have hpos : IntegrableOn thetaLogError (Ioc 0 (max u 0)) := (show Integrable (fun t => |thetaLogError t|) (volume.restrict (Ioc 0 (max u 0))) from habs).mono
    thetaLogError_measurable.aestronglyMeasurable
    (Filter.Eventually.of_forall fun t => by simp only [Real.norm_eq_abs, abs_abs]; exact le_rfl)
  by_cases hu : 0 ≤ u
  · rw [intervalIntegrable_iff_integrableOn_Ioc_of_le hu]
    exact hpos.mono_set (Ioc_subset_Ioc_right (le_max_left _ _))
  · have hneg : IntegrableOn thetaLogError (Ioc u 0) := by
      have hm : AEStronglyMeasurable thetaLogError (volume.restrict (Ioc u 0)) :=
        thetaLogError_measurable.aestronglyMeasurable
      have hc : IntegrableOn (fun _t : ℝ => Real.log 4 + 5) (Ioc u 0) :=
        integrableOn_const (by rw [Real.volume_Ioc]; exact ENNReal.ofReal_ne_top)
      exact hc.mono' hm (Filter.Eventually.of_forall fun t => by
        simpa only [Real.norm_eq_abs] using thetaLogError_abs_le_global t)
    exact (intervalIntegrable_iff_integrableOn_Ioc_of_le (le_of_not_ge hu)).mpr hneg |>.symm

/-- Exact exponential transport of the reciprocal-square theta integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variantfd5d811741b043eebb830008a2995722376d006a881cac4e186c783ec3d68948.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variantfd5d811741b043eebb830008a2995722376d006a881cac4e186c783ec3d68948.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa7981229d8ebb78bc8e1aa671d16619ae5ad83a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
