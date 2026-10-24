# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKapitzaEventBalance.Variant5bbb28c5de07e0f7abe2b8b1180b41b605eb5c82c22d09dfcd1022945df4dd1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be5c7d6b8a6147010f70ceb976332aabe61dd604` · SHA-256 `820121bdc58770809c760111f6d37a01261d66c9b405c8baa76493305ebbeeb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Cutoff.Variant0d5015e39f8b9ac6dae39d42407f3e0760dc0c6087f4b656e1ab33b4fdb783ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d5015e39f8b9ac6dae39d42407f3e0760dc0c6087f4b656e1ab33b4fdb783ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Cutoff.Variant0d5015e39f8b9ac6dae39d42407f3e0760dc0c6087f4b656e1ab33b4fdb783ab","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0d5015e39f8b9ac6dae39d42407f3e0760dc0c6087f4b656e1ab33b4fdb783ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/post-Map285-PR450-actual-source-capture-v2-20261007T194312Z/selected-remote-blobs/FormalResearch/RiemannHypothesis/SourceKapitzaEventBalance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceKapitzaDiscrete
import FormalResearch.RiemannHypothesis.SourceKapitzaCycle
import FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage

/-!
# Complete physical-cell balance for the native Kapitza source

grwtsk contributors retains credit for the originating Kapitza direction,
theorem selection, conceptual direction, corrections and evaluation. OpenAI
Codex supplies this particular derivation and formalization. Recovery date:
7 October 2026; the original proposal date is unverified.

The smooth cell extension freezes the complete closed Chebyshev prefix. Its
upper trace precedes the next atom; the actual upper endpoint includes every
touching atom. No scale-uniform signed arithmetic witness is asserted.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Cutoff.Variant0d5015e39f8b9ac6dae39d42407f3e0760dc0c6087f4b656e1ab33b4fdb783ab

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceKapitzaEventBalance

open MeasureTheory Set SourcePairing SourceKapitzaReconstruction
open SourceKapitzaStorage SourceKapitzaSourceStorage SourceKapitzaCycle
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateMertensResidual EstimatePrimeSmoothDefect
open scoped BigOperators Interval

def cutoff (A : ℝ) : ℕ := ⌊Real.exp (2 * A)⌋₊

def node (A : ℝ) (j : ℕ) : ℝ := min (Real.log (j + 1 : ℕ)) (2 * A)

def frozenState (A : ℝ) (n : ℕ) (s : ℝ) : ℝ :=
  Real.exp (-s) * chebyshevPrimePower n - 1 - affineTrend A s

def frozenEnergy (A : ℝ) (n : ℕ) (s : ℝ) : ℝ :=
  storage (Real.exp (s / 2)) (frozenState A n s) (sourceCorrector A s)

def smoothBalance (A : ℝ) (n : ℕ) (s : ℝ) : ℝ :=
  -(3 / 2 : ℝ) * Real.exp (s / 2) * frozenState A n s ^ 2 +
    sourceCorrector A s * sourceForcing A s

theorem frozenState_hasDerivAt (A : ℝ) (n : ℕ) (s : ℝ) :
    HasDerivAt (frozenState A n) (-frozenState A n s + sourceForcing A s) s := by
  have he : HasDerivAt (fun t : ℝ => Real.exp (-t)) (-Real.exp (-s)) s := by
    convert ((hasDerivAt_id s).neg).exp using 1 <;> simp
  have ht := (hasDerivAt_const s (endpointValue A)).add
    (((hasDerivAt_const s (2 * A)).sub (hasDerivAt_id s)).const_mul (endpointSlope A))
  have hd := ((he.mul_const (chebyshevPrimePower n)).sub_const 1).sub ht
  exact hd.congr_deriv (by simp only [frozenState, sourceForcing, affineTrend]; ring)

