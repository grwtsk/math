# eLpNorm_le_nnreal_smul_eLpNorm_of_ae_le_mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1726dc3c8a5a4b1c4b0f3e6a6b1b3866300cf964",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a4c20a53069ee8a959eb629a30bd60bab07b15540237354e68e24434397fd6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4065d9dd-08f7-3ae3-41da-ec31b1119871",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6558506-7a9b-488e-65be-aeb476de259c",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_nnreal_smul_eLpNorm_of_ae_le_mul'",
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
  "slug": "elpnorm-le-nnreal-smul-elpnorm-of-ae-le-mul--2bd12c17b01cf60c61edfe68",
  "source": {
    "blob": "1726dc3c8a5a4b1c4b0f3e6a6b1b3866300cf964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 106,
    "path": "GRWTSK/Analysis/MeasureTheory/Monotonicity/Variant3a4c20a53069ee8a959eb629a30bd60bab07b15540237354e68e24434397fd6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bd12c17b01cf60c61edfe6836c62befaae92a226478943e740d9bddccb2505f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Monotonicity/Variant3a4c20a53069ee8a959eb629a30bd60bab07b15540237354e68e24434397fd6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6558506-7a9b-488e-65be-aeb476de259c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_nnreal_smul_eLpNorm_of_ae_le_mul' {f : α → ε} {g : α → ε'} {c : ℝ≥0}
    (hf : AEStronglyMeasurable f μ) (h : ∀ᵐ x ∂μ, ‖f x‖ₑ ≤ c * ‖g x‖ₑ) (p : ℝ≥0∞) :
    eLpNorm f p μ ≤ c • eLpNorm g p μ := by
  by_cases! hg : ¬ AEStronglyMeasurable g μ
  · rw [eLpNorm_of_not_aestronglyMeasurable hg]
    rcases eq_or_ne c 0 with rfl | hc
    · simp only [ENNReal.coe_zero, zero_mul, nonpos_iff_eq_zero, zero_smul] at h ⊢
      apply eLpNorm_zero_of_ae_enorm_zero' hf h
    · simp [hc, ENNReal.smul_top c]
  by_cases h0 : p = 0
  · simp [h0, hf, hg]
  by_cases h_top : p = ∞
  · rw [h_top]
    simpa [eLpNorm_exponent_top hf, eLpNorm_exponent_top hg, ENNReal.smul_def] using
      eLpNormEssSup_le_nnreal_smul_eLpNormEssSup_of_ae_le_mul' h
  rw [eLpNorm_eq_eLpNorm' h0 h_top hf, eLpNorm_eq_eLpNorm' h0 h_top hg]
  exact eLpNorm'_le_nnreal_smul_eLpNorm'_of_ae_le_mul' h (ENNReal.toReal_pos h0 h_top)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Monotonicity/Variant3a4c20a53069ee8a959eb629a30bd60bab07b15540237354e68e24434397fd6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Monotonicity/Variant3a4c20a53069ee8a959eb629a30bd60bab07b15540237354e68e24434397fd6c.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1726dc3c8a5a4b1c4b0f3e6a6b1b3866300cf964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
