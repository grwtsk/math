# Complete source: GRWTSK.Analysis.SpecialFunctions.FiveModeGammaConstant.Variant15b2402e6a4a13d62261d34b32350bb25462352d524b1b6ea9ba5766aa76a1de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a00864719c29c9ca3fc171f96c3c2d120ec3a716` · SHA-256 `dcf29dc66ee3b0fdb2c885392d626f7077543a9995ab52b6c1cc9e85050a1c2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.QuarterDigammaLeOneSubThree.Variantc03e2b450ab19ee2af0be7865702c395359b6180b0b4d62e94b4682c12e0bd95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c03e2b450ab19ee2af0be7865702c395359b6180b0b4d62e94b4682c12e0bd95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.QuarterDigammaLeOneSubThree.Variantc03e2b450ab19ee2af0be7865702c395359b6180b0b4d62e94b4682c12e0bd95","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"c03e2b450ab19ee2af0be7865702c395359b6180b0b4d62e94b4682c12e0bd95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiveModeGammaConstant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.Analysis.DigammaSeries
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic

/-!
An unconditional sign bound for the actual quarter-line gamma constant.
Finite Euler approximants are compared before taking the proved derivative
limit. No special-function numerical oracle is introduced.
Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean assistance: OpenAI Codex.
-/


namespace GRWTSK.Analysis.SpecialFunctions.QuarterDigammaLeOneSubThree.Variantc03e2b450ab19ee2af0be7865702c395359b6180b0b4d62e94b4682c12e0bd95

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open Filter
open scoped Topology
open FormalResearch.Analysis.DigammaSeries
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open BridgeAdmissibility

theorem quarter_digamma_le_one_sub_three :
    (Complex.digamma (1/4)).re ≤ (Complex.digamma 1).re - 3 := by
  have hs (n : ℕ) :
      (3 : ℝ) ≤ ∑ j ∈ Finset.range (n+1),
        ((1 / (1/4+(j : ℝ))) - 1/(1+(j : ℝ))) := by
    have hn (j : ℕ) :
        (0 : ℝ) ≤ 1/(1/4+(j : ℝ)) - 1/(1+(j : ℝ)) := by
      apply sub_nonneg.mpr
      exact one_div_le_one_div_of_le (by positivity) (by linarith)
    have ht := Finset.single_le_sum (fun j _ => hn j)
      (show 0 ∈ Finset.range (n+1) by simp)
    norm_num at ht ⊢
    exact ht
  have hfinite (n : ℕ) (hn : n ≠ 0) :
      (logDeriv (fun w => Complex.GammaSeq w n) (1/4)).re ≤
        (logDeriv (fun w => Complex.GammaSeq w n) 1).re - 3 := by
    rw [logDeriv_gammaSeq (by norm_num : 0 < (1/4 : ℂ).re) hn,
      logDeriv_gammaSeq (by norm_num : 0 < (1 : ℂ).re) hn]
    simp only [Complex.sub_re, Complex.re_sum]
    have he (a : ℝ) (j : ℕ) : (((a : ℂ)+(j : ℂ))⁻¹).re = 1/(a+(j : ℝ)) := by
      have hc : (a : ℂ)+(j : ℂ) = ((a+(j : ℝ) : ℝ) : ℂ) := by push_cast; rfl
      rw [hc, ← Complex.ofReal_inv]
      simp only [Complex.ofReal_re, one_div]
    simp_rw [show (1/4 : ℂ) = ((1/4 : ℝ) : ℂ) by norm_num,
      show (1 : ℂ) = ((1 : ℝ) : ℂ) by rfl, he]
    have hh := hs n
    rw [Finset.sum_sub_distrib] at hh
    linarith
  have hq := (Complex.continuous_re.continuousAt.tendsto.comp
    (logDeriv_tendsto_of_derivative_limit euler_derivative_limit
      (z := (1/4 : ℂ)) (by norm_num)))
  have h1 := (Complex.continuous_re.continuousAt.tendsto.comp
    (logDeriv_tendsto_of_derivative_limit euler_derivative_limit
      (z := (1 : ℂ)) (by norm_num))).sub_const 3
  exact le_of_tendsto_of_tendsto hq h1
    ((eventually_ne_atTop 0).mono fun n hn => hfinite n hn)

theorem actual_archimedeanConstant_gt_four : (4 : ℝ) < archimedeanConstant := by
  have hq := quarter_digamma_le_one_sub_three
  rw [Complex.digamma_one] at hq
  simp only [Complex.neg_re, Complex.ofReal_re] at hq
  have hg := Real.one_half_lt_eulerMascheroniConstant
  have hp : (1 : ℝ) < Real.log Real.pi := by
    apply (Real.lt_log_iff_exp_lt Real.pi_pos).2
    exact Real.exp_one_lt_three.trans Real.pi_gt_three
  unfold archimedeanConstant
  linarith

theorem actual_gamma_constant_lt_neg_four :
    -archimedeanConstant < (-4 : ℝ) := by
  linarith [actual_archimedeanConstant_gt_four]

end CommonMeanScratch
```
