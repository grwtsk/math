# Complete source: GRWTSK.Topology.GeneralTopology.CandidateCausalityFullAudit.Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a40482344a47f8856e7be6f23641be5e5bc8ef2a` · SHA-256 `45fc794158c0af4778f1c72f60d35298f82f1434a63977977653ee6a5fb917f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.BoundaryInverse.Variantb3ac352b7ee46cf1d7f90f213523cf9223bb8a292689f540ff6a5ae3bc229ab6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3ac352b7ee46cf1d7f90f213523cf9223bb8a292689f540ff6a5ae3bc229ab6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.BoundaryInverse.Variantb3ac352b7ee46cf1d7f90f213523cf9223bb8a292689f540ff6a5ae3bc229ab6","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b3ac352b7ee46cf1d7f90f213523cf9223bb8a292689f540ff6a5ae3bc229ab6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-controller-admission/candidate-causality-full-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateLineBounds
import Zeta23.WeilEF.VerticalLine

/-! Causal support of the actual inverse boundary integral, with its angular normalization. -/

namespace GRWTSK.Topology.GeneralTopology.BoundaryInverse.Variantb3ac352b7ee46cf1d7f90f213523cf9223bb8a292689f540ff6a5ae3bc229ab6

set_option autoImplicit false
namespace CandidateCausalityScratch
open MeasureTheory Filter Complex
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateLineBounds
noncomputable section

/-- The angular-frequency inverse boundary integral, with the explicit factor `1/(2π)`. -/
def boundaryInverse (F : ℂ → ℂ) (x : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℂ) *
    ∫ t : ℝ, Complex.exp ((x : ℂ) * ((t : ℂ) * Complex.I)) * F ((t : ℂ) * Complex.I)

/-- A uniformly admitted analytic right-half-plane function has a causal inverse boundary. -/
theorem boundaryInverse_eq_zero_of_neg (F : ℂ → ℂ)
    (hF : ∀ z : ℂ, 0 ≤ z.re → DifferentiableAt ℂ F z)
    (φ : ℝ → ℝ) (hφ : Integrable φ)
    (hb : ∀ σ t : ℝ, 0 ≤ σ → ‖F ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t)
    (htop : Tendsto φ atTop (nhds 0)) (hbot : Tendsto φ atBot (nhds 0))
    (x : ℝ) (hx : x < 0) : boundaryInverse F x = 0 := by
  let G : ℂ → ℂ := fun z => Complex.exp ((x : ℂ) * z) * F z
  have hn (σ t : ℝ) : ‖Complex.exp ((x : ℂ) * ((σ : ℂ) + (t : ℂ) * I))‖ =
      Real.exp (x * σ) := by simp [Complex.norm_exp]
  have hφ0 (t : ℝ) : 0 ≤ φ t := (norm_nonneg _).trans (hb 0 t le_rfl)
  have hmajor (σ t : ℝ) (hσ : 0 ≤ σ) : ‖G ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t := by
    dsimp only [G]
    rw [norm_mul, hn]
    calc
      Real.exp (x * σ) * ‖F ((σ : ℂ) + (t : ℂ) * I)‖ ≤
          Real.exp (x * σ) * φ t := mul_le_mul_of_nonneg_left (hb σ t hσ) (by positivity)
      _ ≤ 1 * φ t := mul_le_mul_of_nonneg_right
        (Real.exp_le_one_iff.mpr (mul_nonpos_of_nonpos_of_nonneg hx.le hσ)) (hφ0 t)
      _ = φ t := one_mul _
  have hshift (σ : ℝ) (hσ : 0 ≤ σ) :
      (∫ t : ℝ, G ((σ : ℂ) + (t : ℂ) * I)) = ∫ t : ℝ, G ((t : ℂ) * I) := by
    simpa only [Complex.ofReal_zero, zero_add, G, Pi.mul_apply] using
      Zeta23.WeilEF.vertical_line_shift hσ
        (fun z hz _ => (by fun_prop :
          DifferentiableAt ℂ (fun w : ℂ => Complex.exp ((x : ℂ) * w)) z).mul (hF z hz))
        hφ (fun s t hs _ => hmajor s t hs) htop hbot
  have hbound (σ : ℝ) (hσ : 0 ≤ σ) :
      ‖∫ t : ℝ, G ((t : ℂ) * I)‖ ≤ Real.exp (x * σ) * ∫ t : ℝ, φ t := by
    rw [← hshift σ hσ, ← integral_const_mul]
    apply norm_integral_le_of_norm_le (hφ.const_mul (Real.exp (x * σ)))
    filter_upwards [] with t
    dsimp only [G]
    rw [norm_mul, hn]
    exact mul_le_mul_of_nonneg_left (hb σ t hσ) (by positivity)
  have ht : Tendsto (fun σ : ℝ => Real.exp (x * σ) * ∫ t : ℝ, φ t) atTop (nhds 0) := by
    simpa using (Real.tendsto_exp_atBot.comp
      (tendsto_id.const_mul_atTop_of_neg hx)).mul_const (∫ t : ℝ, φ t)
  have hz : ‖∫ t : ℝ, G ((t : ℂ) * I)‖ = 0 := by
    apply le_antisymm _ (norm_nonneg _)
    exact ge_of_tendsto ht (eventually_atTop.2 ⟨0, fun σ hσ => hbound σ hσ⟩)
  have hi := norm_eq_zero.mp hz
  simp only [boundaryInverse, G, hi, mul_zero]