theorem sourceCorrector_hasDerivAt (A s : ℝ) (hA : 1 ≤ A) :
    HasDerivAt (sourceCorrector A) (deriv (sourceCorrector A) s) s := by
  have hc := ((sourceCorrelation_contDiff A (by linarith : 0 < A)).differentiable
    (by norm_num) s).hasDerivAt
  exact (hasDerivAt_corrector (hasDerivAt_weight s) hc
    (sourceForcing_hasDerivAt A s)).differentiableAt.hasDerivAt

theorem frozenEnergy_hasDerivAt (A : ℝ) (n : ℕ) (s : ℝ) (hA : 1 ≤ A) :
    HasDerivAt (frozenEnergy A n)
      (-kapitzaWeight A s * frozenState A n s + smoothBalance A n s) s := by
  have hd := hasDerivAt_storage (hasDerivAt_weight s) (frozenState_hasDerivAt A n s)
    (sourceCorrector_hasDerivAt A s hA)
  have hc := sourceCorrector_deriv_cancel A s hA
  have hid := drift_identity (Real.exp (s / 2)) (frozenState A n s)
    (sourceForcing A s) (kapitzaKernel A s) (sourceCorrector A s)
    (deriv (sourceCorrector A) s)
  apply hd.congr_deriv
  dsimp only [smoothBalance, kapitzaWeight]
  have hzero : Real.exp (s / 2) * (kapitzaKernel A s + 2 * sourceForcing A s) +
      deriv (sourceCorrector A) s - sourceCorrector A s = 0 := by linarith only [hc]
  rw [hzero, zero_mul, add_zero] at hid
  linarith only [hid]

theorem frozenState_continuous (A : ℝ) (n : ℕ) : Continuous (frozenState A n) := by
  unfold frozenState affineTrend
  fun_prop

theorem sourceCorrector_continuous (A : ℝ) (hA : 1 ≤ A) :
    Continuous (sourceCorrector A) := by
  exact continuous_iff_continuousAt.mpr
    (fun s => (sourceCorrector_hasDerivAt A s hA).continuousAt)

theorem smoothBalance_continuous (A : ℝ) (n : ℕ) (hA : 1 ≤ A) :
    Continuous (smoothBalance A n) := by
  have hz := frozenState_continuous A n
  have hη := sourceCorrector_continuous A hA
  have hc : Continuous (sourceForcing A) :=
    continuous_iff_continuousAt.mpr (fun s => (sourceForcing_hasDerivAt A s).continuousAt)
  unfold smoothBalance
  fun_prop

/-- A full cell retains both continuous work terms and both energy traces. -/
theorem frozen_cell_balance (A : ℝ) (n : ℕ) (a b : ℝ) (hA : 1 ≤ A) :
    (∫ s in a..b, kapitzaWeight A s * frozenState A n s) =
      frozenEnergy A n a - frozenEnergy A n b + ∫ s in a..b, smoothBalance A n s := by
  have hk := ((kapitzaWeight_continuous A (by linarith)).mul
    (frozenState_continuous A n)).intervalIntegrable (μ := volume) a b
  have hs := (smoothBalance_continuous A n hA).intervalIntegrable (μ := volume) a b
  have hkn : IntervalIntegrable (fun s => -kapitzaWeight A s * frozenState A n s)
      volume a b := by
    convert hk.neg using 1
    funext s
    simp only [Pi.neg_apply, Pi.mul_apply, neg_mul]
  have hd : (∫ s in a..b, -kapitzaWeight A s * frozenState A n s + smoothBalance A n s) =
      frozenEnergy A n b - frozenEnergy A n a := by
    exact intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun s _ => frozenEnergy_hasDerivAt A n s hA)
      (hkn.add hs)
  rw [intervalIntegral.integral_add hkn hs,
    show (fun s => -kapitzaWeight A s * frozenState A n s) =
      (fun s => -(kapitzaWeight A s * frozenState A n s)) by funext s; ring,
    intervalIntegral.integral_neg] at hd
  linarith

theorem node_zero (A : ℝ) (hA : 0 ≤ A) : node A 0 = 0 := by
  simp [node, min_eq_left (by linarith : (0 : ℝ) ≤ 2 * A)]

