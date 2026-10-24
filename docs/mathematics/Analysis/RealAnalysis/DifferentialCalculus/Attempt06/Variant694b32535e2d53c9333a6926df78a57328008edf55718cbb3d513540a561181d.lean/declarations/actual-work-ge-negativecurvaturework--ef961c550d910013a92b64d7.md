# actual_work_ge_negativeCurvatureWork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c4ff5db-7da6-47ea-9fc6-a6e730e923ff",
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
  "slug": "actual-work-ge-negativecurvaturework--ef961c550d910013a92b64d7",
  "source": {
    "blob": "5be770a42d26cd54f964ac750ac76acc9dde01e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 205,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef961c550d910013a92b64d762f973fdb7cf89504ac0be837b73b1db5a4f26bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c4ff5db-7da6-47ea-9fc6-a6e730e923ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_work_ge_negativeCurvatureWork {A : ℝ} (hA : 1 ≤ A) :
    -negativeCurvatureWork A ≤ criticalRemovedPairedWork A := by
  rw [actual_second_Abel hA]
  have hh := intervalIntegral.integral_mono_on (μ:=volume) (show 0 ≤ 2*A by linarith)
    (negativeCurvatureWork_integrand_intervalIntegrable hA).neg
    (actual_bridge_curvature_intervalIntegrable hA)
    (fun u _ => by
      change -max (-(criticalDiscrepancyBridge A u*pairedTailCurvature A u)) 0 ≤
        criticalDiscrepancyBridge A u*pairedTailCurvature A u
      have h := le_max_left (-(criticalDiscrepancyBridge A u*pairedTailCurvature A u)) (0:ℝ)
      linarith)
  simp only [Pi.neg_apply] at hh
  rw [intervalIntegral.integral_neg] at hh
  exact hh

/-- This stronger optional premise is open; it is not a new gate for the parent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5be770a42d26cd54f964ac750ac76acc9dde01e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
