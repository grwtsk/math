-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IteratedDerivCexpRealConstMul.Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IteratedDerivCexpRealConstMul.Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084","mathematical_subject":"Analysis.Integration","original_sha256":"cf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/Weil/VerticalStripDecay.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.Weil.VerticalDecay
public import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas
public import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Tactic

/-!
# Uniform vertical-strip decay

For a compact real interval of Laplace parameters, the derivatives of the
weighted test functions are uniformly bounded on their common compact
support.  Repeated whole-line integration by parts therefore gives rapid
vertical decay with one constant uniform over the entire strip.

This is the quantitative test-transform estimate needed by future contour
arguments.  It asserts no gamma-factor estimate, zero-counting theorem, or
explicit formula.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.IteratedDerivCexpRealConstMul.Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084

public section

namespace Surface.Core.Weil

noncomputable section

open Set MeasureTheory Complex
open scoped ContDiff FourierTransform SchwartzMap RealInnerProductSpace

namespace PrimitiveWeilTestFunction

private lemma iteratedDeriv_cexp_real_const_mul
    (c : ℂ) (n : ℕ) :
    iteratedDeriv n (fun x : ℝ ↦ Complex.exp (c * (x : ℂ))) =
      fun x : ℝ ↦ c ^ n * Complex.exp (c * (x : ℂ)) := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [iteratedDeriv_succ, ih]
      funext x
      have hlinear :
          HasDerivAt (fun y : ℝ ↦ c * (y : ℂ)) c x := by
        have hcoe : HasDerivAt (fun y : ℝ ↦ (y : ℂ)) 1 x := by
          exact Complex.ofRealCLM.hasDerivAt
        simpa only [mul_one] using hcoe.const_mul c
      have hexp :
          HasDerivAt (fun y : ℝ ↦ Complex.exp (c * (y : ℂ)))
            (Complex.exp (c * (x : ℂ)) * c) x :=
        hlinear.cexp
      convert (hexp.const_mul (c ^ n)).deriv using 1
      all_goals ring

