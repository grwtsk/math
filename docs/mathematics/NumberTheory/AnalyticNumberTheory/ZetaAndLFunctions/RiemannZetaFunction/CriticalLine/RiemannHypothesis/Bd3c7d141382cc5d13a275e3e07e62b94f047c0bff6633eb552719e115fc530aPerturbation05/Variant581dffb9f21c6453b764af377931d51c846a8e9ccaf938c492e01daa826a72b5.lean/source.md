# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530aPerturbation05.Variant581dffb9f21c6453b764af377931d51c846a8e9ccaf938c492e01daa826a72b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3cdf1d08f6e4eb2b143d39cae33ed109bd3dc6a9` · SHA-256 `dfd83065a04e23348f3b41843389e63f6a0ef209d2b0467b151d7fb520c7724b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AbsAddSeven.Variantbd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.AbsAddSeven.Variantbd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/bd/bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530a--Perturbation-05.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianModeBounds


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AbsAddSeven.Variantbd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530a

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
noncomputable section

private theorem abs_add_seven (a b c d e f g : ℝ) :
    |a + b + c + d + e + f + g| ≤ |a| + |b| + |c| + |d| + |e| + |f| + |g| := by
  linarith only [abs_add_le a b, abs_add_le (a+b) c, abs_add_le (a+b+c) d,
    abs_add_le (a+b+c+d) e, abs_add_le (a+b+c+d+e) f, abs_add_le (a+b+c+d+e+f) g]

private theorem abs_sub_two (x y : ℝ) : |x-y| ≤ |x|+|y| := by
  simpa only [sub_eq_add_neg, abs_neg] using abs_add_le x (-y)

private theorem triple_perturbation_bound
    {a b c e f g A B C E F G : ℝ}
    (ha : |a| ≤ A) (hb : |b| ≤ B) (hc : |c| ≤ C)
    (he : |e| ≤ E) (hf : |f| ≤ F) (hg : |g| ≤ G) :
    |(a+e)*(b+f)*(c+g)-a*b*c| ≤ (A+E)*(B+F)*(C+G)-A*B*C := by
  have hA := (abs_nonneg a).trans ha
  have hB := (abs_nonneg b).trans hb
  have hC := (abs_nonneg c).trans hc
  have hE := (abs_nonneg e).trans he
  have hF := (abs_nonneg f).trans hf
  have hG := (abs_nonneg g).trans hg
  calc
    _ = |a*b*g+a*f*c+e*b*c+a*f*g+e*b*g+e*f*c+e*f*g| := by congr 1; ring
    _ ≤ |a*b*g|+|a*f*c|+|e*b*c|+|a*f*g|+|e*b*g|+|e*f*c|+|e*f*g| :=
      abs_add_seven _ _ _ _ _ _ _
    _ ≤ A*B*G+A*F*C+E*B*C+A*F*G+E*B*G+E*F*C+E*F*G := by
      simp only [abs_mul]
      gcongr
    _ = _ := by ring

/-- The polynomial with absolute determinant coefficients. -/
def thetaPhiJetDetMajorant (v : Fin 5 → ℝ) : ℝ :=
  v 0*v 2*v 4+2*v 1*v 2*v 3+v 0*(v 3)^2+v 4*(v 1)^2+(v 2)^3

/-- A finite box controls the determinant perturbation with all cancellations
of the unperturbed determinant retained. -/
theorem thetaPhiJetDet_perturbation_bound (a e B E : Fin 5 → ℝ)
    (ha : ∀ k, |a k| ≤ B k) (he : ∀ k, |e k| ≤ E k) :
    |thetaPhiJetDet (fun k => a k + e k) - thetaPhiJetDet a| ≤
      thetaPhiJetDetMajorant (fun k => B k + E k) - thetaPhiJetDetMajorant B := by
  let delta (i j k : Fin 5) :=
    (a i+e i)*(a j+e j)*(a k+e k)-a i*a j*a k
  have hd (i j k : Fin 5) : |delta i j k| ≤
      (B i+E i)*(B j+E j)*(B k+E k)-B i*B j*B k :=
    triple_perturbation_bound (ha i) (ha j) (ha k) (he i) (he j) (he k)
  have hi : thetaPhiJetDet (fun k => a k + e k) - thetaPhiJetDet a =
      delta 0 2 4 + 2*delta 1 2 3 - delta 0 3 3 - delta 4 1 1 - delta 2 2 2 := by
    dsimp [thetaPhiJetDet, delta]
    ring
  rw [hi]
  have ht : |delta 0 2 4 + 2*delta 1 2 3 - delta 0 3 3 - delta 4 1 1 - delta 2 2 2| ≤
      |delta 0 2 4|+2*|delta 1 2 3|+|delta 0 3 3|+|delta 4 1 1|+|delta 2 2 2| := by
    have ha2 : |(2:ℝ)*delta 1 2 3| = 2*|delta 1 2 3| := by rw [abs_mul]; norm_num
    linarith only [abs_add_le (delta 0 2 4) (2*delta 1 2 3),
      abs_sub_two (delta 0 2 4+2*delta 1 2 3) (delta 0 3 3),
      abs_sub_two (delta 0 2 4+2*delta 1 2 3-delta 0 3 3) (delta 4 1 1),
      abs_sub_two (delta 0 2 4+2*delta 1 2 3-delta 0 3 3-delta 4 1 1) (delta 2 2 2), ha2]
  have hall := add_le_add (add_le_add (add_le_add (add_le_add (hd 0 2 4)
    (mul_le_mul_of_nonneg_left (hd 1 2 3) (by norm_num : (0:ℝ)≤2))) (hd 0 3 3)) (hd 4 1 1)) (hd 2 2 2)
  apply ht.trans
  convert hall using 1
  dsimp [thetaPhiJetDetMajorant]
  ring

