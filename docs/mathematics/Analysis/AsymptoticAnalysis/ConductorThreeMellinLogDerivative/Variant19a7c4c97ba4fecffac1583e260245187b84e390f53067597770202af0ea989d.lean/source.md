# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ConductorThreeMellinLogDerivative.Variant19a7c4c97ba4fecffac1583e260245187b84e390f53067597770202af0ea989d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b34a1352873cd4f39d405602a1a22c90248f91fa` · SHA-256 `0f710b945e1b9cb69f7468652364c5c1bc30287dc80a0db55d79db819e7c0f74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ConductorThreeComplexVonMangoldt.Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ConductorThreeComplexVonMangoldt.Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ConductorThreeMellinLogDerivative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeCompletedL
public import Surface.Core.ConductorThreeHalfPlusEpsilon
public import Mathlib.NumberTheory.LSeries.SumCoeff
public import Mathlib.Analysis.Complex.HasPrimitives
public import Mathlib.Tactic

/-!
# Mellin/log-derivative route to conductor-three GRH

A half-plus-epsilon bound for the twisted Chebyshev sum constructs a
holomorphic Mellin continuation of the negative logarithmic derivative on
`Re s > 1/2`. The continued first-order ODE excludes zeros on the right
half of the critical strip; the primitive self-dual functional equation
reflects the exclusion to the left half.

Every step in this file is proved. The earlier proposition-valued
continuation and zero-exclusion names remain at the end as compatibility
surfaces for downstream theorem graphs.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.ConductorThreeComplexVonMangoldt.Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539

public section

namespace Surface.Core.ConductorThreeMellinLogDerivative

noncomputable section

open scoped ArithmeticFunction BigOperators
open Set Finset Filter MeasureTheory Topology Complex Asymptotics
open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreeVonMangoldt
open Surface.Core.ConductorThreeHalfPlusEpsilon

/-- Complex conductor-three von Mangoldt coefficient in exactly the form used
by mathlib's twisted L-series theorem. -/
@[expose]
def conductorThreeComplexVonMangoldt (n : ℕ) : ℂ :=
  conductorThreeCharacter n * ArithmeticFunction.vonMangoldt n

/-- Step-function interpolation of the finite twisted Chebyshev sum. -/
@[expose]
def conductorThreePsiStep (t : ℝ) : ℂ :=
  ∑ n ∈ Icc 1 ⌊t⌋₊, conductorThreeComplexVonMangoldt n

/-- Mellin continuation candidate for the twisted von Mangoldt L-series. -/
@[expose]
def conductorThreeMellinLogDerivative (s : ℂ) : ℂ :=
  s * mellin conductorThreePsiStep (-s)

@[simp] theorem conductorThreeComplexVonMangoldt_zero :
    conductorThreeComplexVonMangoldt 0 = 0 := by
  simp [conductorThreeComplexVonMangoldt]

theorem sum_Icc_conductorThreeComplexVonMangoldt (x : ℕ) :
    (∑ n ∈ Icc 1 x, conductorThreeComplexVonMangoldt n) =
      (conductorThreePsi x : ℂ) := by
  rw [conductorThreePsi]
  push_cast
  rw [Nat.range_succ_eq_Icc_zero,
    ← insert_Icc_add_one_left_eq_Icc x.zero_le,
    sum_insert (by simp)]
  simp only [conductorThreeComplexVonMangoldt,
    twistedVonMangoldtThree, conductorThreeCharacter_eq_intCast]
  simp

@[surface_adapter, surface_published]
theorem conductorThreePsiStep_natCast (x : ℕ) :
    conductorThreePsiStep x = (conductorThreePsi x : ℂ) := by
  simp [conductorThreePsiStep, sum_Icc_conductorThreeComplexVonMangoldt]

