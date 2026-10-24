# constant_integrand_orientation_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a200b0fb-12fa-1698-2963-2de8bffc5a48",
  "kind": "theorem",
  "lexical_name": "constant_integrand_orientation_test",
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
  "slug": "constant-integrand-orientation-test--a69e952d5a7b5ecff4583078",
  "source": {
    "blob": "6595560da3198c8e04890468f33a3129f29fedc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a69e952d5a7b5ecff45830788def30878ba610ed2b5792753a88474e7912a760",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a200b0fb-12fa-1698-2963-2de8bffc5a48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem constant_integrand_orientation_test
    (lower upper center : ℂ) {radius : ℝ} (hradius : 0 ≤ radius) :
    Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral
        (fun _ : ℂ ↦ 1) lower upper =
      circleIntegral (fun _ : ℂ ↦ 1) center radius := by
  calc
    Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral
        (fun _ : ℂ ↦ 1) lower upper = 0 :=
      Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral_eq_zero_of_differentiableOn
        _ _ _ (differentiable_const 1).differentiableOn
    _ = circleIntegral (fun _ : ℂ ↦ 1) center radius := by
      symm
      exact Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable
        hradius Set.countable_empty continuousOn_const
        (fun _ _ ↦ differentiableAt_const 1)

/-- The linear-integrand calibration agrees on a rectangle and a positive
circle: both positively oriented contour integrals vanish. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6595560da3198c8e04890468f33a3129f29fedc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
