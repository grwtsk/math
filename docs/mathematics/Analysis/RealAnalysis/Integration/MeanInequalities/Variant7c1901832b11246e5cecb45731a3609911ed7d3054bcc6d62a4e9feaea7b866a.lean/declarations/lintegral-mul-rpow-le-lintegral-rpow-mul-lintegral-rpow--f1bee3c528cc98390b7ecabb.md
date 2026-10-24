# lintegral_mul_rpow_le_lintegral_rpow_mul_lintegral_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c018b986246e2a0f21c5aa9a354844ec14d7f5cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d3e88d6-7bf3-f50f-1a9c-93d26ff79e95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:145c6037-ae52-2a00-d924-78231f8a8e26",
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
  "slug": "lintegral-mul-rpow-le-lintegral-rpow-mul-lintegral-rpow--f1bee3c528cc98390b7ecabb",
  "source": {
    "blob": "c018b986246e2a0f21c5aa9a354844ec14d7f5cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 254,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1bee3c528cc98390b7ecabbeff3a985f46e6b5d4b22d57256603057184c3b88",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:145c6037-ae52-2a00-d924-78231f8a8e26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_mul_rpow_le_lintegral_rpow_mul_lintegral_rpow {p q : ℝ}
    (hpq : p.IsConjugateExponent q) {f g : α → ℝ≥0∞} (hf : AEMeasurable f μ) (hg : AEMeasurable g μ)
    (hf_top : (∫⁻ a, f a ^ p ∂μ) ≠ ⊤) :
    (∫⁻ a, f a * g a ^ (p - 1) ∂μ) ≤
      (∫⁻ a, f a ^ p ∂μ) ^ (1 / p) * (∫⁻ a, g a ^ p ∂μ) ^ (1 / q) := by
  refine' le_trans (ENNReal.lintegral_mul_le_Lp_mul_Lq μ hpq hf (hg.pow_const _)) _
  by_cases hf_zero_rpow : (∫⁻ a : α, f a ^ p ∂μ) ^ (1 / p) = 0
  · rw [hf_zero_rpow, zero_mul]
    exact zero_le _
  have hf_top_rpow : (∫⁻ a : α, f a ^ p ∂μ) ^ (1 / p) ≠ ⊤ := by
    by_contra h
    refine' hf_top _
    have hp_not_neg : ¬p < 0 := by simp [hpq.nonneg]
    simpa [hpq.pos, hp_not_neg] using h
  refine' (ENNReal.mul_le_mul_left hf_zero_rpow hf_top_rpow).mpr (le_of_eq _)
  congr
  ext1 a
  rw [← ENNReal.rpow_mul, hpq.sub_one_mul_conj]
#align ennreal.lintegral_mul_rpow_le_lintegral_rpow_mul_lintegral_rpow ENNReal.lintegral_mul_rpow_le_lintegral_rpow_mul_lintegral_rpow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c018b986246e2a0f21c5aa9a354844ec14d7f5cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