/-- The half-plus-epsilon estimate gives a power bound for the complex
coefficient partial sums at every exponent strictly larger than one half. -/
theorem coefficientPartialSums_isBigO_rpow
    (hHalf : TwistedPsiHalfPlusEpsilon) {r : ℝ} (hr : 1 / 2 < r) :
    (fun x : ℕ ↦ ∑ n ∈ Icc 1 x, conductorThreeComplexVonMangoldt n) =O[atTop]
      (fun x : ℕ ↦ (x : ℝ) ^ r) := by
  obtain ⟨C, hC, hBound⟩ := hHalf (r - 1 / 2) (sub_pos.mpr hr)
  refine IsBigO.of_bound C ?_
  filter_upwards [eventually_ge_atTop 2] with x hx
  rw [sum_Icc_conductorThreeComplexVonMangoldt]
  simpa [abs_of_nonneg (Real.rpow_nonneg (Nat.cast_nonneg x) r)] using hBound x hx

/-- Real-variable step interpolation inherits the same asymptotic bound. -/
theorem conductorThreePsiStep_isBigO_rpow
    (hHalf : TwistedPsiHalfPlusEpsilon) {r : ℝ} (hr : 1 / 2 < r) :
    conductorThreePsiStep =O[atTop] (fun t : ℝ ↦ t ^ r) := by
  have hr0 : 0 ≤ r := by linarith
  unfold conductorThreePsiStep
  exact ((coefficientPartialSums_isBigO_rpow hHalf hr).comp_tendsto
      tendsto_nat_floor_atTop).trans
    (isEquivalent_nat_floor.isBigO.rpow hr0 (eventually_ge_atTop 0))

theorem conductorThreePsiStep_locallyIntegrable :
    LocallyIntegrableOn conductorThreePsiStep (Ioi 0) := by
  have h := locallyIntegrableOn_mul_sum_Icc
    (c := conductorThreeComplexVonMangoldt) (a := (0 : ℝ))
    (m := 1) le_rfl (locallyIntegrableOn_const (1 : ℂ))
  have h' : LocallyIntegrableOn conductorThreePsiStep (Ici 0) := by
    change LocallyIntegrableOn
      (fun t : ℝ ↦ ∑ k ∈ Icc 1 ⌊t⌋₊, conductorThreeComplexVonMangoldt k)
      (Ici 0)
    simpa only [one_mul] using h
  exact h'.mono_set Set.Ioi_subset_Ici_self

theorem conductorThreePsiStep_eventuallyEq_zero_at_zero :
    conductorThreePsiStep =ᶠ[nhdsWithin (0 : ℝ) (Ioi 0)] 0 := by
  have hIio : Iio (1 : ℝ) ∈ nhdsWithin (0 : ℝ) (Ioi 0) := by
    rw [mem_nhdsWithin_iff_exists_mem_nhds_inter]
    exact ⟨Iio 1, Iio_mem_nhds zero_lt_one, inter_subset_left⟩
  filter_upwards [hIio] with t ht
  rw [conductorThreePsiStep, Nat.floor_eq_zero.mpr (show t < 1 from ht)]
  simp

theorem conductorThreePsiStep_isBigO_zero_rpow (b : ℝ) :
    conductorThreePsiStep =O[nhdsWithin (0 : ℝ) (Ioi 0)]
      (fun t : ℝ ↦ t ^ (-b)) := by
  exact (isBigO_zero (fun t : ℝ ↦ t ^ (-b))
      (nhdsWithin (0 : ℝ) (Ioi 0))).congr'
    conductorThreePsiStep_eventuallyEq_zero_at_zero.symm EventuallyEq.rfl

/-- The Mellin continuation candidate is holomorphic at each point strictly
to the right of an exponent for which the half-plus-epsilon estimate is
available. -/
theorem differentiableAt_conductorThreeMellinLogDerivative
    (hHalf : TwistedPsiHalfPlusEpsilon) {r : ℝ} (hr : 1 / 2 < r)
    {s : ℂ} (hs : r < s.re) :
    DifferentiableAt ℂ conductorThreeMellinLogDerivative s := by
  have htop : conductorThreePsiStep =O[atTop]
      (fun t : ℝ ↦ t ^ (-(-r))) := by
    simpa using conductorThreePsiStep_isBigO_rpow hHalf hr
  let b : ℝ := (-s).re - 1
  have hbot : conductorThreePsiStep =O[nhdsWithin (0 : ℝ) (Ioi 0)]
      (fun t : ℝ ↦ t ^ (-b)) :=
    conductorThreePsiStep_isBigO_zero_rpow b
  have hmellin : DifferentiableAt ℂ (mellin conductorThreePsiStep) (-s) := by
    apply mellin_differentiableAt_of_isBigO_rpow
      conductorThreePsiStep_locallyIntegrable htop
    · simpa using hs
    · exact hbot
    · dsimp [b]
      linarith
  unfold conductorThreeMellinLogDerivative
  exact differentiableAt_id.mul (hmellin.comp s (by fun_prop))

