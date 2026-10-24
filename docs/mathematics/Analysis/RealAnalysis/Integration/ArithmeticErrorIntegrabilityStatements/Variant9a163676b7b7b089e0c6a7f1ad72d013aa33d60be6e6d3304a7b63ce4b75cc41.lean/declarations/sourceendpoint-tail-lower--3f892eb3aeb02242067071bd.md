# sourceEndpoint_tail_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "644825c05f6dffa444da3bac3107d0c21470af58",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a163676b7b7b089e0c6a7f1ad72d013aa33d60be6e6d3304a7b63ce4b75cc41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6f67393-ced7-5e86-86eb-4da3b33b3f29",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c68a142a-0fb2-9b6e-c1f8-b5fb01e19e22",
  "kind": "theorem",
  "lexical_name": "sourceEndpoint_tail_lower",
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
  "slug": "sourceendpoint-tail-lower--3f892eb3aeb02242067071bd",
  "source": {
    "blob": "644825c05f6dffa444da3bac3107d0c21470af58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityStatements/Variant9a163676b7b7b089e0c6a7f1ad72d013aa33d60be6e6d3304a7b63ce4b75cc41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f892eb3aeb02242067071bd3f284b89b46ac3fb0bd3aae72aca1b431109465c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityStatements/Variant9a163676b7b7b089e0c6a7f1ad72d013aa33d60be6e6d3304a7b63ce4b75cc41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c68a142a-0fb2-9b6e-c1f8-b5fb01e19e22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceEndpoint_tail_lower (ε : ℝ) (hε : 0 < ε) (w : ℂ) (hw : ε ≤ w.re)
    (hr : max 1 (1060 / (1 - Real.exp (-2 * ε))) ≤ ‖w‖) :
    ((1 - Real.exp (-2 * ε)) / 2) * ‖w‖^4 ≤
      ‖transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)‖ := by
  have hr1 : 1 ≤ ‖w‖ := (le_max_left _ _).trans hr
  have hq := sourceTailGap_pos ε hε
  have he : ‖Complex.exp (-2*w)‖ ≤ Real.exp (-2*ε) := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    norm_num [Complex.mul_re, Complex.mul_im]
    linarith
  have he1 : ‖Complex.exp (-2*w)‖ ≤ 1 :=
    he.trans (le_of_lt (by linarith : Real.exp (-2*ε) < 1))
  have hpos := sourcePolynomial_leading_error w hr1
  have hneg := sourcePolynomial_leading_error (-w) (by simpa only [norm_neg] using hr1)
  norm_num only [norm_neg, neg_pow, one_mul] at hneg
  have hlead : (1 - Real.exp (-2*ε)) * ‖w‖^4 ≤
      ‖(1 - Complex.exp (-2*w)) * w^4‖ := by
    rw [norm_mul, norm_pow]
    apply mul_le_mul_of_nonneg_right _ (pow_nonneg (norm_nonneg _) _)
    have h := norm_sub_norm_le (1 : ℂ) (Complex.exp (-2*w))
    norm_num only [norm_one] at h
    linarith
  have hrem : ‖(transformPolynomial w - w^4) -
      Complex.exp (-2*w) * (transformPolynomial (-w) - w^4)‖ ≤ 530 * ‖w‖^3 := by
    calc
      _ ≤ ‖transformPolynomial w - w^4‖ +
          ‖Complex.exp (-2*w) * (transformPolynomial (-w) - w^4)‖ := norm_sub_le _ _
      _ ≤ 265 * ‖w‖^3 + 1 * (265 * ‖w‖^3) := by
        rw [norm_mul]
        exact add_le_add hpos (mul_le_mul he1 hneg (norm_nonneg _) (by norm_num))
      _ = _ := by ring
  have htriangle : ‖(1 - Complex.exp (-2*w)) * w^4‖ ≤
      ‖transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)‖ +
      ‖(transformPolynomial w - w^4) -
        Complex.exp (-2*w) * (transformPolynomial (-w) - w^4)‖ := by
    have hid : (1 - Complex.exp (-2*w)) * w^4 =
        (transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)) -
        ((transformPolynomial w - w^4) -
          Complex.exp (-2*w) * (transformPolynomial (-w) - w^4)) := by ring
    rw [hid]
    exact norm_sub_le _ _
  have hrq : 1060 ≤ ‖w‖ * (1 - Real.exp (-2*ε)) :=
    (div_le_iff₀ hq).mp ((le_max_right _ _).trans hr)
  have hm := mul_le_mul_of_nonneg_right hrq (pow_nonneg (norm_nonneg w) 3)
  nlinarith

/-- The reduced filter retains the exact closed formula after its single factor cancellation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityStatements/Variant9a163676b7b7b089e0c6a7f1ad72d013aa33d60be6e6d3304a7b63ce4b75cc41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityStatements/Variant9a163676b7b7b089e0c6a7f1ad72d013aa33d60be6e6d3304a7b63ce4b75cc41.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `644825c05f6dffa444da3bac3107d0c21470af58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
