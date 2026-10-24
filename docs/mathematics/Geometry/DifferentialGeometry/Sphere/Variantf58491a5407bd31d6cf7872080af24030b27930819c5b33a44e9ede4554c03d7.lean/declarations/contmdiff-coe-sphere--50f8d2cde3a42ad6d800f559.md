# contMDiff_coe_sphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97ecc628-73e9-f89a-0cb5-cdfa4af9bf14",
  "kind": "theorem",
  "lexical_name": "contMDiff_coe_sphere",
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
  "slug": "contmdiff-coe-sphere--50f8d2cde3a42ad6d800f559",
  "source": {
    "blob": "b3bea2732c79c6b5954fccb03aede9c3303635cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 455,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50f8d2cde3a42ad6d800f5594b64c70f3419ee1b1a934df3f771b890a5d8a0d7",
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

Occurrence: `result:97ecc628-73e9-f89a-0cb5-cdfa4af9bf14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiff_coe_sphere {n : ℕ} [Fact (finrank ℝ E = n + 1)] :
    ContMDiff (𝓡 n) 𝓘(ℝ, E) ∞ ((↑) : sphere (0 : E) 1 → E) := by
  -- Porting note: trouble with filling these implicit variables in the instance
  have := smoothMfldWithCorners (E := E) (n := n)
  rw [contMDiff_iff]
  constructor
  · exact continuous_subtype_val
  · intro v _
    let U : _ ≃ₗᵢ[ℝ] _ :=
      (-- Again, partially removing type ascription...
          OrthonormalBasis.fromOrthogonalSpanSingleton
          n (ne_zero_of_mem_unit_sphere (-v))).repr
    exact
      ((contDiff_stereoInvFunAux.comp (ℝ ∙ (-v : E))ᗮ.subtypeL.contDiff).comp
          U.symm.contDiff).contDiffOn
#align cont_mdiff_coe_sphere contMDiff_coe_sphere

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]

variable {H : Type*} [TopologicalSpace H] {I : ModelWithCorners ℝ F H}

variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M] [SmoothManifoldWithCorners I M]

/-- If a `cont_mdiff` function `f : M → E`, where `M` is some manifold, takes values in the
sphere, then it restricts to a `cont_mdiff` function from `M` to the sphere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3bea2732c79c6b5954fccb03aede9c3303635cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
