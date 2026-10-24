# poleReducedCorrelation_second_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27a078c0f289151a33db11bc1bde27ecf3e7d660",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d52f0a1-72f4-41eb-874f-4599cef0373b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48e782fa-b68f-20dd-e39f-186aab7283ca",
  "kind": "theorem",
  "lexical_name": "poleReducedCorrelation_second_product_integrable",
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
  "slug": "polereducedcorrelation-second-product-integrable--a7a89d89c2f250672008896c",
  "source": {
    "blob": "27a078c0f289151a33db11bc1bde27ecf3e7d660",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7a89d89c2f250672008896c6a405e7e23873b8d5246b0d5af07589013ba1864",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48e782fa-b68f-20dd-e39f-186aab7283ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleReducedCorrelation_second_product_integrable (A t : ℝ) (hA : 0 < A) :
    Integrable (fun x ↦ normalizedTest explicitSecondDerivative A x *
      deriv (deriv (normalizedSourceBump A)) (x-t)) volume := by
  have hq : ContDiff ℝ 1 (deriv (normalizedSourceBump A)) :=
    (normalizedSourceBump_contDiff A hA).deriv'
  have hc : Continuous (fun x ↦ normalizedTest explicitSecondDerivative A x *
      deriv (deriv (normalizedSourceBump A)) (x-t)) :=
    ((normalizedTest_contDiff A hA).continuous).mul
      (hq.continuous_deriv_one.comp (continuous_id.sub continuous_const))
  exact hc.integrable_of_hasCompactSupport (normalizedTest_hasCompactSupport A hA).mul_right

/-- Reflection turns this literal cross-correlation into compact convolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a078c0f289151a33db11bc1bde27ecf3e7d660` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