/-- The explicit Gaussian-mode error box gives this cubic perturbation bound. -/
theorem thetaPhiJetDet_gaussian_error_bound (a e : Fin 5 → ℝ) (A z : ℝ)
    (ha : ∀ k, |a k| ≤ 4 * 4 ^ k.val * A ^ (k.val + 1))
    (he : ∀ k, |e k| ≤ 4 * 4 ^ k.val * 3 ^ (2 * k.val + 4) *
      A ^ (k.val + 1) * z) :
    |thetaPhiJetDet (fun k => a k + e k) - thetaPhiJetDet a| ≤
      A ^ 9 * (351671943168 * z + 2307319619125248 * z ^ 2 +
        444223250467651584 * z ^ 3) := by
  have h := thetaPhiJetDet_perturbation_bound a e
    (fun k => 4 * 4 ^ k.val * A ^ (k.val + 1))
    (fun k => 4 * 4 ^ k.val * 3 ^ (2 * k.val + 4) * A ^ (k.val + 1) * z) ha he
  convert h using 1
  dsimp [thetaPhiJetDetMajorant]
  ring

private theorem exp_neg_three_le {A : ℝ} (hA : 3 ≤ A) :
    Real.exp (-3 * A) ≤ 1 / 4096 := by
  have he9 : Real.exp (9 : ℝ) = Real.exp 3 ^ 3 := by
    convert! Real.exp_nat_mul (3 : ℝ) 3 using 1 <;> norm_num
  have he : (4096 : ℝ) ≤ Real.exp (3 * A) := calc
    _ ≤ (20 : ℝ) ^ 3 := by norm_num
    _ ≤ Real.exp 3 ^ 3 := pow_le_pow_left₀ (by norm_num) thetaExpThree_gt_twenty.le 3
    _ = Real.exp 9 := he9.symm
    _ ≤ _ := Real.exp_le_exp.mpr (by linarith)
  rw [show -3 * A = -(3 * A) by ring, Real.exp_neg, ← one_div]
  exact one_div_le_one_div_of_le (by norm_num) he

/-- A uniform absolute bound for the first two polynomial modes. -/
theorem thetaPhiJet_two_modes_abs_le (k : Fin 5) {A : ℝ} (hA : 3 ≤ A) :
    |thetaPhiJetPolynomial k A +
      4 * Real.exp (-3 * A) * thetaPhiJetPolynomial k (4 * A)| ≤
        4 * 4 ^ k.val * A ^ (k.val + 1) := by
  have hAn : 0 ≤ A := by linarith
  have he := exp_neg_three_le hA
  have hp : (4 : ℝ) ^ (k.val + 2) ≤ 4096 := by fin_cases k <;> norm_num
  have hfactor : 4 * Real.exp (-3 * A) * 4 ^ (k.val + 1) ≤ 1 := by
    calc
      _ = Real.exp (-3 * A) * 4 ^ (k.val + 2) := by simp only [pow_add]; ring
      _ ≤ (1 / 4096 : ℝ) * 4096 := mul_le_mul he hp (by positivity) (by norm_num)
      _ = _ := by norm_num
  have hsecond : |4 * Real.exp (-3 * A) * thetaPhiJetPolynomial k (4 * A)| ≤
      2 * 4 ^ k.val * A ^ (k.val + 1) := by
    rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ (4:ℝ)*Real.exp (-3*A))]
    calc
      _ ≤ (4 * Real.exp (-3*A)) * (2 * 4^k.val * (4*A)^(k.val+1)) :=
        mul_le_mul_of_nonneg_left (thetaPhiJetPolynomial_abs_le k (by linarith)) (by positivity)
      _ = (4 * Real.exp (-3*A) * 4^(k.val+1)) * (2 * 4^k.val * A^(k.val+1)) := by
        rw [mul_pow]
        ring
      _ ≤ 1 * (2 * 4^k.val * A^(k.val+1)) :=
        mul_le_mul_of_nonneg_right hfactor (by positivity)
      _ = _ := one_mul _
  have h := (abs_add_le _ _).trans (add_le_add (thetaPhiJetPolynomial_abs_le k hA) hsecond)
  convert h using 1 <;> ring

/-- The complete Gaussian determinant perturbation is less than `300000`. -/
theorem thetaPhiJet_gaussian_error_lt {A : ℝ} (hA : 3 ≤ A) :
    A ^ 9 * (351671943168 * Real.exp (-8*A) +
      2307319619125248 * Real.exp (-8*A)^2 +
      444223250467651584 * Real.exp (-8*A)^3) < 300000 := by
  have hAn : 0 ≤ A := by linarith
  have hz := thetaGaussian_exp_neg_eight_le hA
  have hp := thetaGaussian_ninth_power_bound hA
  calc
    _ = (A^9 * Real.exp (-8*A)) * (351671943168 +
        2307319619125248 * Real.exp (-8*A) +
        444223250467651584 * Real.exp (-8*A)^2) := by ring
    _ ≤ (3^9/20^8 : ℝ) * (351671943168 + 2307319619125248 * (1/20^8) +
        444223250467651584 * (1/20^8)^2) := by gcongr
    _ < _ := by norm_num

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
