-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.XiIteratedDerivOdd.Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.XiIteratedDerivOdd.Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula
import Mathlib.Analysis.Complex.TaylorSeries
import Mathlib.Analysis.Complex.Polynomial.Basic
import Mathlib.Analysis.Analytic.OfScalars
import Mathlib.Analysis.Analytic.ChangeOrigin
import Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn

/-!
# Entire reconstruction from the actual xi Taylor coefficients

The existing theta derivative formula supplies the parity and reality needed
for the literal squared-variable series. This proves `XiToeplitz.TaylorDescent`
and locally uniform reconstruction of the actual spectral xi function.
No finite section is asserted to be real-rooted, and no positive metric or
vanishing metric-adjoint defect is assumed or obtained here.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.XiIteratedDerivOdd.Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685

namespace FormalResearch.RiemannHypothesis.XiReconstruction
open XiToeplitz ThetaPositiveLift
open Filter MeasureTheory Set
open scoped Topology
noncomputable section

/-- Every odd complex derivative at the center vanishes by the actual theta transform. -/
theorem xi_iteratedDeriv_odd (n : ℕ) :
    iteratedDeriv (2 * n + 1) xi (1 / 2) = 0 := by
  rw [← iteratedDeriv_centeredXi_zero,
    show (fun u : ℂ => xi ((1 : ℂ) / 2 + u)) = thetaCenteredMomentJet 0
      from funext xi_centered_eq_thetaCenteredMomentJet,
    iteratedDeriv_thetaCenteredMomentJet]
  simp [thetaCenteredMomentJet, pow_add, pow_mul]

/-- The literal even derivative is real; no real part of a displaced zero is substituted. -/
theorem xi_iteratedDeriv_even_real (n : ℕ) :
    ((iteratedDeriv (2 * n) xi (1 / 2)).re : ℂ) =
      iteratedDeriv (2 * n) xi (1 / 2) := by
  rw [xi_iteratedDeriv_even_eq_thetaPhi, thetaPhi_complex_even_moment_eq]
  simp

/-- Exact normalization of the even terms in the complex Taylor series. -/
theorem even_taylor_term (n : ℕ) (u : ℂ) :
    ((2 * n).factorial : ℂ)⁻¹ • u ^ (2 * n) •
      iteratedDeriv (2 * n) xi (1 / 2) = (coefficient n : ℂ) * (u ^ 2) ^ n := by
  simp only [coefficient, Complex.ofReal_div, Complex.ofReal_natCast,
    xi_iteratedDeriv_even_real, smul_eq_mul, ← pow_mul]
  ring

