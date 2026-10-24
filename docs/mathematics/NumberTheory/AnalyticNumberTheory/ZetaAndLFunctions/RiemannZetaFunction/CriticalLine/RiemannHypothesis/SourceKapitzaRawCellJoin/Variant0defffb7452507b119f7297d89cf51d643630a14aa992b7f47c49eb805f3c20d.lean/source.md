# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKapitzaRawCellJoin.Variant0defffb7452507b119f7297d89cf51d643630a14aa992b7f47c49eb805f3c20d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9b41e87fad1373ae58cca821b6511804f2c4b63` · SHA-256 `992cc554d8edf765f81294b8de93a4d2c861ba629be519bfdc244605afb96371`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RawActualCellPartition.Variant9b942028e2f4c30c5ab3a8aabe0b85dcc743003d7f5271707c09816ac39ec99e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b942028e2f4c30c5ab3a8aabe0b85dcc743003d7f5271707c09816ac39ec99e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RawActualCellPartition.Variant9b942028e2f4c30c5ab3a8aabe0b85dcc743003d7f5271707c09816ac39ec99e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9b942028e2f4c30c5ab3a8aabe0b85dcc743003d7f5271707c09816ac39ec99e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/post-Map285-PR450-actual-source-capture-v2-20261007T194312Z/selected-remote-blobs/FormalResearch/RiemannHypothesis/SourceKapitzaRawCellJoin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceKapitzaEventBalance
import FormalResearch.RiemannHypothesis.SourceKapitzaTerminalCertificate

/-!
# Unconditional physical-cell join for the signed terminal certificate

RH16-KAPITZA-20261007. grwtsk contributors retains originating Kapitza direction,
theorem selection, corrections and evaluation; original proposal date unverified.
OpenAI Codex supplies this particular adapter and formalization, recovered
7 October 2026. The complete original closed source and the physical final cell
are retained. A uniform signed arithmetic certificate is still required.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RawActualCellPartition.Variant9b942028e2f4c30c5ab3a8aabe0b85dcc743003d7f5271707c09816ac39ec99e

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceKapitzaRawCellJoin

open MeasureTheory Set SourcePairing SourceKapitzaReconstruction SourceKapitzaDiscrete
open SourceKapitzaEventBalance SourceKapitzaTerminalCertificate
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual PrimePowerDescent CorrelationRegularity
open scoped BigOperators Interval

/-- The same native partition applies to raw discrepancy after restoring its affine term. -/
theorem raw_actual_cell_partition (A : ℝ) (hA : 0 ≤ A)
    (F : ℝ → ℝ) (hF : Continuous F) :
    (∫ s in 0..2 * A, F s * normalizedPsiError s) =
      ∑ j ∈ Finset.range (cutoff A),
        ∫ s in node A j..node A (j + 1),
          F s * (Real.exp (-s) * chebyshevPrimePower (j + 1 : ℕ) - 1) := by
  have hsum := intervalIntegral.sum_integral_adjacent_intervals
    (a := node A) (n := cutoff A)
    (fun j _ => by
      have hz := normalizedPsiError_intervalIntegrable _ _ (node_mono A (Nat.le_succ j))
      simpa only [mul_comm] using hz.mul_continuousOn hF.continuousOn)
  rw [node_zero A hA, node_cutoff A hA] at hsum
  rw [← hsum]
  apply Finset.sum_congr rfl
  intro j hj
  apply intervalIntegral.integral_congr_Ioo_of_le (node_mono A (Nat.le_succ j))
  intro s hs
  dsimp only
  have he := actual_frozenState A hA j (Finset.mem_range.mp hj) s hs
  unfold nonaffineDiscrepancy frozenState at he
  have hz : normalizedPsiError s = Real.exp (-s) * chebyshevPrimePower (j + 1 : ℕ) - 1 :=
    by linarith only [he]
  rw [hz]

/-- The affine cell readout uses the exact normalized integer state, not a frozen approximation. -/
theorem raw_frozen_affine (A s : ℝ) (j : ℕ) (hj : j < rawCutoff A) :
    Real.exp (-s) * chebyshevPrimePower (j + 1 : ℕ) - 1 =
      Real.exp (rawCellLeft j - s) * physicalState A j +
        (Real.exp (rawCellLeft j - s) - 1) := by
  have hn : 0 < ((j + 1 : ℕ) : ℝ) := by positivity
  rw [physicalState, if_pos hj, integerDiscrepancy_eq_prefix (by omega)]
  have he : Real.exp (rawCellLeft j - s) = (j + 1 : ℕ) * Real.exp (-s) := by
    rw [rawCellLeft, sub_eq_add_neg, Real.exp_add, Real.exp_log hn]
  rw [he]
  have hn0 : ((j + 1 : ℕ) : ℝ) ≠ 0 := hn.ne'
  field_simp
  ring

