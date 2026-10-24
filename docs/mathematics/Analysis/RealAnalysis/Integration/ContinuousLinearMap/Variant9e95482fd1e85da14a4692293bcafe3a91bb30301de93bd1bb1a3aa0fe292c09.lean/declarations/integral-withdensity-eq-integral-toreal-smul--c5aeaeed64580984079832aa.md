# integral_withDensity_eq_integral_toReal_smul₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24b8ad83aa2cb2a2cb5ce54ac6ce84dbad84bb7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d8d163c-652c-e832-d8f8-e979b0ba814b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c7fbbe9-abfe-8b9c-8066-e1b067ee8d3f",
  "kind": "theorem",
  "lexical_name": "integral_withDensity_eq_integral_toReal_smul₀",
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
  "slug": "integral-withdensity-eq-integral-toreal-smul--c5aeaeed64580984079832aa",
  "source": {
    "blob": "24b8ad83aa2cb2a2cb5ce54ac6ce84dbad84bb7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 310,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5aeaeed64580984079832aacb82293055b3a291691607164c7ad8e00c2f81fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c7fbbe9-abfe-8b9c-8066-e1b067ee8d3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_withDensity_eq_integral_toReal_smul₀ {f : X → ℝ≥0∞} (f_meas : AEMeasurable f μ)
    (hf_lt_top : ∀ᵐ x ∂μ, f x < ∞) (g : X → E) :
    ∫ x, g x ∂μ.withDensity f = ∫ x, (f x).toReal • g x ∂μ := by
  dsimp only [ENNReal.toReal, ← NNReal.smul_def]
  rw [← integral_withDensity_eq_integral_smul₀ f_meas.ennreal_toNNReal,
    withDensity_congr_ae (coe_toNNReal_ae_eq hf_lt_top)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24b8ad83aa2cb2a2cb5ce54ac6ce84dbad84bb7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
