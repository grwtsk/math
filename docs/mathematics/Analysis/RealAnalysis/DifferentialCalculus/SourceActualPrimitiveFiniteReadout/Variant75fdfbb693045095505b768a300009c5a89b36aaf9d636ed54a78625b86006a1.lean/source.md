# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualPrimitiveFiniteReadout.Variant75fdfbb693045095505b768a300009c5a89b36aaf9d636ed54a78625b86006a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55e4c36b4d058947d8d037dc3eed3c1e1ba4af97` · SHA-256 `93faa89d569944b1fd85e4b32fdfd3159a9609efd35f8f2c36323fc1d8645171`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.WeightedActualSecondPrimitive.Variant3a95c040c5275704278f1942997f1e18e159295063191a0de2eb343acfebaa40","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a95c040c5275704278f1942997f1e18e159295063191a0de2eb343acfebaa40","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.WeightedActualSecondPrimitive.Variant3a95c040c5275704278f1942997f1e18e159295063191a0de2eb343acfebaa40","mathematical_subject":"Analysis.Calculus","original_sha256":"3a95c040c5275704278f1942997f1e18e159295063191a0de2eb343acfebaa40","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259/independent-finite-primitive-replay/SourceActualPrimitiveFiniteReadout.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCriticalPrimitive

/-!
Exact arithmetic finite readout for the actual exponentially weighted second
primitive. This retains all Mangoldt atoms and both independently defined
continuous boundary terms. It supplies no uniform arithmetic primitive budget.
Research direction: grwtsk contributors. AI construction: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.WeightedActualSecondPrimitive.Variant3a95c040c5275704278f1942997f1e18e159295063191a0de2eb343acfebaa40

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualPrimitiveFiniteReadout

open MeasureTheory ArithmeticFunction Set
open scoped Interval
open SourceMangoldtAbel
open Research.ActualCriticalPrimitive

/-- The causal weighted integral of the unchanged actual arithmetic density. -/
def weightedActualSecondPrimitive (l t : ℝ) : ℝ :=
  ∫ s in l..t, (t - s) * primitiveDensity s

/-- The weighted integral is the literal second primitive of the actual centered first one. -/
theorem actual_centered_second_primitive_eq_weighted (l t : ℝ)
    (hl : 0 ≤ l) (hlt : l ≤ t) :
    (∫ s in l..t, criticalPrimitive s - criticalPrimitive l) =
      weightedActualSecondPrimitive l t := by
  have ht0 : 0 ≤ t := hl.trans hlt
  have hsub : Set.uIcc l t ⊆ Set.uIcc (0 : ℝ) t := by
    rw [Set.uIcc_of_le hlt, Set.uIcc_of_le ht0]
    exact Set.Icc_subset_Icc hl le_rfl
  have hconstant : AbsolutelyContinuousOnInterval (fun _ : ℝ => criticalPrimitive l) l t := by
    have hc : ContDiff ℝ 1 (fun _ : ℝ => criticalPrimitive l) := by fun_prop
    exact hc.contDiffOn.absolutelyContinuousOnInterval
  have hP : AbsolutelyContinuousOnInterval
      (fun s : ℝ => criticalPrimitive s - criticalPrimitive l) l t :=
    AbsolutelyContinuousOnInterval.sub
      ((criticalPrimitive_absolutelyContinuous t ht0).mono hsub) hconstant
  have hv : AbsolutelyContinuousOnInterval (fun s : ℝ => t - s) l t := by
    have hc : ContDiff ℝ 1 (fun s : ℝ => t - s) := by fun_prop
    exact hc.contDiffOn.absolutelyContinuousOnInterval
  have hi := hP.integral_mul_deriv_eq_deriv_mul hv
  have hdv (s : ℝ) : deriv (fun u : ℝ => t - u) s = -1 := by
    simp
  have hdf : (∫ s in l..t, deriv (fun u => criticalPrimitive u - criticalPrimitive l) s *
      (t - s)) = weightedActualSecondPrimitive l t := by
    unfold weightedActualSecondPrimitive
    apply intervalIntegral.integral_congr_ae
    filter_upwards [criticalPrimitive_ae_hasDerivAt t ht0] with s hs hmem
    have hm : s ∈ Set.uIcc (0 : ℝ) t := hsub (uIoc_subset_uIcc hmem)
    rw [((hs hm).sub_const (criticalPrimitive l)).deriv]
    ring
  have hleft : (∫ s in l..t, (criticalPrimitive s - criticalPrimitive l) *
      deriv (fun u : ℝ => t - u) s) =
      -(∫ s in l..t, criticalPrimitive s - criticalPrimitive l) := by
    simp_rw [hdv, mul_neg_one]
    exact intervalIntegral.integral_neg
  rw [hleft, hdf] at hi
  simp only [sub_self, mul_zero, zero_mul, zero_sub] at hi
  linarith

