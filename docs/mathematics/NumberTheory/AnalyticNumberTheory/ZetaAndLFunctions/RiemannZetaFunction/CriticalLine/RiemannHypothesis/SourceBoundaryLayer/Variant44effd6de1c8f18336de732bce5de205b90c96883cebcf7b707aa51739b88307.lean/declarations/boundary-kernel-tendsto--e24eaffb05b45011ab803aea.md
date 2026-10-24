# boundary_kernel_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a5980c4-721c-26d4-a828-ebb188a8484f",
  "kind": "theorem",
  "lexical_name": "boundary_kernel_tendsto",
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
  "slug": "boundary-kernel-tendsto--e24eaffb05b45011ab803aea",
  "source": {
    "blob": "a2af18921c9e15508675b3c1d33e987398dc4ac4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e24eaffb05b45011ab803aea104865f74b05b5221cf675fbfa56de6ae867dda1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a5980c4-721c-26d4-a828-ebb188a8484f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_kernel_tendsto (y : ℝ) (hy : 0 ≤ y) :
    Tendsto (fun A : ℝ ↦ boundaryKernel A y) atTop (nhds (boundaryProfile y)) := by
  have hc0 : Continuous endpointPolynomialZero := by
    unfold endpointPolynomialZero
    fun_prop
  have hc1 : Continuous endpointPolynomialOne := by
    unfold endpointPolynomialOne
    fun_prop
  have hc2 : Continuous endpointPolynomialTwo := by
    unfold endpointPolynomialTwo
    fun_prop
  have h0 := hc0.continuousAt.tendsto.comp (distance_div_radius_tendsto_zero y)
  have h1 := hc1.continuousAt.tendsto.comp (distance_div_radius_tendsto_zero y)
  have h2 := hc2.continuousAt.tendsto.comp (distance_div_radius_tendsto_zero y)
  have hn := ((h0.const_mul (y ^ 9 / 16)).add (h1.const_mul (y ^ 7 / 2))).add
    (h2.const_mul (y ^ 5))
  have hr := hn.div source_normalization_tendsto (by norm_num)
  have heq : (fun A : ℝ ↦ boundaryKernel A y) =ᶠ[atTop]
      (fun A ↦ (y ^ 9 / 16 * endpointPolynomialZero (y / A) +
        y ^ 7 / 2 * endpointPolynomialOne (y / A) +
          y ^ 5 * endpointPolynomialTwo (y / A)) / sourceNormalization A) := by
    filter_upwards [eventually_ge_atTop (max 1 (y / 2))] with A hA
    have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
    have hyA : y ≤ 2 * A := by have h := (le_max_right 1 (y / 2)).trans hA; linarith
    exact boundary_kernel_exact A y hA1 hy hyA
  convert hr.congr' heq.symm using 1
  norm_num [endpointPolynomialZero, endpointPolynomialOne, endpointPolynomialTwo, boundaryProfile]
  ring

/-- The bulk term has its own fixed-distance limit, which omits nonzero boundary terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2af18921c9e15508675b3c1d33e987398dc4ac4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
