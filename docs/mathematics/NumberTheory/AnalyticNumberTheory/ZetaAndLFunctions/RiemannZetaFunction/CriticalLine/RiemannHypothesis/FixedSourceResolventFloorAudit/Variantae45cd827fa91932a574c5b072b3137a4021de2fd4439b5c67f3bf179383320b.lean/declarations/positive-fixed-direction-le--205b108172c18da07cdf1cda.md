# positive_fixed_direction_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5480472e4dd3c2ecbbe3dde3efc87be5579b974",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 15,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66363561-10fe-73ad-3ef5-6cb755b3b749",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0490f068-c7a6-a332-54d9-adbeb85e1abd",
  "kind": "theorem",
  "lexical_name": "positive_fixed_direction_le",
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
  "slug": "positive-fixed-direction-le--205b108172c18da07cdf1cda",
  "source": {
    "blob": "b5480472e4dd3c2ecbbe3dde3efc87be5579b974",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 15,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:205b108172c18da07cdf1cda758539fe254fc125acdefb9ddb85585c94bd291c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0490f068-c7a6-a332-54d9-adbeb85e1abd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_fixed_direction_le (B : E →L[ℂ] E) (hB : B.IsPositive)
    (r e : E) (he : e ≠ 0) (hBe : B e = e) :
    ‖inner ℂ r e‖ ^ 2 / ‖e‖ ^ 2 ≤ (inner ℂ r (B r)).re := by
  let q : ℝ := ‖e‖ ^ 2
  let c : ℂ := inner ℂ e r
  let v : E := (q : ℂ) • r - c • e
  have hq : 0 < q := sq_pos_of_pos (norm_pos_iff.mpr he)
  have hee : inner ℂ e e = (q : ℂ) := by
    calc
      inner ℂ e e = (‖e‖ : ℂ) ^ 2 := inner_self_eq_norm_sq_to_K e
      _ = (q : ℂ) := (Complex.ofReal_pow ‖e‖ 2).symm
  have her : inner ℂ e (B r) = c := by
    rw [← hB.inner_left_eq_inner_right, hBe]
  have hre : inner ℂ r e = conj c := (inner_conj_symm r e).symm
  have hquad : inner ℂ v (B v) =
      (q : ℂ) ^ 2 * inner ℂ r (B r) - (q : ℂ) * (conj c * c) := by
    simp only [v, map_sub, map_smul, inner_sub_left, inner_sub_right,
      inner_smul_left, inner_smul_right, Complex.conj_ofReal, hBe, her, hre, hee]
    ring
  have hp := hB.re_inner_nonneg_right v
  change 0 ≤ (inner ℂ v (B v)).re at hp
  rw [hquad, ← Complex.normSq_eq_conj_mul_self] at hp
  simp only [← Complex.ofReal_pow, Complex.sub_re, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero, Complex.normSq_eq_norm_sq] at hp
  have hn : ‖c‖ = ‖inner ℂ r e‖ := by rw [hre, Complex.norm_conj]
  rw [hn] at hp
  apply (div_le_iff₀ hq).2
  change ‖inner ℂ r e‖ ^ 2 ≤ (inner ℂ r (B r)).re * q
  nlinarith

variable [CompleteSpace E]

/-- A vector in the original operator's kernel is fixed by the regularized inverse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5480472e4dd3c2ecbbe3dde3efc87be5579b974` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
