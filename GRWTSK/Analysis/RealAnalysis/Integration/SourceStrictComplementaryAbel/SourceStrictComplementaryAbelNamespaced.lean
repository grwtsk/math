-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.StrictDivisorLogCoefficient.Variant7bce473d1648afd11564285700c02523dea3cebcaad721655439738db58dd9ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7bce473d1648afd11564285700c02523dea3cebcaad721655439738db58dd9ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.StrictDivisorLogCoefficient.Variant7bce473d1648afd11564285700c02523dea3cebcaad721655439738db58dd9ab","mathematical_subject":"Analysis.Integration","original_sha256":"7bce473d1648afd11564285700c02523dea3cebcaad721655439738db58dd9ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/7bce473d1648afd11564-SourceStrictComplementaryAbel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFullDivisorLogInventory
import ActualSignedStieltjes

/-!
The strict complementary divisor-log sector and the full discrete plain
baseline form one actual signed cumulative arithmetic function. Every closed
integer atom, including the negative unit, remains. This exact source adapter
supplies no uniform quantitative cancellation witness.
Research direction: grwtsk contributors. Formal adapter: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.StrictDivisorLogCoefficient.Variant7bce473d1648afd11564285700c02523dea3cebcaad721655439738db58dd9ab

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceStrictComplementaryAbel

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourcePositiveSampling
open SourceFullDivisorLogInventory
open ContinuousResearch.ActualIntegerInventory
open ContinuousResearch.ActualSignedStieltjes
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel
open EstimateMobiusSplit EstimateMertensResidual PrimePowerDescent

noncomputable section

/-- Actual strict divisor-log coefficient, independently specified. -/
def strictDivisorLogCoefficient (U n : ℕ) : ℝ :=
  ∑ dk ∈ n.divisorsAntidiagonal,
    if U < dk.1 then realMoebius dk.1 * Real.log dk.2 else 0

/-- The complementary short coefficient retains the equality divisor d=U. -/
def shortDivisorLogCoefficient (U n : ℕ) : ℝ :=
  ∑ dk ∈ n.divisorsAntidiagonal,
    if dk.1 ≤ U then realMoebius dk.1 * Real.log dk.2 else 0

/-- The complete strict coefficient minus the discrete positive-unit coefficient. -/
def complementaryPlainCoefficient (U n : ℕ) : ℝ :=
  strictDivisorLogCoefficient U n - if n = 0 then 0 else 1

