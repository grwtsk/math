# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceMinusProfileBudgetObstruction.Variantba7be72bd710f5a2d6cc4be698f3c8bb14b73c160c437e7d672c33445c0b3a3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6285c28d94e7fce97263f6e6e50b0fca9f82532` · SHA-256 `b8c1a7a51308a052ce110b134eba6e2ff6dfe6183470d59d0f260fa7fdcadb5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MinusCorrelationKernel.Variant7ce142370e85d72b9f91ca662976c78695d96099a9124fafb41084205f2a1837","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ce142370e85d72b9f91ca662976c78695d96099a9124fafb41084205f2a1837","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.MinusCorrelationKernel.Variant7ce142370e85d72b9f91ca662976c78695d96099a9124fafb41084205f2a1837","mathematical_subject":"Analysis.Calculus","original_sha256":"7ce142370e85d72b9f91ca662976c78695d96099a9124fafb41084205f2a1837","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-next/independent-xi-tail-20261006T224700Z/SourceMinusProfileBudgetObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm

/-!
A source-specific test of the elementary absolute Chebyshev-discrepancy route.
The MINUS transformed profile has a growing positive envelope on an interval
inside the complete physical tail. This obstructs a fixed budget for that
unsigned method; it says nothing about divergence of the actual signed source.
Direction, selection and evaluation: grwtsk contributors. Local construction:
OpenAI Codex assistance. No arithmetic uniform witness is assumed or supplied.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MinusCorrelationKernel.Variant7ce142370e85d72b9f91ca662976c78695d96099a9124fafb41084205f2a1837

set_option autoImplicit false
noncomputable section
namespace RH16MinusProfileObstruction

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceMangoldtNorm
open FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Actual minus derivative factor in the physical contracted readout. -/
def minusCorrelationKernel (A t : ℝ) : ℝ :=
  deriv (sourceCorrelation explicitSecondDerivative A) t -
    sourceCorrelation explicitSecondDerivative A t / 2

/-- A positive unsigned sub-envelope in the transformed physical tail. -/
def minusProfileEnvelope (A : ℝ) : ℝ :=
  ∫ t in A / 16..A / 8, Real.exp (t / 2) * |minusCorrelationKernel A t|

/-- The actual unit normalization prevents uniform smallness of the minus kernel. -/
theorem minus_kernel_le_neg_sixteenth (A t : ℝ) (hA : 40 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ A / 8) :
    minusCorrelationKernel A t ≤ -(1 / 16 : ℝ) := by
  have hp : 0 < A := by linarith
  have hc := sourceCorrelation_sub_one_abs_le (by linarith : 1 ≤ A) t
  rw [abs_of_nonneg ht0] at hc
  have hb : 5 * t / A ≤ (5 / 8 : ℝ) :=
    (div_le_iff₀ hp).mpr (by linarith)
  have hl : (3 / 8 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
    linarith [(abs_le.mp hc).1]
  have hd := sourceCorrelation_deriv_abs_le_five_div (by linarith : 1 ≤ A) t
  have hdb : 5 / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  unfold minusCorrelationKernel
  linarith [(abs_le.mp hd).2]

/-- Exact exponentially growing envelope, without an arithmetic sign inference. -/
theorem minus_profile_envelope_lower (A : ℝ) (hA : 40 ≤ A) :
    (1 / 8 : ℝ) * (Real.exp (A / 16) - Real.exp (A / 32)) ≤ minusProfileEnvelope A := by
  have hp : 0 < A := by linarith
  have horder : A / 16 ≤ A / 8 := by linarith
  have hc := (sourceCorrelation_contDiff A hp).continuous
  have hd := (sourceCorrelation_contDiff A hp).continuous_deriv_one
  have hkernel : Continuous (minusCorrelationKernel A) := hd.sub (hc.div_const 2)
  have hf : Continuous (fun t : ℝ => Real.exp (t / 2) / 16) := by fun_prop
  have hg : Continuous (fun t : ℝ => Real.exp (t / 2) * |minusCorrelationKernel A t|) := by
    exact (by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul hkernel.abs
  have hfi : IntervalIntegrable (fun t : ℝ => Real.exp (t / 2) / 16)
      volume (A / 16) (A / 8) := hf.intervalIntegrable _ _
  have hgi : IntervalIntegrable
      (fun t : ℝ => Real.exp (t / 2) * |minusCorrelationKernel A t|)
      volume (A / 16) (A / 8) := hg.intervalIntegrable _ _
  have hmono := intervalIntegral.integral_mono_on horder hfi
    hgi (fun t ht => by
      have hm := minus_kernel_le_neg_sixteenth A t hA (by linarith [ht.1]) ht.2
      have ha : (1 / 16 : ℝ) ≤ |minusCorrelationKernel A t| := by
        linarith [(neg_le_abs (minusCorrelationKernel A t))]
      have he := mul_le_mul_of_nonneg_left ha (Real.exp_pos (t / 2)).le
      simpa only [div_eq_mul_inv, one_mul] using he)
  have hder (t : ℝ) : HasDerivAt (fun s : ℝ => Real.exp (s / 2) / 8)
      (Real.exp (t / 2) / 16) t := by
    apply ((((hasDerivAt_id t).div_const 2).exp).div_const 8).congr_deriv
    simp only [id_eq]
    ring
  have hint := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => hder t) hfi
  unfold minusProfileEnvelope
  calc
    _ = ∫ t in A / 16..A / 8, Real.exp (t / 2) / 16 := by
      rw [hint]
      rw [show A / 8 / 2 = A / 16 by ring,
        show A / 16 / 2 = A / 32 by ring]
      ring
    _ ≤ _ := hmono

/-- A simple unbounded linear readout also follows from the exact exponential margin. -/
theorem minus_profile_envelope_ge_linear (A : ℝ) (hA : 40 ≤ A) :
    A / 256 ≤ minusProfileEnvelope A := by
  have hx : 0 ≤ A / 32 := by linarith
  have hz : 1 ≤ Real.exp (A / 32) := Real.one_le_exp hx
  have he := Real.add_one_le_exp (A / 32)
  have hs : Real.exp (A / 16) = (Real.exp (A / 32)) ^ 2 := by
    rw [show A / 16 = A / 32 + A / 32 by ring, Real.exp_add]
    ring
  have hprod := mul_nonneg (by linarith : 0 ≤ Real.exp (A / 32) - 1)
    (by linarith : 0 ≤ Real.exp (A / 32) - 1)
  have hlow := minus_profile_envelope_lower A hA
  rw [hs] at hlow
  nlinarith

/-- The probe interval lies strictly after seven for every sufficiently large real scale. -/
theorem probe_interval_inside_complete_tail (A t : ℝ) (hA : 96 ≤ A)
    (ht0 : A / 16 ≤ t) (ht1 : t ≤ A / 8) :
    Real.log (7 : ℝ) ≤ t ∧ t ≤ 2 * A := by
  have hl := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
  constructor <;> linarith

/-- No scale-independent constant budgets even this unsigned sub-envelope. -/
theorem minus_profile_envelope_not_eventually_bounded :
    ¬ ∃ B R : ℝ, ∀ A : ℝ, R ≤ A → minusProfileEnvelope A ≤ B := by
  rintro ⟨B, R, h⟩
  let A := max 40 (max R (256 * (B + 1)))
  have hA : (40 : ℝ) ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left R _).trans (le_max_right _ _)
  have hB : 256 * (B + 1) ≤ A := (le_max_right R _).trans (le_max_right _ _)
  have hlo := minus_profile_envelope_ge_linear A hA
  have hup := h A hR
  linarith

end RH16MinusProfileObstruction
```
