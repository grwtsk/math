# integral_smul_fderiv_eq_neg_fderiv_smul_of_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a682b2461766e00d3d9b98dd4b3428cdc7bae98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a78848a-36a8-70ac-31aa-45bc181c8667",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d607ce9a-502e-9d39-39f0-c75553129810",
  "kind": "theorem",
  "lexical_name": "integral_smul_fderiv_eq_neg_fderiv_smul_of_integrable",
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
  "slug": "integral-smul-fderiv-eq-neg-fderiv-smul-of-integrable--219a72fee96cc134bf784b0f",
  "source": {
    "blob": "9a682b2461766e00d3d9b98dd4b3428cdc7bae98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 190,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:219a72fee96cc134bf784b0f44712c37337d6c65926a865961a64f5543e43ece",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d607ce9a-502e-9d39-39f0-c75553129810`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_smul_fderiv_eq_neg_fderiv_smul_of_integrable
    {f : E → 𝕜} {g : E → G} {v : E}
    (hf'g : Integrable (fun x ↦ fderiv ℝ f x v • g x) μ)
    (hfg' : Integrable (fun x ↦ f x • fderiv ℝ g x v) μ)
    (hfg : Integrable (fun x ↦ f x • g x) μ)
    (hf : Differentiable ℝ f) (hg : Differentiable ℝ g) :
    ∫ x, f x • fderiv ℝ g x v ∂μ = - ∫ x, fderiv ℝ f x v • g x ∂μ :=
  integral_bilinear_fderiv_right_eq_neg_left_of_integrable
    (B := ContinuousLinearMap.lsmul ℝ 𝕜) hf'g hfg' hfg hf hg

/-- **Integration by parts for Fréchet derivatives**
Version with two scalar functions: `∫ f * g' = - ∫ f' * g` when `f * g'` and `f' * g` and `f * g`
are integrable, where `f'` and `g'` are the derivatives of `f` and `g` in a given direction `v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a682b2461766e00d3d9b98dd4b3428cdc7bae98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
