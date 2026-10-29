-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FractionalLogFunction.Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FractionalLogFunction.Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"fc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/postcutoff-cancellation/FractionalLogBasis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit
import FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-! Genuine full-line fractional basis admission and exact finite arithmetic damping transport. -/

namespace GRWTSK.Analysis.FractionalLogFunction.Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8

set_option autoImplicit false
namespace FractionalLogBasisScratch
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open CoreTailSplit HalfLineExtension LogarithmicResidual MobiusFractionalResidual MobiusEndpointBudget
noncomputable section

/-- The original fractional-part basis on the complete logarithmic line, with its exact half weight. -/
def fractionalLogFunction (d : ℕ) (u : ℝ) : ℂ :=
  (Real.exp (-u / 2) : ℂ) * ((Int.fract (Real.exp u / (d : ℝ)) : ℝ) : ℂ)

private theorem fractionalLogFunction_measurable (d : ℕ) :
    Measurable (fractionalLogFunction d) := by
  unfold fractionalLogFunction
  fun_prop

private theorem fractionalLogFunction_sq_le_near (d : ℕ) (u : ℝ) :
    ‖fractionalLogFunction d u‖ ^ 2 ≤ Real.exp u / (d : ℝ) ^ 2 := by
  have hf : Int.fract (Real.exp u / (d : ℝ)) ≤ Real.exp u / (d : ℝ) := by
    rw [Int.fract]
    exact sub_le_self _ (by exact_mod_cast
      Int.floor_nonneg.mpr (div_nonneg (Real.exp_nonneg _) (Nat.cast_nonneg d)))
  rw [fractionalLogFunction, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos (Real.exp_pos _), Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (Int.fract_nonneg _), mul_pow]
  have he : Real.exp (-u / 2) ^ 2 * Real.exp u ^ 2 = Real.exp u := by
    rw [← mul_pow, ← Real.exp_add, pow_two, ← Real.exp_add]
    congr 1
    ring
  calc
    _ ≤ Real.exp (-u / 2) ^ 2 * (Real.exp u / (d : ℝ)) ^ 2 :=
      mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (Int.fract_nonneg _) hf 2) (sq_nonneg _)
    _ = _ := by rw [div_pow, ← mul_div_assoc, he]

private theorem fractionalLogFunction_sq_le_far (d : ℕ) (u : ℝ) :
    ‖fractionalLogFunction d u‖ ^ 2 ≤ Real.exp (-u) := by
  rw [fractionalLogFunction, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos (Real.exp_pos _), Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (Int.fract_nonneg _), mul_pow]
  have hf : Int.fract (Real.exp u / (d : ℝ)) ^ 2 ≤ 1 :=
    pow_le_one₀ (Int.fract_nonneg _) (Int.fract_lt_one _).le
  calc
    _ ≤ Real.exp (-u / 2) ^ 2 * 1 := mul_le_mul_of_nonneg_left hf (sq_nonneg _)
    _ = _ := by
      rw [mul_one, pow_two, ← Real.exp_add]
      congr 1
      ring

/-- Every original fractional basis is genuinely in full-line L2, including the harmless zero index. -/
theorem fractionalLogFunction_memLp (d : ℕ) : MemLp (fractionalLogFunction d) 2 volume := by
  apply (memLp_two_iff_integrable_sq_norm
    (fractionalLogFunction_measurable d).aestronglyMeasurable).mpr
  have hn : IntegrableOn (fun u : ℝ => ‖fractionalLogFunction d u‖ ^ 2)
      (Iic (Real.log (d : ℝ))) := by
    apply ((integrableOn_exp_Iic _).div_const ((d : ℝ) ^ 2)).mono'
      ((fractionalLogFunction_measurable d).norm.pow_const 2).aestronglyMeasurable
    filter_upwards [] with u
    rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
    exact fractionalLogFunction_sq_le_near d u
  have hp : IntegrableOn (fun u : ℝ => ‖fractionalLogFunction d u‖ ^ 2)
      (Ioi (Real.log (d : ℝ))) := by
    apply (integrableOn_exp_neg_Ioi _).mono'
      ((fractionalLogFunction_measurable d).norm.pow_const 2).aestronglyMeasurable
    filter_upwards [] with u
    rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
    exact fractionalLogFunction_sq_le_far d u
  simpa only [Iic_union_Ioi, integrableOn_univ] using hn.union hp

/-- The genuine full-line L2 vector of one original fractional basis function. -/
def fractionalLogVector (d : ℕ) : FullH :=
  (fractionalLogFunction_memLp d).toLp (fractionalLogFunction d)

