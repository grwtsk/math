# vector_setIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b1433db42c95e04c35b410b36beca6f5a38db60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14a86623-9d4a-9ccb-8b5d-2ab37e3767bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d07b3a7-5240-0f9a-ef6f-d9521915d056",
  "kind": "theorem",
  "lexical_name": "vector_setIntegral",
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
  "slug": "vector-setintegral--853ac31da554a8218979dc55",
  "source": {
    "blob": "4b1433db42c95e04c35b410b36beca6f5a38db60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:853ac31da554a8218979dc55862a35ab76ef1590446169a7041a9fa2b0f9ca4d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d07b3a7-5240-0f9a-ef6f-d9521915d056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vector_setIntegral (f : FullH) (B : Set ℝ)
    (hB : MeasurableSet B) (hBfin : volume B < ∞) :
    (∫ t in B, actualFull f t) =
      ∫ a : ℝ, ∫ t in B, fixedKernel a • f (t - a) := by
  rw [← L2.inner_indicatorConstLp_one hB hBfin.ne, actualFull_apply,
    ← integral_inner (weighted_shift_integrable fixedKernel fixedKernel_integrable f)]
  apply integral_congr_ae
  filter_upwards [] with a
  rw [L2.inner_indicatorConstLp_one hB hBfin.ne]
  apply integral_congr_ae
  filter_upwards [ae_restrict_of_ae (Lp.coeFn_smul (fixedKernel a : ℂ) (fullShift a f)),
    ae_restrict_of_ae (fullShift_ae a f)] with t hmul hshift
  rw [hmul, Pi.smul_apply, hshift]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1433db42c95e04c35b410b36beca6f5a38db60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
