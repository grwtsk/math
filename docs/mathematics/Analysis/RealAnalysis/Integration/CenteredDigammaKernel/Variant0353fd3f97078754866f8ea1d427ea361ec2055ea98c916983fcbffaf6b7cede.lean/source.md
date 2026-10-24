# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CenteredDigammaKernel.Variant0353fd3f97078754866f8ea1d427ea361ec2055ea98c916983fcbffaf6b7cede

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c41288a3e75bca56cbcb58d317c52f4c27a3d48b` · SHA-256 `0ad5fc16413f74f10e04132ca996420b12cf1d07558532073d6c054713a24020`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Term.Variant59b3aa0559801661619279a20e49afd3d3b8bb28cfb26118cb80dd1da8ae517d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"59b3aa0559801661619279a20e49afd3d3b8bb28cfb26118cb80dd1da8ae517d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Term.Variant59b3aa0559801661619279a20e49afd3d3b8bb28cfb26118cb80dd1da8ae517d","mathematical_subject":"Analysis.Integration","original_sha256":"59b3aa0559801661619279a20e49afd3d3b8bb28cfb26118cb80dd1da8ae517d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass9/gamma_fourier/CenteredDigammaKernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CompensatedLaplaceCosine
import ArchimedeanKernel
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-! Scratch #146 actual centered quarter-digamma kernel representation.
The singular kernel stays multiplied by the cosine deficit. The independently
specified quarter endpoint is retained as archimedeanConstant.
Direction: grwtsk contributors. Scratch proof: OpenAI Codex. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.Term.Variant59b3aa0559801661619279a20e49afd3d3b8bb28cfb26118cb80dd1da8ae517d

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.CenteredDigammaKernel
open MeasureTheory Set
open CompensatedLaplaceCosine
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility

def term (ξ : ℝ) (n : ℕ) (t : ℝ) : ℝ :=
  2 * (Real.exp (-((2:ℝ)*n+1/2)*t)*(1-Real.cos (ξ*t)))

def compensatedKernel (ξ t : ℝ) : ℝ :=
  2 * ArchimedeanKernel.kernel t * (1-Real.cos (ξ*t))

theorem cosine_deficit (ξ t : ℝ) :
    0 ≤ 1-Real.cos (ξ*t) ∧ 1-Real.cos (ξ*t) ≤ (ξ^2/2)*t^2 := by
  constructor
  · exact sub_nonneg.mpr (Real.cos_le_one _)
  · have h := Real.one_sub_sq_div_two_le_cos (x := ξ*t)
    nlinarith

theorem compensatedKernel_integrable (ξ : ℝ) :
    IntegrableOn (compensatedKernel ξ) (Ioi 0) := by
  have h := ArchimedeanKernel.weightedDeficit_integrable
    (C := fun t => Real.cos (ξ*t)) (k := ξ^2/2) (by fun_prop)
    (fun t _ => cosine_deficit ξ t)
  have he : compensatedKernel ξ =
      fun t => 2*ArchimedeanKernel.weightedDeficit (fun t => Real.cos (ξ*t)) t := by
    funext t
    unfold compensatedKernel ArchimedeanKernel.weightedDeficit
    ring
  rw [he]
  exact h.const_mul 2

theorem term_integrable (ξ : ℝ) (n : ℕ) : IntegrableOn (term ξ n) (Ioi 0) :=
  (quarter_compensated_integrable ξ n).const_mul 2

theorem term_nonneg (ξ : ℝ) (n : ℕ) (t : ℝ) : 0 ≤ term ξ n t :=
  mul_nonneg (by norm_num) (compensated_nonneg _ _ _)

theorem hasSum_terms {t : ℝ} (ht : 0 < t) (ξ : ℝ) :
    HasSum (fun n : ℕ => term ξ n t) (compensatedKernel ξ t) := by
  have hr : Real.exp (-2*t) < 1 := by
    simpa using Real.exp_lt_exp.mpr (by linarith : -2*t < 0)
  have h := (hasSum_geometric_of_lt_one (Real.exp_pos (-2*t)).le hr).mul_left
    (2*Real.exp (-t/2)*(1-Real.cos (ξ*t)))
  have he : (fun n : ℕ => term ξ n t) =
      (fun n : ℕ => 2*Real.exp (-t/2)*(1-Real.cos (ξ*t))*Real.exp (-2*t)^n) := by
    funext n
    unfold term
    rw [show -((2:ℝ)*n+1/2)*t = -t/2 + (n:ℝ)*(-2*t) by ring,
      Real.exp_add, Real.exp_nat_mul]
    ring
  rw [he]
  convert! h using 1
  unfold compensatedKernel ArchimedeanKernel.kernel
  ring

theorem norm_integrals_summable (ξ : ℝ) :
    Summable (fun n : ℕ => ∫ t : ℝ in Ioi 0, ‖term ξ n t‖) := by
  have he (n : ℕ) (t : ℝ) : ‖term ξ n t‖ = term ξ n t :=
    Real.norm_of_nonneg (term_nonneg ξ n t)
  simp_rw [he]
  simpa only [term, integral_const_mul] using
    (actual_multiplier_hasSum_integrals ξ).summable

/-- Actual complex quarter-line psi difference, all real frequencies including zero. -/
theorem actual_multiplier_integral (ξ : ℝ) :
    archimedeanMultiplier ξ + archimedeanConstant =
      ∫ t : ℝ in Ioi 0, compensatedKernel ξ t := by
  have hsum := hasSum_integral_of_summable_integral_norm
    (μ := volume.restrict (Ioi 0)) (term_integrable ξ) (norm_integrals_summable ξ)
  have hactual : HasSum (fun n : ℕ => ∫ t : ℝ in Ioi 0, term ξ n t)
      (archimedeanMultiplier ξ + archimedeanConstant) := by
    simpa only [term, integral_const_mul] using actual_multiplier_hasSum_integrals ξ
  calc
    _ = ∫ t : ℝ in Ioi 0, ∑' n : ℕ, term ξ n t := hactual.unique hsum
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      exact (hasSum_terms ht ξ).tsum_eq

theorem actual_multiplier_integral_explicit (ξ : ℝ) :
    archimedeanMultiplier ξ + archimedeanConstant =
      2 * (∫ t : ℝ in Ioi 0,
        (1-Real.cos (ξ*t))*Real.exp (-t/2)/(1-Real.exp (-2*t))) := by
  rw [actual_multiplier_integral]
  unfold compensatedKernel ArchimedeanKernel.kernel
  rw [← integral_const_mul]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun t => by ring)

#print axioms term
#print axioms compensatedKernel
#print axioms cosine_deficit
#print axioms compensatedKernel_integrable
#print axioms term_integrable
#print axioms term_nonneg
#print axioms hasSum_terms
#print axioms norm_integrals_summable
#print axioms actual_multiplier_integral
#print axioms actual_multiplier_integral_explicit
end ContinuousResearch.CenteredDigammaKernel
```
