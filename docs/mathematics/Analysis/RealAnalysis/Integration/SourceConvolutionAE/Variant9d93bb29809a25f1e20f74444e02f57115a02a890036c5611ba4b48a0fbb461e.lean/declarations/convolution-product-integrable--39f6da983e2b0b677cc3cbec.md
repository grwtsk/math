# convolution_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9e858d6-2435-9f45-627e-43780bde6e6f",
  "kind": "theorem",
  "lexical_name": "convolution_product_integrable",
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
  "slug": "convolution-product-integrable--39f6da983e2b0b677cc3cbec",
  "source": {
    "blob": "a454a3d6527e5664d5d15346ddfbe4479215ed80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39f6da983e2b0b677cc3cbec0eb9d8e31f781d934766cefe5eb99f61d5a28eb9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9e858d6-2435-9f45-627e-43780bde6e6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convolution_product_integrable (f : FullH) (B : Set ℝ)
    (hB : volume B < ∞) :
    Integrable (fun p : ℝ × ℝ => fixedKernel p.1 • f (p.2 - p.1))
      (volume.prod (volume.restrict B)) := by
  refine (integrable_prod_iff' (convolution_integrand_stronglyMeasurable f).aestronglyMeasurable).mpr
    ⟨Filter.Eventually.of_forall (convolution_integrand_integrable f), ?_⟩
  have hconst : IntegrableOn
      (fun _ : ℝ => (eLpNorm fixedKernel 2 volume).toReal * ‖f‖) B :=
    integrableOn_const hB.ne
  refine hconst.mono' ?_ ?_
  · exact (convolution_integrand_stronglyMeasurable f).norm.integral_prod_left'.aestronglyMeasurable
  · filter_upwards [] with t
    rw [Real.norm_of_nonneg (integral_nonneg (fun a => norm_nonneg _))]
    exact convolution_norm_integral_bound f t

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a454a3d6527e5664d5d15346ddfbe4479215ed80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