/-- Actual closed cumulative arithmetic function of the complementary signed atoms. -/
def complementaryCumulative (U : ℕ) (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 0 ⌊x⌋₊, complementaryPlainCoefficient U n

/-- Actual closed short divisor-log cumulative inventory. -/
def shortDivisorCumulative (U : ℕ) (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 0 ⌊x⌋₊, shortDivisorLogCoefficient U n

theorem strictDivisorLogCoefficient_zero (U : ℕ) :
    strictDivisorLogCoefficient U 0 = 0 := by
  simp [strictDivisorLogCoefficient]

theorem strictDivisorLogCoefficient_one (U : ℕ) :
    strictDivisorLogCoefficient U 1 = 0 := by
  simp [strictDivisorLogCoefficient]

theorem complementaryPlainCoefficient_zero (U : ℕ) :
    complementaryPlainCoefficient U 0 = 0 := by
  simp [complementaryPlainCoefficient, strictDivisorLogCoefficient_zero]

theorem complementaryPlainCoefficient_one (U : ℕ) :
    complementaryPlainCoefficient U 1 = -1 := by
  simp [complementaryPlainCoefficient, strictDivisorLogCoefficient_one]

/-- Complete actual Lambda=mu*log splits disjointly at the specified natural cutoff. -/
theorem strict_add_short_eq_vonMangoldt (U n : ℕ) :
    strictDivisorLogCoefficient U n + shortDivisorLogCoefficient U n =
      ArithmeticFunction.vonMangoldt n := by
  rw [vonMangoldt_eq_mobius_log_convolution]
  unfold strictDivisorLogCoefficient shortDivisorLogCoefficient
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro dk _
  by_cases hd : dk.1 ≤ U
  · simp [hd, not_lt.mpr hd, realMoebius]
  · simp [hd, lt_of_not_ge hd, realMoebius]

/-- The supplied strict coefficient is actual Lambda minus the full short coefficient. -/
theorem complementaryPlainCoefficient_eq_signed_sub_short (U n : ℕ) :
    complementaryPlainCoefficient U n = signedCoefficient n - shortDivisorLogCoefficient U n := by
  have hs := strict_add_short_eq_vonMangoldt U n
  unfold complementaryPlainCoefficient signedCoefficient
  linarith

/-- Exact source-dependent cumulative compensation; no psi substitute is used. -/
theorem complementaryCumulative_eq (U : ℕ) (x : ℝ) :
    complementaryCumulative U x =
      Chebyshev.psi x - (⌊x⌋₊ : ℝ) - shortDivisorCumulative U x := by
  unfold complementaryCumulative shortDivisorCumulative
  simp_rw [complementaryPlainCoefficient_eq_signed_sub_short]
  rw [Finset.sum_sub_distrib, cumulative_eq]

/-- The original real d>A² condition agrees exactly with the moving floor cutoff. -/
theorem strict_cutoff_iff (A : ℝ) (d : ℕ) :
    vaughanCutoff A < d ↔ A ^ 2 < (d : ℝ) := by
  exact Nat.floor_lt (sq_nonneg A)

/-- The original large-divisor arithmetic moment is the strict weighted coefficient sum. -/
theorem largeDivisor_eq_strict_coefficient_sum (A : ℝ) :
    largeDivisorMobiusMoment A =
      ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
        strictDivisorLogCoefficient (vaughanCutoff A) n * plainProfile A 1 n := by
  have he : largeDivisorMobiusMoment A =
      ∑ n ∈ Finset.Icc 2 (sourceKernelCutoff A),
        strictDivisorLogCoefficient (vaughanCutoff A) n * plainProfile A 1 n := by
    unfold largeDivisorMobiusMoment primePowerInventory
    apply Finset.sum_congr rfl
    intro n hn
    rw [plainProfile_natural_eq A
      (by have := (Finset.mem_Icc.mp hn).1; omega : 0 < n)]
    unfold strictDivisorLogCoefficient
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro dk _
    unfold mobiusLogTerm
    by_cases hd : vaughanCutoff A < dk.1
    · have hr := (strict_cutoff_iff A dk.1).mp hd
      simp [hd, hr, realMoebius]
    · have hr : ¬ A ^ 2 < (dk.1 : ℝ) := by
        exact fun hr => hd ((strict_cutoff_iff A dk.1).mpr hr)
      simp [hd, hr]
  rw [he]
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Icc.mp hn).1; omega,
      (Finset.mem_Icc.mp hn).2⟩
  · intro n hn hnnot
    have hn1 : n = 1 := by
      simp only [Finset.mem_Icc] at hn hnnot
      omega
    subst n
    rw [strictDivisorLogCoefficient_one, zero_mul]

/-- Literal complete L-B is the unchanged strict coefficient inventory, including the unit. -/
theorem literal_L_sub_plain_eq_weighted_sum (A : ℝ) (hA : 1 ≤ A) :
    literalOmegaComplementarySector A - plainInventory A =
      ∑ n ∈ Finset.Icc 0 ⌊Real.exp (2 * A)⌋₊,
        plainProfile A 1 n * complementaryPlainCoefficient (vaughanCutoff A) n := by
  have hL : literalOmegaComplementarySector A = largeDivisorMobiusMoment A := by
    rw [actual_large_divisor_eq_logProfile_complement A hA,
      actual_logProfile_complement_eq_literal_L A hA]
  rw [hL, largeDivisor_eq_strict_coefficient_sum]
  unfold plainInventory
  rw [← Finset.sum_sub_distrib, integer_cutoff_eq,
    Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons,
    complementaryPlainCoefficient_zero, mul_zero, zero_add,
    ← Finset.Icc_add_one_left_eq_Ioc]
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : n ≠ 0 := by have := (Finset.mem_Icc.mp hn).1; omega
  simp only [complementaryPlainCoefficient, if_neg hn0]
  ring

/-- Genuine finite derivative integrability for the actual joint signed cumulative source. -/
theorem complementary_derivative_integrable_Icc {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun x => deriv (plainProfile A 1) x *
      complementaryCumulative (vaughanCutoff A) x) (Icc 1 (Real.exp (2 * A))) := by
  exact integrableOn_mul_sum_Icc (complementaryPlainCoefficient (vaughanCutoff A))
    (m := 0) (by norm_num : (0 : ℝ) ≤ 1) (actual_derivative_integrable_Icc hA)

/-- Complete L-B is a genuine closed-atom Abel integral at the true touching endpoint. -/
theorem literal_L_sub_plain_eq_finite_Abel {A : ℝ} (hA : 1 ≤ A) :
    literalOmegaComplementarySector A - plainInventory A =
      -(∫ x in Ioc (1 : ℝ) (Real.exp (2 * A)),
        complementaryCumulative (vaughanCutoff A) x * deriv (plainProfile A 1) x) := by
  have hf := (plainProfile_contDiff (by linarith : 0 < A) 1).differentiable (by norm_num)
  have ha := sum_mul_eq_sub_integral_mul₀
    (complementaryPlainCoefficient (vaughanCutoff A))
    (complementaryPlainCoefficient_zero (vaughanCutoff A))
    (Real.exp (2 * A)) (fun x _ => hf.differentiableAt) (actual_derivative_integrable_Icc hA)
  rw [← literal_L_sub_plain_eq_weighted_sum A hA,
    touching_source_zero (by linarith : 0 < A), zero_mul, zero_sub] at ha
  rw [ha]
  congr 1
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun x => by unfold complementaryCumulative; ring)

