# lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f40c8e9540517f10b3aff9d0280120e23c6c6f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26429c9d-f020-bae8-7cd0-ba423f8b8ca1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a5a6728-13d0-d9b3-cd82-7029da383037",
  "kind": "theorem",
  "lexical_name": "lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_ne_top",
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
  "slug": "lintegral-mul-le-lp-mul-lq-of-ne-zero-of-ne-top--2020af34e4f212f911b69f5f",
  "source": {
    "blob": "0f40c8e9540517f10b3aff9d0280120e23c6c6f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2020af34e4f212f911b69f5f52f37430cd9bc53f724adbe9f243c9672b98d427",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a5a6728-13d0-d9b3-cd82-7029da383037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_ne_top {p q : ℝ} (hpq : p.HolderConjugate q)
    {f g : α → ℝ≥0∞} (hf : AEMeasurable f μ) (hf_nontop : (∫⁻ a, f a ^ p ∂μ) ≠ ⊤)
    (hg_nontop : (∫⁻ a, g a ^ q ∂μ) ≠ ⊤) (hf_nonzero : (∫⁻ a, f a ^ p ∂μ) ≠ 0)
    (hg_nonzero : (∫⁻ a, g a ^ q ∂μ) ≠ 0) :
    (∫⁻ a, (f * g) a ∂μ) ≤ (∫⁻ a, f a ^ p ∂μ) ^ (1 / p) * (∫⁻ a, g a ^ q ∂μ) ^ (1 / q) := by
  let npf := (∫⁻ c : α, f c ^ p ∂μ) ^ (1 / p)
  let nqg := (∫⁻ c : α, g c ^ q ∂μ) ^ (1 / q)
  calc
    (∫⁻ a : α, (f * g) a ∂μ) =
        ∫⁻ a : α, (funMulInvSnorm f p μ * funMulInvSnorm g q μ) a * (npf * nqg) ∂μ := by
      refine lintegral_congr fun a => ?_
      rw [Pi.mul_apply, fun_eq_funMulInvSnorm_mul_eLpNorm f hf_nonzero hf_nontop,
        fun_eq_funMulInvSnorm_mul_eLpNorm g hg_nonzero hg_nontop, Pi.mul_apply]
      ring
    _ ≤ npf * nqg := by
      rw [lintegral_mul_const' (npf * nqg) _
          (by simp [npf, nqg, hf_nontop, hg_nontop, hf_nonzero, hg_nonzero, ENNReal.mul_eq_top])]
      refine mul_le_of_le_one_left' ?_
      have hf1 := lintegral_rpow_funMulInvSnorm_eq_one hpq.pos hf_nonzero hf_nontop
      have hg1 := lintegral_rpow_funMulInvSnorm_eq_one hpq.symm.pos hg_nonzero hg_nontop
      exact lintegral_mul_le_one_of_lintegral_rpow_eq_one hpq (hf.mul_const _) hf1 hg1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f40c8e9540517f10b3aff9d0280120e23c6c6f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
