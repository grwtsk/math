-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.A.Variantc2a9a1ae394d4164c0e782eb11189ca8ddb115649b6c094f490c9d7f4aa7675b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2a9a1ae394d4164c0e782eb11189ca8ddb115649b6c094f490c9d7f4aa7675b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.A.Variantc2a9a1ae394d4164c0e782eb11189ca8ddb115649b6c094f490c9d7f4aa7675b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c2a9a1ae394d4164c0e782eb11189ca8ddb115649b6c094f490c9d7f4aa7675b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-euler-potential-phase-v1/SourceActualEulerPotentialPhase-native04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEulerLogarithmicPrimitive

/-!
Literal finite Mangoldt logarithmic-potential phase tests. The real part is an
actual closed cosine inventory, not a positive real function on a vertical line.
These tests retain every prime power and do not determine the signed product
with the actual Mellin slope or supply an original residual upper bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.A.Variantc2a9a1ae394d4164c0e782eb11189ca8ddb115649b6c094f490c9d7f4aa7675b

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualEulerPotentialPhase
open Complex
open SourceActualEulerLogarithmicPrimitive
noncomputable section

private def a (c : ℝ) (n : ℕ) : ℝ :=
  (ArithmeticFunction.vonMangoldt n / Real.log n) * Real.exp (-c * Real.log n)

private theorem a_nonneg (c : ℝ) (n : ℕ) : 0 ≤ a c n := by
  rcases eq_or_ne n 0 with rfl | hn0
  · simp [a]
  rcases eq_or_ne n 1 with rfl | hn1
  · simp [a]
  have hn2 : 2 ≤ n := by omega
  exact mul_nonneg (div_nonneg ArithmeticFunction.vonMangoldt_nonneg
    (Real.log_pos (by exact_mod_cast hn2)).le) (Real.exp_pos _).le

private theorem logterm_re (c t : ℝ) (n : ℕ) :
    ((((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
      Complex.exp (-((c:ℂ)+(t:ℂ)*I)*(Real.log n:ℂ))).re) =
    a c n * Real.cos (t * Real.log n) := by
  simp only [Complex.mul_re, Complex.mul_im, Complex.exp_re, Complex.ofReal_re,
    Complex.ofReal_im, Complex.I_re, Complex.I_im, Complex.neg_re, Complex.neg_im,
    Complex.add_re, Complex.add_im, zero_mul, mul_zero, add_zero, zero_add, sub_zero,
    neg_mul, Real.cos_neg, a]
  ring

/-- Exact real-phase readout of the full actual closed inventory. -/
theorem actualClosedPrimeLogPotential_re (A c t : ℝ) :
    (actualClosedPrimeLogPotential A ((c:ℂ)+(t:ℂ)*I)).re =
      ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
        ((ArithmeticFunction.vonMangoldt n / Real.log n) * Real.exp (-c * Real.log n)) *
          Real.cos (t * Real.log n) := by
  change _ = ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
    a c n * Real.cos (t * Real.log n)
  simp only [actualClosedPrimeLogPotential, Complex.re_sum, logterm_re]

/-- Actual centered potential has a nonpositive real part at every frequency. -/
theorem actualClosedPrimeLogPotential_centered_re_nonpos (A c t : ℝ) :
    (actualClosedPrimeLogPotential A ((c:ℂ)+(t:ℂ)*I) -
      actualClosedPrimeLogPotential A (c:ℂ)).re ≤ 0 := by
  have ht := actualClosedPrimeLogPotential_re A c t
  have hz := actualClosedPrimeLogPotential_re A c 0
  change _ = ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1), a c n * Real.cos (t * Real.log n) at ht
  change _ = ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1), a c n * Real.cos (0 * Real.log n) at hz
  simp only [Complex.ofReal_zero, zero_mul, add_zero, zero_mul, Real.cos_zero,
    mul_one] at hz
  simp only [Complex.sub_re, ht, hz]
  exact sub_nonpos.mpr (Finset.sum_le_sum fun n _ =>
    mul_le_of_le_one_right (a_nonneg c n) (Real.cos_le_one _))

