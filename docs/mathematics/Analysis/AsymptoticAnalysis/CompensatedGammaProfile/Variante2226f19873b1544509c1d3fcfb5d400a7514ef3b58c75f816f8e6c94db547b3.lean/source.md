# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.CompensatedGammaProfile.Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5402ce95bc5664fdae8f1ab183b237f3de49f56` · SHA-256 `8f93aa3d6bc1da244ccfaf9111d2aa569aca508d29ebba5dfdb68e882cf7d0b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.Term.Variantf13e174675d4ee21b4a0d17edd29dd0a66947506be682f98ac664771ed3b0ae5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f13e174675d4ee21b4a0d17edd29dd0a66947506be682f98ac664771ed3b0ae5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.Term.Variantf13e174675d4ee21b4a0d17edd29dd0a66947506be682f98ac664771ed3b0ae5","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"f13e174675d4ee21b4a0d17edd29dd0a66947506be682f98ac664771ed3b0ae5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass6/gamma_second_review/CompensatedGammaProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Gamma.BohrMollerup
import Mathlib.NumberTheory.Harmonic.EulerMascheroni
import Mathlib.NumberTheory.Harmonic.GammaDeriv
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.PSeries
import Mathlib.Tactic

/-!
Scratch #146 compensated real logarithm profile. The actual Gamma function and
Euler constant remain independently defined. Positive arguments of every real
logarithm are proved; no complex log branch or RH source identity is assumed.
grwtsk contributors's problem direction; OpenAI Codex proof/review work.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.Term.Variantf13e174675d4ee21b4a0d17edd29dd0a66947506be682f98ac664771ed3b0ae5

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.CompensatedGammaProfile
open MeasureTheory Set Filter Finset
open scoped Topology

def term (x : ℝ) (n : ℕ) : ℝ :=
  x / (2 * ((n : ℝ) + 1)) - Real.log (1 + x / (2 * ((n : ℝ) + 1)))

def partialProfile (x : ℝ) (N : ℕ) : ℝ := ∑ n ∈ Finset.range N, term x n

theorem log_argument_pos {x : ℝ} (hx : -2 < x) (n : ℕ) :
    0 < 1 + x / (2 * ((n : ℝ) + 1)) := by
  have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
  have he : 1 + x / (2 * ((n : ℝ) + 1)) =
      (2 * ((n : ℝ) + 1) + x) / (2 * ((n : ℝ) + 1)) := by field_simp
  rw [he]
  exact div_pos (by linarith) (by positivity)

theorem term_nonneg {x : ℝ} (hx : -2 < x) (n : ℕ) : 0 ≤ term x n := by
  have h := Real.log_le_sub_one_of_pos (log_argument_pos hx n)
  unfold term
  linarith

theorem compensated_log_le_square_half {u : ℝ} (hu : 0 ≤ u) :
    u - Real.log (1 + u) ≤ u ^ 2 / 2 := by
  have h := Real.le_log_one_add_of_nonneg hu
  have hb : u - 2 * u / (u + 2) ≤ u ^ 2 / 2 := by
    have he : u - 2 * u / (u + 2) = u ^ 2 / (u + 2) := by field_simp; ring
    rw [he]
    exact div_le_div_of_nonneg_left (sq_nonneg u) (by norm_num) (by linarith)
  linarith

theorem compensated_log_le_square_div {u : ℝ} (hu : 0 < 1 + u) :
    u - Real.log (1 + u) ≤ u ^ 2 / (1 + u) := by
  have h := Real.one_sub_inv_le_log_of_pos hu
  calc
    _ ≤ u - (1 - (1 + u)⁻¹) := by linarith
    _ = u ^ 2 / (1 + u) := by field_simp; ring

