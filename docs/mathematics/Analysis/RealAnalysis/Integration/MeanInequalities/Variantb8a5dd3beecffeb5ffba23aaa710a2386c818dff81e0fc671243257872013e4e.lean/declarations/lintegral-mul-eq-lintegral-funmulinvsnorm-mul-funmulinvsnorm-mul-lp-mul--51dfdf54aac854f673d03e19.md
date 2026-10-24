# lintegral_mul_eq_lintegral_funMulInvSnorm_mul_funMulInvSnorm_mul_Lp_mul_Lq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "299ef74231950517bf58c7aff960934aa3729c20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3fb378e-d5e1-06a2-c071-d54c62f45105",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fab0e89f-70cf-9949-dcc2-353e350000dd",
  "kind": "theorem",
  "lexical_name": "lintegral_mul_eq_lintegral_funMulInvSnorm_mul_funMulInvSnorm_mul_Lp_mul_Lq",
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
  "slug": "lintegral-mul-eq-lintegral-funmulinvsnorm-mul-funmulinvsnorm-mul-lp-mul--51dfdf54aac854f673d03e19",
  "source": {
    "blob": "299ef74231950517bf58c7aff960934aa3729c20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 133,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51dfdf54aac854f673d03e1902b5afda077aa42c1be7b54902cbb73e38607c31",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fab0e89f-70cf-9949-dcc2-353e350000dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem lintegral_mul_eq_lintegral_funMulInvSnorm_mul_funMulInvSnorm_mul_Lp_mul_Lq {p q : ℝ}
    {f g : α → ℝ≥0∞} (hf_nontop : ∫⁻ a, f a ^ p ∂μ ≠ ⊤) (hg_nontop : ∫⁻ a, g a ^ q ∂μ ≠ ⊤)
    (hf_nonzero : ∫⁻ a, f a ^ p ∂μ ≠ 0) (hg_nonzero : ∫⁻ a, g a ^ q ∂μ ≠ 0) :
    ∫⁻ a, (f * g) a ∂μ = (∫⁻ a, (funMulInvSnorm f p μ * funMulInvSnorm g q μ) a ∂μ) *
      ((∫⁻ c : α, f c ^ p ∂μ) ^ (1 / p) * (∫⁻ c : α, g c ^ q ∂μ) ^ (1 / q)) := by
  have : (∫⁻ (c : α), f c ^ p ∂μ) ^ (1 / p) * (∫⁻ (c : α), g c ^ q ∂μ) ^ (1 / q) ≠ ∞ := by
    grind [mul_eq_top, rpow_eq_top_iff]
  rw [← lintegral_mul_const' _ _ this]
  refine lintegral_congr fun a ↦ ?_
  rw [Pi.mul_apply, fun_eq_funMulInvSnorm_mul_eLpNorm f hf_nonzero hf_nontop,
    fun_eq_funMulInvSnorm_mul_eLpNorm g hg_nonzero hg_nontop, Pi.mul_apply]
  ring

/-- Hölder's inequality in case of finite non-zero integrals -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `299ef74231950517bf58c7aff960934aa3729c20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
