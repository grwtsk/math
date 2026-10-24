# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootActualPeriodicPhysicalCell.Variantcbfed456ac1b3416cbdb41c103fc63c200eacdbf2de07a8e8fd9f52d6fc16a6b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c24a2b0775785361911866faaecff92b33ad81bc` · SHA-256 `86aadacbbdbb9970f77055fcd95ccde4e9704a39f9864907d984d8db58e883c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPeriodicPhysicalCellProfile.Variantdfc707b6f3a8449e29c5b9506f436626866577d89052a52494876c8d653317bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dfc707b6f3a8449e29c5b9506f436626866577d89052a52494876c8d653317bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualPeriodicPhysicalCellProfile.Variantdfc707b6f3a8449e29c5b9506f436626866577d89052a52494876c8d653317bf","mathematical_subject":"Analysis.Calculus","original_sha256":"dfc707b6f3a8449e29c5b9506f436626866577d89052a52494876c8d653317bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T225155Z-1791327115116728000/RootActualPeriodicPhysicalCell.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualPeriodicTransportKernel
import SourceActualPeriodicInteriorAbel

/-!
The original twisted source cell has a genuine physical-variable profile.
Its derivative is the complete transported kernel divided by x squared;
no arithmetic interpolation or extra correlation derivative is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPeriodicPhysicalCellProfile.Variantdfc707b6f3a8449e29c5b9506f436626866577d89052a52494876c8d653317bf

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualPeriodicPhysicalCell
open SourcePairing RootActualDoubleAdjointTransfer RootActualCovariantWorkKernel
open SourceActualDoubleMixedKernel SourceActualCovariantKernel
open RootActualPeriodicTransportKernel SourceActualPeriodicInteriorAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization RH16IndependentChallengeNext
noncomputable section

/-- The actual physical source test for one closed integer column cell. -/
def actualPeriodicPhysicalCellProfile (A t x : ℝ) : ℝ :=
  actualTwistedTimeDensity A t (Real.log x) / x

private theorem jet_hasDerivAt {A : ℝ} (hA : 0 < A) (n : ℕ)
    (hn : n < 4) (z : ℝ) :
    HasDerivAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv (n + 1) (sourceCorrelation explicitSecondDerivative A) z) z := by
  have hc := actual_correlation_contDiff_four A hA
  simpa only [iteratedDeriv_succ] using
    ((hc.differentiable_iteratedDeriv n (by exact_mod_cast hn)) z).hasDerivAt

private theorem twisted_column_hasDerivAt {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    HasDerivAt (actualTwistedTimeDensity A t)
      (covariantMixedDerivative (actualLogMixedDensity A) t s -
        actualTwistedTimeDensity A t s / 2) s := by
  have h1 := (jet_hasDerivAt hA 1 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have h3 := (jet_hasDerivAt hA 3 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have he := ((((hasDerivAt_id s).neg).div_const 2).exp).const_mul (Real.exp (t / 2))
  have hd := he.mul (h3.sub (h1.div_const 4))
  rw [actual_covariant_ordinary_work_kernel A hA t s]
  unfold actualTwistedTimeDensity
  convert hd using 1 <;> try rfl
  simp only [Function.comp_apply, id_eq, Pi.sub_apply, Pi.neg_apply]
  ring

/-- The true physical derivative needs only the original global C4 correlation. -/
theorem actualPeriodicPhysicalCellProfile_hasDerivAt {A x : ℝ}
    (hA : 0 < A) (hx : 0 < x) (t : ℝ) :
    HasDerivAt (actualPeriodicPhysicalCellProfile A t)
      ((covariantMixedDerivative (actualLogMixedDensity A) t (Real.log x) -
        (3 / 2 : ℝ) * actualTwistedTimeDensity A t (Real.log x)) / x ^ 2) x := by
  have hc := (twisted_column_hasDerivAt hA t (Real.log x)).comp x
    (Real.hasDerivAt_log hx.ne')
  have hd := hc.div (hasDerivAt_id x) hx.ne'
  convert hd using 1 <;> try rfl
  simp only [id_eq]
  field_simp
  ring

/-- The actual cell-profile derivative is exactly the retained four-sector transport. -/
theorem actualPeriodicPhysicalCellProfile_deriv {A x : ℝ}
    (hA : 0 < A) (hx : 0 < x) (t : ℝ) :
    deriv (actualPeriodicPhysicalCellProfile A t) x =
      (covariantMixedDerivative (actualLogMixedDensity A) t (Real.log x) -
        (3 / 2 : ℝ) * actualTwistedTimeDensity A t (Real.log x)) / x ^ 2 :=
  (actualPeriodicPhysicalCellProfile_hasDerivAt hA hx t).deriv

/-- Its genuine positive physical-column derivative has an unconditional weighted norm budget. -/
theorem actualPeriodicPhysicalCellProfile_deriv_abs_le {A t x : ℝ}
    (hA : 91 ≤ A) (hx : 0 < x) (hz : 0 ≤ t + Real.log x) :
    |deriv (actualPeriodicPhysicalCellProfile A t) x| ≤
      Real.exp (t / 2) * Real.exp (-5 * Real.log x / 2) * (4 / A) := by
  rw [actualPeriodicPhysicalCellProfile_deriv (by linarith : 0 < A) hx t]
  have he : Real.exp (-Real.log x) = x⁻¹ := by rw [Real.exp_neg, Real.exp_log hx]
  have hb := actualPeriodicWeightedTransport_abs_le hA hz
  rw [he, abs_mul, abs_of_pos (inv_pos.mpr hx)] at hb
  have hm := mul_le_mul_of_nonneg_left hb (inv_pos.mpr hx).le
  have hleft : x⁻¹ * (x⁻¹ *
      |covariantMixedDerivative (actualLogMixedDensity A) t (Real.log x) -
        (3 / 2 : ℝ) * actualTwistedTimeDensity A t (Real.log x)|) =
      |(covariantMixedDerivative (actualLogMixedDensity A) t (Real.log x) -
        (3 / 2 : ℝ) * actualTwistedTimeDensity A t (Real.log x)) / x ^ 2| := by
    rw [abs_div, abs_of_pos (sq_pos_of_pos hx)]
    ring
  rw [hleft] at hm
  calc
    _ ≤ _ := hm
    _ = _ := by
      rw [← he, show Real.exp (-5 * Real.log x / 2) =
        Real.exp (-Real.log x) * Real.exp (-3 * Real.log x / 2) by
          rw [← Real.exp_add]; congr 1; ring]
      ring

end
end FormalResearch.RiemannHypothesis.RootActualPeriodicPhysicalCell
```
