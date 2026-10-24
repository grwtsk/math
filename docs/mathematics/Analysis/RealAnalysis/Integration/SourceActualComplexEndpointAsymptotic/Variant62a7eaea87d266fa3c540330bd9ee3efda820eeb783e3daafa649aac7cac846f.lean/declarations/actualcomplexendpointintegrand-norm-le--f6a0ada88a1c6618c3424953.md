# actualComplexEndpointIntegrand_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c32ec32-f96d-f66a-81d3-febbdd915d74",
  "kind": "theorem",
  "lexical_name": "actualComplexEndpointIntegrand_norm_le",
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
  "slug": "actualcomplexendpointintegrand-norm-le--f6a0ada88a1c6618c3424953",
  "source": {
    "blob": "9b3a4c73432d69109eed4f537658cc7764fc1bf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6a0ada88a1c6618c3424953bbdf2dc48f847cf7078f0cfe457a44dfd34c2cf4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c32ec32-f96d-f66a-81d3-febbdd915d74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualComplexEndpointIntegrand_norm_le {A : ℝ} (hA : 1 ≤ A)
    (z : ℂ) (u : ℝ) :
    ‖actualComplexEndpointIntegrand A z u‖ ≤
      (192 * u ^ 2 + 4 * u ^ 4) * Real.exp (-z.re * u) := by
  rw [actualComplexEndpointIntegrand, norm_mul, Complex.norm_real, Complex.norm_exp]
  have he : (-z * (u : ℂ)).re = -z.re * u := by simp
  rw [he]
  refine mul_le_mul_of_nonneg_right ?_ (Real.exp_pos _).le
  by_cases hu : u ∈ Icc 0 (2 * A)
  · simpa only [actualEndpointExtension, indicator_of_mem hu, Real.norm_eq_abs] using
      endpointPolynomial_abs_le A u hA hu.1 hu.2
  · simp only [actualEndpointExtension, indicator_of_notMem hu, Real.norm_eq_abs, abs_zero]
    positivity

/-- The actual finite support integrand is measurable before applying DCT. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b3a4c73432d69109eed4f537658cc7764fc1bf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
