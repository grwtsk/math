# actualComplexEndpointIntegrand_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d843d521-d1d9-60df-d43b-0dec43aee4d8",
  "kind": "theorem",
  "lexical_name": "actualComplexEndpointIntegrand_tendsto",
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
  "slug": "actualcomplexendpointintegrand-tendsto--d05ad9a05452f1f66a97a5b3",
  "source": {
    "blob": "026d5c67ae801c1c7089eeecc662aad6a508c2c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb728fcdeedf7198ab30540ac19bd5c6e006cf3f0a50814926b61a68fa6c5a99b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d05ad9a05452f1f66a97a5b3bd4c9f54a9cab0823b28e867d19088488e52e0c3",
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

Occurrence: `result:d843d521-d1d9-60df-d43b-0dec43aee4d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualComplexEndpointIntegrand_tendsto {u : ℝ} (hu : 0 ≤ u) (z : ℂ) :
    Tendsto (fun A : ℝ => actualComplexEndpointIntegrand A z u) atTop
      (𝓝 ((actualLeadingEndpointPolynomial u : ℂ) * Complex.exp (-z * (u : ℂ)))) := by
  have he : (fun A : ℝ => actualComplexEndpointIntegrand A z u) =ᶠ[atTop]
      fun A : ℝ => (endpointPolynomial A u : ℂ) * Complex.exp (-z * (u : ℂ)) := by
    filter_upwards [eventually_ge_atTop (u / 2)] with A hA
    have hm : u ∈ Icc 0 (2 * A) := ⟨hu, by linarith⟩
    simp only [actualComplexEndpointIntegrand, actualEndpointExtension, indicator_of_mem hm]
  exact ((Complex.continuous_ofReal.tendsto _).comp
    (endpointPolynomial_tendsto_leading u)).mul_const _ |>.congr' he.symm

/-- The literal limiting coefficient is an honest positive-axis L1 integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb728fcdeedf7198ab30540ac19bd5c6e006cf3f0a50814926b61a68fa6c5a99b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb728fcdeedf7198ab30540ac19bd5c6e006cf3f0a50814926b61a68fa6c5a99b.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `026d5c67ae801c1c7089eeecc662aad6a508c2c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
