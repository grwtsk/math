-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AbsAddSixteen.Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.AbsAddSixteen.Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/f42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourRemainderBounds

/-!
# Rank-four determinant perturbation bound

This module performs the finite algebra after the seven coordinate remainder
bounds.  It retains cancellation of the dominant determinant, bounds each
quartic monomial perturbation, and factors the resulting error as A^16 times a
quartic polynomial in z = exp(-3A).

No scalar exponential comparison with the dominant budget is proved here.
That is the next analytic obligation.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AbsAddSixteen.Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

private theorem abs_add_sixteen
    (a b c d e f g h i j k l m n o p : ℝ) :
    |a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p| ≤
      |a| + |b| + |c| + |d| + |e| + |f| + |g| + |h| +
        |i| + |j| + |k| + |l| + |m| + |n| + |o| + |p| := by
  linarith only [
    abs_add_le a b,
    abs_add_le (a + b) c,
    abs_add_le (a + b + c) d,
    abs_add_le (a + b + c + d) e,
    abs_add_le (a + b + c + d + e) f,
    abs_add_le (a + b + c + d + e + f) g,
    abs_add_le (a + b + c + d + e + f + g) h,
    abs_add_le (a + b + c + d + e + f + g + h) i,
    abs_add_le (a + b + c + d + e + f + g + h + i) j,
    abs_add_le (a + b + c + d + e + f + g + h + i + j) k,
    abs_add_le (a + b + c + d + e + f + g + h + i + j + k) l,
    abs_add_le (a + b + c + d + e + f + g + h + i + j + k + l) m,
    abs_add_le (a + b + c + d + e + f + g + h + i + j + k + l + m) n,
    abs_add_le (a + b + c + d + e + f + g + h + i + j + k + l + m + n) o,
    abs_add_le
      (a + b + c + d + e + f + g + h + i + j + k + l + m + n + o) p]

private theorem triple_perturbation_bound4
    {a b c e f g A B C E F G : ℝ}
    (ha : |a| ≤ A) (hb : |b| ≤ B) (hc : |c| ≤ C)
    (he : |e| ≤ E) (hf : |f| ≤ F) (hg : |g| ≤ G) :
    |(a + e) * (b + f) * (c + g) - a * b * c| ≤
      (A + E) * (B + F) * (C + G) - A * B * C := by
  have hA := (abs_nonneg a).trans ha
  have hB := (abs_nonneg b).trans hb
  have hC := (abs_nonneg c).trans hc
  have hE := (abs_nonneg e).trans he
  have hF := (abs_nonneg f).trans hf
  have hG := (abs_nonneg g).trans hg
  calc
    _ = |a * b * g + a * f * c + e * b * c +
          a * f * g + e * b * g + e * f * c + e * f * g| := by
      congr 1
      ring
    _ ≤ |a * b * g| + |a * f * c| + |e * b * c| +
          |a * f * g| + |e * b * g| + |e * f * c| + |e * f * g| := by
      linarith only [
        abs_add_le (a * b * g) (a * f * c),
        abs_add_le (a * b * g + a * f * c) (e * b * c),
        abs_add_le (a * b * g + a * f * c + e * b * c) (a * f * g),
        abs_add_le (a * b * g + a * f * c + e * b * c + a * f * g) (e * b * g),
        abs_add_le (a * b * g + a * f * c + e * b * c + a * f * g + e * b * g)
          (e * f * c),
        abs_add_le
          (a * b * g + a * f * c + e * b * c + a * f * g + e * b * g + e * f * c)
          (e * f * g)]
    _ ≤ A * B * G + A * F * C + E * B * C +
          A * F * G + E * B * G + E * F * C + E * F * G := by
      simp only [abs_mul]
      gcongr
    _ = _ := by ring