private lemma iteratedDeriv_laplaceSliceSchwartz
    (g : PrimitiveWeilTestFunction) (sigma : ℝ) (n : ℕ) (x : ℝ) :
    iteratedDeriv n (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x =
      ∑ i ∈ Finset.range (n + 1),
        n.choose i * iteratedDeriv i (g : ℝ → ℂ) x *
          ((((sigma : ℂ) - (1 / 2 : ℂ)) ^ (n - i)) *
            Complex.exp (((sigma : ℂ) - (1 / 2 : ℂ)) * (x : ℂ))) := by
  change iteratedDeriv n
      ((g : ℝ → ℂ) *
        fun x : ℝ ↦
          Complex.exp (((sigma : ℂ) - (1 / 2 : ℂ)) * (x : ℂ))) x = _
  rw [iteratedDeriv_mul]
  · simp_rw [iteratedDeriv_cexp_real_const_mul]
  · exact g.smooth.contDiffAt.of_le (mod_cast le_top)
  · have hcoe : ContDiff ℝ ∞ (fun x : ℝ ↦ (x : ℂ)) :=
      Complex.ofRealCLM.contDiff
    have hlinear : ContDiff ℝ ∞
        (fun x : ℝ ↦ ((sigma : ℂ) - (1 / 2 : ℂ)) * (x : ℂ)) :=
      contDiff_const.mul hcoe
    exact (Complex.contDiff_exp.comp hlinear).contDiffAt.of_le
      (mod_cast le_top)

private def laplaceSliceDerivativeFormula
    (g : PrimitiveWeilTestFunction) (n : ℕ) (p : ℝ × ℝ) : ℂ :=
  ∑ i ∈ Finset.range (n + 1),
    n.choose i * iteratedDeriv i (g : ℝ → ℂ) p.2 *
      ((((p.1 : ℂ) - (1 / 2 : ℂ)) ^ (n - i)) *
        Complex.exp (((p.1 : ℂ) - (1 / 2 : ℂ)) * (p.2 : ℂ)))

private lemma continuous_laplaceSliceDerivativeFormula
    (g : PrimitiveWeilTestFunction) (n : ℕ) :
    Continuous (laplaceSliceDerivativeFormula g n) := by
  unfold laplaceSliceDerivativeFormula
  apply continuous_finsetSum
  intro i hi
  have hg : Continuous (iteratedDeriv i (g : ℝ → ℂ)) :=
    g.smooth.continuous_iteratedDeriv i (mod_cast le_top)
  fun_prop

private lemma iteratedDeriv_eq_zero_of_notMem_tsupport
    {f : ℝ → ℂ} {x : ℝ} (hx : x ∉ tsupport f) (n : ℕ) :
    iteratedDeriv n f x = 0 := by
  have hzero : iteratedFDeriv ℝ n f x = 0 := by
    rw [← Function.notMem_support]
    intro hx'
    exact hx (support_iteratedFDeriv_subset n hx')
  rw [iteratedDeriv_eq_iteratedFDeriv, hzero]
  simp

private lemma support_iteratedDeriv_laplaceSlice_subset
    (g : PrimitiveWeilTestFunction) (sigma : ℝ) (n : ℕ) :
    Function.support
        (iteratedDeriv n (g.laplaceSliceSchwartz sigma : ℝ → ℂ)) ⊆
      Set.Icc (-g.supportRadius) g.supportRadius := by
  have htsupport :
      tsupport (g.laplaceSliceSchwartz sigma : ℝ → ℂ) ⊆
        Set.Icc (-g.supportRadius) g.supportRadius := by
    apply closure_minimal _ isClosed_Icc
    exact
      (support_primitiveWeilLaplaceIntegrand_subset g (sigma : ℂ)).trans
        g.support_subset
  intro x hx
  by_contra hxIcc
  apply hx
  exact iteratedDeriv_eq_zero_of_notMem_tsupport
    (fun hmem ↦ hxIcc (htsupport hmem)) n

private theorem laplaceSlice_iteratedDeriv_l1_uniform
    (g : PrimitiveWeilTestFunction) {sigma₀ sigma₁ : ℝ}
    (_hsigma : sigma₀ ≤ sigma₁) (n : ℕ) :
    ∃ A : ℝ, 0 ≤ A ∧ ∀ sigma ∈ Set.Icc sigma₀ sigma₁,
      ∫ x : ℝ,
        ‖iteratedDeriv n
          (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x‖ ≤ A := by
  let K : Set (ℝ × ℝ) :=
    Set.Icc sigma₀ sigma₁ ×ˢ
      Set.Icc (-g.supportRadius) g.supportRadius
  have hK : IsCompact K := isCompact_Icc.prod isCompact_Icc
  have hcont :
      Continuous (fun p ↦ ‖laplaceSliceDerivativeFormula g n p‖) :=
    (continuous_laplaceSliceDerivativeFormula g n).norm
  have hbdd :
      BddAbove
        ((fun p ↦ ‖laplaceSliceDerivativeFormula g n p‖) '' K) :=
    hK.bddAbove_image hcont.continuousOn
  rcases bddAbove_def.mp hbdd with ⟨C, hC⟩
  let C₀ : ℝ := max C 0
  let A : ℝ :=
    volume.real (Set.Icc (-g.supportRadius) g.supportRadius) * C₀
  refine ⟨A, mul_nonneg measureReal_nonneg (le_max_right _ _), ?_⟩
  intro sigma hsigmaMem
  have hpoint :
      ∀ x ∈ Set.Icc (-g.supportRadius) g.supportRadius,
        ‖iteratedDeriv n
          (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x‖ ≤ C₀ := by
    intro x hx
    rw [iteratedDeriv_laplaceSliceSchwartz]
    exact
      (hC ‖laplaceSliceDerivativeFormula g n (sigma, x)‖
        ⟨⟨sigma, x⟩, ⟨hsigmaMem, hx⟩, rfl⟩).trans
          (le_max_left _ _)
  have hsupport :=
    support_iteratedDeriv_laplaceSlice_subset g sigma n
  calc
    ∫ x : ℝ,
          ‖iteratedDeriv n
            (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x‖ =
        ∫ x : ℝ in Set.Icc (-g.supportRadius) g.supportRadius,
          ‖iteratedDeriv n
            (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x‖ := by
      symm
      apply setIntegral_eq_integral_of_forall_compl_eq_zero
      intro x hx
      rw [norm_eq_zero]
      exact Function.notMem_support.mp
        (fun hmem ↦ hx (hsupport hmem))
    _ ≤ ∫ _x : ℝ in Set.Icc (-g.supportRadius) g.supportRadius, C₀ := by
      have hfInt : IntegrableOn
          (fun x : ℝ ↦
            ‖iteratedDeriv n
              (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x‖)
          (Set.Icc (-g.supportRadius) g.supportRadius) volume := by
        have hcontinuous : Continuous
            (fun x : ℝ ↦
              ‖iteratedDeriv n
                (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x‖) := by
          have hsmooth : ContDiff ℝ ∞
              (g.laplaceSliceSchwartz sigma : ℝ → ℂ) :=
            (g.laplaceSliceSchwartz sigma).smooth ⊤
          exact
            (hsmooth.continuous_iteratedDeriv n
              (mod_cast le_top)).norm
        exact hcontinuous.continuousOn.integrableOn_compact isCompact_Icc
      exact setIntegral_mono_on hfInt
        (integrableOn_const measure_Icc_lt_top.ne)
        measurableSet_Icc hpoint
    _ = A := by
      rw [setIntegral_const]
      rfl

private def verticalOscillation (t x : ℝ) : ℂ :=
  Complex.exp (Complex.I * (t : ℂ) * (x : ℂ))

private lemma hasDerivAt_verticalOscillation (t x : ℝ) :
    HasDerivAt (verticalOscillation t)
      ((Complex.I * (t : ℂ)) * verticalOscillation t x) x := by
  have hcoe : HasDerivAt (fun y : ℝ ↦ (y : ℂ)) 1 x :=
    Complex.ofRealCLM.hasDerivAt
  have hlinear : HasDerivAt
      (fun y : ℝ ↦ (Complex.I * (t : ℂ)) * (y : ℂ))
      (Complex.I * (t : ℂ)) x := by
    simpa only [mul_one] using
      hcoe.const_mul (Complex.I * (t : ℂ))
  convert hlinear.cexp using 1
  · funext y
    unfold verticalOscillation
    congr 1
  · unfold verticalOscillation
    ring

private lemma primitiveWeilLaplace_vertical_eq_integral
    (g : PrimitiveWeilTestFunction) (sigma t : ℝ) :
    primitiveWeilLaplace g
        ((sigma : ℂ) + Complex.I * (t : ℂ)) =
      ∫ x : ℝ,
        g.laplaceSliceSchwartz sigma x * verticalOscillation t x := by
  unfold primitiveWeilLaplace
  apply integral_congr_ae
  filter_upwards with x
  rw [laplaceSliceSchwartz_apply]
  unfold primitiveWeilLaplaceIntegrand verticalOscillation
  rw [show
      (((sigma : ℂ) + Complex.I * (t : ℂ)) - (1 / 2 : ℂ)) *
          (x : ℂ) =
        (((sigma : ℂ) - (1 / 2 : ℂ)) * (x : ℂ)) +
          Complex.I * (t : ℂ) * (x : ℂ) by ring]
  rw [Complex.exp_add]
  ring

private lemma integrable_iteratedDeriv_mul_verticalOscillation
    (g : PrimitiveWeilTestFunction) (sigma t : ℝ) (n : ℕ) :
    Integrable (fun x : ℝ ↦
      iteratedDeriv n
          (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
        verticalOscillation t x) := by
  have hsmooth : ContDiff ℝ ∞
      (g.laplaceSliceSchwartz sigma : ℝ → ℂ) :=
    (g.laplaceSliceSchwartz sigma).smooth ⊤
  have hcontinuous : Continuous (fun x : ℝ ↦
      iteratedDeriv n
          (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
        verticalOscillation t x) := by
    apply (hsmooth.continuous_iteratedDeriv n
      (mod_cast le_top)).mul
    unfold verticalOscillation
    fun_prop
  have hsupport : Function.support (fun x : ℝ ↦
      iteratedDeriv n
          (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
        verticalOscillation t x) ⊆
      Set.Icc (-g.supportRadius) g.supportRadius := by
    exact (Function.support_mul_subset_left _ _).trans
      (support_iteratedDeriv_laplaceSlice_subset g sigma n)
  exact hcontinuous.integrable_of_hasCompactSupport
    (HasCompactSupport.of_support_subset_isCompact isCompact_Icc hsupport)

private lemma verticalOscillation_mul_iteratedDeriv_integral_succ
    (g : PrimitiveWeilTestFunction) (sigma t : ℝ) (n : ℕ) :
    (Complex.I * (t : ℂ)) *
        (∫ x : ℝ,
          iteratedDeriv n
              (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
            verticalOscillation t x) =
      -∫ x : ℝ,
        iteratedDeriv (n + 1)
            (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
          verticalOscillation t x := by
  let u : ℝ → ℂ :=
    iteratedDeriv n (g.laplaceSliceSchwartz sigma : ℝ → ℂ)
  let u' : ℝ → ℂ :=
    iteratedDeriv (n + 1)
      (g.laplaceSliceSchwartz sigma : ℝ → ℂ)
  let v : ℝ → ℂ := verticalOscillation t
  let v' : ℝ → ℂ :=
    fun x ↦ (Complex.I * (t : ℂ)) * verticalOscillation t x
  have hsmooth : ContDiff ℝ ∞
      (g.laplaceSliceSchwartz sigma : ℝ → ℂ) :=
    (g.laplaceSliceSchwartz sigma).smooth ⊤
  have hu : ∀ x ∈ tsupport v, HasDerivAt u (u' x) x := by
    intro x hx
    have hd :=
      (hsmooth.differentiable_iteratedDeriv n
        (mod_cast ENat.coe_lt_top n) x).hasDerivAt
    simpa only [u, u', ← congrFun (iteratedDeriv_succ
      (f := (g.laplaceSliceSchwartz sigma : ℝ → ℂ))
      (n := n)) x] using hd
  have hv : ∀ x ∈ tsupport u, HasDerivAt v (v' x) x := by
    intro x hx
    exact hasDerivAt_verticalOscillation t x
  have huv : Integrable (u * v) := by
    change Integrable (fun x : ℝ ↦
      iteratedDeriv n
          (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
        verticalOscillation t x)
    exact
      integrable_iteratedDeriv_mul_verticalOscillation g sigma t n
  have hu'v : Integrable (u' * v) := by
    change Integrable (fun x : ℝ ↦
      iteratedDeriv (n + 1)
          (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
        verticalOscillation t x)
    exact
      integrable_iteratedDeriv_mul_verticalOscillation
        g sigma t (n + 1)
  have huv' : Integrable (u * v') := by
    have h :=
      (integrable_iteratedDeriv_mul_verticalOscillation
        g sigma t n).const_mul (Complex.I * (t : ℂ))
    refine h.congr ?_
    filter_upwards with x
    dsimp [u, v']
    ring
  have hibp :=
    MeasureTheory.integral_mul_deriv_eq_deriv_mul_of_integrable
      (u := u) (v := v) (u' := u') (v' := v')
      hu hv huv' hu'v huv
  rw [show
      (∫ x : ℝ, u x * v' x) =
        (Complex.I * (t : ℂ)) * ∫ x : ℝ, u x * v x by
      rw [← integral_const_mul]
      apply integral_congr_ae
      filter_upwards with x
      simp only [v', mul_assoc]
      ring] at hibp
  exact hibp

private lemma primitiveWeilLaplace_vertical_moment_identity
    (g : PrimitiveWeilTestFunction) (sigma t : ℝ) (n : ℕ) :
    (Complex.I * (t : ℂ)) ^ n *
        primitiveWeilLaplace g
          ((sigma : ℂ) + Complex.I * (t : ℂ)) =
      (-1 : ℂ) ^ n *
        ∫ x : ℝ,
          iteratedDeriv n
              (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
            verticalOscillation t x := by
  induction n with
  | zero =>
      simp only [pow_zero, one_mul, iteratedDeriv_zero]
      exact primitiveWeilLaplace_vertical_eq_integral g sigma t
  | succ n ih =>
      calc
        (Complex.I * (t : ℂ)) ^ (n + 1) *
            primitiveWeilLaplace g
              ((sigma : ℂ) + Complex.I * (t : ℂ)) =
          (Complex.I * (t : ℂ)) *
            ((Complex.I * (t : ℂ)) ^ n *
              primitiveWeilLaplace g
                ((sigma : ℂ) + Complex.I * (t : ℂ))) := by ring
        _ = (Complex.I * (t : ℂ)) *
            ((-1 : ℂ) ^ n *
              ∫ x : ℝ,
                iteratedDeriv n
                    (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
                  verticalOscillation t x) := by rw [ih]
        _ = (-1 : ℂ) ^ n *
            ((Complex.I * (t : ℂ)) *
              ∫ x : ℝ,
                iteratedDeriv n
                    (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
                  verticalOscillation t x) := by ring
        _ = (-1 : ℂ) ^ n *
            (-∫ x : ℝ,
              iteratedDeriv (n + 1)
                  (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
                verticalOscillation t x) := by
          rw [verticalOscillation_mul_iteratedDeriv_integral_succ]
        _ = (-1 : ℂ) ^ (n + 1) *
            ∫ x : ℝ,
              iteratedDeriv (n + 1)
                  (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
                verticalOscillation t x := by
          rw [pow_succ]
          ring

private theorem primitiveWeilLaplace_vertical_pow_bound_uniform
    (g : PrimitiveWeilTestFunction) {sigma₀ sigma₁ : ℝ}
    (hsigma : sigma₀ ≤ sigma₁) (n : ℕ) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ sigma ∈ Set.Icc sigma₀ sigma₁, ∀ t : ℝ,
        |t| ^ n *
          ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤ C := by
  obtain ⟨A, hA, hbound⟩ :=
    laplaceSlice_iteratedDeriv_l1_uniform g hsigma n
  refine ⟨A, hA, ?_⟩
  intro sigma hsigmaMem t
  have hid :=
    primitiveWeilLaplace_vertical_moment_identity g sigma t n
  calc
    |t| ^ n *
          ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ =
        ‖(Complex.I * (t : ℂ)) ^ n *
          primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ := by
      simp only [norm_mul, norm_pow, norm_I, one_mul, norm_real,
        Real.norm_eq_abs]
    _ = ‖(-1 : ℂ) ^ n *
          ∫ x : ℝ,
            iteratedDeriv n
                (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
              verticalOscillation t x‖ := congrArg norm hid
    _ = ‖∫ x : ℝ,
          iteratedDeriv n
              (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
            verticalOscillation t x‖ := by
      rw [norm_mul, norm_pow]
      norm_num
    _ ≤ ∫ x : ℝ,
          ‖iteratedDeriv n
              (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
            verticalOscillation t x‖ :=
      norm_integral_le_integral_norm _
    _ = ∫ x : ℝ,
          ‖iteratedDeriv n
            (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x‖ := by
      apply integral_congr_ae
      filter_upwards with x
      rw [norm_mul]
      have hosc : ‖verticalOscillation t x‖ = 1 := by
        rw [verticalOscillation, Complex.norm_exp]
        simp
      rw [hosc, mul_one]
    _ ≤ A := hbound sigma hsigmaMem

/-- Rapid vertical decay with one constant uniform over a compact interval of
real parts. -/
@[surface_novel, surface_published]
theorem primitiveWeilLaplace_decay_realStrip
    (g : PrimitiveWeilTestFunction) {sigma₀ sigma₁ : ℝ}
    (hsigma : sigma₀ ≤ sigma₁) (k : ℕ) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ sigma ∈ Set.Icc sigma₀ sigma₁, ∀ t : ℝ,
        ‖primitiveWeilLaplace g
          ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤
          C / (1 + |t|) ^ k := by
  obtain ⟨C₀, hC₀, hzero⟩ :=
    primitiveWeilLaplace_vertical_pow_bound_uniform g hsigma 0
  obtain ⟨Cₖ, hCₖ, hk⟩ :=
    primitiveWeilLaplace_vertical_pow_bound_uniform g hsigma k
  let C := (2 : ℝ) ^ k * (C₀ + Cₖ)
  have hC : 0 ≤ C := by
    dsimp [C]
    positivity
  refine ⟨C, hC, ?_⟩
  intro sigma hsigmaMem t
  rw [le_div_iff₀' (pow_pos (by positivity : 0 < 1 + |t|) k)]
  have hnorm :
      ‖primitiveWeilLaplace g
        ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤ C₀ := by
    simpa only [pow_zero, one_mul] using
      hzero sigma hsigmaMem t
  by_cases ht : |t| ≤ 1
  · calc
      (1 + |t|) ^ k *
          ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤
        (1 + |t|) ^ k * C₀ :=
          mul_le_mul_of_nonneg_left hnorm
            (pow_nonneg (by positivity) k)
      _ ≤ 2 ^ k * C₀ := by
        gcongr
        nlinarith
      _ ≤ C := by
        dsimp [C]
        nlinarith [pow_nonneg (by norm_num : (0 : ℝ) ≤ 2) k]
  · have htOne : 1 ≤ |t| := le_of_not_ge ht
    have hsum : 1 + |t| ≤ 2 * |t| := by nlinarith
    calc
      (1 + |t|) ^ k *
          ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤
        (2 * |t|) ^ k *
          ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ := by
          gcongr
      _ = 2 ^ k *
          (|t| ^ k *
            ‖primitiveWeilLaplace g
              ((sigma : ℂ) + Complex.I * (t : ℂ))‖) := by
        rw [mul_pow]
        ring
      _ ≤ 2 ^ k * Cₖ :=
        mul_le_mul_of_nonneg_left (hk sigma hsigmaMem t)
          (pow_nonneg (by norm_num) k)
      _ ≤ C := by
        dsimp [C]
        nlinarith [pow_nonneg (by norm_num : (0 : ℝ) ≤ 2) k]

end PrimitiveWeilTestFunction

end

end Surface.Core.Weil