/-- The complete two-ended fractional basis has its explicit inverse square-root norm budget. -/
theorem fractionalLogVector_norm_le (d : ℕ) :
    ‖fractionalLogVector d‖ ≤ Real.sqrt (2 / (d : ℝ)) := by
  have hm := fractionalLogFunction_memLp d
  have hi := (memLp_two_iff_integrable_sq_norm hm.aestronglyMeasurable).mp hm
  apply (sq_le_sq₀ (norm_nonneg _) (Real.sqrt_nonneg _)).mp
  change ‖hm.toLp (fractionalLogFunction d)‖ ^ 2 ≤ _
  rw [FullLinePlancherel.norm_sq_toLp, Real.sq_sqrt (by positivity)]
  by_cases hd : d = 0
  · simp [fractionalLogFunction, hd]
  have hd0 : 0 < (d : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hd
  have he : (∫ u : ℝ, ‖fractionalLogFunction d u‖ ^ 2) =
      (∫ u : ℝ in Iic (Real.log (d : ℝ)), ‖fractionalLogFunction d u‖ ^ 2) +
        ∫ u : ℝ in Ioi (Real.log (d : ℝ)), ‖fractionalLogFunction d u‖ ^ 2 := by
    simpa only [compl_Iic] using (integral_add_compl measurableSet_Iic hi).symm
  rw [he]
  calc
    _ ≤ (∫ u : ℝ in Iic (Real.log (d : ℝ)), Real.exp u / (d : ℝ) ^ 2) +
        ∫ u : ℝ in Ioi (Real.log (d : ℝ)), Real.exp (-u) := by
      apply add_le_add
      · exact integral_mono_ae hi.integrableOn ((integrableOn_exp_Iic _).div_const _)
          (Filter.Eventually.of_forall (fractionalLogFunction_sq_le_near d))
      · exact integral_mono_ae hi.integrableOn (integrableOn_exp_neg_Ioi _)
          (Filter.Eventually.of_forall (fractionalLogFunction_sq_le_far d))
    _ = _ := by
      rw [integral_div, integral_exp_Iic, integral_exp_neg_Ioi, Real.exp_neg,
        Real.exp_log hd0]
      field_simp
      ring

private theorem fractionalLogVector_ae (d : ℕ) :
    fractionalLogVector d =ᵐ[volume] fractionalLogFunction d :=
  (fractionalLogFunction_memLp d).coeFn_toLp

private theorem sum_coe_ae (s : Finset ℕ) (f : ℕ → FullH) :
    (∑ d ∈ s, f d : FullH) =ᵐ[volume] fun u => ∑ d ∈ s, f d u := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    filter_upwards [Lp.coeFn_zero (E := ℂ) (p := 2) (μ := volume)] with u hu
    simpa only [Finset.sum_empty, Pi.zero_apply] using hu
  | @insert a s ha ih =>
    simp only [Finset.sum_insert ha]
    filter_upwards [Lp.coeFn_add (f a) (∑ d ∈ s, f d), ih] with u h hu
    simpa only [Pi.add_apply, hu] using h

/-- At fixed arithmetic cutoff the actual damped-minus-undamped residual is its complete finite
fractional expansion, with a genuine full-line norm bound retaining the endpoint coefficient. -/
theorem fullResidualVector_sub_expansion_norm (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) :
    fullResidualVector X ε hX - fullResidualVector X 0 hX =
      ∑ d ∈ Finset.Icc 1 X,
        ((dampedCoefficient X ε d - dampedCoefficient X 0 d : ℝ) : ℂ) • fractionalLogVector d ∧
    ‖fullResidualVector X ε hX - fullResidualVector X 0 hX‖ ≤
      ∑ d ∈ Finset.Icc 1 X,
        |dampedCoefficient X ε d - dampedCoefficient X 0 d| * Real.sqrt (2 / (d : ℝ)) := by
  classical
  let c : ℕ → ℂ := fun d => (dampedCoefficient X ε d - dampedCoefficient X 0 d : ℝ)
  have hae (d : ℕ) : (c d • fractionalLogVector d : FullH) =ᵐ[volume]
      fun u => c d * fractionalLogFunction d u := by
    filter_upwards [Lp.coeFn_smul (c d) (fractionalLogVector d), fractionalLogVector_ae d]
      with u hs hb
    simpa only [Pi.smul_apply, RingHom.id_apply, smul_eq_mul, hb] using hs
  have hall : ∀ᵐ u ∂volume, ∀ d : ℕ,
      (c d • fractionalLogVector d : FullH) u = c d * fractionalLogFunction d u :=
    ae_all_iff.mpr hae
  have he : fullResidualVector X ε hX - fullResidualVector X 0 hX =
      ∑ d ∈ Finset.Icc 1 X, c d • fractionalLogVector d := by
    apply Lp.ext
    filter_upwards [fullResidualVector_ae X ε hX, fullResidualVector_ae X 0 hX,
      Lp.coeFn_sub (fullResidualVector X ε hX) (fullResidualVector X 0 hX),
      sum_coe_ae (Finset.Icc 1 X) (fun d => c d • fractionalLogVector d), hall]
      with u hε h0 hsub hsum hall
    simp only [Pi.sub_apply] at hsub
    rw [hsub, hε, h0, hsum]
    simp_rw [hall]
    simp only [logResidual, arithmeticResidual, fractionalLogFunction, c]
    rw [← mul_sub, add_sub_add_left_eq_sub, Finset.sum_sub_distrib, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro d _
    push_cast
    ring
  refine ⟨he, ?_⟩
  rw [he]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 X, ‖c d • fractionalLogVector d‖ := norm_sum_le _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro d _
      rw [norm_smul]
      have hc : ‖c d‖ = |dampedCoefficient X ε d - dampedCoefficient X 0 d| := by
        simp only [c, Complex.norm_real, Real.norm_eq_abs]
      rw [hc]
      exact mul_le_mul_of_nonneg_left (fractionalLogVector_norm_le d) (abs_nonneg _)

end
end FractionalLogBasisScratch