/-- The actual xi function is the sum of its even Taylor terms at every complex argument. -/
theorem hasSum_centered_even (u : ℂ) :
    HasSum (fun n => (coefficient n : ℂ) * (u ^ 2) ^ n) (xi (1 / 2 + u)) := by
  let f := fun n : ℕ => (n.factorial : ℂ)⁻¹ • u ^ n • iteratedDeriv n xi (1 / 2)
  have hf : HasSum f (xi (1 / 2 + u)) := by
    simpa [f] using Complex.hasSum_taylorSeries_of_entire differentiable_xi
      ((1 : ℂ) / 2) (1 / 2 + u)
  have he : Summable (fun n => f (2 * n)) :=
    hf.summable.comp_injective (mul_right_injective₀ (two_ne_zero' ℕ))
  have ho : HasSum (fun n => f (2 * n + 1)) 0 := by
    simp only [f, xi_iteratedDeriv_odd, smul_zero]
    exact hasSum_zero
  have ht : (∑' n, f (2 * n)) = xi (1 / 2 + u) := by
    simpa using (he.hasSum.even_add_odd ho).unique hf
  rw [← ht]
  exact he.hasSum.congr_fun fun n => (even_taylor_term n u).symm

/-- The squared-variable source series converges absolutely everywhere. -/
theorem summable_centered (w : ℂ) :
    Summable (fun n => (coefficient n : ℂ) * w ^ n) := by
  obtain ⟨u, rfl⟩ := IsAlgClosed.exists_pow_nat_eq w (by norm_num : 0 < (2 : ℕ))
  exact (hasSum_centered_even u).summable

/-- The squared-variable descent recovers xi, including its original constant. -/
theorem centeredSeries_sq (u : ℂ) : centeredSeries (u ^ 2) = xi (1 / 2 + u) :=
  (hasSum_centered_even u).tsum_eq

/-- The source-derived scalar power series has infinite convergence radius. -/
theorem centeredSeries_radius :
    (FormalMultilinearSeries.ofScalars ℂ (fun n => (coefficient n : ℂ))).radius = ⊤ := by
  apply FormalMultilinearSeries.radius_eq_top_of_summable_norm
  intro r
  have h := (summable_centered (r : ℂ)).norm
  simpa only [norm_mul, norm_pow, FormalMultilinearSeries.ofScalars_norm,
    Complex.norm_real, Real.norm_of_nonneg r.coe_nonneg] using h

/-- The descended series is entire. -/
theorem differentiable_centeredSeries : Differentiable ℂ centeredSeries := by
  let p := FormalMultilinearSeries.ofScalars ℂ (fun n => (coefficient n : ℂ))
  have heq : p.sum = centeredSeries := by
    funext w
    exact FormalMultilinearSeries.ofScalars_sum_eq _ w
  have ha := (FormalMultilinearSeries.analyticOnNhd (p := p))
  rw [show p.radius = ⊤ from centeredSeries_radius, Metric.eball_top, heq] at ha
  exact differentiableOn_univ.mp ha.differentiableOn

/-- Unconditional proof of the unchanged, previously open Taylor-descent target. -/
theorem taylorDescent : TaylorDescent :=
  ⟨summable_centered, differentiable_centeredSeries, centeredSeries_sq⟩

/-- The actual completed xi function in the full complex spectral coordinate. -/
def spectralXi (z : ℂ) : ℂ := xi (1 / 2 + Complex.I * z)

/-- Raw even Taylor sections, retaining the actual constant coefficient. -/
def spectralSection (n : ℕ) (z : ℂ) : ℂ :=
  ∑ k ∈ Finset.range (n + 1), (coefficient k : ℂ) * (-z ^ 2) ^ k

/-- The full complex spectral coordinate is obtained by substituting minus the square. -/
theorem centeredSeries_spectral (z : ℂ) : centeredSeries (-z ^ 2) = spectralXi z := by
  have h := centeredSeries_sq (Complex.I * z)
  simpa [spectralXi, mul_pow, Complex.I_sq] using h

/-- The limiting spectral function is not identically zero: its value at zero is nonzero. -/
theorem spectralXi_zero_ne : spectralXi 0 ≠ 0 := by
  have h := coefficient_zero_pos
  rw [coefficient_zero] at h
  simpa [spectralXi] using (show xi (1 / 2) ≠ 0 by
    intro he; rw [he] at h; norm_num at h)

/-- Raw source Taylor sections converge uniformly on every closed complex disk. -/
theorem spectralSection_uniform (R : ℝ) (hR : 0 ≤ R) :
    TendstoUniformlyOn spectralSection spectralXi atTop (Metric.closedBall 0 R) := by
  have hs := (summable_centered ((R : ℂ) ^ 2)).norm
  have hmajor : Summable (fun n => ‖(coefficient n : ℂ)‖ * (R ^ 2) ^ n) := by
    simpa [norm_mul, norm_pow, Complex.norm_real, Real.norm_of_nonneg hR] using hs
  have h := tendstoUniformlyOn_tsum_nat (f := fun (n : ℕ) (z : ℂ) =>
    (coefficient n : ℂ) * (-z ^ 2) ^ n) hmajor (s := Metric.closedBall 0 R) ?_
  · have h' : TendstoUniformlyOn (fun n z => ∑ k ∈ Finset.range (n + 1),
        (coefficient k : ℂ) * (-z ^ 2) ^ k)
        (fun z => ∑' k, (coefficient k : ℂ) * (-z ^ 2) ^ k) atTop
        (Metric.closedBall 0 R) := fun s hs =>
      (Filter.tendsto_add_atTop_nat 1).eventually (h s hs)
    change TendstoUniformlyOn spectralSection
      (fun z => centeredSeries (-z ^ 2)) atTop (Metric.closedBall 0 R) at h'
    simpa only [centeredSeries_spectral] using h'
  · intro n z hz
    have hzR : ‖z‖ ≤ R := by simpa using hz
    simp only [norm_mul, norm_pow, norm_neg]
    exact mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (sq_nonneg _)
      (pow_le_pow_left₀ (norm_nonneg z) hzR 2) n) (norm_nonneg _)

/-- Uniform disk convergence gives locally uniform convergence throughout the complex plane. -/
theorem spectralSection_locallyUniform :
    TendstoLocallyUniformly spectralSection spectralXi atTop := by
  apply tendstoLocallyUniformly_iff_forall_isCompact.mpr
  intro K hK
  obtain ⟨R, hR, hKR⟩ := hK.isBounded.subset_closedBall_lt 0 (0 : ℂ)
  exact (spectralSection_uniform R hR.le).mono hKR

end
end FormalResearch.RiemannHypothesis.XiReconstruction
