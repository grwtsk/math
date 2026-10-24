# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.LogMoments.Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83e1c3ee5bc44f243586d512b60b7b94d963a067` · SHA-256 `a420badb787df2fa799e6e24f49221eb6cf6be94b35a75efdd42361bfa5af7c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.NegativeNatRpow.Variant340ab312affc8b6398c839525afed97c9ff3909af7c8eeff4d610042d4e5977b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"340ab312affc8b6398c839525afed97c9ff3909af7c8eeff4d610042d4e5977b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.NegativeNatRpow.Variant340ab312affc8b6398c839525afed97c9ff3909af7c8eeff4d610042d4e5977b","mathematical_subject":"Analysis.Integration","original_sha256":"340ab312affc8b6398c839525afed97c9ff3909af7c8eeff4d610042d4e5977b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/count-audit/finite-wrapper-independent-review/replica/scratch/common_mean_stieltjes_20261004/LogMoments.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Tactic

/-!
Genuine improper integrability and exact logarithmic moments on the positive
half-line. These are calculus lemmas, independent of any zero-count estimate.
Originating mathematical direction, theorem selection, corrections, evaluation:
grwtsk contributors. Lean proof assistance: OpenAI Codex AI assistance.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.NegativeNatRpow.Variant340ab312affc8b6398c839525afed97c9ff3909af7c8eeff4d610042d4e5977b

set_option autoImplicit false
noncomputable section
namespace CommonMeanStieltjes
open MeasureTheory Set Filter
open scoped Topology

private theorem negative_nat_rpow {x : ℝ} (hx : 0 < x) (n : ℕ) :
    x^(-(n : ℝ)) = 1/x^n := by
  rw [Real.rpow_neg hx.le, Real.rpow_natCast, one_div]

/-- Integrability of an inverse power with a positive lower endpoint. -/
theorem inverse_power_integrable (k : ℕ) (hk : 0 < k) (T : ℝ) (hT : 0 < T) :
    IntegrableOn (fun x : ℝ => 1/x^(k+1)) (Ioi T) := by
  have hp : (-(k+1 : ℕ) : ℝ) < -1 := by exact_mod_cast (by omega : -(k+1 : ℤ) < -1)
  have hi := integrableOn_Ioi_rpow_of_lt hp hT
  apply hi.congr_fun _ measurableSet_Ioi
  intro x hx
  exact negative_nat_rpow (hT.trans hx) (k+1)