/-- The actual cell endpoints agree, including the final truncated or touching cell. -/
theorem raw_cell_endpoints (A : ℝ) (hA : 0 ≤ A) (j : ℕ) (hj : j < rawCutoff A) :
    node A j = rawCellLeft j ∧ node A (j + 1) = rawCellRight A j := by
  constructor
  · exact node_eq_log A hA j hj
  · simp only [node, rawCellRight, Nat.add_assoc]

theorem raw_cell_integral_eq (A : ℝ) (hA : 1 ≤ A) (j : ℕ) (hj : j < rawCutoff A) :
    (∫ s in node A j..node A (j + 1),
      kapitzaWeight A s * (Real.exp (-s) * chebyshevPrimePower (j + 1 : ℕ) - 1)) =
        rawCellReadout A j := by
  rcases raw_cell_endpoints A (by linarith) j hj with ⟨hleft, hright⟩
  rw [hleft, hright]
  have hk := kapitzaWeight_continuous A (by linarith : 0 < A)
  have hexp : Continuous (fun s : ℝ => Real.exp (rawCellLeft j - s)) := by fun_prop
  have hf : Continuous (fun s : ℝ =>
      (kapitzaWeight A s * Real.exp (rawCellLeft j - s)) * physicalState A j) :=
    (hk.mul hexp).mul_const _
  have hg : Continuous (fun s : ℝ =>
      kapitzaWeight A s * (Real.exp (rawCellLeft j - s) - 1)) :=
    hk.mul (hexp.sub continuous_const)
  have he : (fun s : ℝ =>
      kapitzaWeight A s * (Real.exp (-s) * chebyshevPrimePower (j + 1 : ℕ) - 1)) =
      fun s => (kapitzaWeight A s * Real.exp (rawCellLeft j - s)) * physicalState A j +
        kapitzaWeight A s * (Real.exp (rawCellLeft j - s) - 1) := by
    funext s
    rw [raw_frozen_affine A s j hj]
    ring
  rw [he, intervalIntegral.integral_add
    (hf.intervalIntegrable (μ := volume) _ _) (hg.intervalIntegrable (μ := volume) _ _),
    intervalIntegral.integral_mul_const]
  rfl

/-- The reconstruction premise of the terminal certificate is now an actual native theorem. -/
theorem rawCellReconstruction_native (A : ℝ) (hA : 1 ≤ A) : RawCellReconstruction A := by
  unfold RawCellReconstruction
  rw [raw_actual_cell_partition A (by linarith) (kapitzaWeight A)
    (kapitzaWeight_continuous A (by linarith))]
  apply Finset.sum_congr rfl
  intro j hj
  exact raw_cell_integral_eq A hA j (Finset.mem_range.mp hj)

/-- The exact cell coefficient is a signed boundary difference, with its true right endpoint. -/
theorem rawCellCoefficient_boundary (A : ℝ) (hA : 1 ≤ A) (j : ℕ) :
    rawCellCoefficient A j = (j + 1 : ℕ) *
      (exponentialTest (sourceCorrelation explicitSecondDerivative A) (rawCellLeft j) -
        exponentialTest (sourceCorrelation explicitSecondDerivative A) (rawCellRight A j)) := by
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hc : ContDiff ℝ 1 C := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hF : ContDiff ℝ 1 F := exponentialTest_contDiff C hc
  have hd := hF.continuous_deriv_one.intervalIntegrable (μ := volume)
    (rawCellLeft j) (rawCellRight A j)
  have ht := intervalIntegral.integral_deriv_eq_sub
    (fun s _ => hF.differentiable (by norm_num) s) hd
  have hn : 0 < ((j + 1 : ℕ) : ℝ) := by positivity
  have hfun : (fun s => kapitzaWeight A s * Real.exp (rawCellLeft j - s)) =
      fun s => -((j + 1 : ℕ) : ℝ) * deriv F s := by
    funext s
    have hex : Real.exp (s / 2) * Real.exp (rawCellLeft j - s) =
        (j + 1 : ℕ) * Real.exp (-s / 2) := by
      calc
        _ = Real.exp (Real.log (j + 1 : ℕ) + (-s / 2)) := by
          rw [← Real.exp_add, rawCellLeft]
          congr 1
          ring
        _ = _ := by rw [Real.exp_add, Real.exp_log hn]
    change _ = -((j + 1 : ℕ) : ℝ) * deriv (exponentialTest C) s
    rw [exponentialTest_deriv C hc]
    dsimp only [kapitzaWeight, kapitzaKernel, C]
    calc
      _ = (Real.exp (s / 2) * Real.exp (rawCellLeft j - s)) *
          (sourceCorrelation explicitSecondDerivative A s / 2 -
            deriv (sourceCorrelation explicitSecondDerivative A) s) := by ring
      _ = _ := by rw [hex]; ring
  rw [rawCellCoefficient, hfun, intervalIntegral.integral_const_mul, ht]
  dsimp only [F, C]
  ring