private theorem two_in_closed (A : ℝ) (hA : 1 ≤ A) :
    2 ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1) := by
  apply Finset.mem_range.mpr
  have he : (2:ℝ) ≤ Real.exp (2*A) := by
    have h := Real.add_one_le_exp (2*A)
    linarith
  have hf : 2 ≤ ⌊Real.exp (2*A)⌋₊ := (Nat.le_floor_iff (Real.exp_pos _).le).mpr he
  omega

/-- The actual prime 2 enforces a strict quantitative centered phase drop. -/
theorem actualClosedPrimeLogPotential_centered_re_prime_two
    (A c : ℝ) (hA : 1 ≤ A) :
    (actualClosedPrimeLogPotential A ((c:ℂ)+((Real.pi/Real.log 2:ℝ):ℂ)*I) -
      actualClosedPrimeLogPotential A (c:ℂ)).re ≤
      -2 * Real.exp (-c * Real.log 2) := by
  have hl : Real.log (2:ℝ) ≠ 0 := (Real.log_pos (by norm_num)).ne'
  have ha : a c 2 = Real.exp (-c * Real.log 2) := by
    simp [a, ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 2), hl]
  have hc : Real.cos ((Real.pi/Real.log 2) * Real.log (2:ℝ)) = -1 := by
    rw [div_mul_cancel₀ _ hl, Real.cos_pi]
  have ht := actualClosedPrimeLogPotential_re A c (Real.pi/Real.log 2)
  have hz := actualClosedPrimeLogPotential_re A c 0
  change _ = ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
    a c n * Real.cos ((Real.pi/Real.log 2) * Real.log n) at ht
  change _ = ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1), a c n * Real.cos (0 * Real.log n) at hz
  simp only [Complex.ofReal_zero, zero_mul, add_zero, Real.cos_zero, mul_one] at hz
  rw [Complex.sub_re, ht, hz, ← Finset.sum_sub_distrib]
  let f : ℕ → ℝ := fun n => a c n * Real.cos ((Real.pi/Real.log 2)*Real.log n)-a c n
  have hn (n : ℕ) : f n ≤ 0 := by
    exact sub_nonpos.mpr (mul_le_of_le_one_right (a_nonneg c n) (Real.cos_le_one _))
  have he : ∑ n ∈ (Finset.range (⌊Real.exp (2*A)⌋₊+1)).erase 2, f n ≤ 0 :=
    Finset.sum_nonpos fun n _ => hn n
  have hs := Finset.sum_erase_add (Finset.range (⌊Real.exp (2*A)⌋₊+1)) f
    (two_in_closed A hA)
  change ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1), f n ≤ _
  rw [← hs]
  dsimp [f] at *
  rw [ha, hc]
  linarith

private theorem fourth_tail_step (x : ℝ) (hx : 3 ≤ x) :
    1/x^4 ≤ 1/(3*(x-1)^3)-1/(3*x^3) := by
  have hp : 0 < x := by linarith
  have hm : 0 < x-1 := by linarith
  have he : 1/(3*(x-1)^3)-1/(3*x^3) =
      (x^3-(x-1)^3)/(3*(x-1)^3*x^3) := by
    field_simp
  rw [he]
  apply (div_le_div_iff₀ (pow_pos hp 4)
    (mul_pos (mul_pos (by norm_num) (pow_pos hm 3)) (pow_pos hp 3))).mpr
  have heq : (x^3-(x-1)^3)*x^4-3*(x-1)^3*x^3 =
      x^3*(6*x^2-8*x+3) := by ring
  have hpol : 0 ≤ 6*x^2-8*x+3 := by nlinarith [sq_nonneg (x-1)]
  have hprod := mul_nonneg (pow_nonneg hp.le 3) hpol
  nlinarith [heq]

private theorem fourth_tail_sum (N : ℕ) :
    ∑ k ∈ Finset.range N, 1/((k:ℝ)+3)^4 ≤ 1/24 := by
  have hs : ∑ k ∈ Finset.range N, 1/((k:ℝ)+3)^4 ≤
      1/24-1/(3*((N:ℝ)+2)^3) := by
    induction N with
    | zero => norm_num
    | succ N ih =>
      rw [Finset.sum_range_succ]
      have h := fourth_tail_step ((N:ℝ)+3) (by positivity)
      push_cast
      convert! add_le_add ih h using 1 <;> ring
  exact hs.trans (sub_le_self _ (by positivity))

