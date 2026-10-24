# integral_bilinear_fderiv_right_eq_neg_left_of_integrable

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
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6bef934-599c-ac92-6a34-0656f77160b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78719e50-ca69-5579-be36-61102133444e",
  "kind": "theorem",
  "lexical_name": "integral_bilinear_fderiv_right_eq_neg_left_of_integrable",
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
  "slug": "integral-bilinear-fderiv-right-eq-neg-left-of-integrable--9a585a742d497529957a4ccb",
  "source": {
    "blob": "9a682b2461766e00d3d9b98dd4b3428cdc7bae98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 174,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a585a742d497529957a4ccbbe01a371e57afc2f52d4268a4449709fbff4fc77",
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

Occurrence: `result:78719e50-ca69-5579-be36-61102133444e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_bilinear_fderiv_right_eq_neg_left_of_integrable
    {f : E → F} {g : E → G} {v : E} {B : F →L[ℝ] G →L[ℝ] W}
    (hf'g : Integrable (fun x ↦ B (fderiv ℝ f x v) (g x)) μ)
    (hfg' : Integrable (fun x ↦ B (f x) (fderiv ℝ g x v)) μ)
    (hfg : Integrable (fun x ↦ B (f x) (g x)) μ)
    (hf : Differentiable ℝ f) (hg : Differentiable ℝ g) :
    ∫ x, B (f x) (fderiv ℝ g x v) ∂μ = - ∫ x, B (fderiv ℝ f x v) (g x) ∂μ :=
  integral_bilinear_hasFDerivAt_right_eq_neg_left_of_integrable hf'g hfg' hfg
    (fun x ↦ (hf x).hasFDerivAt) (fun x ↦ (hg x).hasFDerivAt)

variable {𝕜 : Type*} [NormedField 𝕜] [NormedAlgebra ℝ 𝕜]
    [NormedSpace 𝕜 G] [IsScalarTower ℝ 𝕜 G]

/-- **Integration by parts for Fréchet derivatives**
Version with a scalar function: `∫ f • g' = - ∫ f' • g` when `f • g'` and `f' • g` and `f • g`
are integrable, where `f'` and `g'` are the derivatives of `f` and `g` in a given direction `v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a682b2461766e00d3d9b98dd4b3428cdc7bae98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
