# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Attempt02.Variant83464a581773b0a2df01cf3cdd00fe6708fa7bdce687bfd4755a6ef2ae5a7d97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e4452a4fc051da731312a7a908b7a7a980beb47` · SHA-256 `433624af84fc9a98dec98c86fa3bb790aa07e32c9e123ed69f39643c9e637e6e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PrefixTelescope.Variantf038d931eacd7bedbdda25e99e9ff2d196285380414e0458f12e0e11272f86cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f038d931eacd7bedbdda25e99e9ff2d196285380414e0458f12e0e11272f86cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PrefixTelescope.Variantf038d931eacd7bedbdda25e99e9ff2d196285380414e0458f12e0e11272f86cf","mathematical_subject":"Analysis.Integration","original_sha256":"f038d931eacd7bedbdda25e99e9ff2d196285380414e0458f12e0e11272f86cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-variable-column-divisor/attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualCriticalColumnTransfer
import SourceActualCenteredHalfHarmonic
import SourceActualVaughanMeanBound

/-!
The genuine variable column adjoint is expanded through its closed centered
beta half inventory and actual short-divisor quotients. Integer jumps cancel
only in their complete inventory-minus-prefix combination; the upper critical
main and terminal correction remain. No signed interior bound is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.PrefixTelescope.Variantf038d931eacd7bedbdda25e99e9ff2d196285380414e0458f12e0e11272f86cf

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualVariableColumnDivisor
open MeasureTheory Set Filter
open scoped BigOperators Interval
open SourceActualAdjointAbelPrimitives SourceActualLogColumnTransport
open SourceActualAdjointColumnTrace SourceActualCenteredHalfHarmonic
open SourceActualCenteredHalfZetaReduction SourceActualCenteredHalfUpperDecay
open SourceActualVaughanMeanBound RootActualCriticalColumnTransfer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering
noncomputable section

private theorem prefix_telescope (U n : ℕ) (hn : U ≤ n) (b w : ℕ → ℝ) :
    (∑ k ∈ Finset.Ioc U n,
      (∑ j ∈ Finset.Ioc U k, b j) * (w k - w (k + 1))) =
      (∑ j ∈ Finset.Ioc U n, b j * w j) -
        (∑ j ∈ Finset.Ioc U n, b j) * w (n + 1) := by
  refine Nat.le_induction ?_ ?_ n hn
  · simp
  intro n hUn ih
  rw [Finset.sum_Ioc_succ_top hUn, Finset.sum_Ioc_succ_top hUn,
    Finset.sum_Ioc_succ_top hUn, ih]
  ring

private theorem exp_log_half (u : ℝ) (hu : 0 < u) :
    Real.exp (Real.log u / 2) = Real.sqrt u := by
  rw [Real.exp_half, Real.exp_log hu]

private theorem exp_neg_log_half (u : ℝ) (hu : 0 < u) :
    Real.exp (-Real.log u / 2) = 1 / Real.sqrt u := by
  rw [show -Real.log u / 2 = -(Real.log u / 2) by ring, Real.exp_neg,
    exp_log_half u hu, one_div]

private theorem exp_neg_half_integral (l b : ℝ) (hlb : l ≤ b) :
    (∫ s in l..b, Real.exp (-s / 2)) =
      2 * (Real.exp (-l / 2) - Real.exp (-b / 2)) := by
  have hd (s : ℝ) : HasDerivAt (fun s : ℝ => -2 * Real.exp (-s / 2))
      (Real.exp (-s / 2)) s := by
    convert (((hasDerivAt_id s).neg.div_const 2).exp).const_mul (-2) using 1 <;> try rfl
    simp only [Pi.neg_apply, id_eq]
    ring
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hlb
    (by fun_prop : Continuous (fun s : ℝ => -2 * Real.exp (-s / 2))).continuousOn
    (fun s _ => hd s)
    ((by fun_prop : Continuous (fun s : ℝ => Real.exp (-s / 2))).intervalIntegrable _ _)
  linarith

