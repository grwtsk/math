# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualShortMangoldtBlockNative01.Variant5a52d7c8d07e311ac10a20ef5741c35e090904c9cdc2426569298ed70b2e1594

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `387e89f58db44b4dc83e910e180ff0c35e837b1f` · SHA-256 `97c2997c4d30fcbcd4884dfb49288ad1dc5c8d837a6d3a47c78688a7a29312fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualShortMangoldtBlock.Variant1281f205d806af979c089ce538fe2c53bb7488dfaeb9e21be22255f92840ffcd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1281f205d806af979c089ce538fe2c53bb7488dfaeb9e21be22255f92840ffcd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualShortMangoldtBlock.Variant1281f205d806af979c089ce538fe2c53bb7488dfaeb9e21be22255f92840ffcd","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1281f205d806af979c089ce538fe2c53bb7488dfaeb9e21be22255f92840ffcd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-short-mangoldt-block/SourceActualShortMangoldtBlock-native01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFiveCancelledFactorialBudget
import ActualSharpEarlyBaseline
import SourceActualPsiPntTimeDecay

/-!
A genuine positive portion of the original closed Mangoldt moment is already
linear in the real radius. The original signed complementary moment remains
in the exact residual split. This proves a necessary cancellation requirement,
without estimating that complement or supplying a uniform negative-defect cap.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualShortMangoldtBlock.Variant1281f205d806af979c089ce538fe2c53bb7488dfaeb9e21be22255f92840ffcd

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualShortMangoldtBlock
open ArithmeticFunction Filter
open scoped BigOperators Topology
open SourcePairing SourceFiveCancelledFactorialBudget SourceActualPsiPntTimeDecay
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMobiusSplit EstimateMertensResidual
open EstimateVaughanSource
noncomputable section

/-- The actual closed short Mangoldt block, with the original normalized weight. -/
def actualShortMangoldtBlock (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 (vaughanCutoff A), vonMangoldt n * closedPrimeWeight A n

/-- The complete signed complement retains squares and every higher prime power. -/
def actualLongMangoldtBlock (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.Ioc (vaughanCutoff A) ⌊Real.exp (2 * A)⌋₊,
    vonMangoldt n * closedPrimeWeight A n

/-- The actual closed short cumulative sum agrees with psi; the unit has zero weight. -/
theorem actualShortMangoldt_unweighted_eq_psi {A : ℝ} (hA : 1 ≤ A) :
    (∑ n ∈ Finset.Icc 2 (vaughanCutoff A), (vonMangoldt n : ℝ)) =
      Chebyshev.psi (A ^ 2) := by
  have hU : 1 ≤ vaughanCutoff A := vaughanCutoff_pos A hA
  have hI : Finset.Ioc 0 (vaughanCutoff A) =
      insert 1 (Finset.Icc 2 (vaughanCutoff A)) := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_insert, Finset.mem_Icc]
    omega
  rw [Chebyshev.psi, show ⌊A ^ 2⌋₊ = vaughanCutoff A from rfl, hI]
  simp

/-- Curvature and the true floor logarithm give a positive actual source at every short atom. -/
theorem actualCorrelation_short_lower {A : ℝ} (hA : 25600 ≤ A) {n : ℕ}
    (hn : n ∈ Finset.Icc 2 (vaughanCutoff A)) :
    (1 / 2 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A (Real.log n) := by
  have hp : 0 < A := by linarith
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (Finset.mem_Icc.mp hn).1
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast (show 1 ≤ n by omega)
  have hU1 : (1 : ℝ) ≤ vaughanCutoff A := by
    exact_mod_cast vaughanCutoff_pos A (by linarith : 1 ≤ A)
  have ht0 := Real.log_nonneg hn1
  have hT0 := Real.log_nonneg hU1
  have htT : Real.log (n : ℝ) ≤ Real.log (vaughanCutoff A : ℝ) :=
    Real.log_le_log hn0 (by exact_mod_cast (Finset.mem_Icc.mp hn).2)
  have hsq := RH16IndependentChallengeNext.actualCutoff_log_sq_le_sqrt
    (by linarith : 1 ≤ A)
  have hs := Real.sq_sqrt hp.le
  have hsA : Real.sqrt A ≤ A := by
    have := Real.sqrt_nonneg A
    nlinarith
  have hbound : (5 / 2 : ℝ) / A ^ 2 * (Real.log (n : ℝ)) ^ 2 ≤ 1 / 2 := by
    have hts : (Real.log (n : ℝ)) ^ 2 ≤
        (Real.log (vaughanCutoff A : ℝ)) ^ 2 := by nlinarith
    apply (mul_le_mul_of_nonneg_left hts (by positivity)).trans
    apply (mul_le_mul_of_nonneg_left hsq (by positivity)).trans
    apply (le_div_iff₀ (by positivity : 0 < A ^ 2)).2
    nlinarith
  have hc := actualCorrelation_sub_one_abs_le_five (by linarith : 91 ≤ A)
    (Real.log (n : ℝ))
  linarith [(abs_le.mp (hc.trans hbound)).1]

/-- Every real admitted scale retains the actual closed psi lower contribution. -/
theorem actualShortMangoldtBlock_ge_psi {A : ℝ} (hA : 25600 ≤ A) :
    Chebyshev.psi (A ^ 2) / (2 * A) ≤ actualShortMangoldtBlock A := by
  have hp : 0 < A := by linarith
  have hU1 : 1 ≤ A := by linarith
  rw [← actualShortMangoldt_unweighted_eq_psi hU1, Finset.sum_div]
  unfold actualShortMangoldtBlock
  apply Finset.sum_le_sum
  intro n hn
  have hn0 : 0 < n := by have := (Finset.mem_Icc.mp hn).1; omega
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn0
  have hnA : (n : ℝ) ≤ A ^ 2 :=
    (show (n : ℝ) ≤ vaughanCutoff A by exact_mod_cast (Finset.mem_Icc.mp hn).2).trans
      (Nat.floor_le (sq_nonneg A))
  have hsn : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hnR
  have hsA : Real.sqrt (n : ℝ) ≤ A := by
    exact (Real.sqrt_le_sqrt hnA).trans_eq (Real.sqrt_sq hp.le)
  have hc := actualCorrelation_short_lower hA hn
  have hw : 1 / (2 * A) ≤ closedPrimeWeight A n := by
    unfold closedPrimeWeight
    rw [exponentialTest_log _ _ hn0]
    apply (le_div_iff₀ hsn).2
    have hh : Real.sqrt (n : ℝ) / (2 * A) ≤ 1 / 2 := by
      apply (div_le_iff₀ (by positivity : 0 < 2 * A)).2
      linarith
    exact hh.trans hc
  simpa only [div_eq_mul_inv] using
    mul_le_mul_of_nonneg_left hw (vonMangoldt_nonneg (n := n))

/-- Genuine actual PNT supplies a real threshold for the closed square-scale psi lower bound. -/
theorem actualPsi_square_eventually_lower :
    ∃ R : ℝ, 25600 ≤ R ∧ ∀ A : ℝ, R ≤ A → A ^ 2 / 2 ≤ Chebyshev.psi (A ^ 2) := by
  have ht : Tendsto (fun A : ℝ => 2 * Real.log A) atTop atTop :=
    Real.tendsto_log_atTop.const_mul_atTop (by norm_num)
  have hl := actualRelativePsiTimeError_tendsto_zero.comp ht
  have he : ∀ᶠ A : ℝ in atTop, -(1 / 2 : ℝ) <
      actualRelativePsiTimeError (2 * Real.log A) :=
    hl.eventually (Ioi_mem_nhds (by norm_num : -(1 / 2 : ℝ) < 0))
  obtain ⟨R, hR⟩ := eventually_atTop.1 he
  refine ⟨max 25600 R, le_max_left _ _, ?_⟩
  intro A hA
  have hp : 0 < A := by have := (le_max_left 25600 R).trans hA; linarith
  have heA := hR A ((le_max_right _ _).trans hA)
  have hx : Real.exp (2 * Real.log A) = A ^ 2 := by
    rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
      Real.exp_add, Real.exp_log hp]
  have hinv : Real.exp (-(2 * Real.log A)) = (A ^ 2)⁻¹ := by
    rw [Real.exp_neg, hx]
  rw [actualRelativePsiTimeError, hx, hinv] at heA
  have heB : -(1 / 2 : ℝ) < (Chebyshev.psi (A ^ 2) - A ^ 2) / A ^ 2 := by
    simpa only [div_eq_mul_inv] using heA
  have hs : 0 < A ^ 2 := by positivity
  have := (lt_div_iff₀ hs).1 heB
  linarith

/-- The true short Mangoldt contribution is eventually at least one quarter of the real radius. -/
theorem actualShortMangoldtBlock_eventually_linear_lower :
    ∃ R : ℝ, 25600 ≤ R ∧ ∀ A : ℝ, R ≤ A → A / 4 ≤ actualShortMangoldtBlock A := by
  obtain ⟨R, hR, hpsi⟩ := actualPsi_square_eventually_lower
  refine ⟨R, hR, ?_⟩
  intro A hA
  have hp : 0 < A := by linarith
  have hs := actualShortMangoldtBlock_ge_psi (hR.trans hA)
  have he : A / 4 = (A ^ 2 / 2) / (2 * A) := by field_simp; ring
  rw [he]
  exact (div_le_div_of_nonneg_right (hpsi A hA) (by positivity)).trans hs

private theorem cutoff_le_inventory {A : ℝ} (hA : 1 ≤ A) :
    vaughanCutoff A ≤ ⌊Real.exp (2 * A)⌋₊ := by
  have hp : 0 < A := by linarith
  have he := Real.pow_div_factorial_le_exp (2 * A) (by linarith) 2
  norm_num at he
  apply Nat.floor_mono
  nlinarith

/-- The unchanged residual is exactly short plus the full signed long closed inventory. -/
theorem actualResidual_eq_short_add_long {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = actualShortMangoldtBlock A + actualLongMangoldtBlock A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  unfold closedPrimeMoment actualShortMangoldtBlock actualLongMangoldtBlock
  have hU := vaughanCutoff_pos A hA
  have hUN := cutoff_le_inventory hA
  change (∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
    vonMangoldt n * closedPrimeWeight A n) = _
  have hI : Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊ =
      Finset.Icc 2 (vaughanCutoff A) ∪
        Finset.Ioc (vaughanCutoff A) ⌊Real.exp (2 * A)⌋₊ := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_union, Finset.mem_Ioc]
    omega
  rw [hI, Finset.sum_union]
  exact Finset.disjoint_left.mpr (by
    intro n hn hm
    have := (Finset.mem_Icc.mp hn).2
    have := (Finset.mem_Ioc.mp hm).1
    omega)

/-- Any actual residual upper bound must cancel the actual short linear mass in the long sector. -/
theorem actualLongMangoldtBlock_eventually_below_residual_sub_linear :
    ∃ R : ℝ, 25600 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualLongMangoldtBlock A ≤ mertensResidual A - A / 4 := by
  obtain ⟨R, hR, hs⟩ := actualShortMangoldtBlock_eventually_linear_lower
  refine ⟨R, hR, ?_⟩
  intro A hA
  have he := actualResidual_eq_short_add_long (show 1 ≤ A by linarith)
  linarith [hs A hA]

end
end FormalResearch.RiemannHypothesis.SourceActualShortMangoldtBlock
```
