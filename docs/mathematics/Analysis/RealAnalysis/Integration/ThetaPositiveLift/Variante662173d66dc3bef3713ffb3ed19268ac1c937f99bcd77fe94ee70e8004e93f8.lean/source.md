# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ThetaPositiveLift.Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12a376070e8d7d4cadde391133d123f3c75677f5` · SHA-256 `3e2e927db5c38352a3de5ce446a154d83d2567c50d64c592272192ae611c9512`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.RankThreeKernel.Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.RankThreeKernel.Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b","mathematical_subject":"Analysis.Integration","original_sha256":"86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailRankThree012
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Propagation of the rank-three theta-tail sign under common tail integration

The seed theorem controls the rows `T_0,T_2,T_4`.  This module proves that a
common upper-tail integration preserves the oriented rank-three determinant
sign.  The proof uses literal column differences and a triple product integral:
after replacing the three tail columns by integrals over `(x,y]`, `(y,z]`
and `[z,∞)`, every pointwise determinant is evaluated at ordered source
nodes.  No new theta-source estimate is introduced.

All public improper tails retain the repository's canonical `Ici` convention.
Finite column differences are converted explicitly to `Ioc` set integrals.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.RankThreeKernel.Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open MeasureTheory Set
noncomputable section

/-- Scalar three-column determinant kernel. -/
def rankThreeKernel (f0 f1 f2 : ℝ → ℝ) (p : (ℝ × ℝ) × ℝ) : ℝ :=
  f0 p.1.1 * f1 p.1.2 * f2 p.2 -
    f0 p.1.1 * f2 p.1.2 * f1 p.2 -
    f0 p.1.2 * f1 p.1.1 * f2 p.2 +
    f0 p.1.2 * f2 p.1.1 * f1 p.2 +
    f0 p.2 * f1 p.1.1 * f2 p.1.2 -
    f0 p.2 * f2 p.1.1 * f1 p.1.2

/-- The scalar kernel is the ordinary 3-by-3 determinant at the three nodes. -/
theorem rankThreeKernel_eq_det (f0 f1 f2 : ℝ → ℝ) (u v w : ℝ) :
    rankThreeKernel f0 f1 f2 ((u, v), w) =
      Matrix.det !![f0 u, f0 v, f0 w;
        f1 u, f1 v, f1 w;
        f2 u, f2 v, f2 w] := by
  simp [rankThreeKernel, Matrix.det_fin_three]
  ring

private theorem triple_setIntegral_mul
    (f g h : ℝ → ℝ) (S T U : Set ℝ) :
    (∫ p in ((S ×ˢ T) ×ˢ U),
        f p.1.1 * g p.1.2 * h p.2
          ∂((volume.prod volume).prod volume)) =
      (∫ x in S, f x) * (∫ y in T, g y) * (∫ z in U, h z) := by
  calc
    _ = (∫ p in (S ×ˢ T), f p.1 * g p.2 ∂(volume.prod volume)) *
        (∫ z in U, h z) := by
      simpa [mul_assoc] using
        (setIntegral_prod_mul (μ := volume.prod volume) (ν := volume)
          (fun p : ℝ × ℝ => f p.1 * g p.2) h (S ×ˢ T) U)
    _ = _ := by
      rw [setIntegral_prod_mul (μ := volume) (ν := volume) f g S T]

private theorem triple_mul_integrableOn
    {f g h : ℝ → ℝ} {S T U : Set ℝ}
    (hf : IntegrableOn f S) (hg : IntegrableOn g T) (hh : IntegrableOn h U) :
    IntegrableOn
      (fun p : (ℝ × ℝ) × ℝ => f p.1.1 * g p.1.2 * h p.2)
      ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
  simpa only [IntegrableOn, ← Measure.prod_restrict] using
    (hf.mul_prod hg).mul_prod hh

private theorem rankThreeKernel_integrableOn
    {f0 f1 f2 : ℝ → ℝ} {S T U : Set ℝ}
    (h0S : IntegrableOn f0 S) (h0T : IntegrableOn f0 T) (h0U : IntegrableOn f0 U)
    (h1S : IntegrableOn f1 S) (h1T : IntegrableOn f1 T) (h1U : IntegrableOn f1 U)
    (h2S : IntegrableOn f2 S) (h2T : IntegrableOn f2 T) (h2U : IntegrableOn f2 U) :
    IntegrableOn (rankThreeKernel f0 f1 f2)
      ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
  have h012 := triple_mul_integrableOn h0S h1T h2U
  have h021 := triple_mul_integrableOn h0S h2T h1U
  have h102 := triple_mul_integrableOn h1S h0T h2U
  have h120 := triple_mul_integrableOn h1S h2T h0U
  have h201 := triple_mul_integrableOn h2S h0T h1U
  have h210 := triple_mul_integrableOn h2S h1T h0U
  have h := ((((h012.sub h021).sub h102).add h120).add h201).sub h210
  apply h.congr
  filter_upwards [] with p
  simp only [Pi.sub_apply, Pi.add_apply]
  unfold rankThreeKernel
  ring