private theorem a_four_le (n : ℕ) (hn : 2 ≤ n) : a 4 n ≤ 1/(n:ℝ)^4 := by
  have hp : 0 < (n:ℝ) := by exact_mod_cast lt_of_lt_of_le (by norm_num : 0 < 2) hn
  have hl : 0 < Real.log (n:ℝ) := Real.log_pos (by exact_mod_cast hn)
  have hc : ArithmeticFunction.vonMangoldt n / Real.log (n:ℝ) ≤ 1 :=
    (div_le_one hl).mpr ArithmeticFunction.vonMangoldt_le_log
  have he : Real.exp (-4*Real.log (n:ℝ)) = 1/(n:ℝ)^4 := by
    rw [show -4*Real.log (n:ℝ) = -(Real.log (n:ℝ)*4) by ring,
      Real.exp_neg, ← Real.rpow_def_of_pos hp, Real.rpow_natCast]
    rfl
  rw [a, ← he]
  exact mul_le_of_le_one_left (Real.exp_pos _).le hc

/-- A genuine actual-source phase counterexample on a right line, at every real A≥1.
The complete remaining closed inventory is paid by a telescoping fourth-power tail. -/
theorem actualClosedPrimeLogPotential_re_negative_right_line (A : ℝ) (hA : 1 ≤ A) :
    (actualClosedPrimeLogPotential A ((4:ℂ)+((Real.pi/Real.log 2:ℝ):ℂ)*I)).re ≤ -1/48 := by
  let N := ⌊Real.exp (2*A)⌋₊+1
  have hN : 3 ≤ N := by
    have h := two_in_closed A hA
    exact Nat.succ_le_of_lt (Finset.mem_range.mp h)
  have hl : Real.log (2:ℝ) ≠ 0 := (Real.log_pos (by norm_num)).ne'
  have hf0 : a 4 0 * Real.cos ((Real.pi/Real.log 2)*Real.log (0:ℝ)) = 0 := by simp [a]
  have hf1 : a 4 1 * Real.cos ((Real.pi/Real.log 2)*Real.log (1:ℝ)) = 0 := by simp [a]
  have hf2 : a 4 2 * Real.cos ((Real.pi/Real.log 2)*Real.log (2:ℝ)) = -1/16 := by
    have ha : a 4 2 = 1/16 := by
      simp only [a, ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 2),
        div_self hl, one_mul]
      rw [show -4*Real.log (2:ℝ) = -(Real.log (2:ℝ)*4) by ring,
        Real.exp_neg, ← Real.rpow_def_of_pos (by norm_num : 0 < (2:ℝ)), Real.rpow_natCast]
      norm_num
    rw [div_mul_cancel₀ _ hl, Real.cos_pi, ha]
    norm_num
  rw [actualClosedPrimeLogPotential_re]
  change ∑ n ∈ Finset.range N, a 4 n * Real.cos ((Real.pi/Real.log 2)*Real.log n) ≤ _
  have hsplit := Finset.sum_range_add (fun n => a 4 n *
    Real.cos ((Real.pi/Real.log 2)*Real.log n)) 3 (N-3)
  rw [Nat.add_sub_of_le hN] at hsplit
  rw [hsplit]
  have hhead : ∑ n ∈ Finset.range 3,
      a 4 n * Real.cos ((Real.pi/Real.log 2)*Real.log n) = -1/16 := by
    simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add, hf0, hf1, hf2]
    norm_num
  rw [hhead]
  have htail : ∑ k ∈ Finset.range (N-3), a 4 (3+k) *
      Real.cos ((Real.pi/Real.log 2)*Real.log (3+k:ℕ)) ≤ 1/24 := by
    calc
      _ ≤ ∑ k ∈ Finset.range (N-3), 1/((k:ℝ)+3)^4 := by
        apply Finset.sum_le_sum
        intro k _
        have h := (mul_le_of_le_one_right (a_nonneg 4 (3+k))
          (Real.cos_le_one _)).trans (a_four_le (3+k) (by omega))
        simpa only [Nat.cast_add, Nat.cast_ofNat, add_comm (3:ℝ)] using h
      _ ≤ 1/24 := fourth_tail_sum (N-3)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualEulerPotentialPhase
