-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.RCoeff.Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.RCoeff.Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d","mathematical_subject":"Analysis.Integration","original_sha256":"2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/RiemannHypothesis/Laplace/InitialFormula.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Laplace.Expansion
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Algebra.Polynomial.Eval.Defs

/-!
# B3.3 initial-half-plane Laplace identity

This module proves RH-0010 equation (20) on its genuine initial convergence
half-plane `Re s > 1`.

Every analytic-multiplicity occurrence is retained.  The proof establishes
single-occurrence integrability first, proves a summable family of norm
integrals from the sharp equation-(17) majorant, and only then exchanges the
occurrence sum with the support-radius integral.

The finite source coefficients `r_k` of `P(t)^2` and `s_k` of
`P(t)P(-t)` are explicit.  The exact source kernel `J_k` from the preceding
checkpoint is used directly.

No meromorphic continuation beyond the initial half-plane is asserted here.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.RCoeff.Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Laplace.InitialFormula

open MeasureTheory Set Filter Polynomial
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroObject
open FormalResearch.RiemannHypothesis.Laplace.Algebra
open Kernel Expansion

noncomputable section

-- The finite-shell argument is also needed here, before the public downstream instance.
local instance : Countable ZeroOccurrence := by
  let : ∀ n : ℕ, Finite (ZeroSummability.ZeroShell n) := ZeroSummability.zeroShell_finite
  let f : ZeroOccurrence → Σ n : ℕ, ZeroSummability.ZeroShell n :=
    fun o ↦ ⟨ZeroSummability.shellIndex o, ⟨o, rfl⟩⟩
  apply Function.Injective.countable (f := f)
  intro o p h
  exact congrArg (fun q : Σ n : ℕ, ZeroSummability.ZeroShell n ↦ q.2.val) h

/-- Exact coefficient `r_k` of `P(t)^2`, extended by zero outside degree
eight. -/
def rCoeff : ℕ → ℂ
  | 0 => 11025
  | 1 => -22050
  | 2 => 20475
  | 3 => -11550
  | 4 => 4335
  | 5 => -1110
  | 6 => 190
  | 7 => -20
  | 8 => 1
  | _ => 0

/-- Exact coefficient `s_k` of `P(t)P(-t)`, extended by zero outside degree
eight. -/
def sCoeff : ℕ → ℂ
  | 0 => 11025
  | 1 => 0
  | 2 => -1575
  | 3 => 0
  | 4 => 135
  | 5 => 0
  | 6 => -10
  | 7 => 0
  | 8 => 1
  | _ => 0

/-- The source polynomial as a polynomial in the real support-radius variable. -/
def scalePolynomial (z : ℂ) : ℂ[X] :=
  C (z ^ 4) * X ^ 4 - C (10 * z ^ 3) * X ^ 3 +
    C (45 * z ^ 2) * X ^ 2 - C (105 * z) * X + C 105

/-- Square of the scaled transform polynomial, giving the positive exponential term. -/
def positivePolynomial (z : ℂ) : ℂ[X] :=
  scalePolynomial z ^ 2

/-- Product of the scaled transform polynomials at `z` and `-z`, giving the mixed term. -/
def mixedPolynomial (z : ℂ) : ℂ[X] :=
  scalePolynomial z * scalePolynomial (-z)

theorem scalePolynomial_eval (A z : ℂ) :
    (scalePolynomial z).eval A =
      transformPolynomial (A * z) := by
  simp [scalePolynomial, transformPolynomial]
  ring

theorem positivePolynomial_eval (A z : ℂ) :
    (positivePolynomial z).eval A =
      transformPolynomial (A * z) ^ 2 := by
  simp [positivePolynomial, scalePolynomial_eval]

theorem mixedPolynomial_eval (A z : ℂ) :
    (mixedPolynomial z).eval A =
      transformPolynomial (A * z) *
        transformPolynomial (-(A * z)) := by
  simp [mixedPolynomial, scalePolynomial_eval]