private def atomTest (t s : ℝ) : ℝ :=
  Real.exp (s / 2) * (2 * (t - s) + 4)

private theorem atomTest_contDiff (t : ℝ) : ContDiff ℝ 1 (atomTest t) := by
  unfold atomTest
  fun_prop

private theorem atomTest_hasDerivAt (t s : ℝ) :
    HasDerivAt (atomTest t) ((t - s) * Real.exp (s / 2)) s := by
  have he := ((hasDerivAt_id s).div_const 2).exp
  have hp := (((hasDerivAt_const s t).sub (hasDerivAt_id s)).const_mul 2).add_const 4
  exact (he.mul hp).congr_deriv (by dsimp only [id_eq, Pi.sub_apply]; ring)

private theorem atomTest_integral (l t : ℝ) :
    (∫ s in l..t, atomTest t s) =
      16 * Real.exp (t / 2) - Real.exp (l / 2) * (4 * (t - l) + 16) := by
  have hd (s : ℝ) : HasDerivAt
      (fun u : ℝ => Real.exp (u / 2) * (4 * (t - u) + 16)) (atomTest t s) s := by
    have he := ((hasDerivAt_id s).div_const 2).exp
    have hp := (((hasDerivAt_const s t).sub (hasDerivAt_id s)).const_mul 4).add_const 16
    exact (he.mul hp).congr_deriv
      (by dsimp only [id_eq, Pi.sub_apply]; unfold atomTest; ring)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun s _ => hd s)
    ((atomTest_contDiff t).continuous.intervalIntegrable l t)
  simpa only [sub_self, mul_zero, zero_mul, zero_add, mul_comm] using hi

/-- Exact finite Abel readout, including the actual lower error and full closed upper atom. -/
theorem weightedActualSecondPrimitive_eq_finite_window (l t : ℝ)
    (hl : 0 ≤ l) (hlt : l ≤ t) :
    weightedActualSecondPrimitive l t =
      4 * Real.exp (t / 2) * (mangoldtLogError t + Real.eulerMascheroniConstant + 4) -
      Real.exp (l / 2) * (2 * (t - l) + 4) *
        (mangoldtLogError l + Real.eulerMascheroniConstant) -
      Real.exp (l / 2) * (4 * (t - l) + 16) -
      ∑ n ∈ Finset.Ioc ⌊Real.exp l⌋₊ ⌊Real.exp t⌋₊,
        vonMangoldt n / (n : ℝ) * Real.exp (Real.log (n : ℝ) / 2) *
          (2 * (t - Real.log (n : ℝ)) + 4) := by
  have hF := atomTest_contDiff t
  have hw := mangoldtLogWindow_sub_integral l t hl hlt (atomTest t) hF
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable l t hlt (atomTest t) hF
  have hg := hF.continuous_deriv_one.intervalIntegrable (μ := volume) l t
  have hc : (∫ s in l..t, deriv (atomTest t) s) = atomTest t t - atomTest t l := by
    exact intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun s _ => ((contDiff_one_iff_deriv.mp hF).1 s).hasDerivAt) hg
  have hsplit : weightedActualSecondPrimitive l t =
      (∫ s in l..t, mangoldtLogError s * deriv (atomTest t) s) +
        Real.eulerMascheroniConstant * (atomTest t t - atomTest t l) := by
    unfold weightedActualSecondPrimitive primitiveDensity
    have hf : (fun s : ℝ => (t - s) *
        (Real.exp (s / 2) * (mangoldtLogError s + Real.eulerMascheroniConstant))) =
        fun s => mangoldtLogError s * deriv (atomTest t) s +
          Real.eulerMascheroniConstant * deriv (atomTest t) s := by
      funext s
      rw [(atomTest_hasDerivAt t s).deriv]
      ring
    rw [hf, intervalIntegral.integral_add hi (hg.const_mul _),
      intervalIntegral.integral_const_mul, hc]
  rw [mangoldtLogWindow_eq_interval_sum l t hl hlt] at hw
  rw [atomTest_integral] at hw
  have hwexpand : (∑ n ∈ Finset.Ioc ⌊Real.exp l⌋₊ ⌊Real.exp t⌋₊,
      vonMangoldt n / (n : ℝ) * atomTest t (Real.log (n : ℝ))) =
      ∑ n ∈ Finset.Ioc ⌊Real.exp l⌋₊ ⌊Real.exp t⌋₊,
        vonMangoldt n / (n : ℝ) * Real.exp (Real.log (n : ℝ) / 2) *
          (2 * (t - Real.log (n : ℝ)) + 4) := by
    apply Finset.sum_congr rfl
    intro n _
    unfold atomTest
    ring
  rw [hwexpand] at hw
  rw [hsplit]
  unfold atomTest at *
  simp only [sub_self, mul_zero, zero_add] at *
  linarith

end FormalResearch.RiemannHypothesis.SourceActualPrimitiveFiniteReadout
```
