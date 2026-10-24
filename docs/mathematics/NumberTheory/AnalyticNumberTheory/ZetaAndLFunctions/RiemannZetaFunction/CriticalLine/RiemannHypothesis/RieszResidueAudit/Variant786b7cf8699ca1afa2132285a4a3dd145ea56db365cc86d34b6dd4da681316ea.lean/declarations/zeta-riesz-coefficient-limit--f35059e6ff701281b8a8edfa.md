# zeta_riesz_coefficient_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e5f7471b18200ce3d767d863a55c7c42c492210",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 351,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7383bf4b-c329-56fa-ceb7-01db5b94041f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4629f076-fe95-576e-ad8c-9d4bb62bcbe6",
  "kind": "theorem",
  "lexical_name": "zeta_riesz_coefficient_limit",
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
  "slug": "zeta-riesz-coefficient-limit--f35059e6ff701281b8a8edfa",
  "source": {
    "blob": "5e5f7471b18200ce3d767d863a55c7c42c492210",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 351,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f35059e6ff701281b8a8edfa2d98816df944af47b3fcadad871ccf9cc42c36d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4629f076-fe95-576e-ad8c-9d4bb62bcbe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_riesz_coefficient_limit (A : ℝ) (ρ : ℂ) (hρ1 : ρ ≠ 1)
    (hρhalf : ρ - 1 / 2 ≠ 0) :
    Tendsto (fun z : ℂ ↦ (z - ρ) * (-logDeriv riemannZeta z) *
      (Complex.exp (2 * (A : ℂ) * (z - 1 / 2)) * boundaryRieszTransform A (z - 1 / 2)))
      (nhdsWithin ρ ({ρ}ᶜ))
      (nhds (-(analyticOrderNatAt riemannZeta ρ : ℂ) *
        (Complex.exp (2 * (A : ℂ) * (ρ - 1 / 2)) *
          boundaryRieszTransform A (ρ - 1 / 2)))) := by
  have hw := (boundary_riesz_transform_analytic_at A (ρ - 1 / 2) hρhalf).comp_of_eq
    (by fun_prop : AnalyticAt ℂ (fun z : ℂ ↦ z - 1 / 2) ρ) rfl
  apply negative_log_derivative_weighted_coefficient_limit
  · exact Zeta23.riemannZeta_analyticOnNhd_compl_one ρ hρ1
  · exact Zeta23.analyticOrderAt_riemannZeta_ne_top hρ1
  · have ha : AnalyticAt ℂ (fun z : ℂ ↦
        Complex.exp (2 * (A : ℂ) * (z - 1 / 2)) *
          boundaryRieszTransform A (z - 1 / 2)) ρ := by fun_prop
    exact ha.continuousAt

/-- The candidate trivial sector has a uniform bound without asserting residue identification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e5f7471b18200ce3d767d863a55c7c42c492210` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