/-- Genuine full-axis integrability follows from the actual compact support of h'. -/
theorem complementary_derivative_integrable_Ioi {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun x => complementaryCumulative (vaughanCutoff A) x *
      deriv (plainProfile A 1) x) (Ioi (1 : ℝ)) := by
  have hf : IntegrableOn (fun x => complementaryCumulative (vaughanCutoff A) x *
      deriv (plainProfile A 1) x) (Ioc (1 : ℝ) (Real.exp (2 * A))) := by
    convert (complementary_derivative_integrable_Icc hA).mono_set Ioc_subset_Icc_self using 1
    funext x
    ring
  have ht : IntegrableOn (fun x => complementaryCumulative (vaughanCutoff A) x *
      deriv (plainProfile A 1) x) (Ioi (Real.exp (2 * A))) := by
    apply integrableOn_zero.congr_fun
    · intro x hx
      dsimp only
      rw [actual_derivative_zero_above hA hx, mul_zero]
    · exact measurableSet_Ioi
  have hX : (1 : ℝ) ≤ Real.exp (2 * A) := Real.one_le_exp (by linarith)
  simpa only [Ioc_union_Ioi_eq_Ioi hX] using hf.union ht

/-- The full joint complement/baseline Abel identity; no unweighted sector replacement. -/
theorem literal_L_sub_plain_eq_full_Abel {A : ℝ} (hA : 1 ≤ A) :
    literalOmegaComplementarySector A - plainInventory A =
      -(∫ x in Ioi (1 : ℝ),
        complementaryCumulative (vaughanCutoff A) x * deriv (plainProfile A 1) x) := by
  rw [literal_L_sub_plain_eq_finite_Abel hA]
  congr 1
  symm
  have hX : (1 : ℝ) ≤ Real.exp (2 * A) := Real.one_le_exp (by linarith)
  rw [← Ioc_union_Ioi_eq_Ioi hX]
  apply integral_union_eq_left_of_forall measurableSet_Ioi
  intro x hx
  rw [actual_derivative_zero_above hA hx, mul_zero]

/-- Actual signed log kernel of the complete strict complement minus plain baseline. -/
def complementaryCriticalKernel (A t : ℝ) : ℝ :=
  complementaryCumulative (vaughanCutoff A) (Real.exp t) * Real.exp (-t / 2) *
    (sourceCorrelation explicitSecondDerivative A t / 2 -
      deriv (sourceCorrelation explicitSecondDerivative A) t)

/-- The positive exponential Jacobian preserves the actual signed orientation. -/
theorem complementary_log_kernel_eq {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Real.exp t • (complementaryCumulative (vaughanCutoff A) (Real.exp t) *
      deriv (plainProfile A 1) (Real.exp t)) = -complementaryCriticalKernel A t := by
  rw [(plainProfile_hasDerivAt (by linarith : 0 < A) 1 (Real.exp_pos t)).deriv]
  simp only [Real.log_one, zero_add, Real.log_exp, smul_eq_mul, complementaryCriticalKernel]
  field_simp
  ring

/-- Genuine integrability of the actual cumulative critical kernel. -/
theorem complementary_critical_kernel_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (complementaryCriticalKernel A) (Ioi (0 : ℝ)) := by
  have hi := (integrableOn_comp_exp_Ioi (fun x =>
    complementaryCumulative (vaughanCutoff A) x * deriv (plainProfile A 1) x) 0).mpr
    (by simpa only [Real.exp_zero] using complementary_derivative_integrable_Ioi hA)
  have hn : IntegrableOn (fun t => -complementaryCriticalKernel A t) (Ioi (0 : ℝ)) :=
    hi.congr_fun (fun t _ => complementary_log_kernel_eq hA t) measurableSet_Ioi
  convert hn.neg using 1
  funext t
  simp only [Pi.neg_apply, neg_neg]

/-- Full L-B equals one actual signed critical cumulative pairing. -/
theorem literal_L_sub_plain_eq_critical_pairing {A : ℝ} (hA : 1 ≤ A) :
    literalOmegaComplementarySector A - plainInventory A =
      ∫ t in Ioi (0 : ℝ), complementaryCriticalKernel A t := by
  rw [literal_L_sub_plain_eq_full_Abel hA]
  have he := integral_comp_exp_Ioi (fun x =>
    complementaryCumulative (vaughanCutoff A) x * deriv (plainProfile A 1) x) 0
  simp only [Real.exp_zero] at he
  rw [← he]
  have hn : (∫ t in Ioi (0 : ℝ), Real.exp t •
      (complementaryCumulative (vaughanCutoff A) (Real.exp t) *
        deriv (plainProfile A 1) (Real.exp t))) =
      ∫ t in Ioi (0 : ℝ), -complementaryCriticalKernel A t :=
    setIntegral_congr_fun measurableSet_Ioi (fun t _ => complementary_log_kernel_eq hA t)
  rw [hn, integral_neg, neg_neg]

end
end FormalResearch.RiemannHypothesis.SourceStrictComplementaryAbel
