# gaussianPDFReal_inv_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "368d967744fbfdd6587863b0b837000ed342c6a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b3cb07ef88dc1a6d0ecd1603bec722a3334b149ad061de01a79ae236233e4f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1d10920-2112-5d38-16ee-7f5cd9a5fc6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:442a583b-bd0b-72e7-d329-a692828b02cf",
  "kind": "lemma",
  "lexical_name": "gaussianPDFReal_inv_mul",
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
  "slug": "gaussianpdfreal-inv-mul--c67f9d9d89109283dfc7e0bd",
  "source": {
    "blob": "368d967744fbfdd6587863b0b837000ed342c6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 134,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant8b3cb07ef88dc1a6d0ecd1603bec722a3334b149ad061de01a79ae236233e4f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c67f9d9d89109283dfc7e0bdf55703c531ee4438c913165511b7064ed65860d0",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant8b3cb07ef88dc1a6d0ecd1603bec722a3334b149ad061de01a79ae236233e4f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:442a583b-bd0b-72e7-d329-a692828b02cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussianPDFReal_inv_mul {μ : ℝ} {v : ℝ≥0} {c : ℝ} (hc : c ≠ 0) (x : ℝ) :
    gaussianPDFReal μ v (c⁻¹ * x) = |c| * gaussianPDFReal (c * μ) (⟨c^2, sq_nonneg _⟩ * v) x := by
  simp only [gaussianPDFReal.eq_1, zero_lt_two, mul_nonneg_iff_of_pos_left, NNReal.zero_le_coe,
    Real.sqrt_mul', one_div, mul_inv_rev, NNReal.coe_mul, NNReal.coe_mk, NNReal.coe_pos]
  rw [← mul_assoc]
  refine congr_arg₂ _ ?_ ?_
  · field_simp
    rw [Real.sqrt_sq_eq_abs]
    ring_nf
    calc (√↑v)⁻¹ * (√2)⁻¹ * (√π)⁻¹
      = (√↑v)⁻¹ * (√2)⁻¹ * (√π)⁻¹ * (|c| * |c|⁻¹) := by
          rw [mul_inv_cancel₀, mul_one]
          simp only [ne_eq, abs_eq_zero, hc, not_false_eq_true]
    _ = (√↑v)⁻¹ * (√2)⁻¹ * (√π)⁻¹ * |c| * |c|⁻¹ := by ring
  · congr 1
    field_simp
    congr 1
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant8b3cb07ef88dc1a6d0ecd1603bec722a3334b149ad061de01a79ae236233e4f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant8b3cb07ef88dc1a6d0ecd1603bec722a3334b149ad061de01a79ae236233e4f0.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `368d967744fbfdd6587863b0b837000ed342c6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
