# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Attempt04.Variant907b98103479928acd56f9fdbebc0e315994e1b797baeace9db648c90d217308

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ea63a26a1c3f4953404950d73b1e9c4d99170b3` · SHA-256 `94a5cc5e451f2bec6e251350eda5c194c3a9ddcc435317b990d178cd700924b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PrefixTelescope.Variant52fd3d6f517c1a9f68abf8a36638b88956830f55e845e4c01f23dd322bffd0d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52fd3d6f517c1a9f68abf8a36638b88956830f55e845e4c01f23dd322bffd0d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PrefixTelescope.Variant52fd3d6f517c1a9f68abf8a36638b88956830f55e845e4c01f23dd322bffd0d0","mathematical_subject":"Analysis.Integration","original_sha256":"52fd3d6f517c1a9f68abf8a36638b88956830f55e845e4c01f23dd322bffd0d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-variable-column-divisor/attempt04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Analysis.RealAnalysis.Integration.PrefixTelescope.Variant52fd3d6f517c1a9f68abf8a36638b88956830f55e845e4c01f23dd322bffd0d0

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualVariableColumnDivisor
open MeasureTheory Set Filter ArithmeticFunction
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


/-- Closed actual centered prefixes retain the original plus unit and quotient floors. -/
theorem closed_centered_prefix_eq_divisor_quotients (U M : ℕ)
    (hU : 1 ≤ U) (hUM : U ≤ M) :
    (∑ n ∈ Finset.Ioc U M, centeredBeta U n) =
      alpha U * ((M : ℝ) - (U : ℝ)) + 1 -
        ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((M / d : ℕ) : ℝ) := by
  have hc : (∑ n ∈ Finset.Ioc U M, (1 : ℝ)) = (M : ℝ) - (U : ℝ) := by
    simpa using multiples_interval_sum U M 1 hUM
  have ha : (∑ n ∈ Finset.Ioc U M, alpha U) = alpha U * ((M : ℝ) - (U : ℝ)) := by
    rw [← hc, Finset.mul_sum]
    simp
  simp only [centeredBeta, Finset.sum_add_distrib]
  rw [ha, beta_interval_eq_quotients U U M hU le_rfl hUM]
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, actual_moebius_quotient_sum_eq_one U hU]
  ring

/-- The new closed integer coefficient cancels only against its matching terminal prefix. -/
theorem closed_half_inventory_terminal_succ (U M : ℕ) (hUM : U + 1 ≤ M) :
    closedCenteredHalfInventory U M -
      (∑ n ∈ Finset.Ioc U M, centeredBeta U n) / Real.sqrt (M : ℝ) =
        closedCenteredHalfInventory U (M - 1) -
          (∑ n ∈ Finset.Ioc U (M - 1), centeredBeta U n) / Real.sqrt (M : ℝ) := by
  have hn : U ≤ M - 1 := by omega
  have he : M - 1 + 1 = M := by omega
  have hsum := Finset.sum_Ioc_succ_top hn (f := fun n => centeredBeta U n)
  have hhalf := Finset.sum_Ioc_succ_top hn
    (f := fun n => centeredBeta U n / Real.sqrt (n : ℝ))
  rw [he] at hsum hhalf
  unfold closedCenteredHalfInventory
  rw [hsum, hhalf]
  ring

private theorem column_upper_order {A : ℝ} (hA : 1 ≤ A) :
    Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualColumnUpper A := by
  exact Real.log_le_log (by positivity) (by exact_mod_cast actual_column_window_nonempty hA)

/-- The literal adjoint is its full moving closed inventory with the original upper trace. -/
theorem actualAdjointColumnPrimitive_eq_closed_inventory {A s : ℝ} (hA : 1 ≤ A)
    (hs0 : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s)
    (hs1 : s ≤ actualColumnUpper A) :
    actualAdjointColumnPrimitive A s =
      2 * Real.sqrt (Real.exp s) *
        closedCenteredHalfInventory (vaughanCutoff A) (Nat.floor (Real.exp s)) -
      2 * (∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor (Real.exp s)),
        centeredBeta (vaughanCutoff A) n) +
      2 * Real.sqrt (Real.exp s) *
        (actualCenteredColumnTerminalTrace A - actualCenteredColumnHalfInventory A) := by
  let K := sourceKernelCutoff A / (vaughanCutoff A + 1)
  have hK : vaughanCutoff A + 1 ≤ K := actual_column_window_nonempty hA
  have hi := actualLogColumnPrefix_mul_intervalIntegrable A K hK
    (fun v : ℝ => Real.exp (-v / 2)) (by fun_prop)
  change IntervalIntegrable (fun v => actualLogColumnPrefix A v * Real.exp (-v / 2))
    volume (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A) at hi
  have his : IntervalIntegrable (fun v => actualLogColumnPrefix A v * Real.exp (-v / 2))
      volume (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) s := by
    apply hi.mono_set
    rw [uIcc_of_le (column_upper_order hA), uIcc_of_le hs0]
    exact Icc_subset_Icc_left hs1
  have hc : (∫ v in actualColumnUpper A..
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ),
      actualLogColumnPrefix A v * Real.exp (-v / 2)) =
      -2 * (actualCenteredColumnHalfInventory A - actualCenteredColumnTerminalTrace A) := by
    rw [intervalIntegral.integral_symm]
    simpa only [actualColumnUpper, actualCenteredColumnHalfInventory,
      actualCenteredColumnTerminalTrace, closedCenteredHalfInventory, K, neg_mul] using
      congrArg Neg.neg (integer_prefix_integral A K hK)
  have hadd := intervalIntegral.integral_add_adjacent_intervals hi.symm his
  have hp := actual_prefix_half_integral_eq_closed_inventory hA hs0
  unfold actualAdjointColumnPrimitive
  have hcomm : (fun v : ℝ => Real.exp (-v / 2) * actualLogColumnPrefix A v) =
      (fun v : ℝ => actualLogColumnPrefix A v * Real.exp (-v / 2)) := by
    funext v
    ring
  rw [hcomm, ← hadd, hc, hp, Real.exp_half]
  have hz : Real.sqrt (Real.exp s) ≠ 0 := (Real.sqrt_pos.2 (Real.exp_pos s)).ne'
  field_simp
  ring

