# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.MobiusPerronLiteralCheck.Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c04659ef147791d64d81b74d7fa14d454f9750e` · SHA-256 `b06fcc575a3110a1bc983cc82e0ee2bf22cd8f78e2e31a8e8b8012387a7653a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.MobiusDirichletReciprocal.Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.MobiusDirichletReciprocal.Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701","mathematical_subject":"Analysis.Integration","original_sha256":"6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-mobius-normalization/mobius-perron-literal-check.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SmoothedPerronKernel
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-!
The original logarithmically weighted Möbius prefix has a genuinely convergent
Perron integral in its initial half-plane. Every infinite exchange uses an
explicit summable L1 majorant. No contour shift or large-scale limit is used.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.MobiusDirichletReciprocal.Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701

set_option autoImplicit false
namespace MobiusPerronScratch
open MeasureTheory Set Filter
open scoped LSeries.notation
open FormalResearch.RiemannHypothesis.SourceComparison
open SmoothedPerronKernel MobiusPoleNumerator
noncomputable section

/-- The original Möbius Dirichlet series is the actual zeta reciprocal where it converges
absolutely. -/
theorem mobiusDirichlet_reciprocal (s : ℂ) (hs : 1 < s.re) :
    LSeries (fun n => (ArithmeticFunction.moebius n : ℂ)) s = 1 / riemannZeta s := by
  have h := ArithmeticFunction.LSeries_zeta_mul_Lseries_moebius hs
  rw [ArithmeticFunction.LSeries_zeta_eq_riemannZeta hs] at h
  have hz := riemannZeta_ne_zero_of_one_lt_re hs
  apply (eq_div_iff hz).mpr
  simpa only [mul_comm] using h

/-- The n-th original signed Perron term, with the zero index explicitly suppressed by
LSeries.term. -/
def perronTerm (c x : ℝ) (n : ℕ) (t : ℝ) : ℂ :=
  perronIntegrand c x t * LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ))
    (1 + (c : ℂ) + (t : ℂ) * Complex.I) n

/-- The norm separates the occurrence-free arithmetic coefficient from the admitted vertical
kernel. -/
theorem perronTerm_norm (c x : ℝ) (n : ℕ) (t : ℝ) :
    ‖perronTerm c x n t‖ =
      ‖LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ)) (1 + (c : ℂ)) n‖ *
        ‖perronIntegrand c x t‖ := by
  simp only [perronTerm, norm_mul, LSeries.norm_term_eq, Complex.add_re,
    Complex.one_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im,
    Complex.I_re, Complex.I_im, mul_zero, zero_mul, sub_zero, add_zero]
  ring

/-- Each original signed Perron term is genuinely integrable on the complete vertical line. -/
theorem perronTerm_integrable (c x : ℝ) (hc : 0 < c) (hx : 0 < x) (n : ℕ) :
    Integrable (perronTerm c x n) := by
  have hm : Measurable (perronTerm c x n) := by
    unfold perronTerm perronIntegrand LSeries.term
    split_ifs <;> fun_prop
  refine (integrable_norm_iff hm.aestronglyMeasurable).mp ?_
  simpa only [perronTerm_norm] using (perronIntegrand_integrable c x hc hx).norm.const_mul
    ‖LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ)) (1 + (c : ℂ)) n‖

/-- Summability of the full L1 norms is established before exchanging the infinite series and
integral. -/
theorem perronTerm_norm_integrals_summable (c x : ℝ) (hc : 0 < c) :
    Summable (fun n : ℕ => ∫ t : ℝ, ‖perronTerm c x n t‖) := by
  have hs : Summable (LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ))
      (1 + (c : ℂ))) :=
    ArithmeticFunction.LSeriesSummable_moebius_iff.mpr (by simpa using hc)
  simpa only [perronTerm_norm, integral_const_mul] using
    hs.norm.mul_right (∫ t : ℝ, ‖perronIntegrand c x t‖)

