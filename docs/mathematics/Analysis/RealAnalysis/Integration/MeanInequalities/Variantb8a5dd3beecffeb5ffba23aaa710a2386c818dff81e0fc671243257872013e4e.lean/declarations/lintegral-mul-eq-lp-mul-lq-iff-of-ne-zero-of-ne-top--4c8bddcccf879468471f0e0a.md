# lintegral_mul_eq_Lp_mul_Lq_iff_of_ne_zero_of_ne_top

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
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89548e65-65cc-15c7-f88f-f3079f4a2901",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f76cf3cf-e150-9ae0-e874-f7987efbe3be",
  "kind": "theorem",
  "lexical_name": "lintegral_mul_eq_Lp_mul_Lq_iff_of_ne_zero_of_ne_top",
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
  "slug": "lintegral-mul-eq-lp-mul-lq-iff-of-ne-zero-of-ne-top--4c8bddcccf879468471f0e0a",
  "source": {
    "blob": "299ef74231950517bf58c7aff960934aa3729c20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c8bddcccf879468471f0e0af382e4d6862e66d02c878b967f1e004a1d7078f9",
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

Occurrence: `result:f76cf3cf-e150-9ae0-e874-f7987efbe3be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_mul_eq_Lp_mul_Lq_iff_of_ne_zero_of_ne_top {p q : ℝ} (hpq : p.HolderConjugate q)
    {f g : α → ℝ≥0∞} (hf : AEMeasurable f μ) (hg : AEMeasurable g μ)
    (hf_nontop : ∫⁻ a, f a ^ p ∂μ ≠ ⊤) (hg_nontop : ∫⁻ a, g a ^ q ∂μ ≠ ⊤)
    (hf_nonzero : ∫⁻ a, f a ^ p ∂μ ≠ 0) (hg_nonzero : ∫⁻ a, g a ^ q ∂μ ≠ 0) :
    ∫⁻ a, (f * g) a ∂μ = (∫⁻ a, f a ^ p ∂μ) ^ (1 / p) * (∫⁻ a, g a ^ q ∂μ) ^ (1 / q) ↔
      (∫⁻ a, f a ^ p ∂μ)⁻¹ • f ^ p =ᵐ[μ] (∫⁻ a, g a ^ q ∂μ)⁻¹ • g ^ q := by
  rw [lintegral_mul_eq_lintegral_funMulInvSnorm_mul_funMulInvSnorm_mul_Lp_mul_Lq hf_nontop hg_nontop
      hf_nonzero hg_nonzero]
  have hf0 := rpow_eq_zero_iff_of_pos hpq.one_div_pos |>.not.mpr hf_nonzero
  have hg0 := rpow_eq_zero_iff_of_pos hpq.symm.one_div_pos |>.not.mpr hg_nonzero
  have hftop : (∫⁻ a, f a ^ p ∂μ) ^ (1 / p) ≠ ⊤ := rpow_ne_top_of_ne_zero hf_nonzero hf_nontop
  have hgtop : (∫⁻ a, g a ^ q ∂μ) ^ (1 / q) ≠ ⊤ := rpow_ne_top_of_ne_zero hg_nonzero hg_nontop
  rw [ENNReal.mul_eq_right (mul_ne_zero hf0 hg0) (mul_ne_top hftop hgtop)]
  have hf1 := lintegral_rpow_funMulInvSnorm_eq_one hpq.pos hf_nonzero hf_nontop
  have hg1 := lintegral_rpow_funMulInvSnorm_eq_one hpq.symm.pos hg_nonzero hg_nontop
  rw [lintegral_mul_eq_one_iff_of_lintegral_rpow_eq_one hpq (hf.funMulInvSnorm p)
      (hg.funMulInvSnorm q) hf1 hg1, funMulInvSnorm_rpow' hpq.left_pos,
    funMulInvSnorm_rpow' hpq.right_pos]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `299ef74231950517bf58c7aff960934aa3729c20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
