# hasFDerivAt_stereoInvFunAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d65b64bd-c630-8bd1-2eac-487694b717c1",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_stereoInvFunAux",
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
  "slug": "hasfderivat-stereoinvfunaux--6cf32234af3d69a61db9a3b1",
  "source": {
    "blob": "b3bea2732c79c6b5954fccb03aede9c3303635cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 155,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cf32234af3d69a61db9a3b134cc4fb895a682df0c335033b9c96e4a70d9bda1",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d65b64bd-c630-8bd1-2eac-487694b717c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_stereoInvFunAux (v : E) :
    HasFDerivAt (stereoInvFunAux v) (ContinuousLinearMap.id ℝ E) 0 := by
  have h₀ : HasFDerivAt (fun w : E => ‖w‖ ^ 2) (0 : E →L[ℝ] ℝ) 0 := by
    convert (hasStrictFDerivAt_norm_sq (0 : E)).hasFDerivAt
    simp
  have h₁ : HasFDerivAt (fun w : E => (‖w‖ ^ 2 + 4)⁻¹) (0 : E →L[ℝ] ℝ) 0 := by
    convert (hasFDerivAt_inv _).comp _ (h₀.add (hasFDerivAt_const 4 0)) <;> simp
  have h₂ :
    HasFDerivAt (fun w => (4 : ℝ) • w + (‖w‖ ^ 2 - 4) • v) ((4 : ℝ) • ContinuousLinearMap.id ℝ E) 0
  · convert ((hasFDerivAt_const (4 : ℝ) 0).smul (hasFDerivAt_id 0)).add
      ((h₀.sub (hasFDerivAt_const (4 : ℝ) 0)).smul (hasFDerivAt_const v 0)) using 1
    ext w
    simp
  convert h₁.smul h₂ using 1
  ext w
  simp
#align has_fderiv_at_stereo_inv_fun_aux hasFDerivAt_stereoInvFunAux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3bea2732c79c6b5954fccb03aede9c3303635cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
