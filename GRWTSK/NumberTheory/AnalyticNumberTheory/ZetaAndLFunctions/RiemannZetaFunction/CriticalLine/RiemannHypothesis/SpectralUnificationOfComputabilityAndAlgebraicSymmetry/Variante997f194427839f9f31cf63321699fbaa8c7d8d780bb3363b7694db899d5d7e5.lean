-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShortPart.Variant10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ShortPart.Variant10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit

/-!
# Exact finite Vaughan coefficients

The arithmetic zeta is the constant-one function on positive integers; the
convolution unit is the delta at one. All cutoff equalities belong to the short
sector. These identities contain no cancellation estimate.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShortPart.Variant10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateVaughanIdentity

open ArithmeticFunction

noncomputable section

/-- Restriction to the closed short sector, as an arithmetic function. -/
def shortPart (U : ℕ) (f : ArithmeticFunction ℝ) : ArithmeticFunction ℝ :=
  ⟨fun n ↦ if n ≤ U then f n else 0, by simp⟩

/-- The complementary strict long sector. -/
def longPart (U : ℕ) (f : ArithmeticFunction ℝ) : ArithmeticFunction ℝ :=
  f - shortPart U f

theorem shortPart_apply (U n : ℕ) (f : ArithmeticFunction ℝ) :
    shortPart U f n = if n ≤ U then f n else 0 := rfl

theorem longPart_apply (U n : ℕ) (f : ArithmeticFunction ℝ) :
    longPart U f n = if U < n then f n else 0 := by
  change f n - (if n ≤ U then f n else 0) = _
  by_cases h : n ≤ U
  · simp [h, not_lt.mpr h]
  · simp [h, Nat.lt_of_not_ge h]

/-- Vaughan's identity in the actual real Dirichlet-convolution ring. -/
theorem vaughan_identity (U V : ℕ) :
    vonMangoldt = shortPart V vonMangoldt +
      shortPart U (moebius : ArithmeticFunction ℝ) * log -
      shortPart U (moebius : ArithmeticFunction ℝ) * shortPart V vonMangoldt *
        (zeta : ArithmeticFunction ℝ) +
      longPart U (moebius : ArithmeticFunction ℝ) * longPart V vonMangoldt *
        (zeta : ArithmeticFunction ℝ) := by
  have hi := coe_moebius_mul_coe_zeta (R := ℝ)
  have hl := vonMangoldt_mul_zeta
  have hm := moebius_mul_log_eq_vonMangoldt
  dsimp only [longPart]
  rw [← hl]
  calc
    vonMangoldt = (moebius : ArithmeticFunction ℝ) * vonMangoldt *
        (zeta : ArithmeticFunction ℝ) := by
      rw [mul_assoc, hl, hm]
    _ = _ := by
      have hshort : (moebius : ArithmeticFunction ℝ) * shortPart V vonMangoldt *
          (zeta : ArithmeticFunction ℝ) =
          shortPart V vonMangoldt := by
        rw [mul_right_comm, hi, one_mul]
      linear_combination hshort

/-- The exact signed long-divisor coefficient, including its value at one. -/
def beta (U n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors.filter (fun d ↦ U < d), (moebius d : ℝ)

theorem beta_eq_long_convolution (U n : ℕ) :
    beta U n = (longPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ)) n := by
  rw [coe_mul_zeta_apply]
  simp only [beta, Finset.sum_filter, longPart_apply, intCoe_apply]

theorem beta_eq_delta_sub_short (U n : ℕ) :
    beta U n = (if n = 1 then 1 else 0) -
      ∑ d ∈ n.divisors.filter (fun d ↦ d ≤ U), (moebius d : ℝ) := by
  rw [beta_eq_long_convolution, longPart, sub_mul, coe_moebius_mul_coe_zeta]
  change (1 : ArithmeticFunction ℝ) n -
    (shortPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ)) n = _
  rw [one_apply, coe_mul_zeta_apply]
  simp only [shortPart_apply, intCoe_apply, Finset.sum_filter]