/-- On the original half-plane of absolute convergence, the Mellin candidate
is exactly the twisted von Mangoldt Dirichlet series. -/
@[surface_adapter, surface_published]
theorem conductorThreeMellinLogDerivative_eq_LSeries
    (hHalf : TwistedPsiHalfPlusEpsilon) {s : ℂ} (hs : 1 < s.re) :
    conductorThreeMellinLogDerivative s =
      LSeries conductorThreeComplexVonMangoldt s := by
  let r : ℝ := 3 / 4
  have hrhalf : (1 / 2 : ℝ) < r := by dsimp [r]; norm_num
  have hrs : r < s.re := by dsimp [r]; linarith
  have hO := coefficientPartialSums_isBigO_rpow hHalf hrhalf
  have hS : LSeriesSummable conductorThreeComplexVonMangoldt s := by
    change LSeriesSummable
      ((fun n : ℕ ↦ conductorThreeCharacter n) *
        (fun n : ℕ ↦ (ArithmeticFunction.vonMangoldt n : ℂ))) s
    exact DirichletCharacter.LSeriesSummable_twist_vonMangoldt
      conductorThreeCharacter hs
  have hIntegral := LSeries_eq_mul_integral
    conductorThreeComplexVonMangoldt (show 0 ≤ r by dsimp [r]; norm_num)
    hrs hS hO
  rw [hIntegral]
  unfold conductorThreeMellinLogDerivative mellin conductorThreePsiStep
  congr 1
  rw [setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
    (Ioi_subset_Ioi (show (0 : ℝ) ≤ 1 by norm_num))]
  · apply setIntegral_congr_fun measurableSet_Ioi
    intro t ht
    simp only [smul_eq_mul]
    rw [show -s - 1 = -(s + 1) by ring]
    ring
  · intro t ht
    have ht_le : t ≤ 1 := le_of_not_gt ht.2
    have hfloor : ⌊t⌋₊ ≤ 1 := Nat.floor_le_one_of_le_one ht_le
    interval_cases hft : ⌊t⌋₊ <;>
      simp [conductorThreeComplexVonMangoldt]

/-- On `re s > 1`, the Mellin candidate agrees with the negative logarithmic
derivative of the analytically continued conductor-three `L`-function. -/
@[surface_adapter, surface_published]
theorem conductorThreeMellinLogDerivative_eq_neg_logDerivative
    (hHalf : TwistedPsiHalfPlusEpsilon) {s : ℂ} (hs : 1 < s.re) :
    conductorThreeMellinLogDerivative s =
      -deriv (DirichletCharacter.LFunction conductorThreeCharacter) s /
        DirichletCharacter.LFunction conductorThreeCharacter s := by
  rw [conductorThreeMellinLogDerivative_eq_LSeries hHalf hs]
  change LSeries
      ((fun n : ℕ ↦ conductorThreeCharacter n) *
        (fun n : ℕ ↦ (ArithmeticFunction.vonMangoldt n : ℂ))) s = _
  rw [DirichletCharacter.LSeries_twist_vonMangoldt_eq
    conductorThreeCharacter hs]
  rw [← DirichletCharacter.LFunction_eq_LSeries conductorThreeCharacter hs,
    ← DirichletCharacter.deriv_LFunction_eq_deriv_LSeries
      conductorThreeCharacter hs]

/-- Open half-plane on which the half-plus-epsilon hypothesis gives a Mellin
continuation. -/
@[expose]
def conductorThreeCriticalRightHalfPlane : Set ℂ :=
  {s | (1 / 2 : ℝ) < s.re}

