# thetaTail012_det_nonpos_of_numerator_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47ca3b2a1585dc8f7564ae8f37604288e9d76b9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68f44520-8077-6ae1-c9ca-17bb8fed26eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05e74586-7b14-ec78-c3c3-0170cc4ada83",
  "kind": "theorem",
  "lexical_name": "thetaTail012_det_nonpos_of_numerator_nonpos",
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
  "slug": "thetatail012-det-nonpos-of-numerator-nonpos--24db0768978f47a4edc8c3d9",
  "source": {
    "blob": "47ca3b2a1585dc8f7564ae8f37604288e9d76b9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2dfRankThree01201Pa/Variantaa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24db0768978f47a4edc8c3d948cd839d06cde9e92970421c4048224ec1109da7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2dfRankThree01201Pa/Variantaa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05e74586-7b14-ec78-c3c3-0170cc4ada83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail012_det_nonpos_of_numerator_nonpos
    (hn : ∀ t : ℝ, 0 ≤ t → thetaTailRankThreeNumerator t ≤ 0)
    {x y z : ℝ} (hx : 0 ≤ x) (hxy : x < y) (hyz : y < z) :
    Matrix.det !![thetaPhi x, thetaPhi y, thetaPhi z;
      thetaTail 2 x, thetaTail 2 y, thetaTail 2 z;
      thetaTail 4 x, thetaTail 4 y, thetaTail 4 z] ≤ 0 := by
  let g1 := fun t => thetaTail 2 t / thetaTail 0 t
  let g2 := fun t => thetaTail 4 t / thetaTail 0 t
  have hd1 t (ht : 0 ≤ t) := hasDerivAt_thetaTail_normalized 0 2 ht
  have hd2 t (ht : 0 ≤ t) := hasDerivAt_thetaTail_normalized 0 4 ht
  have hcc : Icc x z ⊆ Ici (0 : ℝ) := fun _ ht => hx.trans ht.1
  have hoo : Ioo x z ⊆ Ici (0 : ℝ) := fun _ ht => hx.trans ht.1.le
  have ha := thetaTail_compoundRatio_antitone_iff.mpr hn
  have hnorm := normalized_det_nonpos_of_antitone_deriv_ratio g1 g2
    (deriv g1) (deriv g2) hxy hyz
    (fun t ht => (hd1 t (hcc ht)).continuousAt.continuousWithinAt)
    (fun t ht => (hd2 t (hcc ht)).continuousAt.continuousWithinAt)
    (fun t ht => (hd1 t (hoo ht)).differentiableAt.hasDerivAt)
    (fun t ht => (hd2 t (hoo ht)).differentiableAt.hasDerivAt)
    (by
      intro t ht
      rw [(hd1 t (hoo ht)).deriv]
      exact div_neg_of_neg_of_pos (neg_neg_of_pos (thetaTailGap_zero_two_positive (hoo ht)))
        (sq_pos_of_pos (thetaTail_positive 0 (hoo ht))))
    (by
      intro a ha' b hb hab
      change deriv g2 b / deriv g1 b ≤ deriv g2 a / deriv g1 a
      rw [thetaTailGap_derivative_ratio 0 2 4 (hoo ha') (thetaTailGap_zero_two_positive (hoo ha')),
        thetaTailGap_derivative_ratio 0 2 4 (hoo hb) (thetaTailGap_zero_two_positive (hoo hb))]
      exact ha (hoo ha') (hoo hb) hab)
  have hy : 0 ≤ y := hx.trans hxy.le
  have hz : 0 ≤ z := hy.trans hyz.le
  have hf := det_fin_three_normalize_first_row
    !![thetaPhi x, thetaPhi y, thetaPhi z;
      thetaTail 2 x, thetaTail 2 y, thetaTail 2 z;
      thetaTail 4 x, thetaTail 4 y, thetaTail 4 z]
    (by intro j; fin_cases j <;> simp [(thetaPhi_positive x hx).ne',
      (thetaPhi_positive y hy).ne', (thetaPhi_positive z hz).ne'])
  simp only [Matrix.of_apply, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val] at hf
  rw [hf]
  exact mul_nonpos_of_nonneg_of_nonpos
    (mul_nonneg (mul_nonneg (thetaPhi_positive x hx).le (thetaPhi_positive y hy).le)
      (thetaPhi_positive z hz).le) hnorm

/-- The source obligation implies the exact sign-regularity statement for `q = (0,1,2)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2dfRankThree01201Pa/Variantaa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2dfRankThree01201Pa/Variantaa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47ca3b2a1585dc8f7564ae8f37604288e9d76b9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