theorem node_cutoff (A : ℝ) (_hA : 0 ≤ A) : node A (cutoff A) = 2 * A := by
  have hn : Real.exp (2 * A) < (cutoff A + 1 : ℕ) := by
    simpa only [cutoff, Nat.cast_add, Nat.cast_one] using Nat.lt_floor_add_one (Real.exp (2 * A))
  have hp : 0 < ((cutoff A + 1 : ℕ) : ℝ) := by positivity
  unfold node
  exact min_eq_right ((Real.le_log_iff_exp_le hp).mpr hn.le)

theorem node_eq_log (A : ℝ) (_hA : 0 ≤ A) (j : ℕ) (hj : j < cutoff A) :
    node A j = Real.log (j + 1 : ℕ) := by
  have hn : j + 1 ≤ cutoff A := by omega
  have hlow : (j + 1 : ℕ) ≤ Real.exp (2 * A) :=
    (Nat.le_floor_iff (Real.exp_pos _).le).mp hn
  exact min_eq_left ((Real.log_le_iff_le_exp (by positivity)).mpr hlow)

theorem node_mono (A : ℝ) : Monotone (node A) := by
  intro i j hij
  apply min_le_min_right
  exact Real.log_le_log (by positivity) (by exact_mod_cast Nat.add_le_add_right hij 1)

/-- The actual source equals its frozen extension in every open physical cell. -/
theorem actual_frozenState (A : ℝ) (hA : 0 ≤ A) (j : ℕ) (hj : j < cutoff A)
    (s : ℝ) (hs : s ∈ Ioo (node A j) (node A (j + 1))) :
    nonaffineDiscrepancy A s = frozenState A (j + 1) s := by
  have hleft : Real.log (j + 1 : ℕ) ≤ s := by
    rw [node_eq_log A hA j hj] at hs
    exact hs.1.le
  have hright : s < Real.log (j + 2 : ℕ) := by
    exact hs.2.trans_le (by simpa only [node, Nat.add_assoc] using
      (min_le_left (Real.log (j + 1 + 1 : ℕ)) (2 * A)))
  have hlow : (j + 1 : ℕ) ≤ Real.exp s :=
    (Real.log_le_iff_le_exp (by positivity)).mp hleft
  have hup : Real.exp s < (j + 1 : ℕ) + 1 := by
    have h := (Real.lt_log_iff_exp_lt (by positivity : 0 < ((j + 2 : ℕ) : ℝ))).mp hright
    push_cast at h ⊢
    linarith only [h]
  rw [nonaffineDiscrepancy, normalizedPsiError_eq_prefix,
    source_prefix_frozen (j + 1) _ hlow hup]
  rfl

/-- Multiplying the actual step source by a continuous test retains integrability. -/
theorem nonaffine_mul_continuous_intervalIntegrable (A a b : ℝ) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : Continuous F) :
    IntervalIntegrable (fun s => F s * nonaffineDiscrepancy A s) volume a b := by
  have ht : Continuous (affineTrend A) := by unfold affineTrend; fun_prop
  have hz := (normalizedPsiError_intervalIntegrable a b hab).sub
    (ht.intervalIntegrable (μ := volume) a b)
  simpa only [Pi.sub_apply, nonaffineDiscrepancy, mul_comm] using
    hz.mul_continuousOn hF.continuousOn