theorem positivePolynomial_expansion (z : ℂ) :
    positivePolynomial z =
      C (z ^ 8) * X ^ 8 -
      C (20 * z ^ 7) * X ^ 7 +
      C (190 * z ^ 6) * X ^ 6 -
      C (1110 * z ^ 5) * X ^ 5 +
      C (4335 * z ^ 4) * X ^ 4 -
      C (11550 * z ^ 3) * X ^ 3 +
      C (20475 * z ^ 2) * X ^ 2 -
      C (22050 * z) * X + C 11025 := by
  simp only [positivePolynomial, scalePolynomial,
    map_mul, map_pow, map_ofNat]
  ring

theorem mixedPolynomial_expansion (z : ℂ) :
    mixedPolynomial z =
      C (z ^ 8) * X ^ 8 -
      C (10 * z ^ 6) * X ^ 6 +
      C (135 * z ^ 4) * X ^ 4 -
      C (1575 * z ^ 2) * X ^ 2 +
      C 11025 := by
  simp only [mixedPolynomial, scalePolynomial,
    map_mul, map_pow, map_ofNat, map_neg]
  ring

theorem positivePolynomial_natDegree_le (z : ℂ) :
    (positivePolynomial z).natDegree ≤ 8 := by
  rw [positivePolynomial_expansion]
  compute_degree

theorem mixedPolynomial_natDegree_le (z : ℂ) :
    (mixedPolynomial z).natDegree ≤ 8 := by
  rw [mixedPolynomial_expansion]
  compute_degree

/-- The coefficient table is exactly `r_k z^k`. -/
theorem positivePolynomial_coeff
    (z : ℂ) (k : ℕ) (hk : k ≤ 8) :
    (positivePolynomial z).coeff k =
      rCoeff k * z ^ k := by
  rw [positivePolynomial_expansion]
  interval_cases k <;>
    simp only [coeff_sub, coeff_add, coeff_C_mul, coeff_X_pow, coeff_C, coeff_X] <;>
    norm_num [rCoeff]

/-- Reflection contributes the exact `(-1)^k r_k z^k` coefficient. -/
theorem positivePolynomial_neg_coeff
    (z : ℂ) (k : ℕ) (hk : k ≤ 8) :
    (positivePolynomial (-z)).coeff k =
      (-1 : ℂ) ^ k * rCoeff k * z ^ k := by
  rw [positivePolynomial_coeff (-z) k hk]
  rw [neg_pow]
  ring

/-- The mixed coefficient table is exactly `s_k z^k`. -/
theorem mixedPolynomial_coeff
    (z : ℂ) (k : ℕ) (hk : k ≤ 8) :
    (mixedPolynomial z).coeff k =
      sCoeff k * z ^ k := by
  rw [mixedPolynomial_expansion]
  interval_cases k <;>
    simp only [coeff_sub, coeff_add, coeff_C_mul, coeff_X_pow, coeff_C] <;>
    norm_num [sCoeff]

/-- Finite polynomial contribution after support-radius Laplace integration. -/
def polynomialKernel (p : ℂ[X]) (w : ℂ) : ℂ :=
  ∑ k ∈ Finset.range 9, p.coeff k * J k w

/-- The complete continued contribution of one shifted occurrence. -/
def sourceKernel (z s : ℂ) : ℂ :=
  modeCoefficient z *
    (polynomialKernel (positivePolynomial z) (s - 2 * z) +
      polynomialKernel (positivePolynomial (-z)) (s + 2 * z) -
      2 * polynomialKernel (mixedPolynomial z) s)

/-- Literal RH-0010 equation-(20) single-occurrence summand. -/
def equation20Summand (z s : ℂ) : ℂ :=
  modeCoefficient z *
    ∑ k ∈ Finset.range 9,
      z ^ k *
        (rCoeff k * J k (s - 2 * z) +
          (-1 : ℂ) ^ k * rCoeff k * J k (s + 2 * z) -
          2 * sCoeff k * J k s)

private theorem polynomialKernel_positive
    (z w : ℂ) :
    polynomialKernel (positivePolynomial z) w =
      ∑ k ∈ Finset.range 9,
        rCoeff k * z ^ k * J k w := by
  unfold polynomialKernel
  apply Finset.sum_congr rfl
  intro k hk
  have hk8 : k ≤ 8 :=
    Nat.le_of_lt_succ (Finset.mem_range.mp hk)
  rw [positivePolynomial_coeff z k hk8]

private theorem polynomialKernel_negative
    (z w : ℂ) :
    polynomialKernel (positivePolynomial (-z)) w =
      ∑ k ∈ Finset.range 9,
        ((-1 : ℂ) ^ k * rCoeff k * z ^ k) * J k w := by
  unfold polynomialKernel
  apply Finset.sum_congr rfl
  intro k hk
  have hk8 : k ≤ 8 :=
    Nat.le_of_lt_succ (Finset.mem_range.mp hk)
  rw [positivePolynomial_neg_coeff z k hk8]

private theorem polynomialKernel_mixed
    (z w : ℂ) :
    polynomialKernel (mixedPolynomial z) w =
      ∑ k ∈ Finset.range 9,
        sCoeff k * z ^ k * J k w := by
  unfold polynomialKernel
  apply Finset.sum_congr rfl
  intro k hk
  have hk8 : k ≤ 8 :=
    Nat.le_of_lt_succ (Finset.mem_range.mp hk)
  rw [mixedPolynomial_coeff z k hk8]

/-- The compact polynomial representation is definitionally the exact
coefficient/sign formula required in equation (20). -/
theorem sourceKernel_eq_equation20Summand
    (z s : ℂ) :
    sourceKernel z s = equation20Summand z s := by
  rw [sourceKernel, equation20Summand,
    polynomialKernel_positive,
    polynomialKernel_negative,
    polynomialKernel_mixed]
  rw [← Finset.sum_add_distrib, Finset.mul_sum,
    ← Finset.sum_sub_distrib]
  apply congrArg (fun x : ℂ ↦ modeCoefficient z * x)
  apply Finset.sum_congr rfl
  intro k _
  ring

/-- Polynomial with its complex Laplace weight. -/
def weightedPolynomial
    (p : ℂ[X]) (w : ℂ) (A : ℝ) : ℂ :=
  Complex.exp (-w * A) * p.eval (A : ℂ)

theorem weightedPolynomial_eq_sum
    (p : ℂ[X]) (hp : p.natDegree ≤ 8)
    (w : ℂ) (A : ℝ) :
    weightedPolynomial p w A =
      ∑ k ∈ Finset.range 9,
        p.coeff k * kernelIntegrand k w A := by
  rw [weightedPolynomial,
    Polynomial.eval_eq_sum_range'
      (show p.natDegree < 9 by omega)]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k _
  unfold kernelIntegrand
  ring

/-- Every finite polynomial-exponential contribution is genuinely integrable
on its convergence half-plane. -/
theorem weightedPolynomial_integrable
    (p : ℂ[X]) (hp : p.natDegree ≤ 8)
    (w : ℂ) (hw : 0 < w.re) :
    IntegrableOn (weightedPolynomial p w) (Ioi 1) := by
  rw [show weightedPolynomial p w =
      fun A ↦ ∑ k ∈ Finset.range 9,
        p.coeff k * kernelIntegrand k w A by
      funext A
      exact weightedPolynomial_eq_sum p hp w A]
  exact integrable_finsetSum _ fun k _ ↦
    (kernelIntegrand_integrable k w hw).const_mul (p.coeff k)

/-- Finite linearity plus the proved `J_k` integral theorem. -/
theorem integral_weightedPolynomial
    (p : ℂ[X]) (hp : p.natDegree ≤ 8)
    (w : ℂ) (hw : 0 < w.re) :
    (∫ A in Ioi (1 : ℝ), weightedPolynomial p w A) =
      polynomialKernel p w := by
  simp_rw [weightedPolynomial_eq_sum p hp]
  rw [integral_finsetSum _ fun k _ ↦
    (kernelIntegrand_integrable k w hw).const_mul (p.coeff k)]
  unfold polynomialKernel
  apply Finset.sum_congr rfl
  intro k _
  rw [integral_const_mul]
  exact congrArg (fun x : ℂ ↦ p.coeff k * x)
    (by
      have h := j_integral_obligation k w hw
      simpa [JIntegral, kernelIntegrand] using h.2)

