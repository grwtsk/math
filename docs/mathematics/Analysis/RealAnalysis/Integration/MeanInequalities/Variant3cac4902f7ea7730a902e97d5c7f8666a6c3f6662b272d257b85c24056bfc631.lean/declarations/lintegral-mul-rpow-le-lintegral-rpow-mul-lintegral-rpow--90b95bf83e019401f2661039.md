# lintegral_mul_rpow_le_lintegral_rpow_mul_lintegral_rpow

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
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:419d0889-bfc6-4f17-6be9-ac0145087cae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7de6e1f5-b6e3-3ca4-03d9-4383010a2b6c",
  "kind": "theorem",
  "lexical_name": "lintegral_mul_rpow_le_lintegral_rpow_mul_lintegral_rpow",
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
  "slug": "lintegral-mul-rpow-le-lintegral-rpow-mul-lintegral-rpow--90b95bf83e019401f2661039",
  "source": {
    "blob": "0f40c8e9540517f10b3aff9d0280120e23c6c6f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 332,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90b95bf83e019401f266103959ab8c002990f414add7266f38f8afbcd007e46a",
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

Occurrence: `result:7de6e1f5-b6e3-3ca4-03d9-4383010a2b6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_mul_rpow_le_lintegral_rpow_mul_lintegral_rpow {p q : ℝ}
    (hpq : p.HolderConjugate q) {f g : α → ℝ≥0∞} (hf : AEMeasurable f μ) (hg : AEMeasurable g μ)
    (hf_top : (∫⁻ a, f a ^ p ∂μ) ≠ ⊤) :
    (∫⁻ a, f a * g a ^ (p - 1) ∂μ) ≤
      (∫⁻ a, f a ^ p ∂μ) ^ (1 / p) * (∫⁻ a, g a ^ p ∂μ) ^ (1 / q) := by
  refine le_trans (ENNReal.lintegral_mul_le_Lp_mul_Lq μ hpq hf (hg.pow_const _)) ?_
  by_cases hf_zero_rpow : (∫⁻ a : α, f a ^ p ∂μ) ^ (1 / p) = 0
  · rw [hf_zero_rpow, zero_mul]
    exact zero_le _
  have hf_top_rpow : (∫⁻ a : α, f a ^ p ∂μ) ^ (1 / p) ≠ ⊤ := by
    by_contra h
    refine hf_top ?_
    have hp_not_neg : ¬p < 0 := by simp [hpq.nonneg]
    simpa [hpq.pos, hp_not_neg] using h
  refine (ENNReal.mul_le_mul_left hf_zero_rpow hf_top_rpow).mpr (le_of_eq ?_)
  congr
  ext1 a
  rw [← ENNReal.rpow_mul, hpq.sub_one_mul_conj]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f40c8e9540517f10b3aff9d0280120e23c6c6f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
