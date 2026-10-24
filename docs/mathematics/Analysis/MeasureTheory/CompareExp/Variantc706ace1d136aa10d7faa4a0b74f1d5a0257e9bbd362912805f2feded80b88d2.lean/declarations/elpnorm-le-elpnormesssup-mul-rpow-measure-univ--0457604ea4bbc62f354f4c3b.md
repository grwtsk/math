# eLpNorm'_le_eLpNormEssSup_mul_rpow_measure_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4d15aeaeadbefa5a2a77a94bffdf843f692800e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74524fde-d273-b4d6-1dd1-4d69fb351625",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc8b9cd0-7256-5537-56ed-f3feeb1b0901",
  "kind": "theorem",
  "lexical_name": "eLpNorm'_le_eLpNormEssSup_mul_rpow_measure_univ",
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
  "slug": "elpnorm-le-elpnormesssup-mul-rpow-measure-univ--0457604ea4bbc62f354f4c3b",
  "source": {
    "blob": "a4d15aeaeadbefa5a2a77a94bffdf843f692800e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 50,
    "path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0457604ea4bbc62f354f4c3b908cd87661a1c2f4ef40a31ea6ddef715082d57f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc8b9cd0-7256-5537-56ed-f3feeb1b0901`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm'_le_eLpNormEssSup_mul_rpow_measure_univ {q : ℝ} (hq_pos : 0 < q) :
    eLpNorm' f q μ ≤ eLpNormEssSup f μ * μ Set.univ ^ (1 / q) := by
  have h_le : (∫⁻ a : α, ‖f a‖ₑ ^ q ∂μ) ≤ ∫⁻ _ : α, eLpNormEssSup f μ ^ q ∂μ := by
    refine lintegral_mono_ae ?_
    have h_nnnorm_le_eLpNorm_ess_sup := enorm_ae_le_eLpNormEssSup f μ
    exact h_nnnorm_le_eLpNorm_ess_sup.mono fun x hx => by gcongr
  rw [eLpNorm', ← ENNReal.rpow_one (eLpNormEssSup f μ)]
  nth_rw 2 [← mul_inv_cancel₀ (ne_of_lt hq_pos).symm]
  rw [ENNReal.rpow_mul, one_div, ← ENNReal.mul_rpow_of_nonneg _ _ (by simp [hq_pos.le] : 0 ≤ q⁻¹)]
  gcongr
  rwa [lintegral_const] at h_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d15aeaeadbefa5a2a77a94bffdf843f692800e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