/-- Exact integration over all physical cells. Only endpoints, a null set, are excluded. -/
theorem actual_cell_partition (A : ℝ) (hA : 0 ≤ A) (F : ℝ → ℝ) (hF : Continuous F) :
    (∫ s in 0..2 * A, F s * nonaffineDiscrepancy A s) =
      ∑ j ∈ Finset.range (cutoff A),
        ∫ s in node A j..node A (j + 1), F s * frozenState A (j + 1) s := by
  have hsum := intervalIntegral.sum_integral_adjacent_intervals
    (a := node A) (n := cutoff A)
    (fun j _ => nonaffine_mul_continuous_intervalIntegrable A _ _
      (node_mono A (Nat.le_succ j)) F hF)
  rw [node_zero A hA, node_cutoff A hA] at hsum
  rw [← hsum]
  apply Finset.sum_congr rfl
  intro j hj
  apply intervalIntegral.integral_congr_Ioo_of_le (node_mono A (Nat.le_succ j))
  intro s hs
  dsimp only
  rw [actual_frozenState A hA j (Finset.mem_range.mp hj) s hs]

/-- Native K-C1 reconstruction with all smooth cell costs and energy traces. -/
theorem nonaffineWork_cell_balance (A : ℝ) (hA : 1 ≤ A) :
    nonaffineWork A =
      ∑ j ∈ Finset.range (cutoff A),
        (frozenEnergy A (j + 1) (node A j) -
          frozenEnergy A (j + 1) (node A (j + 1)) +
            ∫ s in node A j..node A (j + 1), smoothBalance A (j + 1) s) := by
  rw [nonaffineWork, actual_cell_partition A (by linarith) _
    (kapitzaWeight_continuous A (by linarith))]
  apply Finset.sum_congr rfl
  intro j _
  exact frozen_cell_balance A (j + 1) _ _ hA

/-- Each actual event uses the full prime-power increment of its closed prefix. -/
theorem frozenState_event (A : ℝ) (n : ℕ) (hn : 1 ≤ n) :
    frozenState A (n + 1) (Real.log (n + 1 : ℕ)) =
      frozenState A n (Real.log (n + 1 : ℕ)) +
        ArithmeticFunction.vonMangoldt (n + 1) / (n + 1 : ℕ) := by
  have hp : 0 < ((n + 1 : ℕ) : ℝ) := by positivity
  simp only [frozenState, SourceKapitzaDiscrete.closed_prefix_succ hn,
    Real.exp_neg, Real.exp_log hp]
  ring

/-- The square contribution is exactly Lambda(n)^2/n^(3/2), with no coefficient dropped. -/
theorem event_quadratic_coefficient (n : ℕ) (hn : 0 < n) :
    Real.exp (Real.log n / 2) * (ArithmeticFunction.vonMangoldt n / (n : ℝ)) ^ 2 =
      quadraticImpulse n := by
  have hp : 0 < (n : ℝ) := by exact_mod_cast hn
  have hx : Real.exp (Real.log n / 2) * Real.exp (Real.log n * (3 / 2 : ℝ)) =
      (n : ℝ) ^ 2 := by
    rw [← Real.exp_add]
    calc
      _ = Real.exp (Real.log n + Real.log n) := by congr 1; ring
      _ = _ := by rw [Real.exp_add, Real.exp_log hp]; ring
  unfold quadraticImpulse
  rw [Real.rpow_def_of_pos hp]
  have he : Real.exp (Real.log n * (3 / 2 : ℝ)) ≠ 0 := (Real.exp_pos _).ne'
  have harg : Real.log n * (3 / 2 : ℝ) = Real.log n * 3 / 2 := by ring
  rw [harg] at hx
  field_simp
  calc
    _ = ArithmeticFunction.vonMangoldt n ^ 2 *
        (Real.exp (Real.log n / 2) * Real.exp (Real.log n * 3 / 2)) := by ring
    _ = _ := by rw [hx]

/-- Both linear interactions and the full quadratic atom survive the energy jump. -/
theorem frozenEnergy_event (A : ℝ) (n : ℕ) (hn : 1 ≤ n) :
    frozenEnergy A (n + 1) (Real.log (n + 1 : ℕ)) -
      frozenEnergy A n (Real.log (n + 1 : ℕ)) =
        2 * Real.exp (Real.log (n + 1 : ℕ) / 2) *
          frozenState A n (Real.log (n + 1 : ℕ)) *
            (ArithmeticFunction.vonMangoldt (n + 1) / (n + 1 : ℕ)) +
        sourceCorrector A (Real.log (n + 1 : ℕ)) *
          (ArithmeticFunction.vonMangoldt (n + 1) / (n + 1 : ℕ)) +
        quadraticImpulse (n + 1) := by
  unfold frozenEnergy
  rw [frozenState_event A n hn, jump_continuous_corrector,
    event_quadratic_coefficient (n + 1) (by omega)]
  ring