private theorem quadruple_perturbation_bound
    {a b c d e f g h A B C D E F G H : ℝ}
    (ha : |a| ≤ A) (hb : |b| ≤ B) (hc : |c| ≤ C) (hd : |d| ≤ D)
    (he : |e| ≤ E) (hf : |f| ≤ F) (hg : |g| ≤ G) (hh : |h| ≤ H) :
    |(a + e) * (b + f) * (c + g) * (d + h) - a * b * c * d| ≤
      (A + E) * (B + F) * (C + G) * (D + H) - A * B * C * D := by
  have hABC := triple_perturbation_bound4 ha hb hc he hf hg
  have hdSum : |d + h| ≤ D + H :=
    (abs_add_le d h).trans (add_le_add hd hh)
  have hA0 : 0 ≤ A := (abs_nonneg a).trans ha
  have hB0 : 0 ≤ B := (abs_nonneg b).trans hb
  have hC0 : 0 ≤ C := (abs_nonneg c).trans hc
  have hAB0 : 0 ≤ A * B := mul_nonneg hA0 hB0
  have hABC0 : |a * b * c| ≤ A * B * C := by
    rw [abs_mul, abs_mul]
    exact mul_le_mul (mul_le_mul ha hb (abs_nonneg b) hA0) hc
      (abs_nonneg c) hAB0
  have hABCnonneg :
      0 ≤ (A + E) * (B + F) * (C + G) - A * B * C :=
    (abs_nonneg _).trans hABC
  have hABCboxnonneg : 0 ≤ A * B * C :=
    mul_nonneg hAB0 hC0
  calc
    _ = |(((a + e) * (b + f) * (c + g) - a * b * c) * (d + h)) +
          (a * b * c) * h| := by
      congr 1
      ring
    _ ≤ |(a + e) * (b + f) * (c + g) - a * b * c| * |d + h| +
          |a * b * c| * |h| := by
      simpa only [abs_mul] using
        (abs_add_le
          (((a + e) * (b + f) * (c + g) - a * b * c) * (d + h))
          ((a * b * c) * h))
    _ ≤ ((A + E) * (B + F) * (C + G) - A * B * C) * (D + H) +
          (A * B * C) * H := by
      exact add_le_add
        (mul_le_mul hABC hdSum (abs_nonneg _) hABCnonneg)
        (mul_le_mul hABC0 hh (abs_nonneg _) hABCboxnonneg)
    _ = _ := by ring

/-- The quartic polynomial with the absolute coefficients of the rank-four
Hankel determinant. -/
def thetaPhiJetDet4Majorant (v : Fin 7 → ℝ) : ℝ :=
  v 0 * v 2 * v 4 * v 6 +
  v 0 * v 2 * (v 5) ^ 2 +
  v 0 * (v 3) ^ 2 * v 6 +
  2 * v 0 * v 3 * v 4 * v 5 +
  v 0 * (v 4) ^ 3 +
  (v 1) ^ 2 * v 4 * v 6 +
  (v 1) ^ 2 * (v 5) ^ 2 +
  2 * v 1 * v 2 * v 3 * v 6 +
  2 * v 1 * v 2 * v 4 * v 5 +
  2 * v 1 * (v 3) ^ 2 * v 5 +
  2 * v 1 * v 3 * (v 4) ^ 2 +
  (v 2) ^ 3 * v 6 +
  2 * (v 2) ^ 2 * v 3 * v 5 +
  (v 2) ^ 2 * (v 4) ^ 2 +
  3 * v 2 * (v 3) ^ 2 * v 4 +
  (v 3) ^ 4

