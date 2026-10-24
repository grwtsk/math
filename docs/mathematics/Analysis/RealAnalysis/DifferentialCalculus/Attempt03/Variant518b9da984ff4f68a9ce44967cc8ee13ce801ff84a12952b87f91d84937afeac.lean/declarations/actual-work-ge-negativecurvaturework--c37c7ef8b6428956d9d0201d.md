# actual_work_ge_negativeCurvatureWork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a993d38c-dac8-87b7-9350-bc3dc8e2488b",
  "kind": "theorem",
  "lexical_name": "actual_work_ge_negativeCurvatureWork",
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
  "slug": "actual-work-ge-negativecurvaturework--c37c7ef8b6428956d9d0201d",
  "source": {
    "blob": "d0cf645768ee92c68fd1b46cb09831800fd68d18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c37c7ef8b6428956d9d0201d9f0913db01761185495281c47a51032a2181cff1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a993d38c-dac8-87b7-9350-bc3dc8e2488b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_work_ge_negativeCurvatureWork {A : ℝ} (hA : 1 ≤ A) :
    -negativeCurvatureWork A ≤ criticalRemovedPairedWork A := by
  rw [actual_second_Abel hA]
  have hh := intervalIntegral.integral_mono_on (μ:=volume) (show 0 ≤ 2*A by linarith)
    (negativeCurvatureWork_integrand_intervalIntegrable hA).neg
    (actual_bridge_curvature_intervalIntegrable hA)
    (fun u _ => by dsimp only; linarith [le_max_left
      (-(criticalDiscrepancyBridge A u*pairedTailCurvature A u)) (0:ℝ)])
  rw [intervalIntegral.integral_neg] at hh
  exact hh

/-- This stronger optional premise is open; it is not a new gate for the parent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0cf645768ee92c68fd1b46cb09831800fd68d18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