/-- Finite telescoping retains signed jumps instead of taking their positive parts. -/
theorem staggered_energy_telescope (L R : ℕ → ℝ) (m : ℕ) :
    (∑ j ∈ Finset.range (m + 1), (L j - R j)) =
      L 0 - R m + ∑ j ∈ Finset.range m, (L (j + 1) - R j) := by
  rw [Finset.sum_sub_distrib, Finset.sum_range_succ' L, Finset.sum_range_succ R,
    Finset.sum_sub_distrib]
  ring

theorem frozenEnergy_initial (A : ℝ) : frozenEnergy A 1 0 = sourceStorage A 0 := by
  simp only [frozenEnergy, sourceStorage, frozenState, nonaffineDiscrepancy,
    normalizedPsiError_eq_prefix, Nat.cast_one, Real.exp_zero]

/-- The final closed prefix agrees at the physical real endpoint, including a touching atom. -/
theorem frozenEnergy_terminal (A : ℝ) :
    frozenEnergy A (cutoff A) (2 * A) = 0 := by
  have hp : chebyshevPrimePower (cutoff A) = chebyshevPrimePower (Real.exp (2 * A)) := by
    simp [chebyshevPrimePower, cutoff]
  rw [frozenEnergy, frozenState, hp, ← normalizedPsiError_eq_prefix]
  change storage (Real.exp (2 * A / 2)) (nonaffineDiscrepancy A (2 * A))
    (sourceCorrector A (2 * A)) = 0
  rw [nonaffineDiscrepancy_upper, storage_endpoint]

def eventLinearWork (A : ℝ) (n : ℕ) : ℝ :=
  2 * Real.exp (Real.log n / 2) * frozenState A (n - 1) (Real.log n) *
    (ArithmeticFunction.vonMangoldt n / (n : ℝ)) +
  sourceCorrector A (Real.log n) * (ArithmeticFunction.vonMangoldt n / (n : ℝ))

def totalSmoothWork (A : ℝ) : ℝ :=
  ∑ j ∈ Finset.range (cutoff A),
    ∫ s in node A j..node A (j + 1), smoothBalance A (j + 1) s

def totalEventWork (A : ℝ) : ℝ :=
  ∑ j ∈ Finset.range (cutoff A - 1), eventLinearWork A (j + 2)

def totalQuadraticWork (A : ℝ) : ℝ :=
  ∑ j ∈ Finset.range (cutoff A - 1), quadraticImpulse (j + 2)

/-- Complete K-C1: every smooth cost and every literal prime-power event is present. -/
theorem nonaffineWork_complete_balance (A : ℝ) (hA : 1 ≤ A) :
    nonaffineWork A = sourceStorage A 0 + totalSmoothWork A +
      totalEventWork A + totalQuadraticWork A := by
  have hN : 1 ≤ cutoff A :=
    (Nat.one_le_floor_iff _).mpr (Real.one_le_exp (by linarith))
  have hNm : cutoff A - 1 + 1 = cutoff A := by omega
  have ht := staggered_energy_telescope
    (fun j => frozenEnergy A (j + 1) (node A j))
    (fun j => frozenEnergy A (j + 1) (node A (j + 1))) (cutoff A - 1)
  rw [hNm, node_zero A (by linarith), frozenEnergy_initial A,
    node_cutoff A (by linarith), frozenEnergy_terminal A, sub_zero] at ht
  have hj : (∑ j ∈ Finset.range (cutoff A - 1),
      (frozenEnergy A (j + 1 + 1) (node A (j + 1)) -
        frozenEnergy A (j + 1) (node A (j + 1)))) =
      totalEventWork A + totalQuadraticWork A := by
    unfold totalEventWork totalQuadraticWork
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro j hj
    have hjN : j + 1 < cutoff A := by have := Finset.mem_range.mp hj; omega
    rw [node_eq_log A (by linarith) (j + 1) hjN,
      frozenEnergy_event A (j + 1) (by omega)]
    simp only [eventLinearWork, Nat.add_assoc, Nat.reduceAdd]
    rw [show j + 2 - 1 = j + 1 by omega]
  rw [hj] at ht
  rw [nonaffineWork_cell_balance A hA, Finset.sum_add_distrib, ht]
  unfold totalSmoothWork
  ring

