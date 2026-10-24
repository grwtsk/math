# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualUpperColumnWindow.Variantd3b3a9f6baa9eb165f5ec613312ab48066008a7fb8b345cc33bbd3bf287bff17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e860a85437e1406fea5b358f1557c449a35cab0c` · SHA-256 `6431561e4fefdd0bb9a6d6743c452f4f5db0f1eae281dc6a22f994623106b350`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualUpperColumnQuotientGap.Variant3d1055e65c95c25f1638fa3af35c32e0cc979b6797df4b7330fc9c4a92382448","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d1055e65c95c25f1638fa3af35c32e0cc979b6797df4b7330fc9c4a92382448","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualUpperColumnQuotientGap.Variant3d1055e65c95c25f1638fa3af35c32e0cc979b6797df4b7330fc9c4a92382448","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3d1055e65c95c25f1638fa3af35c32e0cc979b6797df4b7330fc9c4a92382448","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T221057Z-1791324657232525000/RootActualUpperColumnWindow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualDoubleAdjointTransfer
import SourceActualCenteredHalfUpperDecay

/-!
The genuine natural quotient puts the upper column next to the source right
seam. Its remaining time window is small, but its corner is not declared zero.
All natural floor and division remainders are retained in the proof.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualUpperColumnQuotientGap.Variant3d1055e65c95c25f1638fa3af35c32e0cc979b6797df4b7330fc9c4a92382448

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualUpperColumnWindow
open Set SourcePairing SourceJointWorkSupport SourceActualAdjointAbelPrimitives
open SourceActualLogColumnTransport SourceActualDoubleMixedKernel
open RootActualDoubleAdjointTransfer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateSourceMobiusKernel
noncomputable section

/-- The source exponential lies within two full natural quotient cells of actual K. -/
theorem actualUpperColumn_quotient_gap (A : ℝ) :
    Real.exp (2 * A) <
      (((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) + 2) *
        ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
  let a := vaughanCutoff A + 1
  let N := sourceKernelCutoff A
  let K := N / a
  have ha0 : 0 < a := by dsimp [a]; omega
  have ha1 : (1 : ℝ) ≤ (a : ℝ) := by exact_mod_cast (show 1 ≤ a by omega)
  have heR : ((N % a : ℕ) : ℝ) + (a : ℝ) * (K : ℝ) = (N : ℝ) := by
    exact_mod_cast Nat.mod_add_div N a
  have hmR : ((N % a : ℕ) : ℝ) < (a : ℝ) := by
    exact_mod_cast Nat.mod_lt N ha0
  have hf : Real.exp (2 * A) < (N : ℝ) + 1 := Nat.lt_floor_add_one _
  change Real.exp (2 * A) < ((K : ℝ) + 2) * (a : ℝ)
  nlinarith

/-- The actual upper-column support intersects at most this short time interval. -/
theorem actualUpperColumn_time_width_le {A : ℝ} (hA : 1 ≤ A) :
    2 * A - actualColumnUpper A - actualTimeLower A ≤
      3 / (vaughanCutoff A : ℝ) := by
  let U := vaughanCutoff A
  let a := U + 1
  let K := sourceKernelCutoff A / a
  have hU : 0 < (U : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hKa : a ≤ K := actual_column_window_nonempty hA
  have ha : 0 < (a : ℝ) := by dsimp [a]; positivity
  have hK : 0 < (K : ℝ) := by exact_mod_cast (show 0 < K by dsimp [a] at hKa; omega)
  have he := actualUpperColumn_quotient_gap A
  change Real.exp (2 * A) < ((K : ℝ) + 2) * (a : ℝ) at he
  have hl := Real.log_le_log (Real.exp_pos (2 * A)) he.le
  rw [Real.log_exp, Real.log_mul (by positivity : (K : ℝ) + 2 ≠ 0) ha.ne'] at hl
  have hu := Real.log_le_sub_one_of_pos (div_pos ha hU)
  rw [Real.log_div ha.ne' hU.ne'] at hu
  have hk := Real.log_le_sub_one_of_pos (div_pos (by positivity : 0 < (K : ℝ) + 2) hK)
  rw [Real.log_div (by positivity : (K : ℝ) + 2 ≠ 0) hK.ne'] at hk
  have hau : (a : ℝ) = (U : ℝ) + 1 := by dsimp [a]; simp
  have hu' : Real.log (a : ℝ) - Real.log (U : ℝ) ≤ 1 / (U : ℝ) := by
    calc
      _ ≤ (a : ℝ) / (U : ℝ) - 1 := hu
      _ = _ := by rw [hau]; field_simp; ring
  have hk' : Real.log ((K : ℝ) + 2) - Real.log (K : ℝ) ≤ 2 / (K : ℝ) := by
    have hr : ((K : ℝ) + 2) / (K : ℝ) - 1 = 2 / (K : ℝ) := by
      field_simp
      ring
    simpa only [hr] using hk
  have hUK : (U : ℝ) ≤ (K : ℝ) := by
    exact_mod_cast (show U ≤ K by dsimp [a] at hKa; omega)
  have hinv : 2 / (K : ℝ) ≤ 2 / (U : ℝ) :=
    div_le_div_of_nonneg_left (by norm_num) hU hUK
  change 2 * A - Real.log (K : ℝ) - Real.log (U : ℝ) ≤ 3 / (U : ℝ)
  rw [show 3 / (U : ℝ) = 1 / (U : ℝ) + 2 / (U : ℝ) by ring]
  linarith

/-- Every source jet vanishes beyond the genuine closed right seam. -/
theorem actualCorrelation_jet_zero_right (A : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    ∀ z : ℝ, 2 * A ≤ z → iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) z = 0 := by
  induction n with
  | zero =>
    intro z hz
    simp only [iteratedDeriv_zero]
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A z (by linarith)
      (hz.trans (le_abs_self z))
  | succ n ih =>
    intro z hz
    have hh : ∀ y ∈ Ici z,
        iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) y = 0 :=
      fun y hy => ih y (hz.trans hy)
    have hd : HasDerivWithinAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
        0 (Ici z) z :=
      (hasDerivWithinAt_const z (Ici z) (0 : ℝ)).congr
        (fun y hy => hh y hy) (hh z self_mem_Ici)
    simpa only [iteratedDeriv_succ] using hd.deriv_eq_zero (uniqueDiffWithinAt_Ici z)

/-- The literal upper-column twisted trace is zero only outside its true short time window. -/
theorem actualTwistedTimeDensity_upperColumn_zero {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * A - actualColumnUpper A ≤ t) :
    actualTwistedTimeDensity A t (actualColumnUpper A) = 0 := by
  have h1 := actualCorrelation_jet_zero_right A hA 1 (t + actualColumnUpper A)
    (by linarith)
  have h3 := actualCorrelation_jet_zero_right A hA 3 (t + actualColumnUpper A)
    (by linarith)
  simp only [actualTwistedTimeDensity, h1, h3, zero_div, sub_zero, mul_zero]

end
end FormalResearch.RiemannHypothesis.RootActualUpperColumnWindow
```