theorem term_nonneg_upper {x : ℝ} (hx : 0 ≤ x) (n : ℕ) :
    term x n ≤ x ^ 2 / 8 * ((n : ℝ) + 1) ^ (-2 : ℝ) := by
  have h := compensated_log_le_square_half (u := x / (2 * ((n : ℝ) + 1))) (by positivity)
  change x / (2 * ((n : ℝ) + 1)) - Real.log (1 + x / (2 * ((n : ℝ) + 1))) ≤ _
  convert h using 1
  rw [show (-2 : ℝ) = -(2 : ℕ) by norm_num, Real.rpow_neg (by positivity), Real.rpow_natCast]
  field_simp
  ring

theorem term_negative_compact_upper {r x : ℝ} (hr : 0 ≤ r) (hr2 : r < 2)
    (hx : -r ≤ x) (_hx0 : x ≤ 0) (n : ℕ) :
    term x n ≤ x ^ 2 / (4 * (1 - r / 2)) * ((n : ℝ) + 1) ^ (-2 : ℝ) := by
  have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
  have hd : 0 < 1 - r / 2 := by linarith
  have hx2 : -2 < x := by linarith
  have ha : 1 - r / 2 ≤ 1 + x / (2 * ((n : ℝ) + 1)) := by
    have he : 1 + x / (2 * ((n : ℝ) + 1)) =
        (2 * ((n : ℝ) + 1) + x) / (2 * ((n : ℝ) + 1)) := by field_simp
    rw [he]
    apply (le_div_iff₀ (by positivity : 0 < 2 * ((n : ℝ) + 1))).2
    nlinarith [mul_nonneg hr hn]
  have h := compensated_log_le_square_div (log_argument_pos hx2 n)
  change x / (2 * ((n : ℝ) + 1)) - Real.log (1 + x / (2 * ((n : ℝ) + 1))) ≤ _
  calc
    _ ≤ (x / (2 * ((n : ℝ) + 1))) ^ 2 / (1 + x / (2 * ((n : ℝ) + 1))) := h
    _ ≤ (x / (2 * ((n : ℝ) + 1))) ^ 2 / (1 - r / 2) :=
      div_le_div_of_nonneg_left (sq_nonneg _) hd ha
    _ = _ := by
      rw [show (-2 : ℝ) = -(2 : ℕ) by norm_num, Real.rpow_neg (by positivity), Real.rpow_natCast]
      field_simp
      ring

theorem log_factorial (N : ℕ) :
    Real.log (N.factorial : ℝ) = ∑ n ∈ Finset.range N, Real.log ((n : ℝ) + 1) := by
  rw [Nat.factorial_eq_prod_range_add_one]
  push_cast
  exact Real.log_prod (fun n _ ↦ by positivity)

theorem partialProfile_eq_harmonic (x : ℝ) (N : ℕ) :
    partialProfile x N = x / 2 * (harmonic N : ℝ) -
      ∑ n ∈ Finset.range N, Real.log (1 + x / (2 * ((n : ℝ) + 1))) := by
  unfold partialProfile term
  rw [Finset.sum_sub_distrib]
  congr 1
  rw [harmonic]
  push_cast
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  field_simp

theorem logarithm_split {x : ℝ} (hx : -2 < x) (n : ℕ) :
    Real.log (1 + x / 2 + (n : ℝ)) = Real.log ((n : ℝ) + 1) +
      Real.log (1 + x / (2 * ((n : ℝ) + 1))) := by
  have hn : 0 < (n : ℝ) + 1 := by positivity
  have he : 1 + x / 2 + (n : ℝ) = ((n : ℝ) + 1) *
      (1 + x / (2 * ((n : ℝ) + 1))) := by field_simp; ring
  rw [he, Real.log_mul hn.ne' (log_argument_pos hx n).ne']