/-- Multiplication by the outer Laplace weight produces exactly the three
shifted polynomial contributions. -/
theorem weighted_expandedSummand_eq
    (z s : ℂ) (A : ℝ) :
    Complex.exp (-s * A) * expandedSummand A z =
      modeCoefficient z *
        (weightedPolynomial (positivePolynomial z) (s - 2 * z) A +
          weightedPolynomial (positivePolynomial (-z)) (s + 2 * z) A -
          2 * weightedPolynomial (mixedPolynomial z) s A) := by
  have hpos :
      Complex.exp (-(s - 2 * z) * (A : ℂ)) =
        Complex.exp (-s * A) *
          Complex.exp (2 * (A : ℂ) * z) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  have hneg :
      Complex.exp (-(s + 2 * z) * (A : ℂ)) =
        Complex.exp (-s * A) *
          Complex.exp (-2 * (A : ℂ) * z) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  unfold expandedSummand weightedPolynomial
  rw [positivePolynomial_eval,
    positivePolynomial_eval, mixedPolynomial_eval,
    hpos, hneg]
  ring

/-- The critical strip and `Re s > 1` imply all three finite convergence
guards for a genuine occurrence. -/
theorem occurrence_integrable
    (o : ZeroOccurrence) (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn
      (fun A : ℝ ↦
        Complex.exp (-s * A) *
          expandedSummand A (shiftedValue o))
      (Ioi 1) := by
  let z := shiftedValue o
  have hz := shiftedValue_strip o
  have hminus : 0 < (s - 2 * z).re := by
    dsimp [z]
    norm_num [Complex.mul_re]
    linarith [hz.2]
  have hplus : 0 < (s + 2 * z).re := by
    dsimp [z]
    norm_num [Complex.mul_re]
    linarith [hz.1]
  have hs0 : 0 < s.re := by linarith
  rw [show
    (fun A : ℝ ↦ Complex.exp (-s * A) *
      expandedSummand A z) =
    (fun A ↦ modeCoefficient z *
      (weightedPolynomial (positivePolynomial z) (s - 2 * z) A +
        weightedPolynomial (positivePolynomial (-z)) (s + 2 * z) A -
        2 * weightedPolynomial (mixedPolynomial z) s A)) by
      funext A
      exact weighted_expandedSummand_eq z s A]
  exact (((weightedPolynomial_integrable _
      (positivePolynomial_natDegree_le z) _ hminus).add
    (weightedPolynomial_integrable _
      (positivePolynomial_natDegree_le (-z)) _ hplus)).sub
    ((weightedPolynomial_integrable _
      (mixedPolynomial_natDegree_le z) _ hs0).const_mul 2)).const_mul
      (modeCoefficient z)

/-- Single-occurrence support-radius integration gives the exact equation-(20)
kernel. -/
theorem integral_occurrence
    (o : ZeroOccurrence) (s : ℂ) (hs : 1 < s.re) :
    (∫ A in Ioi (1 : ℝ),
      Complex.exp (-s * A) *
        expandedSummand A (shiftedValue o)) =
      equation20Summand (shiftedValue o) s := by
  let z := shiftedValue o
  have hz := shiftedValue_strip o
  have hminus : 0 < (s - 2 * z).re := by
    dsimp [z]
    norm_num [Complex.mul_re]
    linarith [hz.2]
  have hplus : 0 < (s + 2 * z).re := by
    dsimp [z]
    norm_num [Complex.mul_re]
    linarith [hz.1]
  have hs0 : 0 < s.re := by linarith
  have hp :=
    weightedPolynomial_integrable
      (positivePolynomial z)
      (positivePolynomial_natDegree_le z)
      (s - 2 * z) hminus
  have hn :=
    weightedPolynomial_integrable
      (positivePolynomial (-z))
      (positivePolynomial_natDegree_le (-z))
      (s + 2 * z) hplus
  have hm :=
    weightedPolynomial_integrable
      (mixedPolynomial z)
      (mixedPolynomial_natDegree_le z)
      s hs0
  change (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) * expandedSummand A z) =
    equation20Summand z s
  simp_rw [weighted_expandedSummand_eq z s]
  have hpn : IntegrableOn (fun a ↦
      weightedPolynomial (positivePolynomial z) (s - 2 * z) a +
      weightedPolynomial (positivePolynomial (-z)) (s + 2 * z) a) (Ioi 1) := hp.add hn
  rw [integral_const_mul,
    integral_sub hpn (hm.const_mul 2),
    integral_add hp hn, integral_const_mul]
  rw [integral_weightedPolynomial _
        (positivePolynomial_natDegree_le z) _ hminus,
      integral_weightedPolynomial _
        (positivePolynomial_natDegree_le (-z)) _ hplus,
      integral_weightedPolynomial _
        (mixedPolynomial_natDegree_le z) _ hs0]
  exact sourceKernel_eq_equation20Summand z s

