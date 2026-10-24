# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualZeroFreeHeadGapNative01.Variantf3cbb3416adb19924d4d0a7b67665e9863139ed3b9c2c757550a63f5d2bef2ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cda9d459fd87c4063959537e5c3e75aa1ae89900` · SHA-256 `2cee031cc17d5e048b8af25ad96338a548998168d23e7ef72302b15be0d6949a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualZeroUpperGap.Variantf621f093508a942c8edf13dd156d30c7a148d633a268a4e9d1a14c925fb4ab4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f621f093508a942c8edf13dd156d30c7a148d633a268a4e9d1a14c925fb4ab4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualZeroUpperGap.Variantf621f093508a942c8edf13dd156d30c7a148d633a268a4e9d1a14c925fb4ab4f","mathematical_subject":"Topology.GeneralTopology","original_sha256":"f621f093508a942c8edf13dd156d30c7a148d633a268a4e9d1a14c925fb4ab4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-bessel-contour-recovery/SourceActualZeroFreeHeadGap-native01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualCriticalZeroHead
import Zeta23.FromPNTPlus.ZetaBounds

/-!
The genuine classical zero-free strip gives an actual-carrier gap at each finite
height. At the accepted exponential moving height this gap only subtracts an
inverse eighth-power correction from the source exponential exponent. The low
ordinate prefix |Im rho| <= 3 remains outside the gap theorem and is never deleted.
The growing scalar allowance below is not a lower bound for any signed zero sum.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Topology.GeneralTopology.ActualZeroUpperGap.Variantf621f093508a942c8edf13dd156d30c7a148d633a268a4e9d1a14c925fb4ab4f

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualZeroFreeHeadGap
open Zeta23 Set Filter
open scoped Topology
open SourceActualBumpMovingHeight
noncomputable section

private theorem actual_zero_upper_gap (a : ℝ)
    (hf : ∀ (sigma t : ℝ), 3 < |t| →
      sigma ∈ Ico (1 - a / (Real.log |t|)^9) 1 →
      riemannZeta ((sigma : ℂ) + (t : ℂ) * Complex.I) ≠ 0)
    (rho : ℂ) (hrho : IsNontrivialZero rho) (ht : 3 < |rho.im|) :
    rho.re < 1 - a / (Real.log |rho.im|)^9 := by
  by_contra hn
  have hne := hf rho.re rho.im ht ⟨le_of_not_gt hn, hrho.2.2⟩
  have he : ((rho.re : ℂ) + (rho.im : ℂ) * Complex.I) = rho := by
    apply Complex.ext <;> simp
  rw [he] at hne
  exact hne hrho.1

/-- Both sides of the actual zero strip have a genuine ordinate-dependent gap. -/
theorem actualCarrier_zero_free_gap :
    ∃ a : ℝ, a ∈ Ioc 0 (1 / 2) ∧
      ∀ rho : (zetaZeros zetaSeam).carrier, 3 < |(rho : ℂ).im| →
        a / (Real.log |(rho : ℂ).im|)^9 < (rho : ℂ).re ∧
        (rho : ℂ).re < 1 - a / (Real.log |(rho : ℂ).im|)^9 := by
  obtain ⟨a, ha, hf⟩ := ZetaZeroFree
  refine ⟨a, ha, fun rho ht => ?_⟩
  have hrho : IsNontrivialZero (rho : ℂ) := rho.2
  have hu := actual_zero_upper_gap a hf rho hrho ht
  have hl := actual_zero_upper_gap a hf (reflect rho)
    (zetaSeam.reflect_zero rho hrho) (by simpa [reflect] using ht)
  have he : (reflect (rho : ℂ)).re = 1 - (rho : ℂ).re := by simp [reflect]
  have hi : (reflect (rho : ℂ)).im = (rho : ℂ).im := by simp [reflect]
  rw [he, hi] at hl
  exact ⟨by linarith, hu⟩

/-- The exact open-height head retains the low ordinate prefix; the rest has this finite gap. -/
theorem actualCarrier_below_height_gap :
    ∃ a : ℝ, a ∈ Ioc 0 (1 / 2) ∧
      ∀ R : ℝ, 3 < R → ∀ rho : (zetaZeros zetaSeam).carrier,
        3 < |(rho : ℂ).im| → |(rho : ℂ).im| < R →
        a / (Real.log R)^9 < (rho : ℂ).re ∧
        (rho : ℂ).re < 1 - a / (Real.log R)^9 := by
  obtain ⟨a, ha, hg⟩ := actualCarrier_zero_free_gap
  refine ⟨a, ha, fun R hR rho ht hheight => ?_⟩
  have htpos : 0 < |(rho : ℂ).im| := by linarith
  have hl : 0 < Real.log |(rho : ℂ).im| := Real.log_pos (by linarith)
  have hlR : Real.log |(rho : ℂ).im| ≤ Real.log R :=
    Real.log_le_log htpos hheight.le
  have hd : (Real.log |(rho : ℂ).im|)^9 ≤ (Real.log R)^9 :=
    pow_le_pow_left₀ hl.le hlR 9
  have hratio : a / (Real.log R)^9 ≤ a / (Real.log |(rho : ℂ).im|)^9 :=
    div_le_div_of_nonneg_left ha.1.le (by positivity) hd
  have hh := hg rho ht
  exact ⟨hratio.trans_lt hh.1, hh.2.trans_le (by linarith)⟩

/-- The accepted moving height only changes the exponential exponent by O(A^-8). -/
theorem actualZeroFreeMovingExponent_eq (a c A : ℝ) (hc : 1 < c) (hA : 0 < A) :
    A - 2 * a * A / (Real.log (actualBumpMovingHeight A c))^9 =
      A - (2 * a * 5^9 / (2 * c - 1)^9) / A^8 := by
  unfold actualBumpMovingHeight
  rw [Real.log_exp]
  have hc0 : 2 * c - 1 ≠ 0 := by linarith
  have hA0 := ne_of_gt hA
  field_simp
  ring

/-- The moving-height exponent correction actually tends to zero, not to infinity. -/
theorem actualZeroFreeMovingCorrection_tendsto_zero (a c : ℝ) :
    Tendsto (fun A : ℝ => (2 * a * 5^9 / (2 * c - 1)^9) / A^8)
      atTop (𝓝 0) := by
  simpa only [div_eq_mul_inv, inv_pow, mul_zero] using
    (tendsto_inv_atTop_zero.pow 8).const_mul (2 * a * 5^9 / (2 * c - 1)^9)

/-- This method's scalar norm allowance grows; no actual signed contribution is asserted. -/
theorem actualZeroFreeMovingAllowance_tendsto_atTop (a c : ℝ) (hc : 1 < c) :
    Tendsto (fun A : ℝ =>
      Real.exp (A - 2 * a * A / (Real.log (actualBumpMovingHeight A c))^9) / A^9)
      atTop atTop := by
  have he : Tendsto (fun A : ℝ =>
      Real.exp (-(2 * a * 5^9 / (2 * c - 1)^9) / A^8)) atTop (𝓝 1) := by
    have hh := Real.continuous_exp.continuousAt.tendsto.comp
      (actualZeroFreeMovingCorrection_tendsto_zero a c).neg
    simpa only [neg_zero, Real.exp_zero, neg_div] using hh
  have hh := (Real.tendsto_exp_div_pow_atTop 9).atTop_mul_pos (by norm_num : (0 : ℝ) < 1) he
  apply hh.congr'
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
  rw [actualZeroFreeMovingExponent_eq a c A hc hA, Real.exp_sub]
  simp only [Real.exp_neg, neg_div]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualZeroFreeHeadGap
```