/-- Canonical backward linear coefficients are the original source's Abel boundary weights. -/
def canonicalLinearCoefficient (A : ℝ) (j : ℕ) : ℝ :=
  if j < rawCutoff A then
    (j + 1 : ℕ) * exponentialTest (sourceCorrelation explicitSecondDerivative A) (rawCellLeft j)
  else 0

theorem canonicalLinearCoefficient_initial (A : ℝ) (hA : 1 ≤ A) :
    canonicalLinearCoefficient A 0 = 1 := by
  have hN : 0 < rawCutoff A := by have := rawCutoff_pos A (by linarith); omega
  simp only [canonicalLinearCoefficient, if_pos hN, Nat.zero_add, Nat.cast_one,
    rawCellLeft, Real.log_one, exponentialTest, neg_zero, zero_div, Real.exp_zero, one_mul]
  exact EstimateCorrelation.actual_correlation_at_zero A hA

theorem canonicalLinearCoefficient_terminal (A : ℝ) :
    canonicalLinearCoefficient A (rawCutoff A) = 0 := by
  simp [canonicalLinearCoefficient]

/-- The backward recurrence holds through the last fractional cell. -/
theorem canonicalLinearCoefficient_backward (A : ℝ) (hA : 1 ≤ A)
    (j : ℕ) (hj : j < rawCutoff A) :
    canonicalLinearCoefficient A j = rawCellCoefficient A j +
      physicalMultiplier A j * canonicalLinearCoefficient A (j + 1) := by
  rw [rawCellCoefficient_boundary A hA j]
  by_cases hnext : j + 1 < rawCutoff A
  · have hr : rawCellRight A j = rawCellLeft (j + 1) := by
      have he := (raw_cell_endpoints A (by linarith) j hj).2
      rw [node_eq_log A (by linarith) (j + 1) hnext] at he
      exact he.symm
    rw [hr]
    simp only [canonicalLinearCoefficient, physicalMultiplier, if_pos hj, if_pos hnext]
    have hn : ((j + 2 : ℕ) : ℝ) ≠ 0 := by positivity
    simp only [Nat.add_assoc, Nat.reduceAdd]
    field_simp
    ring
  · have hlast : j + 1 = rawCutoff A := by omega
    have hr : rawCellRight A j = 2 * A := by
      have he := (raw_cell_endpoints A (by linarith) j hj).2
      rw [hlast] at he
      have hnode : node A (rawCutoff A) = 2 * A := node_cutoff A (by linarith)
      exact he.symm.trans hnode
    have hzero : exponentialTest (sourceCorrelation explicitSecondDerivative A) (2 * A) = 0 := by
      rw [exponentialTest, sourceCorrelation_upper_endpoint A (by linarith), mul_zero]
    simp only [canonicalLinearCoefficient, if_pos hj, if_neg hnext, mul_zero,
      hr, hzero, sub_zero, add_zero]

/-- This exact linear subaction supplies no new estimate on its accumulated signed defects. -/
theorem canonical_linear_subaction_exact (A : ℝ) (hA : 1 ≤ A)
    (j : ℕ) (hj : j < rawCutoff A) :
    rawCellReadout A j + canonicalLinearCoefficient A (j + 1) *
      (physicalMultiplier A j * physicalState A j + physicalForcing A j) -
        canonicalLinearCoefficient A j * physicalState A j =
      rawCellOffset A j + canonicalLinearCoefficient A (j + 1) * physicalForcing A j := by
  rw [rawCellReadout, canonicalLinearCoefficient_backward A hA j hj]
  ring

theorem linear_potential_telescope (P : ℕ → ℝ) (N : ℕ) :
    (∑ j ∈ Finset.range N, (P (j + 1) - P j)) = P N - P 0 := by
  induction N with
  | zero => simp
  | succ N ih => rw [Finset.sum_range_succ, ih]; ring

def canonicalLinearSignedPayment (A : ℝ) : ℝ :=
  -1 + ∑ j ∈ Finset.range (rawCutoff A),
    (rawCellOffset A j + canonicalLinearCoefficient A (j + 1) * physicalForcing A j)