theorem beta_zero_of_le (U n : ℕ) (hn : n ≤ U) : beta U n = 0 := by
  apply Finset.sum_eq_zero
  intro d hd
  have hd' := Finset.mem_filter.mp hd
  have hdn := Nat.le_of_dvd (Nat.pos_of_ne_zero (Nat.mem_divisors.mp hd'.1).2)
    (Nat.dvd_of_mem_divisors hd'.1)
  omega

theorem beta_one (U : ℕ) (hU : 1 ≤ U) : beta U 1 = 0 :=
  beta_zero_of_le U 1 hU

/-- Finite convolution against a supported weight, with every product cutoff justified. -/
theorem finite_convolution_sum (N : ℕ) (f g : ArithmeticFunction ℝ) (w : ℕ → ℝ)
    (hw : ∀ n, N < n → w n = 0) :
    (∑ n ∈ Finset.Icc 1 N, (f*g) n * w n) =
      ∑ a ∈ Finset.Icc 1 N, ∑ b ∈ Finset.Icc 1 N, f a * g b * w (a*b) := by
  classical
  simp_rw [ArithmeticFunction.mul_apply, Finset.sum_mul]
  rw [Finset.sum_sigma', ← Finset.sum_product']
  let S := (Finset.Icc 1 N ×ˢ Finset.Icc 1 N).filter (fun ab : ℕ × ℕ ↦ ab.1*ab.2 ≤ N)
  calc
    _ = ∑ ab ∈ S, f ab.1 * g ab.2 * w (ab.1*ab.2) := by
      apply Finset.sum_bij (fun a _ ↦ a.2)
      · rintro ⟨n, a, b⟩ hn
        obtain ⟨hn, hab⟩ := Finset.mem_sigma.mp hn
        obtain ⟨hab, hn0⟩ := Nat.mem_divisorsAntidiagonal.mp hab
        have ha : 0 < a := Nat.pos_of_ne_zero (left_ne_zero_of_mul (hab ▸ hn0))
        have hb : 0 < b := Nat.pos_of_ne_zero (right_ne_zero_of_mul (hab ▸ hn0))
        have haN : a ≤ N := (Nat.le_mul_of_pos_right a hb).trans (hab ▸ (Finset.mem_Icc.mp hn).2)
        have hbN : b ≤ N := (Nat.le_mul_of_pos_left b ha).trans (hab ▸ (Finset.mem_Icc.mp hn).2)
        exact Finset.mem_filter.mpr ⟨Finset.mem_product.mpr
          ⟨Finset.mem_Icc.mpr ⟨ha, haN⟩, Finset.mem_Icc.mpr ⟨hb, hbN⟩⟩,
          hab ▸ (Finset.mem_Icc.mp hn).2⟩
      · rintro ⟨n, ab⟩ hn ⟨m, cd⟩ hm heq
        have hn' := (Nat.mem_divisorsAntidiagonal.mp (Finset.mem_sigma.mp hn).2).1
        have hm' := (Nat.mem_divisorsAntidiagonal.mp (Finset.mem_sigma.mp hm).2).1
        dsimp only at heq hn' hm'
        have hnm : n = m := by rw [← hn', ← hm', heq]
        cases hnm
        cases heq
        rfl
      · rintro ⟨a,b⟩ hab
        obtain ⟨hab, hN⟩ := Finset.mem_filter.mp hab
        obtain ⟨ha,hb⟩ := Finset.mem_product.mp hab
        have hp : 0 < a*b := Nat.mul_pos (Finset.mem_Icc.mp ha).1 (Finset.mem_Icc.mp hb).1
        refine ⟨⟨a*b,(a,b)⟩, Finset.mem_sigma.mpr ⟨Finset.mem_Icc.mpr ⟨hp,hN⟩,
          Nat.mem_divisorsAntidiagonal.mpr ⟨rfl,hp.ne'⟩⟩, rfl⟩
      · rintro ⟨n, a, b⟩ hn
        rw [(Nat.mem_divisorsAntidiagonal.mp (Finset.mem_sigma.mp hn).2).1]
    _ = _ := by
      apply Finset.sum_subset (Finset.filter_subset _ _)
      intro ab hab hn
      have hcut : N < ab.1*ab.2 := by
        by_contra h
        exact hn (Finset.mem_filter.mpr ⟨hab, by omega⟩)
      rw [hw _ hcut, mul_zero]

private theorem sum_shortPart (U N : ℕ) (hU : U ≤ N) (f : ArithmeticFunction ℝ)
    (w : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, shortPart U f n * w n) = ∑ n ∈ Finset.Icc 1 U, f n * w n := by
  classical
  simp_rw [shortPart_apply, ite_mul, zero_mul]
  rw [← Finset.sum_filter]
  congr 1
  ext n
  simp only [Finset.mem_filter, Finset.mem_Icc]
  omega

private theorem sum_longPart (U N : ℕ) (f : ArithmeticFunction ℝ) (w : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, longPart U f n * w n) = ∑ n ∈ Finset.Ioc U N, f n * w n := by
  classical
  simp_rw [longPart_apply, ite_mul, zero_mul]
  rw [← Finset.sum_filter]
  congr 1
  ext n
  simp only [Finset.mem_filter, Finset.mem_Icc, Finset.mem_Ioc]
  omega

/-- Vaughan's identity after genuine finite reindexing and support-based completion. -/
theorem finite_vaughan_sum (N U V : ℕ) (hU : U ≤ N) (hV : V ≤ N)
    (w : ℕ → ℝ) (hw : ∀ n, N < n → w n = 0) :
    (∑ n ∈ Finset.Icc 1 N, vonMangoldt n * w n) =
      (∑ m ∈ Finset.Icc 1 V, vonMangoldt m * w m) +
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ k ∈ Finset.Icc 1 N, Real.log k * w (d*k)) -
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ m ∈ Finset.Icc 1 V, vonMangoldt m * ∑ k ∈ Finset.Icc 1 N, w (d*m*k)) +
      (∑ m ∈ Finset.Ioc V N, vonMangoldt m *
        ∑ n ∈ Finset.Ioc U N, beta U n * w (m*n)) := by
  have hshift (a : ℕ) (ha : 1 ≤ a) (n : ℕ) (hn : N < n) : w (a*n) = 0 :=
    hw _ (hn.trans_le (Nat.le_mul_of_pos_left n ha))
  have hi :
      (∑ n ∈ Finset.Icc 1 N,
        (shortPart U (moebius : ArithmeticFunction ℝ) * log) n * w n) =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ k ∈ Finset.Icc 1 N, Real.log k * w (d*k) := by
    rw [finite_convolution_sum N _ _ w hw]
    simp_rw [mul_assoc, ← Finset.mul_sum]
    rw [sum_shortPart U N hU]
    rfl
  have hii :
      (∑ n ∈ Finset.Icc 1 N,
        (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart V vonMangoldt *
          (zeta : ArithmeticFunction ℝ)) n * w n) =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ m ∈ Finset.Icc 1 V, vonMangoldt m * ∑ k ∈ Finset.Icc 1 N, w (d*m*k) := by
    rw [mul_assoc, finite_convolution_sum N _ _ w hw]
    simp_rw [mul_assoc, ← Finset.mul_sum]
    rw [sum_shortPart U N hU]
    apply Finset.sum_congr rfl
    intro d hd
    congr 1
    rw [finite_convolution_sum N _ _ (fun n ↦ w (d*n)) (hshift d (Finset.mem_Icc.mp hd).1)]
    simp_rw [mul_assoc, ← Finset.mul_sum]
    rw [sum_shortPart V N hV]
    apply Finset.sum_congr rfl
    intro m _
    congr 1
    apply Finset.sum_congr rfl
    intro k hk
    rw [natCoe_apply, zeta_apply_ne (by have := (Finset.mem_Icc.mp hk).1; omega), Nat.cast_one,
      one_mul]
  have hiii :
      (∑ n ∈ Finset.Icc 1 N,
        (longPart U (moebius : ArithmeticFunction ℝ) * longPart V vonMangoldt *
          (zeta : ArithmeticFunction ℝ)) n * w n) =
      ∑ m ∈ Finset.Ioc V N, vonMangoldt m *
        ∑ n ∈ Finset.Ioc U N, beta U n * w (m*n) := by
    rw [mul_comm (longPart U _), mul_assoc, finite_convolution_sum N _ _ w hw]
    simp_rw [mul_assoc, ← Finset.mul_sum]
    rw [sum_longPart]
    apply Finset.sum_congr rfl
    intro m _
    congr 1
    simp_rw [← beta_eq_long_convolution]
    symm
    apply Finset.sum_subset
    · intro n hn
      exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Ioc.mp hn).1; omega,
        (Finset.mem_Ioc.mp hn).2⟩
    · intro n hn hnot
      have hnU : n ≤ U := by
        by_contra h
        exact hnot (Finset.mem_Ioc.mpr ⟨by omega, (Finset.mem_Icc.mp hn).2⟩)
      rw [beta_zero_of_le U n hnU, zero_mul]
  have he (n : ℕ) := congrArg (fun f : ArithmeticFunction ℝ ↦ f n) (vaughan_identity U V)
  simp only [sub_eq_add_neg, ArithmeticFunction.add_apply, ArithmeticFunction.neg_apply] at he
  conv_lhs => simp only [he, add_mul, neg_mul, Finset.sum_add_distrib, Finset.sum_neg_distrib]
  rw [sum_shortPart V N hV, hi, hii, hiii]
  ring