/-- Multilinearity of the 3-by-3 determinant through three independent set integrals. -/
theorem det_setIntegral_columns_eq
    (f0 f1 f2 : ℝ → ℝ) (S T U : Set ℝ)
    (h0S : IntegrableOn f0 S) (h0T : IntegrableOn f0 T) (h0U : IntegrableOn f0 U)
    (h1S : IntegrableOn f1 S) (h1T : IntegrableOn f1 T) (h1U : IntegrableOn f1 U)
    (h2S : IntegrableOn f2 S) (h2T : IntegrableOn f2 T) (h2U : IntegrableOn f2 U) :
    Matrix.det !![∫ x in S, f0 x, ∫ y in T, f0 y, ∫ z in U, f0 z;
      ∫ x in S, f1 x, ∫ y in T, f1 y, ∫ z in U, f1 z;
      ∫ x in S, f2 x, ∫ y in T, f2 y, ∫ z in U, f2 z] =
      ∫ p in ((S ×ˢ T) ×ˢ U), rankThreeKernel f0 f1 f2 p
        ∂((volume.prod volume).prod volume) := by
  let a : (ℝ × ℝ) × ℝ → ℝ := fun p => f0 p.1.1 * f1 p.1.2 * f2 p.2
  let b : (ℝ × ℝ) × ℝ → ℝ := fun p => f0 p.1.1 * f2 p.1.2 * f1 p.2
  let c : (ℝ × ℝ) × ℝ → ℝ := fun p => f1 p.1.1 * f0 p.1.2 * f2 p.2
  let d : (ℝ × ℝ) × ℝ → ℝ := fun p => f1 p.1.1 * f2 p.1.2 * f0 p.2
  let e : (ℝ × ℝ) × ℝ → ℝ := fun p => f2 p.1.1 * f0 p.1.2 * f1 p.2
  let f : (ℝ × ℝ) × ℝ → ℝ := fun p => f2 p.1.1 * f1 p.1.2 * f0 p.2
  have ha : IntegrableOn a ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
    simpa [a] using triple_mul_integrableOn h0S h1T h2U
  have hb : IntegrableOn b ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
    simpa [b] using triple_mul_integrableOn h0S h2T h1U
  have hc : IntegrableOn c ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
    simpa [c] using triple_mul_integrableOn h1S h0T h2U
  have hd : IntegrableOn d ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
    simpa [d] using triple_mul_integrableOn h1S h2T h0U
  have he : IntegrableOn e ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
    simpa [e] using triple_mul_integrableOn h2S h0T h1U
  have hf : IntegrableOn f ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
    simpa [f] using triple_mul_integrableOn h2S h1T h0U
  have hk : rankThreeKernel f0 f1 f2 = ((((a - b) - c) + d) + e) - f := by
    funext p
    simp only [a, b, c, d, e, f, Pi.sub_apply, Pi.add_apply]
    unfold rankThreeKernel
    ring
  have hlin :
      (∫ p in ((S ×ˢ T) ×ˢ U), (((((a - b) - c) + d) + e) - f) p
        ∂((volume.prod volume).prod volume)) =
        (((((∫ p in ((S ×ˢ T) ×ˢ U), a p ∂((volume.prod volume).prod volume)) -
            (∫ p in ((S ×ˢ T) ×ˢ U), b p ∂((volume.prod volume).prod volume))) -
          (∫ p in ((S ×ˢ T) ×ˢ U), c p ∂((volume.prod volume).prod volume))) +
        (∫ p in ((S ×ˢ T) ×ˢ U), d p ∂((volume.prod volume).prod volume))) +
        (∫ p in ((S ×ˢ T) ×ˢ U), e p ∂((volume.prod volume).prod volume))) -
        (∫ p in ((S ×ˢ T) ×ˢ U), f p ∂((volume.prod volume).prod volume)) := by
    rw [integral_sub' ((((ha.sub hb).sub hc).add hd).add he) hf,
      integral_add' (((ha.sub hb).sub hc).add hd) he,
      integral_add' ((ha.sub hb).sub hc) hd,
      integral_sub' (ha.sub hb) hc,
      integral_sub' ha hb]
  rw [Matrix.det_fin_three]
  simp only [Matrix.of_apply, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val]
  rw [hk, hlin]
  rw [show (∫ p in ((S ×ˢ T) ×ˢ U), a p ∂((volume.prod volume).prod volume)) =
      (∫ x in S, f0 x) * (∫ y in T, f1 y) * (∫ z in U, f2 z) by
        simpa [a] using triple_setIntegral_mul f0 f1 f2 S T U,
    show (∫ p in ((S ×ˢ T) ×ˢ U), b p ∂((volume.prod volume).prod volume)) =
      (∫ x in S, f0 x) * (∫ y in T, f2 y) * (∫ z in U, f1 z) by
        simpa [b] using triple_setIntegral_mul f0 f2 f1 S T U,
    show (∫ p in ((S ×ˢ T) ×ˢ U), c p ∂((volume.prod volume).prod volume)) =
      (∫ x in S, f1 x) * (∫ y in T, f0 y) * (∫ z in U, f2 z) by
        simpa [c] using triple_setIntegral_mul f1 f0 f2 S T U,
    show (∫ p in ((S ×ˢ T) ×ˢ U), d p ∂((volume.prod volume).prod volume)) =
      (∫ x in S, f1 x) * (∫ y in T, f2 y) * (∫ z in U, f0 z) by
        simpa [d] using triple_setIntegral_mul f1 f2 f0 S T U,
    show (∫ p in ((S ×ˢ T) ×ˢ U), e p ∂((volume.prod volume).prod volume)) =
      (∫ x in S, f2 x) * (∫ y in T, f0 y) * (∫ z in U, f1 z) by
        simpa [e] using triple_setIntegral_mul f2 f0 f1 S T U,
    show (∫ p in ((S ×ˢ T) ×ˢ U), f p ∂((volume.prod volume).prod volume)) =
      (∫ x in S, f2 x) * (∫ y in T, f1 y) * (∫ z in U, f0 z) by
        simpa [f] using triple_setIntegral_mul f2 f1 f0 S T U]
  ring

/-- Determinant-preserving column subtraction. -/
theorem det_three_tail_columns_sub
    (a0 a1 a2 b0 b1 b2 c0 c1 c2 : ℝ) :
    Matrix.det !![a0, b0, c0; a1, b1, c1; a2, b2, c2] =
      Matrix.det !![a0 - b0, b0 - c0, c0;
        a1 - b1, b1 - c1, c1;
        a2 - b2, b2 - c2, c2] := by
  simp [Matrix.det_fin_three]
  ring

private theorem thetaTail_integrableOn_Ioc (r : ℕ) {x y : ℝ} (hx : 0 ≤ x) :
    IntegrableOn (thetaTail r) (Ioc x y) :=
  (thetaTail_integrableOn r).mono_set fun _ hu => hx.trans hu.1.le

/-- Difference of two canonical theta tails is exactly the finite interval piece. -/
theorem thetaTail_succ_sub_eq_Ioc
    (r : ℕ) {x y : ℝ} (hx : 0 ≤ x) (hxy : x ≤ y) :
    thetaTail (r + 1) x - thetaTail (r + 1) y =
      ∫ u in Ioc x y, thetaTail r u := by
  rw [thetaTail_succ_eq_integral r hx,
    thetaTail_succ_eq_integral r (hx.trans hxy)]
  have h := intervalIntegral.integral_Ici_sub_Ici'
    ((thetaTail_integrableOn r).mono_set (Ici_subset_Ici.mpr hx))
    ((thetaTail_integrableOn r).mono_set (Ici_subset_Ici.mpr (hx.trans hxy)))
  rw [intervalIntegral.integral_of_le hxy] at h
  exact h

/-- One common upper-tail integration preserves a nonpositive rank-three determinant. -/
theorem thetaTail_rankThree_shift
    {r s u : ℕ}
    (hsign : ∀ ⦃x y z : ℝ⦄, 0 ≤ x → x < y → y < z →
      Matrix.det !![thetaTail r x, thetaTail r y, thetaTail r z;
        thetaTail s x, thetaTail s y, thetaTail s z;
        thetaTail u x, thetaTail u y, thetaTail u z] ≤ 0)
    {x y z : ℝ} (hx : 0 ≤ x) (hxy : x < y) (hyz : y < z) :
    Matrix.det !![thetaTail (r + 1) x, thetaTail (r + 1) y, thetaTail (r + 1) z;
      thetaTail (s + 1) x, thetaTail (s + 1) y, thetaTail (s + 1) z;
      thetaTail (u + 1) x, thetaTail (u + 1) y, thetaTail (u + 1) z] ≤ 0 := by
  have hy : 0 ≤ y := hx.trans hxy.le
  have hz : 0 ≤ z := hy.trans hyz.le
  rw [det_three_tail_columns_sub]
  rw [thetaTail_succ_sub_eq_Ioc r hx hxy.le,
    thetaTail_succ_sub_eq_Ioc r hy hyz.le,
    thetaTail_succ_eq_integral r hz,
    thetaTail_succ_sub_eq_Ioc s hx hxy.le,
    thetaTail_succ_sub_eq_Ioc s hy hyz.le,
    thetaTail_succ_eq_integral s hz,
    thetaTail_succ_sub_eq_Ioc u hx hxy.le,
    thetaTail_succ_sub_eq_Ioc u hy hyz.le,
    thetaTail_succ_eq_integral u hz]
  rw [det_setIntegral_columns_eq
    (thetaTail r) (thetaTail s) (thetaTail u)
    (Ioc x y) (Ioc y z) (Ici z)
    (thetaTail_integrableOn_Ioc r hx) (thetaTail_integrableOn_Ioc r hy)
      ((thetaTail_integrableOn r).mono_set (Ici_subset_Ici.mpr hz))
    (thetaTail_integrableOn_Ioc s hx) (thetaTail_integrableOn_Ioc s hy)
      ((thetaTail_integrableOn s).mono_set (Ici_subset_Ici.mpr hz))
    (thetaTail_integrableOn_Ioc u hx) (thetaTail_integrableOn_Ioc u hy)
      ((thetaTail_integrableOn u).mono_set (Ici_subset_Ici.mpr hz))]
  apply integral_nonpos_of_ae
  filter_upwards [ae_restrict_mem
    ((measurableSet_Ioc.prod measurableSet_Ioc).prod measurableSet_Ici)] with p hp
  rcases hp with ⟨⟨hu, hv⟩, hw⟩
  have hu_nonneg : 0 ≤ p.1.1 := hx.trans hu.1.le
  have huv : p.1.1 < p.1.2 := hu.2.trans_lt hv.1
  have hvw : p.1.2 ≤ p.2 := hv.2.trans hw
  rw [rankThreeKernel_eq_det]
  rcases hvw.eq_or_lt with hEq | hlt
  · rw [← hEq]
    simp [Matrix.det_fin_three]
  · exact hsign hu_nonneg huv hlt

/-- The proved source seed propagates to every common tail shift. -/
theorem thetaTail_rankThree_consecutive_shift
    (r : ℕ) {x y z : ℝ} (hx : 0 ≤ x) (hxy : x < y) (hyz : y < z) :
    Matrix.det !![thetaTail r x, thetaTail r y, thetaTail r z;
      thetaTail (r + 2) x, thetaTail (r + 2) y, thetaTail (r + 2) z;
      thetaTail (r + 4) x, thetaTail (r + 4) y, thetaTail (r + 4) z] ≤ 0 := by
  induction r generalizing x y z with
  | zero =>
      simpa using thetaTail012_det_nonpos_of_numerator_nonpos
        (fun _ ht => thetaTailRankThreeNumerator_nonpos ht) hx hxy hyz
  | succ r ih =>
      have hs := thetaTail_rankThree_shift
        (r := r) (s := r + 2) (u := r + 4)
        (fun {x y z} hx hxy hyz => ih (x := x) (y := y) (z := z) hx hxy hyz)
        hx hxy hyz
      simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hs

/-- Every consecutive even-order triple inherits the proved rank-three orientation. -/
theorem thetaTailSignRegular_three_consecutive
    (a : ℕ) (t : Fin 3 ↪o ℝ) (ht : ∀ i, 0 ≤ t i) :
    0 ≤ (-1 : ℝ) ^ (3 * (3 - 1) / 2) *
      Matrix.det (fun i j : Fin 3 => thetaTail (2 * (a + i.val)) (t j)) := by
  have hd := thetaTail_rankThree_consecutive_shift (2 * a)
    (ht 0) (t.strictMono (by decide : (0 : Fin 3) < 1))
    (t.strictMono (by decide : (1 : Fin 3) < 2))
  have hm : (fun i j : Fin 3 => thetaTail (2 * (a + i.val)) (t j)) =
      !![thetaTail (2 * a) (t 0), thetaTail (2 * a) (t 1), thetaTail (2 * a) (t 2);
        thetaTail (2 * a + 2) (t 0), thetaTail (2 * a + 2) (t 1), thetaTail (2 * a + 2) (t 2);
        thetaTail (2 * a + 4) (t 0), thetaTail (2 * a + 4) (t 1), thetaTail (2 * a + 4) (t 2)] := by
    ext i j
    fin_cases i <;> fin_cases j <;> simp [Nat.mul_add]
  rw [hm]
  norm_num
  exact hd

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