theorem isOpen_conductorThreeCriticalRightHalfPlane :
    IsOpen conductorThreeCriticalRightHalfPlane :=
  isOpen_lt continuous_const continuous_re

theorem isPreconnected_conductorThreeCriticalRightHalfPlane :
    IsPreconnected conductorThreeCriticalRightHalfPlane :=
  (convex_halfSpace_re_gt (1 / 2 : ℝ)).isPreconnected

@[surface_novel, surface_published]
theorem differentiableOn_conductorThreeMellinLogDerivative
    (hHalf : TwistedPsiHalfPlusEpsilon) :
    DifferentiableOn ℂ conductorThreeMellinLogDerivative
      conductorThreeCriticalRightHalfPlane := by
  intro s hs
  change (1 / 2 : ℝ) < s.re at hs
  let r : ℝ := ((1 / 2 : ℝ) + s.re) / 2
  have hhalfr : (1 / 2 : ℝ) < r := by
    dsimp [r]
    linarith [hs]
  have hrs : r < s.re := by
    dsimp [r]
    linarith [hs]
  exact (differentiableAt_conductorThreeMellinLogDerivative
    hHalf hhalfr hrs).differentiableWithinAt

/-- Holomorphic ODE residual whose vanishing is equivalent to the Mellin
candidate being the negative logarithmic derivative away from zeros. -/
@[expose]
def conductorThreeLogDerivativeResidual (s : ℂ) : ℂ :=
  deriv (DirichletCharacter.LFunction conductorThreeCharacter) s +
    conductorThreeMellinLogDerivative s *
      DirichletCharacter.LFunction conductorThreeCharacter s

theorem differentiableOn_conductorThreeLogDerivativeResidual
    (hHalf : TwistedPsiHalfPlusEpsilon) :
    DifferentiableOn ℂ conductorThreeLogDerivativeResidual
      conductorThreeCriticalRightHalfPlane := by
  have hL : DifferentiableOn ℂ
      (DirichletCharacter.LFunction conductorThreeCharacter)
      conductorThreeCriticalRightHalfPlane :=
    (DirichletCharacter.differentiable_LFunction
      conductorThreeCharacter_ne_one).differentiableOn
  have hL' : DifferentiableOn ℂ
      (deriv (DirichletCharacter.LFunction conductorThreeCharacter))
      conductorThreeCriticalRightHalfPlane :=
    hL.deriv isOpen_conductorThreeCriticalRightHalfPlane
  exact hL'.add
    ((differentiableOn_conductorThreeMellinLogDerivative hHalf).mul hL)

theorem conductorThreeLogDerivativeResidual_eq_zero_of_one_lt_re
    (hHalf : TwistedPsiHalfPlusEpsilon) {s : ℂ} (hs : 1 < s.re) :
    conductorThreeLogDerivativeResidual s = 0 := by
  have hEq := conductorThreeMellinLogDerivative_eq_neg_logDerivative hHalf hs
  have hne : DirichletCharacter.LFunction conductorThreeCharacter s ≠ 0 :=
    DirichletCharacter.LFunction_ne_zero_of_one_le_re
      conductorThreeCharacter (.inl conductorThreeCharacter_ne_one) hs.le
  unfold conductorThreeLogDerivativeResidual
  rw [hEq, div_mul_cancel₀ _ hne]
  ring