/-- The actual occurrence integrand used for the infinite interchange. -/
def occurrenceIntegrand
    (s : ℂ) (o : ZeroOccurrence) (A : ℝ) : ℂ :=
  Complex.exp (-s * A) *
    expandedSummand A (shiftedValue o)

/-- Exact sharp scale factor after applying the equation-(17) bound. -/
def scaleMajorant (s : ℂ) (A : ℝ) : ℝ :=
  (4 * 266 ^ 2) * (1 + A ^ 8) *
    Real.exp (-(s.re - 1) * A)

theorem scaleMajorant_nonneg
    (s : ℂ) (A : ℝ) :
    0 ≤ scaleMajorant s A := by
  unfold scaleMajorant
  positivity

/-- The sharp scale majorant is integrable exactly on the required initial
half-plane. -/
theorem scaleMajorant_integrable
    (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn (scaleMajorant s) (Ioi 1) := by
  let c := s.re - 1
  have hc : 0 < c := sub_pos.mpr hs
  have h0 := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (0 : ℝ)) (p := (1 : ℝ))
    (by norm_num) zero_lt_one hc
  have h8 := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (8 : ℝ)) (p := (1 : ℝ))
    (by norm_num) zero_lt_one hc
  simp only [Real.rpow_zero, one_mul, Real.rpow_ofNat,
    Real.rpow_one] at h0 h8
  have h0' :=
    (h0.mono_set (Ioi_subset_Ioi
      (by norm_num : (0 : ℝ) ≤ 1))).const_mul
      (4 * 266 ^ 2)
  have h8' :=
    (h8.mono_set (Ioi_subset_Ioi
      (by norm_num : (0 : ℝ) ≤ 1))).const_mul
      (4 * 266 ^ 2)
  have hadd := h0'.add h8'
  refine IntegrableOn.congr_fun hadd ?_ measurableSet_Ioi
  intro A _
  dsimp [scaleMajorant, c]
  ring

/-- Pointwise product domination by the integrable scale factor and the
summable all-zero coefficient. -/
theorem occurrenceIntegrand_norm_le
    (s : ℂ) (o : ZeroOccurrence)
    (A : ℝ) (hA : 1 ≤ A) :
    ‖occurrenceIntegrand s o A‖ ≤
      scaleMajorant s A * modeWeight o := by
  have h :=
    expandedSummand_norm_le A hA o
  change
    ‖expandedSummand A (shiftedValue o)‖ ≤
      (4 * 266 ^ 2) * (1 + A ^ 8) *
        Real.exp A * modeWeight o at h
  have hexp :
      Real.exp (-s.re * A) * Real.exp A =
        Real.exp (-(s.re - 1) * A) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    ‖occurrenceIntegrand s o A‖ =
        Real.exp (-s.re * A) *
          ‖expandedSummand A (shiftedValue o)‖ := by
      simp [occurrenceIntegrand,
        Complex.norm_exp, Complex.mul_re]
    _ ≤ Real.exp (-s.re * A) *
        ((4 * 266 ^ 2) * (1 + A ^ 8) *
          Real.exp A * modeWeight o) := by
      gcongr
    _ = scaleMajorant s A * modeWeight o := by
      unfold scaleMajorant
      rw [← hexp]
      ring

