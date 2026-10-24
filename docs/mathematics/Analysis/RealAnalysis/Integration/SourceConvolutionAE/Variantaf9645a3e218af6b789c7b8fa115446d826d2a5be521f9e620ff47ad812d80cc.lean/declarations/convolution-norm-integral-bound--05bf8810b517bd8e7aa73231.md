# convolution_norm_integral_bound

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
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa52dc6b-1601-a0f5-90fa-46750afd1fd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33ab64de-1c19-7969-185f-6bf0d840151b",
  "kind": "theorem",
  "lexical_name": "convolution_norm_integral_bound",
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
  "slug": "convolution-norm-integral-bound--05bf8810b517bd8e7aa73231",
  "source": {
    "blob": "4b1433db42c95e04c35b410b36beca6f5a38db60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05bf8810b517bd8e7aa7323114567bce503f333b03520b3d2c8c6f4681574916",
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

Occurrence: `result:33ab64de-1c19-7969-185f-6bf0d840151b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convolution_norm_integral_bound (f : FullH) (t : ℝ) :
    (∫ a : ℝ, ‖fixedKernel a • f (t - a)‖) ≤
      (eLpNorm fixedKernel 2 volume).toReal * ‖f‖ := by
  have h := integral_norm_smul_le fixedKernel _ fixedKernel_memLp_two
    ((Lp.memLp f).comp_measurePreserving (volume.measurePreserving_sub_left t))
  simpa only [eLpNorm_comp_measurePreserving (Lp.aestronglyMeasurable f)
    (volume.measurePreserving_sub_left t), Lp.norm_def, Function.comp_apply] using h


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1433db42c95e04c35b410b36beca6f5a38db60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