/-- The actual adjusted adjoint keeps its centered beta inventory and finite upper defect. -/
theorem actual_adjusted_column_eq_closed_inventory {A s : ℝ} (hA : 1 ≤ A)
    (hs0 : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s)
    (hs1 : s ≤ actualColumnUpper A) :
    actualCriticalAdjustedColumnPrimitive A s =
      2 * Real.sqrt (Real.exp s) *
        closedCenteredHalfInventory (vaughanCutoff A) (Nat.floor (Real.exp s)) -
      2 * (∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor (Real.exp s)),
        centeredBeta (vaughanCutoff A) n) +
      2 * Real.sqrt (Real.exp s) *
        (actualCenteredColumnTerminalTrace A - actualCenteredHalfUpperDefect A) := by
  unfold actualCriticalAdjustedColumnPrimitive
  rw [actualAdjointColumnPrimitive_eq_closed_inventory hA hs0 hs1, Real.exp_half]
  unfold actualCenteredHalfUpperDefect
  ring

/-- Actual short Moebius quotients and harmonic rows expand the full adjusted column. -/
theorem actual_adjusted_column_eq_divisor_harmonics {A s : ℝ} (hA : 1 ≤ A)
    (hs0 : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s)
    (hs1 : s ≤ actualColumnUpper A) :
    actualCriticalAdjustedColumnPrimitive A s =
      2 * Real.sqrt (Real.exp s) *
        (alpha (vaughanCutoff A) * finiteHalfHarmonic (Nat.floor (Real.exp s)) -
          (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) / Real.sqrt (d : ℝ) *
            finiteHalfHarmonic (Nat.floor (Real.exp s) / d)) + 1 -
          alpha (vaughanCutoff A) * finiteHalfHarmonic (vaughanCutoff A)) -
      2 * (alpha (vaughanCutoff A) *
          (((Nat.floor (Real.exp s) : ℕ) : ℝ) - (vaughanCutoff A : ℝ)) + 1 -
        ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
          (moebius d : ℝ) * ((Nat.floor (Real.exp s) / d : ℕ) : ℝ)) +
      2 * Real.sqrt (Real.exp s) *
        (actualCenteredColumnTerminalTrace A - actualCenteredHalfUpperDefect A) := by
  have hU := vaughanCutoff_pos A hA
  have hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ Real.exp s := by
    calc
      _ = Real.exp (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) :=
        (Real.exp_log (by positivity)).symm
      _ ≤ _ := Real.exp_le_exp.mpr hs0
  have hM : vaughanCutoff A ≤ Nat.floor (Real.exp s) := by
    have := Nat.le_floor hu
    omega
  rw [actual_adjusted_column_eq_closed_inventory hA hs0 hs1,
    closedCenteredHalfInventory_eq_finite_harmonics _ _ hU hM,
    closed_centered_prefix_eq_divisor_quotients _ _ hU hM]

/-- At the closed upper K seam, the full inventory cancels its new jump and retains the main. -/
theorem actual_adjusted_column_upper_closed_inventory {A : ℝ} (hA : 1 ≤ A) :
    actualCriticalAdjustedColumnPrimitive A (actualColumnUpper A) =
      2 * Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) *
        actualCenteredHalfZetaMain (vaughanCutoff A) := by
  let K := sourceKernelCutoff A / (vaughanCutoff A + 1)
  have hK : vaughanCutoff A + 1 ≤ K := actual_column_window_nonempty hA
  have hK0 : 0 < (K : ℝ) := by exact_mod_cast (show 0 < K by omega)
  have hexp : Real.exp (actualColumnUpper A) = (K : ℝ) := Real.exp_log hK0
  rw [actual_adjusted_column_eq_closed_inventory hA (column_upper_order hA) le_rfl,
    hexp, Nat.floor_natCast]
  have he := closed_half_inventory_terminal_succ (vaughanCutoff A) K hK
  have hz : Real.sqrt (K : ℝ) ≠ 0 := (Real.sqrt_pos.2 hK0).ne'
  unfold actualCenteredHalfUpperDefect actualCenteredColumnHalfInventory
    actualCenteredColumnTerminalTrace
  change 2 * Real.sqrt (K : ℝ) * closedCenteredHalfInventory (vaughanCutoff A) K -
      2 * (∑ n ∈ Finset.Ioc (vaughanCutoff A) K, centeredBeta (vaughanCutoff A) n) +
      2 * Real.sqrt (K : ℝ) *
        ((∑ n ∈ Finset.Ioc (vaughanCutoff A) (K - 1), centeredBeta (vaughanCutoff A) n) /
          Real.sqrt (K : ℝ) -
          (closedCenteredHalfInventory (vaughanCutoff A) (K - 1) -
            actualCenteredHalfZetaMain (vaughanCutoff A))) = _
  field_simp at he ⊢
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceActualVariableColumnDivisor
```
