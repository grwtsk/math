# affine_curvature_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cf60d87-32a4-890a-7654-db0138ef1bd3",
  "kind": "theorem",
  "lexical_name": "affine_curvature_integral",
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
  "slug": "affine-curvature-integral--6d90d36515aed885e278160e",
  "source": {
    "blob": "86c6a55883d129e61d1bf635a2e3f54a5c190795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt04/Variantcfad7984216ff1446579b1bd669cecdeb6e8f64a8af9b05f2cc7e8636b9e4e4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d90d36515aed885e278160ef2e537c08efb4330c9a64ad20a7bfe55f16262c8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt04/Variantcfad7984216ff1446579b1bd669cecdeb6e8f64a8af9b05f2cc7e8636b9e4e4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cf60d87-32a4-890a-7654-db0138ef1bd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affine_curvature_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2*A, affineWeight A u*pairedTailCurvature A u) = 1/2 := by
  have hi := (affineWeight_absolutelyContinuous A 0 (2*A)).integral_mul_deriv_eq_deriv_mul
    (pairedTailTest_deriv_absolutelyContinuous hA 0 (2*A))
  rw [affineWeight_at_upper (by linarith),affineWeight_at_zero,
    pairedTailTest_deriv_at_zero hA,zero_mul,one_mul] at hi
  have hd : deriv (affineWeight A) = fun _ => -(1/(2*A)) :=
    funext fun u => (affineWeight_hasDerivAt A u).deriv
  rw [hd,intervalIntegral.integral_const_mul,pairedTailTest_deriv_integral_zero hA,
    mul_zero] at hi
  simpa only [pairedTailCurvature,zero_sub,sub_zero,neg_div,neg_neg] using hi

/-- Explicit compensation; c remains an independently supplied real parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt04/Variantcfad7984216ff1446579b1bd669cecdeb6e8f64a8af9b05f2cc7e8636b9e4e4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt04/Variantcfad7984216ff1446579b1bd669cecdeb6e8f64a8af9b05f2cc7e8636b9e4e4a.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86c6a55883d129e61d1bf635a2e3f54a5c190795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