/-- Analytic continuation of the ODE identity from `re s > 1` to the entire
half-plane `re s > 1/2`.  This is the checked identity-theorem step in the
reverse-GRH route. -/
@[surface_novel, surface_published]
theorem conductorThreeLogDerivativeResidual_eq_zero
    (hHalf : TwistedPsiHalfPlusEpsilon) {s : ℂ}
    (hs : s ∈ conductorThreeCriticalRightHalfPlane) :
    conductorThreeLogDerivativeResidual s = 0 := by
  have hAnalytic : AnalyticOnNhd ℂ conductorThreeLogDerivativeResidual
      conductorThreeCriticalRightHalfPlane :=
    (differentiableOn_conductorThreeLogDerivativeResidual hHalf).analyticOnNhd
      isOpen_conductorThreeCriticalRightHalfPlane
  have hZero : AnalyticOnNhd ℂ (fun _ : ℂ ↦ (0 : ℂ))
      conductorThreeCriticalRightHalfPlane := by
    exact analyticOnNhd_const
  have hTwo : (2 : ℂ) ∈ conductorThreeCriticalRightHalfPlane := by
    norm_num [conductorThreeCriticalRightHalfPlane]
  have hEventually : conductorThreeLogDerivativeResidual =ᶠ[nhds (2 : ℂ)]
      (fun _ : ℂ ↦ (0 : ℂ)) := by
    have hOpen : IsOpen {z : ℂ | 1 < z.re} :=
      isOpen_lt continuous_const continuous_re
    have hMem : (2 : ℂ) ∈ {z : ℂ | 1 < z.re} := by norm_num
    filter_upwards [hOpen.mem_nhds hMem] with z hz
    exact conductorThreeLogDerivativeResidual_eq_zero_of_one_lt_re hHalf hz
  exact (hAnalytic.eqOn_of_preconnected_of_eventuallyEq hZero
    isPreconnected_conductorThreeCriticalRightHalfPlane hTwo hEventually) hs

/-- The continued first-order ODE forces the conductor-three `L`-function to
be zero-free on `re s > 1/2`.  A hypothetical zero makes the exponentially
gauged local solution identically zero; analytic uniqueness would then make
the entire `L`-function zero, contradicting its Euler-product half-plane. -/
@[surface_novel, surface_published]
theorem conductorThreeLFunction_ne_zero_of_half_lt_re
    (hHalf : TwistedPsiHalfPlusEpsilon) {s : ℂ}
    (hs : (1 / 2 : ℝ) < s.re) :
    DirichletCharacter.LFunction conductorThreeCharacter s ≠ 0 := by
  intro hLs
  let L : ℂ → ℂ :=
    DirichletCharacter.LFunction conductorThreeCharacter
  let F : ℂ → ℂ := conductorThreeMellinLogDerivative
  have hsU : s ∈ conductorThreeCriticalRightHalfPlane := hs
  obtain ⟨r, hr, hball⟩ := Metric.isOpen_iff.mp
    isOpen_conductorThreeCriticalRightHalfPlane s hsU
  have hF : DifferentiableOn ℂ F (Metric.ball s r) :=
    (differentiableOn_conductorThreeMellinLogDerivative hHalf).mono hball
  obtain ⟨P, hPs, hP⟩ := hF.isExactOn_ball.with_val_at s (0 : ℂ)
  let H : ℂ → ℂ := fun z ↦ Complex.exp (P z) * L z
  have hPdiff : DifferentiableOn ℂ P (Metric.ball s r) := by
    intro z hz
    exact (hP z hz).differentiableAt.differentiableWithinAt
  have hLglobal : Differentiable ℂ L :=
    DirichletCharacter.differentiable_LFunction
      conductorThreeCharacter_ne_one
  have hHdiff : DifferentiableOn ℂ H (Metric.ball s r) := by
    exact hPdiff.cexp.mul hLglobal.differentiableOn
  have hHderiv : EqOn (deriv H) (fun _ : ℂ ↦ 0) (Metric.ball s r) := by
    intro z hz
    have hpz := hP z hz
    have hlz := (hLglobal z).hasDerivAt
    have hprod := hpz.cexp.mul hlz
    change deriv ((fun z ↦ Complex.exp (P z)) * L) z = 0
    rw [hprod.deriv]
    have hODE := conductorThreeLogDerivativeResidual_eq_zero hHalf (hball hz)
    change deriv L z + F z * L z = 0 at hODE
    calc
      Complex.exp (P z) * F z * L z +
          Complex.exp (P z) * deriv L z =
          Complex.exp (P z) * (deriv L z + F z * L z) := by ring
      _ = 0 := by rw [hODE, mul_zero]
  have hHs : H s = 0 := by
    simp [H, L, hLs]
  have hH_zero : ∀ z ∈ Metric.ball s r, H z = 0 := by
    intro z hz
    have hconst := (Metric.isOpen_ball : IsOpen (Metric.ball s r)).is_const_of_deriv_eq_zero
      Metric.isPreconnected_ball hHdiff hHderiv hz (Metric.mem_ball_self hr)
    exact hconst.trans hHs
  have hL_zero : ∀ z ∈ Metric.ball s r, L z = 0 := by
    intro z hz
    have h := hH_zero z hz
    dsimp [H] at h
    exact (mul_eq_zero.mp h).resolve_left (Complex.exp_ne_zero (P z))
  have hEventually : L =ᶠ[nhds s] (fun _ : ℂ ↦ (0 : ℂ)) := by
    filter_upwards [Metric.ball_mem_nhds s hr] with z hz
    exact hL_zero z hz
  have hLAnalytic : AnalyticOnNhd ℂ L (Set.univ : Set ℂ) :=
    hLglobal.differentiableOn.analyticOnNhd isOpen_univ
  have hZeroAnalytic : AnalyticOnNhd ℂ (fun _ : ℂ ↦ (0 : ℂ))
      (Set.univ : Set ℂ) := analyticOnNhd_const
  have hEverywhere := hLAnalytic.eqOn_of_preconnected_of_eventuallyEq
    hZeroAnalytic isPreconnected_univ (show s ∈ (Set.univ : Set ℂ) by simp)
      hEventually
  have hAtTwo : L (2 : ℂ) = 0 := hEverywhere (by simp)
  have hTwoNe : L (2 : ℂ) ≠ 0 := by
    exact DirichletCharacter.LFunction_ne_zero_of_one_le_re
      conductorThreeCharacter (.inl conductorThreeCharacter_ne_one) (by norm_num)
  exact hTwoNe hAtTwo

