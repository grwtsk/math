# actualLeadingComplexCoefficient_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06208b95-2356-3249-38aa-5524010e4a17",
  "kind": "theorem",
  "lexical_name": "actualLeadingComplexCoefficient_integrable",
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
  "slug": "actualleadingcomplexcoefficient-integrable--2672dcec2fab6864280adeb8",
  "source": {
    "blob": "026d5c67ae801c1c7089eeecc662aad6a508c2c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb728fcdeedf7198ab30540ac19bd5c6e006cf3f0a50814926b61a68fa6c5a99b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2672dcec2fab6864280adeb8ef861a88d56a22b06a734bd8780c04e6d34ee7ce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb728fcdeedf7198ab30540ac19bd5c6e006cf3f0a50814926b61a68fa6c5a99b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06208b95-2356-3249-38aa-5524010e4a17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLeadingComplexCoefficient_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun u : ℝ => (actualLeadingEndpointPolynomial u : ℂ) *
      Complex.exp (-z * (u : ℂ))) (Ioi 0) := by
  have hm : AEStronglyMeasurable (fun u : ℝ => (actualLeadingEndpointPolynomial u : ℂ) *
      Complex.exp (-z * (u : ℂ))) (volume.restrict (Ioi 0)) :=
    (by unfold actualLeadingEndpointPolynomial; fun_prop : Continuous _).aestronglyMeasurable
  refine (actualEndpointMajorant_integrable hz).mono' hm (Eventually.of_forall (fun u => ?_))
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.norm_exp]
  have he : (-z * (u : ℂ)).re = -z.re * u := by simp
  rw [he]
  apply mul_le_mul_of_nonneg_right _ (Real.exp_pos _).le
  unfold actualLeadingEndpointPolynomial
  calc
    _ ≤ |192 * u ^ 2| + |4 * u ^ 4| := abs_sub _ _
    _ = _ := by rw [abs_of_nonneg (by positivity), abs_of_nonneg (by positivity)]

/-- Genuine DCT over the whole positive axis for each complex positive half plane point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb728fcdeedf7198ab30540ac19bd5c6e006cf3f0a50814926b61a68fa6c5a99b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb728fcdeedf7198ab30540ac19bd5c6e006cf3f0a50814926b61a68fa6c5a99b.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `026d5c67ae801c1c7089eeecc662aad6a508c2c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