/-- The pointwise sum is the original actual zeta Perron integrand in the initial half-plane. -/
theorem perronTerm_tsum (c x : ℝ) (hc : 0 < c) (t : ℝ) :
    (∑' n : ℕ, perronTerm c x n t) =
      (x : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
        (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
          riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I)) := by
  simp only [perronTerm, tsum_mul_left]
  change perronIntegrand c x t *
    LSeries (fun m => (ArithmeticFunction.moebius m : ℂ))
      (1 + (c : ℂ) + (t : ℂ) * Complex.I) = _
  rw [mobiusDirichlet_reciprocal _ (by simpa using hc)]
  simp only [perronIntegrand, div_eq_mul_inv, mul_inv_rev, one_mul]
  ring

/-- Positive integer scaling retains exactly the original signed coefficient and source cutoff
ratio. -/
theorem perronTerm_ratio (c x : ℝ) (hx : 0 < x) (n : ℕ) (hn : 0 < n) (t : ℝ) :
    perronTerm c x n t = (ArithmeticFunction.moebius n : ℂ) / (n : ℂ) *
      perronIntegrand c (x / (n : ℝ)) t := by
  have hn0 : (n : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr hn.ne'
  have hnr : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
  rw [perronTerm, LSeries.term_of_ne_zero hn.ne']
  unfold perronIntegrand
  rw [show 1 + (c : ℂ) + (t : ℂ) * Complex.I =
      1 + ((c : ℂ) + (t : ℂ) * Complex.I) by ring,
    Complex.cpow_add _ _ hn0, Complex.cpow_one,
    Complex.ofReal_div, Complex.div_cpow_ofReal_nonneg hx.le hnr]
  push_cast
  ring

/-- The original zeta Perron integrand is genuinely integrable on every line c>0. -/
theorem mobiusPerron_integrable (c x : ℝ) (hc : 0 < c) (hx : 0 < x) :
    Integrable (fun t : ℝ => (x : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
      (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
        riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I))) := by
  have hs : Summable (LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ))
      (1 + (c : ℂ))) :=
    ArithmeticFunction.LSeriesSummable_moebius_iff.mpr (by simpa using hc)
  have hm : Measurable (fun t : ℝ => ∑' n : ℕ, perronTerm c x n t) := by
    apply Measurable.tsum
    intro n
    unfold perronTerm perronIntegrand LSeries.term
    split_ifs <;> fun_prop
  have hi := ((perronIntegrand_integrable c x hc hx).norm.const_mul
    (∑' n : ℕ, ‖LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ))
      (1 + (c : ℂ)) n‖)).mono' hm.aestronglyMeasurable
  have ht : Integrable (fun t : ℝ => ∑' n : ℕ, perronTerm c x n t) := by
    apply hi
    filter_upwards [] with t
    have hnorm : Summable (fun n : ℕ => ‖perronTerm c x n t‖) := by
      simpa only [perronTerm_norm] using hs.norm.mul_right ‖perronIntegrand c x t‖
    simpa only [perronTerm_norm, tsum_mul_right] using
        norm_tsum_le_tsum_norm hnorm
  exact ht.congr (Eventually.of_forall (perronTerm_tsum c x hc))

/-- Each positive-index signed term evaluates to the exact logarithmic strict cutoff. -/
theorem perronTerm_integral (c x : ℝ) (hc : 0 < c) (hx : 0 < x)
    (n : ℕ) (hn : 0 < n) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronTerm c x n t) =
      if (n : ℝ) < x then
        ((ArithmeticFunction.moebius n : ℂ) / (n : ℂ)) * (Real.log (x / (n : ℝ)) : ℂ)
      else 0 := by
  simp only [perronTerm_ratio c x hx n hn, integral_const_mul, ← mul_smul_comm]
  rw [elementary_perron_ratio c x (n : ℝ) hc hx (Nat.cast_pos.mpr hn)]
  split_ifs <;> simp

/-- The genuinely convergent initial-line Perron integral equals the original closed-right
logarithmic Möbius normalization; the endpoint coefficient vanishes exactly. -/
theorem logNormalization_perron (c : ℝ) (hc : 0 < c) (X : ℕ) (hX : 1 ≤ X) :
    (logNormalization X : ℂ) =
      (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ,
        (X : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
          (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
            riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I))) := by
  have hx : 0 < (X : ℝ) := by exact_mod_cast (show 0 < X by omega)
  have hswap := integral_tsum_of_summable_integral_norm
    (perronTerm_integrable c (X : ℝ) hc hx)
    (perronTerm_norm_integrals_summable c (X : ℝ) hc)
  have hi : (∫ t : ℝ, ∑' n : ℕ, perronTerm c (X : ℝ) n t) =
      ∫ t : ℝ, (X : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
        (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
          riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I)) := by
    apply integral_congr_ae
    filter_upwards [] with t
    simpa only [Complex.ofReal_natCast] using perronTerm_tsum c (X : ℝ) hc t
  rw [← hi, ← hswap, ← tsum_const_smul'']
  let F : ℕ → ℂ := fun n =>
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronTerm c (X : ℝ) n t)
  have hzero : ∀ n ∉ Finset.Icc 1 X, F n = 0 := by
    intro n hn
    by_cases hn0 : n = 0
    · subst n
      simp [F, perronTerm, LSeries.term]
    · have hnpos : 0 < n := Nat.pos_of_ne_zero hn0
      have hnx : X < n := by simp only [Finset.mem_Icc] at hn; omega
      simp only [F, perronTerm_integral c (X : ℝ) hc hx n hnpos]
      rw [if_neg (by exact_mod_cast (not_lt.mpr hnx.le))]
  change (logNormalization X : ℂ) = ∑' n : ℕ, F n
  rw [tsum_eq_sum hzero, logNormalization, Complex.ofReal_sum]
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hnpos, hnx⟩ := Finset.mem_Icc.mp hn
  rw [show F n = (1 / (2 * Real.pi) : ℝ) •
      (∫ t : ℝ, perronTerm c (X : ℝ) n t) from rfl,
    perronTerm_integral c (X : ℝ) hc hx n (by omega)]
  by_cases hlt : n < X
  · rw [if_pos (by exact_mod_cast hlt)]
    push_cast
    rfl
  · have heq : n = X := by omega
    subst n
    rw [if_neg (lt_irrefl _)]
    simp [div_self (show (X : ℝ) ≠ 0 from hx.ne')]

end
end MobiusPerronScratch

namespace MobiusPerronLiteral
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open SmoothedPerronKernel MobiusPoleNumerator MobiusPerronScratch
noncomputable section
example (s : ℂ) (hs : 1 < s.re) :
    LSeries (fun n => (ArithmeticFunction.moebius n : ℂ)) s = 1 / riemannZeta s :=
  mobiusDirichlet_reciprocal s hs
example (c x : ℝ) (n : ℕ) (t : ℝ) :
    perronTerm c x n t = perronIntegrand c x t *
      LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ))
        (1 + (c : ℂ) + (t : ℂ) * Complex.I) n := rfl
example (c x : ℝ) (n : ℕ) (t : ℝ) :
    ‖perronTerm c x n t‖ =
      ‖LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ)) (1 + (c : ℂ)) n‖ *
        ‖perronIntegrand c x t‖ := perronTerm_norm c x n t
