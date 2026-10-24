# convolution_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcf6c43556ee3ee9313d2f9ae8583b8c74ceb213",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 351,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/1066b79412207331bbc09106d8d9c4170d6e3e52a0ddff678f248cbcd1d0162f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4bebe4e-097e-97d8-dab5-a3edeeaf35fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac336a15-7295-6ec5-9570-84ea18aeec4c",
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
  "slug": "convolution-product-integrable--2bf43374e6fb095f3b04c9a4",
  "source": {
    "blob": "dcf6c43556ee3ee9313d2f9ae8583b8c74ceb213",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 351,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEStatements/Variant1066b79412207331bbc09106d8d9c4170d6e3e52a0ddff678f248cbcd1d0162f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bf43374e6fb095f3b04c9a4dfcdb0489c91cebe588687c8b087d33504b0a68d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceConvolutionAEStatements/Variant1066b79412207331bbc09106d8d9c4170d6e3e52a0ddff678f248cbcd1d0162f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac336a15-7295-6ec5-9570-84ea18aeec4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–365.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAEStatements/Variant1066b79412207331bbc09106d8d9c4170d6e3e52a0ddff678f248cbcd1d0162f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEStatements/Variant1066b79412207331bbc09106d8d9c4170d6e3e52a0ddff678f248cbcd1d0162f.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcf6c43556ee3ee9313d2f9ae8583b8c74ceb213` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