/-- The actual candidate has one integrable, vanishing majorant for every right vertical line. -/
theorem candidate_boundary_majorant (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    ∃ φ : ℝ → ℝ, Integrable φ ∧ Tendsto φ atTop (nhds 0) ∧
      Tendsto φ atBot (nhds 0) ∧
      ∀ σ t : ℝ, 0 ≤ σ → ‖candidate X ε h ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t := by
  obtain ⟨C, hC, hdec⟩ := candidate_vertical_decay ε hε
  let K : ℝ := C * Real.sqrt (X : ℝ) * (1 + Real.log (X : ℝ)) * h⁻¹ ^ 3
  have hlog : 0 ≤ Real.log (X : ℝ) := Real.log_nonneg (by exact_mod_cast hX)
  have hK : 0 ≤ K := by dsimp only [K]; positivity
  let φ : ℝ → ℝ := fun t => K * (1 + (h * t) ^ 2)⁻¹
  have hbase : Tendsto (fun t : ℝ => 1 + (h * t) ^ 2) atTop atTop :=
    tendsto_const_nhds.add_atTop
      ((tendsto_pow_atTop (by norm_num : (2 : ℕ) ≠ 0)).comp
        (tendsto_id.const_mul_atTop hh))
  have htop : Tendsto φ atTop (nhds 0) := by
    simpa only [φ, mul_zero, Function.comp_def] using
      (tendsto_inv_atTop_zero.comp hbase).const_mul K
  have hbot : Tendsto φ atBot (nhds 0) := by
    simpa only [φ, mul_neg, neg_sq, Function.comp_def] using
      htop.comp tendsto_neg_atBot_atTop
  refine ⟨φ, (scaled_cauchy_integrable_integral h hh).1.const_mul K, htop, hbot, ?_⟩
  intro σ t hσ
  have ha : 0 ≤ h * |t| := mul_nonneg hh.le (abs_nonneg t)
  have hsq : (h * t) ^ 2 = (h * |t|) ^ 2 := by simp only [mul_pow, sq_abs]
  have hp : 1 + (h * t) ^ 2 ≤ (1 + h * |t|) ^ 3 := by
    rw [hsq]
    nlinarith [sq_nonneg (h * |t|), mul_nonneg ha (sq_nonneg (h * |t|))]
  calc
    ‖candidate X ε h ((σ : ℂ) + (t : ℂ) * I)‖ ≤ K / (1 + h * |t|) ^ 3 :=
      hdec X hX h hh hh1 σ hσ t
    _ ≤ K / (1 + (h * t) ^ 2) :=
      div_le_div_of_nonneg_left hK (by positivity) hp
    _ = φ t := div_eq_mul_inv _ _

/-- The unchanged candidate's genuine angular inverse integral vanishes at every negative time. -/
theorem candidate_boundaryInverse_eq_zero (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (x : ℝ) (hx : x < 0) :
    boundaryInverse (candidate X ε h) x = 0 := by
  obtain ⟨φ, hφ, htop, hbot, hb⟩ := candidate_boundary_majorant X hX ε h hε hh hh1
  exact boundaryInverse_eq_zero_of_neg (candidate X ε h)
    (candidate_differentiableAt X ε h hε hh.le) φ hφ hb htop hbot x hx

end
end CandidateCausalityScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @CandidateCausalityScratch.boundaryInverse
#print CandidateCausalityScratch.boundaryInverse
#print axioms CandidateCausalityScratch.boundaryInverse
#check @CandidateCausalityScratch.boundaryInverse_eq_zero_of_neg
#print CandidateCausalityScratch.boundaryInverse_eq_zero_of_neg
#print axioms CandidateCausalityScratch.boundaryInverse_eq_zero_of_neg
#check @CandidateCausalityScratch.candidate_boundary_majorant
#print CandidateCausalityScratch.candidate_boundary_majorant
#print axioms CandidateCausalityScratch.candidate_boundary_majorant
#check @CandidateCausalityScratch.candidate_boundaryInverse_eq_zero
#print CandidateCausalityScratch.candidate_boundaryInverse_eq_zero
#print axioms CandidateCausalityScratch.candidate_boundaryInverse_eq_zero
```