theorem partialProfile_gammaSeq {x : ℝ} (hx : -2 < x) (N : ℕ) :
    partialProfile x (N + 1) = Real.BohrMollerup.logGammaSeq (1 + x / 2) N +
      x / 2 * ((harmonic (N + 1) : ℝ) - Real.log (N : ℝ)) +
      (Real.log ((N : ℝ) + 1) - Real.log (N : ℝ)) := by
  have hf : 0 < (N.factorial : ℝ) := by exact_mod_cast Nat.factorial_pos N
  have hi : (∑ n ∈ Finset.range (N + 1), Real.log (1 + x / 2 + (n : ℝ))) =
      Real.log ((N + 1).factorial : ℝ) +
      ∑ n ∈ Finset.range (N + 1), Real.log (1 + x / (2 * ((n : ℝ) + 1))) := by
    rw [log_factorial, ← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl (fun n _ ↦ logarithm_split hx n)
  rw [partialProfile_eq_harmonic]
  unfold Real.BohrMollerup.logGammaSeq
  rw [hi, Nat.factorial_succ, Nat.cast_mul, Nat.cast_add, Nat.cast_one,
    Real.log_mul (by positivity : (N : ℝ) + 1 ≠ 0) hf.ne']
  ring

theorem partialProfile_tendsto_actual_gamma {x : ℝ} (hx : -2 < x) :
    Tendsto (partialProfile x) atTop
      (𝓝 (Real.log (Real.Gamma (1 + x / 2)) + Real.eulerMascheroniConstant * x / 2)) := by
  have hg := Real.BohrMollerup.tendsto_log_gamma (by linarith : 0 < 1 + x / 2)
  have hh := (Real.tendsto_harmonic_sub_log.comp (tendsto_add_atTop_nat 1)).add
    Real.tendsto_log_nat_add_one_sub_log
  have he : Tendsto (fun N : ℕ ↦ (harmonic (N + 1) : ℝ) - Real.log (N : ℝ))
      atTop (𝓝 Real.eulerMascheroniConstant) := by
    convert hh using 1
    · ext N
      simp only [Function.comp_apply, Nat.cast_add, Nat.cast_one]
      ring
    · simp
  have ht := (hg.add (he.const_mul (x / 2))).add Real.tendsto_log_nat_add_one_sub_log
  apply (tendsto_add_atTop_iff_nat 1).mp
  convert ht using 1
  · ext N
    exact partialProfile_gammaSeq hx N
  · simp
    ring

theorem hasSum_actual_gamma {x : ℝ} (hx : -2 < x) :
    HasSum (term x)
      (Real.log (Real.Gamma (1 + x / 2)) + Real.eulerMascheroniConstant * x / 2) :=
  (hasSum_iff_tendsto_nat_of_nonneg (term_nonneg hx) _).mpr
    (partialProfile_tendsto_actual_gamma hx)

/-- The profile is independently defined from the actual real Gamma function. -/
def actualProfile (x : ℝ) : ℝ :=
  Real.log (Real.Gamma (1 + x / 2)) + Real.eulerMascheroniConstant * x / 2

theorem actualProfile_zero : actualProfile 0 = 0 := by simp [actualProfile, Real.Gamma_one]

theorem term_summable {x : ℝ} (hx : -2 < x) : Summable (term x) :=
  (hasSum_actual_gamma hx).summable

theorem actualProfile_eq_tsum {x : ℝ} (hx : -2 < x) :
    actualProfile x = ∑' n : ℕ, term x n := (hasSum_actual_gamma hx).tsum_eq.symm

theorem actualProfile_nonneg {x : ℝ} (hx : -2 < x) : 0 ≤ actualProfile x := by
  rw [actualProfile_eq_tsum hx]
  exact tsum_nonneg (term_nonneg hx)

theorem actualProfile_prefix_tail {x : ℝ} (hx : -2 < x) (N : ℕ) :
    actualProfile x = partialProfile x N + ∑' n : ℕ, term x (n + N) := by
  rw [actualProfile_eq_tsum hx]
  exact ((term_summable hx).sum_add_tsum_nat_add N).symm

theorem actualProfile_sub_prefix_nonneg {x : ℝ} (hx : -2 < x) (N : ℕ) :
    0 ≤ actualProfile x - partialProfile x N := by
  rw [actualProfile_prefix_tail hx N, add_sub_cancel_left]
  exact tsum_nonneg (fun n ↦ term_nonneg hx (n + N))

/-- The omitted tail begins at N+1; unlike the inclusive-tail bound it has coefficient one. -/
theorem inverse_square_tail_le (N : ℕ) (hN : 1 ≤ N) :
    (∑' n : ℕ, ((n : ℝ) + N + 1) ^ (-2 : ℝ)) ≤ 1 / (N : ℝ) := by
  have hNpos : 0 < (N : ℝ) := by exact_mod_cast (lt_of_lt_of_le (by decide : 0 < 1) hN)
  have anti : AntitoneOn (fun x : ℝ ↦ x ^ (-2 : ℝ)) (Ici (N : ℝ)) := by
    intro x hx y _hy hxy
    exact Real.rpow_le_rpow_of_nonpos (hNpos.trans_le hx) hxy (by norm_num)
  have hi := anti.tsum_comp_add_le_integral N
    (integrableOn_Ioi_rpow_of_lt (by norm_num : (-2 : ℝ) < -1) hNpos)
    (fun x hx ↦ Real.rpow_nonneg (hNpos.trans hx).le _)
  rw [integral_Ioi_rpow_of_lt (by norm_num : (-2 : ℝ) < -1) hNpos] at hi
  simpa only [Nat.cast_add, Nat.cast_one, show (-2 : ℝ) + 1 = -1 by norm_num,
    Real.rpow_neg_one, neg_div_neg_eq, div_one, one_div] using hi

theorem inverse_square_tail_summable (N : ℕ) :
    Summable (fun n : ℕ ↦ ((n : ℝ) + N + 1) ^ (-2 : ℝ)) := by
  simpa only [Nat.cast_add, Nat.cast_one, add_assoc] using
    (summable_nat_add_iff (N + 1)).mpr
      (Real.summable_nat_rpow.mpr (by norm_num : (-2 : ℝ) < -1))

theorem actualProfile_positive_tail {x : ℝ} (hx : 0 ≤ x) (N : ℕ) (hN : 1 ≤ N) :
    0 ≤ actualProfile x - partialProfile x N ∧
      actualProfile x - partialProfile x N ≤ x ^ 2 / (8 * (N : ℝ)) := by
  have hx2 : -2 < x := by linarith
  refine ⟨actualProfile_sub_prefix_nonneg hx2 N, ?_⟩
  rw [actualProfile_prefix_tail hx2 N, add_sub_cancel_left]
  calc
    _ ≤ ∑' n : ℕ, x ^ 2 / 8 * ((n : ℝ) + N + 1) ^ (-2 : ℝ) := by
      apply Summable.tsum_le_tsum
        (fun n ↦ by simpa only [Nat.cast_add, add_assoc] using term_nonneg_upper hx (n + N))
        ((summable_nat_add_iff N).mpr (term_summable hx2))
        ((inverse_square_tail_summable N).mul_left _)
    _ = x ^ 2 / 8 * ∑' n : ℕ, ((n : ℝ) + N + 1) ^ (-2 : ℝ) := tsum_mul_left
    _ ≤ x ^ 2 / 8 * (1 / (N : ℝ)) :=
      mul_le_mul_of_nonneg_left (inverse_square_tail_le N hN) (by positivity)
    _ = _ := by ring

theorem actualProfile_negative_tail {r x : ℝ} (hr : 0 ≤ r) (hr2 : r < 2)
    (hx : -r ≤ x) (hx0 : x ≤ 0) (N : ℕ) (hN : 1 ≤ N) :
    0 ≤ actualProfile x - partialProfile x N ∧
      actualProfile x - partialProfile x N ≤ x ^ 2 / (4 * (1 - r / 2) * (N : ℝ)) := by
  have hx2 : -2 < x := by linarith
  have hd : 0 < 1 - r / 2 := by linarith
  refine ⟨actualProfile_sub_prefix_nonneg hx2 N, ?_⟩
  rw [actualProfile_prefix_tail hx2 N, add_sub_cancel_left]
  calc
    _ ≤ ∑' n : ℕ, x ^ 2 / (4 * (1 - r / 2)) * ((n : ℝ) + N + 1) ^ (-2 : ℝ) := by
      apply Summable.tsum_le_tsum
        (fun n ↦ by simpa only [Nat.cast_add, add_assoc] using
          term_negative_compact_upper hr hr2 hx hx0 (n + N))
        ((summable_nat_add_iff N).mpr (term_summable hx2))
        ((inverse_square_tail_summable N).mul_left _)
    _ = x ^ 2 / (4 * (1 - r / 2)) *
        ∑' n : ℕ, ((n : ℝ) + N + 1) ^ (-2 : ℝ) := tsum_mul_left
    _ ≤ x ^ 2 / (4 * (1 - r / 2)) * (1 / (N : ℝ)) :=
      mul_le_mul_of_nonneg_left (inverse_square_tail_le N hN) (by positivity)
    _ = _ := by rw [div_mul_div_comm, mul_one]

theorem actualProfile_negative_compact_uniform {r : ℝ} (hr : 0 ≤ r) (hr2 : r < 2)
    (N : ℕ) (hN : 1 ≤ N) :
    ∀ x : ℝ, x ∈ Icc (-r) 0 →
      |actualProfile x - partialProfile x N| ≤ r ^ 2 / (4 * (1 - r / 2) * (N : ℝ)) := by
  intro x hx
  have hb := actualProfile_negative_tail hr hr2 hx.1 hx.2 N hN
  have hd : 0 < 1 - r / 2 := by linarith
  rw [abs_of_nonneg hb.1]
  apply hb.2.trans
  apply div_le_div_of_nonneg_right _ (by positivity)
  simpa only [neg_sq] using (sq_le_sq₀ (by linarith [hx.2] : 0 ≤ -x) hr).2
    (by linarith [hx.1] : -x ≤ r)

theorem actualProfile_convex : ConvexOn ℝ (Ioi (-2 : ℝ)) actualProfile := by
  let g : ℝ →ᵃ[ℝ] ℝ := AffineMap.const ℝ ℝ (1 : ℝ) +
    (DistribSMul.toLinearMap ℝ ℝ (1 / 2 : ℝ)).toAffineMap
  have hg (x : ℝ) : g x = 1 + x / 2 := by simp [g, smul_eq_mul, div_eq_mul_inv, mul_comm]
  have hlog : ConvexOn ℝ (Ioi (-2 : ℝ)) (fun x ↦ Real.log (Real.Gamma (1 + x / 2))) := by
    have h := Real.convexOn_log_Gamma.comp_affineMap g
    have hs : Ioi (-2 : ℝ) = g ⁻¹' Ioi 0 := by
      ext x
      simp only [Set.mem_Ioi, Set.mem_preimage, hg]
      constructor <;> intro hx <;> linarith
    rw [← hs] at h
    exact h.congr (fun x _ ↦ by change Real.log (Real.Gamma (g x)) = _; rw [hg])
  have hlin : ConvexOn ℝ (Ioi (-2 : ℝ))
      (fun x ↦ Real.eulerMascheroniConstant * x / 2) := by
    exact ((DistribSMul.toLinearMap ℝ ℝ (Real.eulerMascheroniConstant / 2)).convexOn
      (convex_Ioi (-2 : ℝ))).congr
      (fun x _ ↦ by change (Real.eulerMascheroniConstant / 2) * x = _; ring)
  exact hlog.add hlin

theorem actualProfile_hasDerivAt_zero : HasDerivAt actualProfile 0 0 := by
  have ha : HasDerivAt (fun x : ℝ ↦ 1 + x / 2) (1 / 2) 0 := by
    simpa using ((hasDerivAt_id (0 : ℝ)).div_const 2).const_add 1
  have hg : HasDerivAt (fun x : ℝ ↦ Real.Gamma (1 + x / 2))
      (-Real.eulerMascheroniConstant / 2) 0 := by
    have hG : HasDerivAt Real.Gamma (-Real.eulerMascheroniConstant) (1 + (0 : ℝ) / 2) := by
      simpa using Real.hasDerivAt_Gamma_one
    convert hG.comp 0 ha using 1 <;> first | rfl | ring
  have hl := hg.log (by simp [Real.Gamma_one])
  have he := ((hasDerivAt_id (0 : ℝ)).const_mul Real.eulerMascheroniConstant).div_const 2
  convert hl.add he using 1 <;> first | rfl | simp [Real.Gamma_one, neg_div]

theorem actualProfile_deriv_zero : deriv actualProfile 0 = 0 :=
  actualProfile_hasDerivAt_zero.deriv

end ContinuousResearch.CompensatedGammaProfile

#check ContinuousResearch.CompensatedGammaProfile.log_argument_pos
#check ContinuousResearch.CompensatedGammaProfile.term_nonneg
#check ContinuousResearch.CompensatedGammaProfile.compensated_log_le_square_half
#check ContinuousResearch.CompensatedGammaProfile.compensated_log_le_square_div
#check ContinuousResearch.CompensatedGammaProfile.term_nonneg_upper
#check ContinuousResearch.CompensatedGammaProfile.term_negative_compact_upper
#check ContinuousResearch.CompensatedGammaProfile.log_factorial
#check ContinuousResearch.CompensatedGammaProfile.partialProfile_eq_harmonic
#check ContinuousResearch.CompensatedGammaProfile.logarithm_split
#check ContinuousResearch.CompensatedGammaProfile.partialProfile_gammaSeq
#check ContinuousResearch.CompensatedGammaProfile.partialProfile_tendsto_actual_gamma
#check ContinuousResearch.CompensatedGammaProfile.hasSum_actual_gamma
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_zero
#check ContinuousResearch.CompensatedGammaProfile.term_summable
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_eq_tsum
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_nonneg
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_prefix_tail
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_sub_prefix_nonneg
#check ContinuousResearch.CompensatedGammaProfile.inverse_square_tail_le
#check ContinuousResearch.CompensatedGammaProfile.inverse_square_tail_summable
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_positive_tail
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_negative_tail
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_negative_compact_uniform
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_convex
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_hasDerivAt_zero
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_deriv_zero
#print axioms ContinuousResearch.CompensatedGammaProfile.log_argument_pos
#print axioms ContinuousResearch.CompensatedGammaProfile.term_nonneg
#print axioms ContinuousResearch.CompensatedGammaProfile.compensated_log_le_square_half
#print axioms ContinuousResearch.CompensatedGammaProfile.compensated_log_le_square_div
#print axioms ContinuousResearch.CompensatedGammaProfile.term_nonneg_upper
#print axioms ContinuousResearch.CompensatedGammaProfile.term_negative_compact_upper
#print axioms ContinuousResearch.CompensatedGammaProfile.log_factorial
#print axioms ContinuousResearch.CompensatedGammaProfile.partialProfile_eq_harmonic
#print axioms ContinuousResearch.CompensatedGammaProfile.logarithm_split
#print axioms ContinuousResearch.CompensatedGammaProfile.partialProfile_gammaSeq
#print axioms ContinuousResearch.CompensatedGammaProfile.partialProfile_tendsto_actual_gamma
#print axioms ContinuousResearch.CompensatedGammaProfile.hasSum_actual_gamma
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_zero
#print axioms ContinuousResearch.CompensatedGammaProfile.term_summable
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_eq_tsum
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_nonneg
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_prefix_tail
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_sub_prefix_nonneg
#print axioms ContinuousResearch.CompensatedGammaProfile.inverse_square_tail_le
#print axioms ContinuousResearch.CompensatedGammaProfile.inverse_square_tail_summable
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_positive_tail
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_negative_tail
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_negative_compact_uniform
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_convex
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_hasDerivAt_zero
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_deriv_zero
```
