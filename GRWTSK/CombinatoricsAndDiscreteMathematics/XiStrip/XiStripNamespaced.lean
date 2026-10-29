-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ReMultisetSum.Variant6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ReMultisetSum.Variant6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/6d/6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6--XiStrip.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.XiSectionObstruction

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ReMultisetSum.Variant6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6

namespace FormalResearch.RiemannHypothesis.XiSectionObstruction
open XiToeplitz ThetaPositiveLift XiReconstruction Polynomial
noncomputable section

private lemma re_multiset_sum (s : Multiset ℂ) : s.sum.re = (s.map Complex.re).sum := by
  induction s using Multiset.induction_on with
  | empty => simp
  | cons x s ih => simp [ih]

private lemma esymm_one_eq_sum (s : Multiset ℂ) : s.esymm 1 = s.sum := by
  simp [Multiset.esymm, Multiset.powersetCard_one]

private lemma multiset_cs (s : Multiset ℝ) :
    s.sum ^ 2 ≤ (s.card : ℝ) * (s.map (· ^ 2)).sum := by
  have heq (x : ℝ) : (s.map (fun y => (y + x) ^ 2)).sum =
      (s.card : ℝ) * (x * x) + (2 * s.sum) * x + (s.map (· ^ 2)).sum := by
    induction s using Multiset.induction_on with
    | empty => simp
    | cons y s ih =>
      simp only [Multiset.map_cons, Multiset.sum_cons, Multiset.card_cons,
        Nat.cast_add, Nat.cast_one, ih]
      ring
  have h := discrim_le_zero (a := (s.card : ℝ)) (b := 2 * s.sum)
    (c := (s.map (· ^ 2)).sum) (fun x => by
      rw [← heq]
      exact Multiset.sum_nonneg (by
        intro y hy
        obtain ⟨z, _, rfl⟩ := Multiset.mem_map.mp hy
        positivity))
  unfold discrim at h
  nlinarith

private lemma sum_strip_lower (s : Multiset ℂ) (δ : ℝ)
    (h : ∀ w ∈ s, w.re ^ 2 + 4 * δ * w.re - 4 * δ ^ 2 ≤ (w ^ 2).re) :
    ((s.map (fun w => w.re ^ 2)).sum) + 4 * δ * s.sum.re -
      (s.card : ℝ) * (4 * δ ^ 2) ≤ ((s.map (· ^ 2)).sum).re := by
  induction s using Multiset.induction_on with
  | empty => simp
  | cons w s ih =>
    have hw := h w (Multiset.mem_cons_self _ _)
    have hs := ih (fun z hz => h z (Multiset.mem_cons_of_mem hz))
    simp only [Multiset.map_cons, Multiset.sum_cons, Multiset.card_cons,
      Nat.cast_add, Nat.cast_one, Complex.add_re]
    linarith

theorem sectionPolynomial_roots_sum (n : ℕ) :
    (sectionPolynomial (n + 1)).roots.sum =
      -((coefficient n / coefficient (n + 1) : ℝ) : ℂ) := by
  have h := Polynomial.coeff_eq_esymm_roots_of_splits
    (IsAlgClosed.splits (sectionPolynomial (n + 1)))
    (k := n) (by rw [sectionPolynomial_natDegree]; omega)
  rw [sectionPolynomial_coeff _ _ (by omega), sectionPolynomial_natDegree,
    sectionPolynomial_leadingCoeff] at h
  simp only [Nat.add_sub_cancel_left, pow_one, mul_neg_one, esymm_one_eq_sum] at h
  have ha : (coefficient (n + 1) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 1)).ne'
  push_cast
  field_simp
  linear_combination h

theorem spectralSection_strip_necessary (n : ℕ) (hn : 2 ≤ n) (δ : ℝ) (hδ : 0 ≤ δ)
    (hstrip : ∀ z : ℂ, spectralSection (n + 2) z = 0 → z.im ^ 2 ≤ δ) :
    coefficient (n + 1) < 5 * (n + 2 : ℕ) * δ * coefficient (n + 2) := by
  let s := (sectionPolynomial (n + 2)).roots
  have hcard : s.card = n + 2 := by
    change (sectionPolynomial (n + 2)).roots.card = n + 2
    rw [Polynomial.splits_iff_card_roots.mp (IsAlgClosed.splits _),
      sectionPolynomial_natDegree]
  let A : ℝ := coefficient (n + 1) / coefficient (n + 2)
  have hsum : s.sum.re = -A := by
    have h := sectionPolynomial_roots_sum (n + 1)
    change s.sum = -((A : ℝ) : ℂ) at h
    rw [h, Complex.neg_re, Complex.ofReal_re]
  have hpair (w : ℂ) (hw : w ∈ s) :
      w.re ^ 2 + 4 * δ * w.re - 4 * δ ^ 2 ≤ (w ^ 2).re := by
    obtain ⟨z, hz⟩ := IsAlgClosed.exists_pow_nat_eq (-w) (by norm_num : 0 < (2 : ℕ))
    have hzw : -z ^ 2 = w := by rw [hz, neg_neg]
    have hp : spectralSection (n + 2) z = 0 := by
      rw [← sectionPolynomial_eval, hzw]
      exact Polynomial.isRoot_of_mem_roots hw
    have him := hstrip z hp
    have hid : (w ^ 2).re - (w.re ^ 2 + 4 * δ * w.re - 4 * δ ^ 2) =
        4 * (z.re ^ 2 + δ) * (δ - z.im ^ 2) := by
      rw [← hzw]
      simp only [pow_two, Complex.mul_re, Complex.mul_im, Complex.neg_re, Complex.neg_im]
      ring
    have hh : 0 ≤ 4 * (z.re ^ 2 + δ) * (δ - z.im ^ 2) :=
      mul_nonneg (by positivity) (sub_nonneg.mpr him)
    linarith
  have hlow := sum_strip_lower s δ hpair
  have hcs := multiset_cs (s.map Complex.re)
  rw [Multiset.card_map, ← re_multiset_sum, hsum, hcard, Multiset.map_map] at hcs
  have hneg := sectionPolynomial_roots_square_sum_re_neg n hn
  change ((s.map (· ^ 2)).sum).re < 0 at hneg
  rw [hsum, hcard] at hlow
  let B : ℝ := (n + 2 : ℕ) * δ
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hA : 0 < A := div_pos
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 1))
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 2))
  have hquad : A ^ 2 < 4 * B * A + 4 * B ^ 2 := by
    have hh := mul_lt_mul_of_pos_left (hlow.trans_lt hneg)
      (by positivity : (0 : ℝ) < (n + 2 : ℕ))
    dsimp [B]
    dsimp only [Function.comp_def] at hcs
    nlinarith
  have hAB : A < 5 * B := by
    by_contra! hab
    have hh := mul_nonneg (sub_nonneg.mpr hab) (show 0 ≤ A + B by positivity)
    nlinarith [sq_nonneg B]
  have hapos := coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 2)
  have hh := (div_lt_iff₀ hapos).mp hAB
  simpa [A, B, mul_assoc] using hh

end
end FormalResearch.RiemannHypothesis.XiSectionObstruction