/-- The linear payment is exactly the complete signed readout, not an independent price bound. -/
theorem canonical_linear_payment_eq_readout (A : ℝ) (hA : 1 ≤ A) :
    canonicalLinearSignedPayment A =
      ∑ j ∈ Finset.range (rawCutoff A), rawCellReadout A j := by
  let P := fun j => canonicalLinearCoefficient A j * physicalState A j
  have he : (∑ j ∈ Finset.range (rawCutoff A),
      (rawCellOffset A j + canonicalLinearCoefficient A (j + 1) * physicalForcing A j)) =
      ∑ j ∈ Finset.range (rawCutoff A), (rawCellReadout A j + (P (j + 1) - P j)) := by
    apply Finset.sum_congr rfl
    intro j hj
    have hl := canonical_linear_subaction_exact A hA j (Finset.mem_range.mp hj)
    rw [← physical_recurrence A (by linarith) j (Finset.mem_range.mp hj)] at hl
    dsimp only [P]
    linarith only [hl]
  rw [canonicalLinearSignedPayment, he, Finset.sum_add_distrib, linear_potential_telescope]
  dsimp only [P]
  rw [canonicalLinearCoefficient_terminal, canonicalLinearCoefficient_initial A hA,
    physicalState_initial A (by linarith)]
  ring

/-- A uniform bound on the canonical linear payment merely restates the residual cap. -/
theorem canonical_linear_payment_eq_residual (A : ℝ) (hA : 1 ≤ A) :
    canonicalLinearSignedPayment A = mertensResidual A - kernelMomentZero A := by
  rw [canonical_linear_payment_eq_readout A hA]
  have hr := mertensResidual_eq_weightedPsi A hA
  rw [rawCellReconstruction_native A hA] at hr
  linarith only [hr]

/-- Original all-real return with no remaining physical reconstruction premise. -/
theorem original_lower_of_native_raw_certificates (S : ℝ → ℕ → ℝ → ℝ)
    (e : ℝ → ℕ → ℝ) (R B : ℝ) (hR : 1 ≤ R)
    (hlocal : ∀ A : ℝ, R ≤ A → ∀ j < rawCutoff A,
      rawCellReadout A j +
        S A (j + 1) (physicalMultiplier A j * physicalState A j + physicalForcing A j) -
          S A j (physicalState A j) ≤ e A j)
    (hpayment : RawTerminalPaymentBound S e R B) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor R) (archimedeanMultiplier 0 - 2 - 2 * B) ≤
        sourceQuadraticValue explicitSecondDerivative A :=
  original_lower_of_raw_certificates S e R B hR
    (fun A hRA => rawCellReconstruction_native A (hR.trans hRA)) hlocal hpayment

theorem estimate_of_native_raw_certificates (S : ℝ → ℕ → ℝ → ℝ)
    (e : ℝ → ℕ → ℝ) (R B : ℝ) (hR : 1 ≤ R)
    (hlocal : ∀ A : ℝ, R ≤ A → ∀ j < rawCutoff A,
      rawCellReadout A j +
        S A (j + 1) (physicalMultiplier A j * physicalState A j + physicalForcing A j) -
          S A j (physicalState A j) ≤ e A j)
    (hpayment : RawTerminalPaymentBound S e R B) : CorrelationAssembly.EstimateObligation :=
  estimate_of_raw_certificates S e R B hR
    (fun A hRA => rawCellReconstruction_native A (hR.trans hRA)) hlocal hpayment

/-- Open, independently checkable quadratic schedule and signed payment target. -/
def RawQuadraticTailCertificate : Prop :=
  ∃ R B : ℝ, ∃ u v c e : ℝ → ℕ → ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A →
      RawQuadraticCertificate A (u A) (v A) (c A) (e A) ∧
        quadraticPotential (u A 0) (v A 0) (c A 0) (-1) -
          quadraticPotential (u A (rawCutoff A)) (v A (rawCutoff A)) (c A (rawCutoff A))
            (endpointValue A) + ∑ j ∈ Finset.range (rawCutoff A), e A j ≤ B

/-- A supplied finite coefficient schedule reaches #16; its uniform payment is still open. -/
theorem estimate_of_raw_quadratic_tail (h : RawQuadraticTailCertificate) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨R, B, u, v, c, e, hR, hcert⟩ := h
  apply estimate_of_native_raw_certificates
    (fun A j => quadraticPotential (u A j) (v A j) (c A j)) e R B hR
  · intro A hRA
    exact raw_quadratic_local_certificate A (u A) (v A) (c A) (e A) (hcert A hRA).1
  · intro A hRA
    exact (hcert A hRA).2

end FormalResearch.RiemannHypothesis.SourceKapitzaRawCellJoin
```