/-- This inventory is exactly the closed inventory 2,...,floor(exp(2A)). -/
theorem totalQuadraticWork_eq_inventory (A : ℝ) :
    totalQuadraticWork A = ∑ n ∈ Finset.Icc 2 (cutoff A), quadraticImpulse n := by
  unfold totalQuadraticWork
  apply Finset.sum_bij (fun j _ => j + 2)
  · intro j hj
    simp only [Finset.mem_range] at hj
    simp only [Finset.mem_Icc]
    omega
  · intro i hi j hj hij
    omega
  · intro n hn
    refine ⟨n - 2, ?_, by have := Finset.mem_Icc.mp hn; omega⟩
    have := Finset.mem_Icc.mp hn
    simp only [Finset.mem_range]
    omega
  · intro j _
    rfl

theorem totalQuadraticWork_le (A : ℝ) : totalQuadraticWork A ≤ quadraticConstant := by
  rw [totalQuadraticWork_eq_inventory]
  exact quadraticImpulse_sum_le _

/-- The signed terminal budget includes the actual initial energy and affine compensation. -/
def combinedTerminalWork (A : ℝ) : ℝ :=
  sourceStorage A 0 + totalSmoothWork A + totalEventWork A + trendValue A

theorem native_residual_complete_balance (A : ℝ) (hA : 1 ≤ A) :
    EstimateMertensResidual.mertensResidual A =
      -1 + continuousDefect A + combinedTerminalWork A + totalQuadraticWork A := by
  rw [mertensResidual_eq_defect_trend_nonaffine A hA,
    nonaffineWork_complete_balance A hA]
  unfold combinedTerminalWork
  ring

/-- Immediate native all-real return. The independent signed terminal cap remains visible. -/
theorem original_lower_of_combined_terminal_cap (R B : ℝ) (hR : 1 ≤ R)
    (hbudget : ∀ A : ℝ, R ≤ A → combinedTerminalWork A ≤ B) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor R)
        (archimedeanMultiplier 0 + 2 - 2 * B - 2 * quadraticConstant -
          2 * continuousDefect R) ≤ sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · have hr := native_residual_complete_balance A hA
    have hb := hbudget A hRA
    have hq := totalQuadraticWork_le A
    have hd := continuousDefect_antitone (by linarith : 0 ≤ R) hRA
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hp : primePowerContribution explicitSecondDerivative A =
        EstimateMertensResidual.mertensResidual A := by
      rw [primePowerContribution_eq_closedPrimeMoment A hA,
        EstimateMertensResidual.mertensResidual_eq_closedPrimeMoment A hA]
    apply (min_le_right _ _).trans
    unfold sourceQuadraticValue
    rw [hp]
    linarith
  · exact (min_le_left _ _).trans
      (originalPrefixFloor_le R A hA (le_of_not_ge hRA))

theorem estimate_of_combined_terminal_cap (R B : ℝ) (hR : 1 ≤ R)
    (hbudget : ∀ A : ℝ, R ≤ A → combinedTerminalWork A ≤ B) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, original_lower_of_combined_terminal_cap R B hR hbudget⟩

end FormalResearch.RiemannHypothesis.SourceKapitzaEventBalance
```