/-- Exact floor-counting identity for the long-divisor partial sums, retaining delta at one. -/
theorem beta_partial_sum (U Y : ℕ) (hY : 1 ≤ Y) (hUY : U ≤ Y) :
    (∑ n ∈ Finset.Icc 1 Y, beta U n) =
      1 - ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((Y / d : ℕ) : ℝ) := by
  classical
  let w : ℕ → ℝ := fun n ↦ if n ≤ Y then 1 else 0
  have hw : ∀ n, Y < n → w n = 0 := fun n hn ↦ if_neg (by omega)
  have hc := finite_convolution_sum Y (shortPart U (moebius : ArithmeticFunction ℝ))
    (zeta : ArithmeticFunction ℝ) w hw
  have hleft : (∑ n ∈ Finset.Icc 1 Y,
      (shortPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ)) n * w n) =
      ∑ n ∈ Finset.Icc 1 Y,
        (shortPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ)) n := by
    apply Finset.sum_congr rfl
    intro n hn
    simp [w, (Finset.mem_Icc.mp hn).2]
  rw [hleft] at hc
  simp_rw [mul_assoc, ← Finset.mul_sum] at hc
  rw [sum_shortPart U Y hUY] at hc
  have hcount (d : ℕ) (hd : 1 ≤ d) :
      (∑ k ∈ Finset.Icc 1 Y, (zeta : ArithmeticFunction ℝ) k * w (d*k)) =
        ((Y/d : ℕ) : ℝ) := by
    have he : (Finset.Icc 1 Y).filter (fun k ↦ d*k ≤ Y) = Finset.Icc 1 (Y/d) := by
      ext k
      simp only [Finset.mem_filter, Finset.mem_Icc]
      have hd0 : 0 < d := hd
      rw [Nat.le_div_iff_mul_le hd0]
      constructor
      · rintro ⟨⟨hk,_⟩,hdk⟩
        exact ⟨hk, by simpa [Nat.mul_comm] using hdk⟩
      · rintro ⟨hk,hkd⟩
        exact ⟨⟨hk,(Nat.le_mul_of_pos_right k hd0).trans hkd⟩,
          by simpa [Nat.mul_comm] using hkd⟩
    calc
      _ = ∑ k ∈ Finset.Icc 1 Y, if d*k ≤ Y then (1 : ℝ) else 0 := by
        apply Finset.sum_congr rfl
        intro k hk
        rw [natCoe_apply, zeta_apply_ne (by have := (Finset.mem_Icc.mp hk).1; omega)]
        simp [w]
      _ = _ := by rw [← Finset.sum_filter, he]; simp
  have hs : (shortPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ)) =
      1 - longPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ) := by
    rw [longPart, sub_mul, coe_moebius_mul_coe_zeta]
    ring
  have hb (n : ℕ) : beta U n = (1 : ArithmeticFunction ℝ) n -
      (shortPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ)) n := by
    rw [hs]
    change beta U n = (1 : ArithmeticFunction ℝ) n -
      ((1 : ArithmeticFunction ℝ) n - (longPart U (moebius : ArithmeticFunction ℝ) *
        (zeta : ArithmeticFunction ℝ)) n)
    rw [← beta_eq_long_convolution]
    ring
  simp_rw [hb, one_apply, Finset.sum_sub_distrib]
  rw [hc]
  have hunit : (∑ n ∈ Finset.Icc 1 Y, if n = 1 then (1 : ℝ) else 0) = 1 := by simp [hY]
  rw [hunit]
  congr 1
  apply Finset.sum_congr rfl
  intro d hd
  rw [hcount d (Finset.mem_Icc.mp hd).1]
  rfl

end
end EstimateVaughanIdentity
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