private theorem integer_prefix_integral (A : ℝ) (M : ℕ)
    (hM : vaughanCutoff A + 1 ≤ M) :
    (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..Real.log (M : ℝ),
      actualLogColumnPrefix A s * Real.exp (-s / 2)) =
      2 * (closedCenteredHalfInventory (vaughanCutoff A) (M - 1) -
        (∑ n ∈ Finset.Ioc (vaughanCutoff A) (M - 1),
          centeredBeta (vaughanCutoff A) n) / Real.sqrt (M : ℝ)) := by
  let U := vaughanCutoff A
  have hM0 : 0 < M := by omega
  have hn : U ≤ M - 1 := by dsimp [U]; omega
  have heq : Finset.Ico (U + 1) M = Finset.Ioc U (M - 1) := by
    ext k
    simp only [Finset.mem_Ico, Finset.mem_Ioc]
    omega
  have ht := actual_finite_log_prefix_transport A M hM
    (fun s : ℝ => Real.exp (-s / 2)) (by fun_prop)
  rw [← ht]
  have hc (k : ℕ) (hk : k ∈ Finset.Ico (U + 1) M) :
      (∫ s in Real.log (k : ℝ)..Real.log ((k : ℝ) + 1), Real.exp (-s / 2)) =
        2 * (1 / Real.sqrt (k : ℝ) - 1 / Real.sqrt ((k + 1 : ℕ) : ℝ)) := by
    have hk0 : 0 < (k : ℝ) := by
      have := (Finset.mem_Ico.mp hk).1
      exact_mod_cast (show 0 < k by omega)
    rw [exp_neg_half_integral _ _ (Real.log_le_log hk0 (by linarith)),
      exp_neg_log_half _ hk0, exp_neg_log_half _ (by positivity)]
    simp
  calc
    _ = ∑ k ∈ Finset.Ico (U + 1) M,
        (∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
          (2 * (1 / Real.sqrt (k : ℝ) - 1 / Real.sqrt ((k + 1 : ℕ) : ℝ))) := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [hc k hk]
    _ = _ := by
      simp_rw [show ∀ k : ℕ, (∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
        (2 * (1 / Real.sqrt (k : ℝ) - 1 / Real.sqrt ((k + 1 : ℕ) : ℝ))) =
          2 * ((∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
            (1 / Real.sqrt (k : ℝ) - 1 / Real.sqrt ((k + 1 : ℕ) : ℝ))) by intro k; ring]
      rw [← Finset.mul_sum, heq, prefix_telescope U (M - 1) hn]
      simp only [Nat.sub_add_cancel hM0, mul_one_div]
      rfl

private theorem partial_cell_integral (A : ℝ) (M : ℕ) (s : ℝ)
    (hM : 1 ≤ M) (hs0 : Real.log (M : ℝ) ≤ s)
    (hs1 : s < Real.log ((M : ℝ) + 1)) :
    (∫ v in Real.log (M : ℝ)..s,
      actualLogColumnPrefix A v * Real.exp (-v / 2)) =
      (∑ n ∈ Finset.Ioc (vaughanCutoff A) M, centeredBeta (vaughanCutoff A) n) *
        2 * (1 / Real.sqrt (M : ℝ) - Real.exp (-s / 2)) := by
  have hM0 : 0 < (M : ℝ) := by exact_mod_cast (by omega : 0 < M)
  have he : (∫ v in Real.log (M : ℝ)..s,
      actualLogColumnPrefix A v * Real.exp (-v / 2)) =
      ∫ v in Real.log (M : ℝ)..s,
        (∑ n ∈ Finset.Ioc (vaughanCutoff A) M, centeredBeta (vaughanCutoff A) n) *
          Real.exp (-v / 2) := by
    apply intervalIntegral.integral_congr_ae
    rw [uIoc_of_le hs0]
    filter_upwards [actualLogColumnPrefix_ae_log_cell A hM] with v hv hm
    rw [hv ⟨hm.1, hm.2.trans hs1.le⟩]
  rw [he, intervalIntegral.integral_const_mul, exp_neg_half_integral _ _ hs0,
    exp_neg_log_half _ hM0]
  ring

/-- The true closed floor inventory and prefix jointly cancel every moving integer jump. -/
theorem actual_prefix_half_integral_eq_closed_inventory {A s : ℝ} (hA : 1 ≤ A)
    (hs : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s) :
    (∫ v in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..s,
      actualLogColumnPrefix A v * Real.exp (-v / 2)) =
      2 * (closedCenteredHalfInventory (vaughanCutoff A) (Nat.floor (Real.exp s)) -
        (∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor (Real.exp s)),
          centeredBeta (vaughanCutoff A) n) / Real.sqrt (Real.exp s)) := by
  let U := vaughanCutoff A
  let M := Nat.floor (Real.exp s)
  have hu : ((U + 1 : ℕ) : ℝ) ≤ Real.exp s := by
    calc
      _ = Real.exp (Real.log ((U + 1 : ℕ) : ℝ)) := (Real.exp_log (by positivity)).symm
      _ ≤ _ := Real.exp_le_exp.mpr hs
  have hM : U + 1 ≤ M := Nat.le_floor hu
  have hU : 1 ≤ U := vaughanCutoff_pos A hA
  have hM1 : 1 ≤ M := by omega
  have hM0 : 0 < (M : ℝ) := by exact_mod_cast (by omega : 0 < M)
  have hMf : (M : ℝ) ≤ Real.exp s := Nat.floor_le (Real.exp_pos s).le
  have hs0 : Real.log (M : ℝ) ≤ s := by
    simpa only [Real.log_exp] using Real.log_le_log hM0 hMf
  have hs1 : s < Real.log ((M : ℝ) + 1) := by
    simpa only [Real.log_exp] using Real.log_lt_log (Real.exp_pos s)
      (Nat.lt_floor_add_one (Real.exp s))
  have hi := actualLogColumnPrefix_mul_intervalIntegrable A (M + 1) (by omega)
    (fun v : ℝ => Real.exp (-v / 2)) (by fun_prop)
  have hlog : Real.log ((U + 1 : ℕ) : ℝ) ≤ Real.log (M : ℝ) :=
    Real.log_le_log (by positivity) (by exact_mod_cast hM)
  have hsle : s ≤ Real.log ((M + 1 : ℕ) : ℝ) := by
    simpa only [Nat.cast_add, Nat.cast_one] using hs1.le
  have him := actualLogColumnPrefix_mul_intervalIntegrable A M hM
    (fun v : ℝ => Real.exp (-v / 2)) (by fun_prop)
  have hic : IntervalIntegrable (fun v => actualLogColumnPrefix A v * Real.exp (-v / 2))
      volume (Real.log (M : ℝ)) s := by
    apply hi.mono_set
    rw [uIcc_of_le (hlog.trans (hs0.trans hsle)), uIcc_of_le hs0]
    exact Icc_subset_Icc hlog hsle
  rw [← intervalIntegral.integral_add_adjacent_intervals him hic,
    integer_prefix_integral A M hM, partial_cell_integral A M s hM1 hs0 hs1]
  have hUM : U ≤ M - 1 := by omega
  have hMM : M - 1 + 1 = M := by omega
  have hsum := Finset.sum_Ioc_succ_top hUM (f := fun n => centeredBeta U n)
  have hhalf := Finset.sum_Ioc_succ_top hUM
    (f := fun n => centeredBeta U n / Real.sqrt (n : ℝ))
  rw [hMM] at hsum hhalf
  have hexp : Real.exp (-s / 2) = 1 / Real.sqrt (Real.exp s) := by
    rw [show -s / 2 = -(s / 2) by ring, Real.exp_neg, Real.exp_half, one_div]
  change _ = 2 * ((∑ n ∈ Finset.Ioc U M, centeredBeta U n / Real.sqrt (n : ℝ)) - _)
  simp only [closedCenteredHalfInventory]
  dsimp [U] at hsum hhalf ⊢
  rw [hsum, hhalf, hexp]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualVariableColumnDivisor
```