theorem conductorThreeRootNumber_ne_zero :
    DirichletCharacter.rootNumber conductorThreeCharacter ≠ 0 := by
  have hgauss : gaussSum conductorThreeCharacter
      (ZMod.stdAddChar (N := 3)) ≠ 0 := by
    exact gaussSum_ne_zero_of_nontrivial
      (by norm_num : (Fintype.card (ZMod 3) : ℂ) ≠ 0)
      conductorThreeCharacter_ne_one (ZMod.isPrimitive_stdAddChar 3)
  unfold DirichletCharacter.rootNumber
  exact div_ne_zero
    (div_ne_zero hgauss (pow_ne_zero _ Complex.I_ne_zero))
    (Complex.cpow_ne_zero_iff.mpr (Or.inl (by norm_num)))

/-- Functional-equation reflection of a zero in the left half of the
critical strip to a zero in the zero-free right half. -/
@[surface_novel, surface_published]
theorem conductorThreeLFunction_ne_zero_of_re_lt_half
    (hHalf : TwistedPsiHalfPlusEpsilon) {s : ℂ}
    (hs0 : 0 < s.re) (hsHalf : s.re < (1 / 2 : ℝ)) :
    DirichletCharacter.LFunction conductorThreeCharacter s ≠ 0 := by
  intro hLs
  have hGammaS : DirichletCharacter.gammaFactor conductorThreeCharacter s ≠ 0 := by
    rw [conductorThreeCharacter_odd.gammaFactor_def]
    apply Gammaℝ_ne_zero_of_re_pos
    simp only [add_re, one_re]
    linarith
  have hCompletedS :
      DirichletCharacter.completedLFunction conductorThreeCharacter s = 0 := by
    have hRelation :=
      DirichletCharacter.LFunction_eq_completed_div_gammaFactor
        conductorThreeCharacter s (Or.inr (by norm_num : 3 ≠ 1))
    rw [hLs] at hRelation
    have hDiv : DirichletCharacter.completedLFunction
        conductorThreeCharacter s /
          DirichletCharacter.gammaFactor conductorThreeCharacter s = 0 :=
      hRelation.symm
    exact (div_eq_zero_iff.mp hDiv).resolve_right hGammaS
  have hFE :=
    conductorThreeCharacter_isPrimitive.completedLFunction_one_sub (1 - s)
  rw [sub_sub_cancel, conductorThreeCharacter_inv] at hFE
  have hCompletedReflect :
      DirichletCharacter.completedLFunction conductorThreeCharacter (1 - s) = 0 := by
    rw [hCompletedS] at hFE
    have hProduct :
        (3 : ℂ) ^ ((1 - s) - 1 / 2) *
            DirichletCharacter.rootNumber conductorThreeCharacter *
              DirichletCharacter.completedLFunction conductorThreeCharacter (1 - s) = 0 :=
      hFE.symm
    have hpow : (3 : ℂ) ^ ((1 - s) - 1 / 2) ≠ 0 :=
      Complex.cpow_ne_zero_iff.mpr (Or.inl (by norm_num))
    exact (mul_eq_zero.mp hProduct).resolve_left
      (mul_ne_zero hpow conductorThreeRootNumber_ne_zero)
  have hLReflect :
      DirichletCharacter.LFunction conductorThreeCharacter (1 - s) = 0 := by
    rw [DirichletCharacter.LFunction_eq_completed_div_gammaFactor
      conductorThreeCharacter (1 - s) (Or.inr (by norm_num : 3 ≠ 1)),
      hCompletedReflect, zero_div]
  have hReflectHalf : (1 / 2 : ℝ) < (1 - s).re := by
    simp only [sub_re, one_re]
    linarith
  exact (conductorThreeLFunction_ne_zero_of_half_lt_re hHalf hReflectHalf)
    hLReflect