/-- Integrating the norm preserves the product majorant. -/
theorem integral_norm_le
    (s : ℂ) (hs : 1 < s.re)
    (o : ZeroOccurrence) :
    (∫ A in Ioi (1 : ℝ),
      ‖occurrenceIntegrand s o A‖) ≤
      (∫ A in Ioi (1 : ℝ), scaleMajorant s A) *
        modeWeight o := by
  rw [← integral_mul_const]
  exact setIntegral_mono_on
    (occurrence_integrable o s hs).norm
    ((scaleMajorant_integrable s hs).mul_const _)
    measurableSet_Ioi
    (fun A hA ↦ occurrenceIntegrand_norm_le s o A hA.le)

/-- The integrals of all occurrence norms form a summable family. -/
theorem integral_norms_summable
    (s : ℂ) (hs : 1 < s.re) :
    Summable
      (fun o : ZeroOccurrence ↦
        ∫ A in Ioi (1 : ℝ),
          ‖occurrenceIntegrand s o A‖) := by
  have hmajor :=
    modeWeight_summable.mul_left
      (∫ A in Ioi (1 : ℝ), scaleMajorant s A)
  apply Summable.of_nonneg_of_le
    (fun o ↦ integral_nonneg fun _ ↦ norm_nonneg _)
    (integral_norm_le s hs)
    hmajor

/-- The pointwise occurrence series equals the actual weighted source integrand. -/
theorem summedIntegrand_eq
    (s : ℂ) (A : ℝ) (hA : 1 ≤ A) :
    (∑' o : ZeroOccurrence,
      occurrenceIntegrand s o A) =
      Complex.exp (-s * A) *
        (weightedSource A : ℂ) := by
  unfold occurrenceIntegrand
  rw [(equation17 A hA).1.tsum_mul_left]
  rw [← (equation17 A hA).2]

/-- Absolute Tonelli/Fubini justification of the complete occurrence
interchange. -/
theorem integral_tsum_occurrences
    (s : ℂ) (hs : 1 < s.re) :
    (∫ A in Ioi (1 : ℝ),
      ∑' o : ZeroOccurrence,
        occurrenceIntegrand s o A) =
      ∑' o : ZeroOccurrence,
        equation20Summand (shiftedValue o) s := by
  rw [← integral_tsum_of_summable_integral_norm
    (F := fun o A ↦ occurrenceIntegrand s o A)
    (fun o ↦ occurrence_integrable o s hs)
    (integral_norms_summable s hs)]
  unfold occurrenceIntegrand
  simp_rw [integral_occurrence _ s hs]

/-- The corresponding extended norm integrals have finite total mass. -/
theorem integrals_enorm_ne_top
    (s : ℂ) (hs : 1 < s.re) :
    (∑' o : ZeroOccurrence,
      ∫⁻ A in Ioi (1 : ℝ),
        ‖occurrenceIntegrand s o A‖ₑ) ≠ ⊤ := by
  have heq (o : ZeroOccurrence) :=
    ofReal_integral_norm_eq_lintegral_enorm (occurrence_integrable o s hs)
  change ∀ o : ZeroOccurrence,
    ENNReal.ofReal (∫ A in Ioi (1 : ℝ), ‖occurrenceIntegrand s o A‖) =
      ∫⁻ A in Ioi (1 : ℝ), ‖occurrenceIntegrand s o A‖ₑ at heq
  simp_rw [← heq]
  rw [← ENNReal.ofReal_tsum_of_nonneg
    (fun o ↦ integral_nonneg
      (fun A ↦ norm_nonneg (occurrenceIntegrand s o A)))
    (integral_norms_summable s hs)]
  exact ENNReal.ofReal_ne_top