/-- Coordinate boxes control the complete rank-four determinant perturbation
while retaining cancellation of the unperturbed determinant. -/
theorem thetaPhiJetDet4_perturbation_bound
    (a e B E : Fin 7 → ℝ)
    (ha : ∀ k, |a k| ≤ B k)
    (he : ∀ k, |e k| ≤ E k) :
    |thetaPhiJetDet4 (fun k => a k + e k) - thetaPhiJetDet4 a| ≤
      thetaPhiJetDet4Majorant (fun k => B k + E k) -
        thetaPhiJetDet4Majorant B := by
  let delta (i j k l : Fin 7) : ℝ :=
    (a i + e i) * (a j + e j) * (a k + e k) * (a l + e l) -
      a i * a j * a k * a l
  have hd (i j k l : Fin 7) :
      |delta i j k l| ≤
        (B i + E i) * (B j + E j) * (B k + E k) * (B l + E l) -
          B i * B j * B k * B l :=
    quadruple_perturbation_bound
      (ha i) (ha j) (ha k) (ha l) (he i) (he j) (he k) (he l)
  have hi :
      thetaPhiJetDet4 (fun k => a k + e k) - thetaPhiJetDet4 a =
        delta 0 2 4 6 - delta 0 2 5 5 - delta 0 3 3 6 +
        2 * delta 0 3 4 5 - delta 0 4 4 4 - delta 1 1 4 6 +
        delta 1 1 5 5 + 2 * delta 1 2 3 6 - 2 * delta 1 2 4 5 -
        2 * delta 1 3 3 5 + 2 * delta 1 3 4 4 - delta 2 2 2 6 +
        2 * delta 2 2 3 5 + delta 2 2 4 4 - 3 * delta 2 3 3 4 +
        delta 3 3 3 3 := by
    dsimp [thetaPhiJetDet4, delta]
    ring
  rw [hi]
  have htri :
      |delta 0 2 4 6 - delta 0 2 5 5 - delta 0 3 3 6 +
        2 * delta 0 3 4 5 - delta 0 4 4 4 - delta 1 1 4 6 +
        delta 1 1 5 5 + 2 * delta 1 2 3 6 - 2 * delta 1 2 4 5 -
        2 * delta 1 3 3 5 + 2 * delta 1 3 4 4 - delta 2 2 2 6 +
        2 * delta 2 2 3 5 + delta 2 2 4 4 - 3 * delta 2 3 3 4 +
        delta 3 3 3 3| ≤
      |delta 0 2 4 6| + |delta 0 2 5 5| + |delta 0 3 3 6| +
        2 * |delta 0 3 4 5| + |delta 0 4 4 4| + |delta 1 1 4 6| +
        |delta 1 1 5 5| + 2 * |delta 1 2 3 6| + 2 * |delta 1 2 4 5| +
        2 * |delta 1 3 3 5| + 2 * |delta 1 3 4 4| + |delta 2 2 2 6| +
        2 * |delta 2 2 3 5| + |delta 2 2 4 4| + 3 * |delta 2 3 3 4| +
        |delta 3 3 3 3| := by
    have h := abs_add_sixteen
      (delta 0 2 4 6)
      (-delta 0 2 5 5)
      (-delta 0 3 3 6)
      (2 * delta 0 3 4 5)
      (-delta 0 4 4 4)
      (-delta 1 1 4 6)
      (delta 1 1 5 5)
      (2 * delta 1 2 3 6)
      (-2 * delta 1 2 4 5)
      (-2 * delta 1 3 3 5)
      (2 * delta 1 3 4 4)
      (-delta 2 2 2 6)
      (2 * delta 2 2 3 5)
      (delta 2 2 4 4)
      (-3 * delta 2 3 3 4)
      (delta 3 3 3 3)
    simpa [sub_eq_add_neg, abs_mul] using h
  apply htri.trans
  have hall :
      |delta 0 2 4 6| + |delta 0 2 5 5| + |delta 0 3 3 6| +
        2 * |delta 0 3 4 5| + |delta 0 4 4 4| + |delta 1 1 4 6| +
        |delta 1 1 5 5| + 2 * |delta 1 2 3 6| + 2 * |delta 1 2 4 5| +
        2 * |delta 1 3 3 5| + 2 * |delta 1 3 4 4| + |delta 2 2 2 6| +
        2 * |delta 2 2 3 5| + |delta 2 2 4 4| + 3 * |delta 2 3 3 4| +
        |delta 3 3 3 3| ≤
      ((B 0 + E 0) * (B 2 + E 2) * (B 4 + E 4) * (B 6 + E 6) -
          B 0 * B 2 * B 4 * B 6) +
      ((B 0 + E 0) * (B 2 + E 2) * (B 5 + E 5) * (B 5 + E 5) -
          B 0 * B 2 * B 5 * B 5) +
      ((B 0 + E 0) * (B 3 + E 3) * (B 3 + E 3) * (B 6 + E 6) -
          B 0 * B 3 * B 3 * B 6) +
      2 * ((B 0 + E 0) * (B 3 + E 3) * (B 4 + E 4) * (B 5 + E 5) -
          B 0 * B 3 * B 4 * B 5) +
      ((B 0 + E 0) * (B 4 + E 4) * (B 4 + E 4) * (B 4 + E 4) -
          B 0 * B 4 * B 4 * B 4) +
      ((B 1 + E 1) * (B 1 + E 1) * (B 4 + E 4) * (B 6 + E 6) -
          B 1 * B 1 * B 4 * B 6) +
      ((B 1 + E 1) * (B 1 + E 1) * (B 5 + E 5) * (B 5 + E 5) -
          B 1 * B 1 * B 5 * B 5) +
      2 * ((B 1 + E 1) * (B 2 + E 2) * (B 3 + E 3) * (B 6 + E 6) -
          B 1 * B 2 * B 3 * B 6) +
      2 * ((B 1 + E 1) * (B 2 + E 2) * (B 4 + E 4) * (B 5 + E 5) -
          B 1 * B 2 * B 4 * B 5) +
      2 * ((B 1 + E 1) * (B 3 + E 3) * (B 3 + E 3) * (B 5 + E 5) -
          B 1 * B 3 * B 3 * B 5) +
      2 * ((B 1 + E 1) * (B 3 + E 3) * (B 4 + E 4) * (B 4 + E 4) -
          B 1 * B 3 * B 4 * B 4) +
      ((B 2 + E 2) * (B 2 + E 2) * (B 2 + E 2) * (B 6 + E 6) -
          B 2 * B 2 * B 2 * B 6) +
      2 * ((B 2 + E 2) * (B 2 + E 2) * (B 3 + E 3) * (B 5 + E 5) -
          B 2 * B 2 * B 3 * B 5) +
      ((B 2 + E 2) * (B 2 + E 2) * (B 4 + E 4) * (B 4 + E 4) -
          B 2 * B 2 * B 4 * B 4) +
      3 * ((B 2 + E 2) * (B 3 + E 3) * (B 3 + E 3) * (B 4 + E 4) -
          B 2 * B 3 * B 3 * B 4) +
      ((B 3 + E 3) * (B 3 + E 3) * (B 3 + E 3) * (B 3 + E 3) -
          B 3 * B 3 * B 3 * B 3) := by
    linarith only [
      hd 0 2 4 6, hd 0 2 5 5, hd 0 3 3 6, hd 0 3 4 5,
      hd 0 4 4 4, hd 1 1 4 6, hd 1 1 5 5, hd 1 2 3 6,
      hd 1 2 4 5, hd 1 3 3 5, hd 1 3 4 4, hd 2 2 2 6,
      hd 2 2 3 5, hd 2 2 4 4, hd 2 3 3 4, hd 3 3 3 3]
  apply hall.trans_eq
  dsimp [thetaPhiJetDet4Majorant]
  ring