/-- The half-plus-epsilon twisted Chebyshev estimate implies conductor-three
GRH.  The right half is excluded by the Mellin ODE; the left half is excluded
by the primitive self-dual functional equation. -/
@[surface_novel, surface_published]
theorem halfPlusEpsilon_implies_grh :
    TwistedPsiHalfPlusEpsilon → GRHForConductorThreeCharacter := by
  intro hHalf s hsZero hs0 hs1
  rcases lt_trichotomy s.re (1 / 2 : ℝ) with hLeft | hEq | hRight
  · exact False.elim
      ((conductorThreeLFunction_ne_zero_of_re_lt_half hHalf hs0 hLeft) hsZero)
  · exact hEq
  · exact False.elim
      ((conductorThreeLFunction_ne_zero_of_half_lt_re hHalf hRight) hsZero)


/-! ## Compatibility surfaces -/

/-- The complex coefficient is the cast of the checked real coefficient. -/
@[surface_adapter, surface_published]
theorem conductorThreeComplexVonMangoldt_eq_real (n : ℕ) :
    conductorThreeComplexVonMangoldt n = (twistedVonMangoldtThree n : ℂ) := by
  simp [conductorThreeComplexVonMangoldt, twistedVonMangoldtThree,
    conductorThreeCharacter_eq_intCast]

/-- Compatibility name for the checked Mathlib seed identity. -/
@[surface_adapter, surface_published]
theorem conductorThree_twistedLSeries_eq_neg_logDerivative
    {s : ℂ} (hs : 1 < s.re) :
    LSeries
        ((fun n : ℕ ↦ conductorThreeCharacter n) *
          (fun n : ℕ ↦ (ArithmeticFunction.vonMangoldt n : ℂ))) s =
      -deriv (DirichletCharacter.LFunction conductorThreeCharacter) s /
        DirichletCharacter.LFunction conductorThreeCharacter s :=
  by
    rw [DirichletCharacter.LSeries_twist_vonMangoldt_eq
      conductorThreeCharacter hs]
    rw [← DirichletCharacter.LFunction_eq_LSeries
      conductorThreeCharacter hs,
      ← DirichletCharacter.deriv_LFunction_eq_deriv_LSeries
        conductorThreeCharacter hs]

/-- Compatibility name for the proved Mellin/L-series identification. -/
@[surface_adapter, surface_published]
theorem conductorThreeMellinLogDerivative_eq_twistedLSeries
    (hHalf : TwistedPsiHalfPlusEpsilon) {s : ℂ} (hs : 1 < s.re) :
    conductorThreeMellinLogDerivative s =
      LSeries conductorThreeComplexVonMangoldt s :=
  conductorThreeMellinLogDerivative_eq_LSeries hHalf hs

end

end Surface.Core.ConductorThreeMellinLogDerivative
```
