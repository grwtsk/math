# Complete source: GRWTSK.Topology.GeneralTopology.MediumPNTLogErrorAttempt03.Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0dc5d86ecb04f4b1da97c53bd510ae6215dda30` · SHA-256 `95c2d3df62c4c27826f25f4cbd3cc0e359e76bdd742da60af9c7084de2209387`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PsiRelativeError.Variant5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PsiRelativeError.Variant5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81","mathematical_subject":"Topology.GeneralTopology","original_sha256":"5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass25/arithmetic_route/MediumPNTLogError-attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Zeta23.FromPNTPlus.MediumPNT
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics


namespace GRWTSK.Topology.GeneralTopology.PsiRelativeError.Variant5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81

set_option autoImplicit false
noncomputable section
open Filter Asymptotics
open scoped Topology
namespace ContinuousResearch.MediumPNTLogError

/-- Actual unweighted Chebyshev relative error in logarithmic coordinates. -/
def psiRelativeError (t : ℝ) : ℝ := Real.exp (-t) * Chebyshev.psi (Real.exp t) - 1

theorem psiRelativeError_eq (t : ℝ) :
    psiRelativeError t = Real.exp (-t) * (Chebyshev.psi (Real.exp t) - Real.exp t) := by
  unfold psiRelativeError
  rw [mul_sub, ← Real.exp_add]
  simp

/-- An actual unconditional source envelope, with unspecified PNT constants and real heights. -/
theorem psiRelativeError_medium_bound :
    ∃ c : ℝ, 0 < c ∧ ∃ C : ℝ, 0 < C ∧
      ∀ᶠ t : ℝ in atTop,
        |psiRelativeError t| ≤ C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
  obtain ⟨c, hc, hp⟩ := MediumPNT
  obtain ⟨C, hC, hbound⟩ := hp.exists_pos
  refine ⟨c, hc, C, hC, ?_⟩
  have hh := Real.tendsto_exp_atTop.eventually hbound.bound
  filter_upwards [hh] with t ht
  simp only [Pi.sub_apply, id_eq, Real.norm_eq_abs, Real.log_exp,
    abs_mul, abs_of_pos (Real.exp_pos _)] at ht
  rw [psiRelativeError_eq, abs_mul, abs_of_pos (Real.exp_pos _)]
  have hmul := mul_le_mul_of_nonneg_left ht (Real.exp_pos (-t)).le
  have he : Real.exp (-t) * (C * (Real.exp t * Real.exp (-c * t ^ ((1 : ℝ) / 10)))) =
      C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
    calc
      _ = C * (Real.exp (-t) * Real.exp t) * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by ring
      _ = _ := by rw [←Real.exp_add]; simp
  exact he ▸ hmul

theorem power_stretched_exp_tendsto_zero (n : ℕ) {c : ℝ} (hc : 0 < c) :
    Tendsto (fun t : ℝ => t ^ n * Real.exp (-c * t ^ ((1 : ℝ) / 10))) atTop (𝓝 0) := by
  have hp := (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero
    (10 * (n : ℝ)) c hc).comp (tendsto_rpow_atTop (by norm_num : 0 < (1 : ℝ) / 10))
  refine hp.congr' ?_
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with t ht
  congr 1
  rw [←Real.rpow_mul ht]
  convert Real.rpow_natCast t n using 1 <;> ring

/-- Every fixed polynomially weighted actual relative error tends to zero. -/
theorem psiRelativeError_mul_pow_tendsto_zero (n : ℕ) :
    Tendsto (fun t : ℝ => t ^ n * psiRelativeError t) atTop (𝓝 0) := by
  obtain ⟨c, hc, C, hC, hb⟩ := psiRelativeError_medium_bound
  have hz := (power_stretched_exp_tendsto_zero n hc).const_mul C
  apply squeeze_zero_norm' ?_ (by simpa only [mul_zero] using hz)
  filter_upwards [hb, eventually_ge_atTop (0 : ℝ)] with t ht ht0
  rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (pow_nonneg ht0 n)]
  calc
    _ ≤ t ^ n * (C * Real.exp (-c * t ^ ((1 : ℝ) / 10))) :=
      mul_le_mul_of_nonneg_left ht (pow_nonneg ht0 n)
    _ = C * (t ^ n * Real.exp (-c * t ^ ((1 : ℝ) / 10))) := by ring

end ContinuousResearch.MediumPNTLogError

set_option pp.fullNames true
set_option pp.universes true
#check MediumPNT
#print axioms MediumPNT
#print MediumPNT
#check ContinuousResearch.MediumPNTLogError.psiRelativeError
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError
#print ContinuousResearch.MediumPNTLogError.psiRelativeError
#check ContinuousResearch.MediumPNTLogError.psiRelativeError_eq
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError_eq
#print ContinuousResearch.MediumPNTLogError.psiRelativeError_eq
#check ContinuousResearch.MediumPNTLogError.psiRelativeError_medium_bound
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError_medium_bound
#print ContinuousResearch.MediumPNTLogError.psiRelativeError_medium_bound
#check ContinuousResearch.MediumPNTLogError.power_stretched_exp_tendsto_zero
#print axioms ContinuousResearch.MediumPNTLogError.power_stretched_exp_tendsto_zero
#print ContinuousResearch.MediumPNTLogError.power_stretched_exp_tendsto_zero
#check ContinuousResearch.MediumPNTLogError.psiRelativeError_mul_pow_tendsto_zero
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError_mul_pow_tendsto_zero
#print ContinuousResearch.MediumPNTLogError.psiRelativeError_mul_pow_tendsto_zero
```