/-- Dominant-coordinate box used by the rank-four determinant estimate. -/
def thetaPhiJet7DominantBox (A : ℝ) (k : Fin 7) : ℝ :=
  2 * 4 ^ k.val * A ^ (k.val + 1)

/-- Remainder-coordinate box with the exponential scalar factored as z. -/
def thetaPhiJet7RemainderBox (A z : ℝ) (k : Fin 7) : ℝ :=
  thetaPhiJet7RemainderErrorCoefficient k * A ^ (k.val + 1) * z

/-- Exact finite-algebra factorization of the rank-four determinant error box. -/
theorem thetaPhiJetDet4_box_majorant_identity (A z : ℝ) :
    thetaPhiJetDet4Majorant
        (fun k => thetaPhiJet7DominantBox A k + thetaPhiJet7RemainderBox A z k) -
      thetaPhiJetDet4Majorant (thetaPhiJet7DominantBox A) =
    A ^ 16 *
      (372373664563200 * z +
       2242106519174774784 * z ^ 2 +
       1561848350772088012800 * z ^ 3 +
       113336795588871485128704 * z ^ 4) := by
  norm_num [thetaPhiJetDet4Majorant, thetaPhiJet7DominantBox,
    thetaPhiJet7RemainderBox, thetaPhiJet7RemainderErrorCoefficient]
  ring

/-- The verified seven-coordinate Gaussian box yields one scalar determinant
perturbation bound. -/
theorem thetaPhiJetDet4Perturbation_abs_le_scalar
    {t : ℝ} (ht : 0 ≤ t) :
    |thetaPhiJetDet4Perturbation t| ≤
      thetaModeA t ^ 16 *
        (372373664563200 * Real.exp (-3 * thetaModeA t) +
         2242106519174774784 * Real.exp (-3 * thetaModeA t) ^ 2 +
         1561848350772088012800 * Real.exp (-3 * thetaModeA t) ^ 3 +
         113336795588871485128704 * Real.exp (-3 * thetaModeA t) ^ 4) := by
  have heA : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by linarith)
  have hA : 3 ≤ thetaModeA t := by
    unfold thetaModeA
    exact (le_of_lt Real.pi_gt_three).trans
      (le_mul_of_one_le_right Real.pi_pos.le heA)
  have ha (k : Fin 7) :
      |thetaPhiDominantJet7 t k| ≤ thetaPhiJet7DominantBox (thetaModeA t) k := by
    change |thetaPhiJetPolynomial7 k (thetaModeA t)| ≤
      2 * 4 ^ k.val * thetaModeA t ^ (k.val + 1)
    exact thetaPhiJetPolynomial7_abs_le k hA
  have hr (k : Fin 7) :
      |thetaPhiRemainderJet7 t k| ≤
        thetaPhiJet7RemainderBox (thetaModeA t)
          (Real.exp (-3 * thetaModeA t)) k := by
    change |thetaPhiRemainderJet7 t k| ≤
      thetaPhiJet7RemainderErrorCoefficient k *
        thetaModeA t ^ (k.val + 1) *
          Real.exp (-3 * thetaModeA t)
    exact thetaPhiRemainderJet7_abs_le k ht
  have hbox := thetaPhiJetDet4_perturbation_bound
    (thetaPhiDominantJet7 t) (thetaPhiRemainderJet7 t)
    (thetaPhiJet7DominantBox (thetaModeA t))
    (thetaPhiJet7RemainderBox (thetaModeA t)
      (Real.exp (-3 * thetaModeA t))) ha hr
  have hdecomp :
      thetaPhiNormalizedJet7 t =
        fun k => thetaPhiDominantJet7 t k + thetaPhiRemainderJet7 t k := by
    funext k
    exact thetaPhiNormalizedJet7_eq_dominant_add_remainder t k
  unfold thetaPhiJetDet4Perturbation
  rw [hdecomp]
  rw [thetaPhiJetDet4_box_majorant_identity] at hbox
  exact hbox

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