/-- Tonelli gives genuine Bochner integrability of the complete occurrence sum. -/
theorem summedIntegrand_integrable
    (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn
      (fun A : ℝ ↦
        ∑' o : ZeroOccurrence,
          occurrenceIntegrand s o A)
      (Ioi 1) := by
  constructor
  · have hm :
        ∀ o : ZeroOccurrence,
          AEStronglyMeasurable (occurrenceIntegrand s o)
            (volume.restrict (Ioi 1)) :=
      fun o ↦ (occurrence_integrable o s hs).1
    exact (AEMeasurable.tsum fun o ↦ (hm o).aemeasurable).aestronglyMeasurable
  · rw [hasFiniteIntegral_iff_enorm]
    apply lt_of_le_of_lt
      (lintegral_mono
        (fun A ↦ enorm_tsum_le_tsum_enorm))
    rw [lintegral_tsum (f := fun o A ↦ ‖occurrenceIntegrand s o A‖ₑ)
      (fun o ↦ (occurrence_integrable o s hs).1.enorm)]
    exact lt_top_iff_ne_top.mpr
      (integrals_enorm_ne_top s hs)

/-- Genuine absolute convergence of the actual weighted source Laplace
integral on `Re s > 1`. -/
theorem weightedSource_laplace_integrable
    (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn
      (fun A : ℝ ↦
        Complex.exp (-s * A) *
          (weightedSource A : ℂ))
      (Ioi 1) := by
  exact (summedIntegrand_integrable s hs).congr_fun
    (fun A hA ↦ summedIntegrand_eq s A hA.le)
    measurableSet_Ioi

/-- RH-0010 equation (20) on the genuine initial convergence half-plane. -/
theorem equation20
    (s : ℂ) (hs : 1 < s.re) :
    (∫ A in Ioi (1 : ℝ),
      Complex.exp (-s * A) *
        (weightedSource A : ℂ)) =
      ∑' o : ZeroOccurrence,
        modeCoefficient (shiftedValue o) *
          ∑ k ∈ Finset.range 9,
            shiftedValue o ^ k *
              (rCoeff k *
                  J k (s - 2 * shiftedValue o) +
                (-1 : ℂ) ^ k * rCoeff k *
                  J k (s + 2 * shiftedValue o) -
                2 * sCoeff k * J k s) := by
  change (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) * (weightedSource A : ℂ)) =
    ∑' o : ZeroOccurrence, equation20Summand (shiftedValue o) s
  rw [← integral_tsum_occurrences s hs]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro A hA
  exact (summedIntegrand_eq s A hA.le).symm

/-- Initial-half-plane transformed occurrence family is absolutely summable. -/
theorem equation20_norms_summable
    (s : ℂ) (hs : 1 < s.re) :
    Summable
      (fun o : ZeroOccurrence ↦
        ‖equation20Summand (shiftedValue o) s‖) := by
  have h :=
    (integral_norms_summable s hs).of_norm_bounded
      (fun o ↦
        norm_integral_le_integral_norm
          (occurrenceIntegrand s o))
  have hn := h.norm
  unfold occurrenceIntegrand at hn
  simpa only [integral_occurrence _ s hs] using hn

/-- Exact initial-half-plane checkpoint. -/
def InitialFormulaCheckpoint : Prop :=
  ∀ s : ℂ, 1 < s.re →
    IntegrableOn
      (fun A : ℝ ↦
        Complex.exp (-s * A) *
          (weightedSource A : ℂ))
      (Ioi 1) ∧
    Summable
      (fun o : ZeroOccurrence ↦
        equation20Summand (shiftedValue o) s) ∧
    (∫ A in Ioi (1 : ℝ),
      Complex.exp (-s * A) *
        (weightedSource A : ℂ)) =
      ∑' o : ZeroOccurrence,
        equation20Summand (shiftedValue o) s

theorem initial_formula_checkpoint :
    InitialFormulaCheckpoint := by
  intro s hs
  exact ⟨weightedSource_laplace_integrable s hs,
    (equation20_norms_summable s hs).of_norm,
    by
      simpa only [equation20Summand] using equation20 s hs⟩

end
end FormalResearch.RiemannHypothesis.Laplace.InitialFormula