/-- Exact inverse-power improper integral, with integrability proved above. -/
theorem inverse_power_integral (k : ℕ) (hk : 0 < k) (T : ℝ) (hT : 0 < T) :
    (∫ x : ℝ in Ioi T, 1/x^(k+1)) = 1/((k : ℝ)*T^k) := by
  have hp : (-(k+1 : ℕ) : ℝ) < -1 := by exact_mod_cast (by omega : -(k+1 : ℤ) < -1)
  have he : (∫ x : ℝ in Ioi T, 1/x^(k+1)) =
      ∫ x : ℝ in Ioi T, x^(-(k+1 : ℕ) : ℝ) := by
    apply setIntegral_congr_fun measurableSet_Ioi
    intro x hx
    exact (negative_nat_rpow (hT.trans hx) (k+1)).symm
  rw [he, integral_Ioi_rpow_of_lt hp hT]
  have he' : (-(k+1 : ℕ) : ℝ)+1 = -(k : ℝ) := by push_cast; ring
  rw [he', negative_nat_rpow hT k]
  ring

private def logMomentPrimitive (k : ℕ) (T x : ℝ) : ℝ :=
  -(Real.log x-Real.log T+1/(k : ℝ))/((k : ℝ)*x^k)

private theorem log_moment_primitive_derivative (k : ℕ) (hk : 0 < k)
    (T x : ℝ) (hT : 0 < T) (hx : 0 < x) :
    HasDerivAt (logMomentPrimitive k T) (Real.log (x/T)/x^(k+1)) x := by
  have hkn : (k : ℝ) ≠ 0 := by exact_mod_cast hk.ne'
  have hxn : x ≠ 0 := hx.ne'
  have hpow : x^(k-1)*x = x^k := by rw [← pow_succ, Nat.sub_add_cancel hk]
  have h := ((Real.hasDerivAt_log hxn).sub_const (Real.log T)).add_const (1/(k : ℝ))
  have hd := h.neg.div (((hasDerivAt_id x).pow k).const_mul (k : ℝ))
    (mul_ne_zero hkn (pow_ne_zero _ hxn))
  convert! hd using 1
  rw [Real.log_div hxn hT.ne']
  dsimp
  field_simp
  simp only [pow_succ]
  rw [← hpow]
  ring

private theorem log_moment_primitive_tendsto (k : ℕ) (hk : 0 < k) (T : ℝ) :
    Tendsto (logMomentPrimitive k T) atTop (𝓝 0) := by
  have hl : Tendsto (fun x : ℝ => Real.log x/x^k) atTop (𝓝 0) := by
    simpa only [Real.rpow_natCast] using
      (isLittleO_log_rpow_atTop (Nat.cast_pos.mpr hk : (0 : ℝ) < k)).tendsto_div_nhds_zero
  have hi : Tendsto (fun x : ℝ => 1/x^k) atTop (𝓝 0) := by
    have hi := (tendsto_pow_atTop hk.ne' :
      Tendsto (fun x : ℝ => x^k) atTop atTop).inv_tendsto_atTop
    convert! hi using 1
    ext x
    simp only [Pi.inv_apply, one_div]
  have h := ((hl.sub (hi.const_mul (Real.log T))).add
    (hi.const_mul (1/(k : ℝ)))).div_const (k : ℝ) |>.neg
  simp only [mul_zero, sub_zero, zero_add, zero_div, neg_zero] at h
  apply h.congr
  intro x
  unfold logMomentPrimitive
  ring

private theorem log_ratio_power_nonnegative (k : ℕ) (T x : ℝ)
    (hT : 0 < T) (hx : T < x) : 0 ≤ Real.log (x/T)/x^(k+1) := by
  have hxT : 1 ≤ x/T := (le_div_iff₀ hT).mpr (by simpa using hx.le)
  exact div_nonneg (Real.log_nonneg hxT) (pow_nonneg (hT.trans hx).le _)

/-- The logarithmic moment is genuinely integrable; no count theorem is used. -/
theorem log_ratio_power_integrable (k : ℕ) (hk : 0 < k) (T : ℝ) (hT : 0 < T) :
    IntegrableOn (fun x : ℝ => Real.log (x/T)/x^(k+1)) (Ioi T) := by
  apply integrableOn_Ioi_deriv_of_nonneg'
    (g := logMomentPrimitive k T) (l := 0)
  · intro x hx
    exact log_moment_primitive_derivative k hk T x hT (hT.trans_le hx)
  · intro x hx
    exact log_ratio_power_nonnegative k T x hT hx
  · exact log_moment_primitive_tendsto k hk T

/-- Exact logarithmic ratio moment for every positive integer power. -/
theorem log_ratio_power_integral (k : ℕ) (hk : 0 < k) (T : ℝ) (hT : 0 < T) :
    (∫ x : ℝ in Ioi T, Real.log (x/T)/x^(k+1)) = 1/((k : ℝ)^2*T^k) := by
  have hi := integral_Ioi_of_hasDerivAt_of_nonneg'
    (g := logMomentPrimitive k T) (l := 0)
    (fun x hx => log_moment_primitive_derivative k hk T x hT (hT.trans_le hx))
    (fun x hx => log_ratio_power_nonnegative k T x hT hx)
    (log_moment_primitive_tendsto k hk T)
  rw [hi]
  unfold logMomentPrimitive
  ring

theorem log_ratio_sixth_integrable (T : ℝ) (hT : 0 < T) :
    IntegrableOn (fun x : ℝ => Real.log (x/T)/x^6) (Ioi T) := by
  exact log_ratio_power_integrable 5 (by norm_num) T hT

theorem log_ratio_sixth_integral (T : ℝ) (hT : 0 < T) :
    (∫ x : ℝ in Ioi T, Real.log (x/T)/x^6) = 1/(25*T^5) := by
  convert log_ratio_power_integral 5 (by norm_num) T hT using 1; norm_num

theorem log_ratio_seventh_integrable (T : ℝ) (hT : 0 < T) :
    IntegrableOn (fun x : ℝ => Real.log (x/T)/x^7) (Ioi T) := by
  exact log_ratio_power_integrable 6 (by norm_num) T hT

theorem log_ratio_seventh_integral (T : ℝ) (hT : 0 < T) :
    (∫ x : ℝ in Ioi T, Real.log (x/T)/x^7) = 1/(36*T^6) := by
  convert log_ratio_power_integral 6 (by norm_num) T hT using 1; norm_num

end CommonMeanStieltjes
```