example (c x : ℝ) (hc : 0 < c) (hx : 0 < x) (n : ℕ) :
    Integrable (perronTerm c x n) := perronTerm_integrable c x hc hx n
example (c x : ℝ) (hc : 0 < c) :
    Summable (fun n : ℕ => ∫ t : ℝ, ‖perronTerm c x n t‖) :=
  perronTerm_norm_integrals_summable c x hc
example (c x : ℝ) (hc : 0 < c) (t : ℝ) :
    (∑' n : ℕ, perronTerm c x n t) =
      (x : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
        (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
          riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I)) := perronTerm_tsum c x hc t
example (c x : ℝ) (hx : 0 < x) (n : ℕ) (hn : 0 < n) (t : ℝ) :
    perronTerm c x n t = (ArithmeticFunction.moebius n : ℂ) / (n : ℂ) *
      perronIntegrand c (x / (n : ℝ)) t := perronTerm_ratio c x hx n hn t
example (c x : ℝ) (hc : 0 < c) (hx : 0 < x) :
    Integrable (fun t : ℝ => (x : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
      (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
        riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I))) :=
  mobiusPerron_integrable c x hc hx
example (c x : ℝ) (hc : 0 < c) (hx : 0 < x) (n : ℕ) (hn : 0 < n) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronTerm c x n t) =
      if (n : ℝ) < x then
        ((ArithmeticFunction.moebius n : ℂ) / (n : ℂ)) * (Real.log (x / (n : ℝ)) : ℂ)
      else 0 := perronTerm_integral c x hc hx n hn
example (c : ℝ) (hc : 0 < c) (X : ℕ) (hX : 1 ≤ X) :
    (logNormalization X : ℂ) =
      (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ,
        (X : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
          (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
            riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I))) :=
  logNormalization_perron c hc X hX
end
end MobiusPerronLiteral
```
