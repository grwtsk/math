# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2dfRankThree01201Pa.Variantdacc1381b619d19a0549f32a168df2a42983700b9f99379ab4f0a15e8e530803

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2f126b224357aeca0d8a41c5e105d5514de2624` · SHA-256 `f60de63b7f9cff7ee8c23a9857894bfa1f7c8a191542990430a3cc2a4086202b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaTailRankThreeNumerator.Variantaa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaTailRankThreeNumerator.Variantaa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/aa/aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df--RankThree012-01-pass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailRankThreeGaps
import FormalResearch.RiemannHypothesis.ThetaTailRankThreeCriterion

/-!
# Exact source obligation for the first rank-three theta-tail flag

The compound-gap quotient has a strictly positive denominator. Its derivative
is the explicit numerator below divided by the square of that denominator.
The polynomial identity and the equivalence with antitonicity isolate the new
source inequality without assuming its sign.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaTailRankThreeNumerator.Variantaa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open Set
noncomputable section

/-- Exact derivative numerator for the compound ratio `G₀₄ / G₀₂`. -/
def thetaTailRankThreeNumerator (t : ℝ) : ℝ :=
  (deriv (deriv thetaPhi) t * thetaTail 4 t - thetaPhi t * thetaTail 2 t) *
      thetaTailGap 0 2 t -
    thetaTailGap 0 4 t *
      (deriv (deriv thetaPhi) t * thetaTail 2 t - thetaPhi t ^ 2)

/-- Scalar expansion of the rank-three compound numerator, including every sign. -/
theorem rankThree_compound_numerator_identity (p d dd t1 t2 t3 t4 : ℝ) :
    (dd * t4 - p * t2) * (d * t2 + p * t1) -
      (d * t4 + p * t3) * (dd * t2 - p ^ 2) =
    p * (dd * (t4 * t1 - t3 * t2) +
      d * (p * t4 - t2 ^ 2) + p * (p * t3 - t2 * t1)) := by
  ring

/-- The source numerator is exactly the displayed combination of three tail minors. -/
theorem thetaTailRankThreeNumerator_eq (t : ℝ) :
    thetaTailRankThreeNumerator t =
      thetaPhi t *
        (deriv (deriv thetaPhi) t *
          (thetaTail 4 t * thetaTail 1 t - thetaTail 3 t * thetaTail 2 t) +
        deriv thetaPhi t * (thetaPhi t * thetaTail 4 t - thetaTail 2 t ^ 2) +
        thetaPhi t * (thetaPhi t * thetaTail 3 t - thetaTail 2 t * thetaTail 1 t)) := by
  unfold thetaTailRankThreeNumerator
  rw [thetaTailGap_zero_succ 1, thetaTailGap_zero_succ 3]
  exact rankThree_compound_numerator_identity _ _ _ _ _ _ _

/-- Differentiation of the compound ratio is legitimate, including at zero. -/
theorem hasDerivAt_thetaTail_compoundRatio {t : ℝ} (ht : 0 ≤ t) :
    HasDerivAt (fun u => thetaTailGap 0 4 u / thetaTailGap 0 2 u)
      (thetaTailRankThreeNumerator t / thetaTailGap 0 2 t ^ 2) t := by
  convert! (hasDerivAt_thetaTailGap_zero_succ_succ 2 ht).div
    (hasDerivAt_thetaTailGap_zero_succ_succ 0 ht)
    (thetaTailGap_zero_two_positive ht).ne' using 1
  simp only [thetaTailRankThreeNumerator, thetaTail_zero]
  ring

/-- Pointwise nonpositivity of the explicit numerator is exactly the new
compound-ratio monotonicity obligation. No source sign premise is discharged here. -/
theorem thetaTail_compoundRatio_antitone_iff :
    AntitoneOn (fun t : ℝ => thetaTailGap 0 4 t / thetaTailGap 0 2 t) (Ici 0) ↔
      ∀ t : ℝ, 0 ≤ t → thetaTailRankThreeNumerator t ≤ 0 := by
  constructor
  · intro ha t ht
    have h := ha.derivWithin_nonpos (x := t)
    rw [(hasDerivAt_thetaTail_compoundRatio ht).hasDerivWithinAt.derivWithin
      (uniqueDiffOn_Ici 0 t ht)] at h
    exact (div_le_iff₀ (sq_pos_of_pos (thetaTailGap_zero_two_positive ht))).mp h |>.trans_eq
      (by ring)
  · intro hn
    apply antitoneOn_of_deriv_nonpos (convex_Ici 0)
    · intro t ht
      exact (hasDerivAt_thetaTail_compoundRatio ht).continuousAt.continuousWithinAt
    · intro t ht
      exact (hasDerivAt_thetaTail_compoundRatio (interior_subset ht)).differentiableAt
        |>.differentiableWithinAt
    · intro t ht
      rw [(hasDerivAt_thetaTail_compoundRatio (interior_subset ht)).deriv]
      exact div_nonpos_of_nonpos_of_nonneg (hn t (interior_subset ht)) (sq_nonneg _)

/-- The exact compound numerator controls the first three even tail rows. -/
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
theorem thetaTailSignRegular_three_zero_one_two_of_numerator_nonpos
    (hn : ∀ t : ℝ, 0 ≤ t → thetaTailRankThreeNumerator t ≤ 0)
    (t : Fin 3 ↪o ℝ) (ht : ∀ i, 0 ≤ t i) :
    0 ≤ (-1 : ℝ) ^ (3 * (3 - 1) / 2) *
      Matrix.det (fun i j : Fin 3 => thetaTail (2 * i.val) (t j)) := by
  have hd := thetaTail012_det_nonpos_of_numerator_nonpos hn (ht 0)
    (t.strictMono (by decide : (0 : Fin 3) < 1))
    (t.strictMono (by decide : (1 : Fin 3) < 2))
  have hm : (fun i j : Fin 3 => thetaTail (2 * i.val) (t j)) =
      !![thetaPhi (t 0), thetaPhi (t 1), thetaPhi (t 2);
        thetaTail 2 (t 0), thetaTail 2 (t 1), thetaTail 2 (t 2);
        thetaTail 4 (t 0), thetaTail 4 (t 1), thetaTail 4 (t 2)] := by
    ext i j
    fin_cases i <;> fin_cases j <;> rfl
  rw [hm]
  norm_num
  exact hd

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
