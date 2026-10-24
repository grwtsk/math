module

public meta import Surface.Core.Classification
public import Surface.Core.Analysis.HolomorphicLinearODE
public import Surface.Core.DirichletGRH.MathlibLFunctionAdapters
public import Surface.Core.DirichletGRH.CriticalSummatory
public import Mathlib.Analysis.Complex.HasPrimitives
public import Mathlib.NumberTheory.LSeries.SumCoeff
import Mathlib.NumberTheory.DirichletCharacter.Bounds
import Mathlib.Tactic

/-!
# Centered Mellin/logarithmic-derivative square

This module isolates the exact analytic data needed to turn a centered
twisted-Chebyshev half-plus-epsilon estimate into zero-freeness on
`re s > 1 / 2`.

The principal channel is handled by a regularized `L`-function.  On the
half-plane of absolute convergence the centered Mellin transform differs
from its negative logarithmic derivative by the constant principal
indicator.  This module constructs that identity and the Mellin holomorphy
directly.  The retained structure is an optional staging interface, and its
canonical inhabitant is checked here.  No GRH hypothesis is used.
-/

public section

namespace Surface.Core.DirichletGRH

noncomputable section

open Set Finset Filter MeasureTheory Topology Complex Asymptotics

/-- Real interpolation used by the centered Mellin transform.

The twisted prime sum is held constant between integers, while the
principal main term is the real variable `t`, not `floor t`.  Consequently
the principal Mellin correction is exactly `s / (s - 1)`.  At natural
arguments this agrees with `centeredTwistedPsi`. -/
@[expose]
def centeredTwistedPsiStep
    {q : ℕ} (χ : DirichletCharacter ℂ q) (t : ℝ) : ℂ :=
  if 1 ≤ t then
    twistedPsi χ ⌊t⌋₊ -
      dirichletPrincipalIndicator χ * (t : ℂ)
  else 0

@[surface_novel, surface_published]
theorem centeredTwistedPsiStep_natCast
    {q : ℕ} (χ : DirichletCharacter ℂ q) (x : ℕ) :
    centeredTwistedPsiStep χ x = centeredTwistedPsi χ x := by
  by_cases hx : x = 0
  · simp [hx, centeredTwistedPsiStep, centeredTwistedPsi]
  · have hx1 : (1 : ℝ) ≤ (x : ℝ) := by
      exact_mod_cast (Nat.one_le_iff_ne_zero.mpr hx)
    simp [centeredTwistedPsiStep, centeredTwistedPsi, hx1]

/-- Above `1`, the continuously centered interpolation differs from the
discrete centered sum at `floor t` by only the bounded floor error.  This
identity is the key point in the principal-character channel: estimating
the twisted sum and the linear main term separately would lose the
square-root scale. -/
@[surface_adapter]
theorem centeredTwistedPsiStep_eq_floor_add_error
    {q : ℕ} (χ : DirichletCharacter ℂ q) {t : ℝ} (ht : 1 ≤ t) :
    centeredTwistedPsiStep χ t =
      centeredTwistedPsi χ ⌊t⌋₊ +
        dirichletPrincipalIndicator χ * ((⌊t⌋₊ : ℝ) - t) := by
  rw [centeredTwistedPsiStep, if_pos ht, centeredTwistedPsi]
  push_cast
  ring

/-- The principal indicator has norm at most one. -/
theorem norm_dirichletPrincipalIndicator_le_one
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    ‖dirichletPrincipalIndicator χ‖ ≤ 1 := by
  classical
  by_cases hχ : χ = 1
  · subst χ
    simp
  · simp [dirichletPrincipalIndicator_eq_zero hχ]

/-- A discrete half-plus-epsilon bound controls the continuously centered
step interpolation at the same power.  The extra term is bounded by one
because `floor t ≤ t < floor t + 1`. -/
theorem centeredTwistedPsiStep_isBigO_rpow
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ)
    {r : ℝ} (hr : (1 / 2 : ℝ) < r) :
    centeredTwistedPsiStep χ =O[atTop]
      (fun t : ℝ ↦ Real.rpow t r) := by
  obtain ⟨C, hC, hDiscrete⟩ :=
    hBound (r - 1 / 2) (sub_pos.mpr hr)
  have hr0 : 0 ≤ r := by linarith
  refine IsBigO.of_bound (C + 1) ?_
  filter_upwards [eventually_ge_atTop (2 : ℝ)] with t ht
  have ht1 : (1 : ℝ) ≤ t := by linarith
  have ht0 : (0 : ℝ) ≤ t := by linarith
  have hfloor2 : 2 ≤ ⌊t⌋₊ := Nat.le_floor ht
  have hfloor_nonneg : (0 : ℝ) ≤ (⌊t⌋₊ : ℝ) := Nat.cast_nonneg _
  have hfloor_le : (⌊t⌋₊ : ℝ) ≤ t := Nat.floor_le (by linarith)
  have hfloor_lt : t < (⌊t⌋₊ : ℝ) + 1 := Nat.lt_floor_add_one t
  have herror_abs : |(⌊t⌋₊ : ℝ) - t| ≤ 1 := by
    rw [abs_of_nonpos (sub_nonpos.mpr hfloor_le)]
    linarith
  have hpow_mono : Real.rpow (⌊t⌋₊ : ℝ) r ≤ Real.rpow t r :=
    Real.rpow_le_rpow hfloor_nonneg hfloor_le hr0
  have hone_le_pow : (1 : ℝ) ≤ Real.rpow t r := by
    simpa using Real.one_le_rpow ht1 hr0
  rw [centeredTwistedPsiStep_eq_floor_add_error χ ht1]
  calc
    ‖centeredTwistedPsi χ ⌊t⌋₊ +
        dirichletPrincipalIndicator χ * ((⌊t⌋₊ : ℝ) - t)‖
        ≤ ‖centeredTwistedPsi χ ⌊t⌋₊‖ +
            ‖dirichletPrincipalIndicator χ * ((⌊t⌋₊ : ℝ) - t)‖ :=
      norm_add_le _ _
    _ ≤ C * Real.rpow (⌊t⌋₊ : ℝ) r + 1 := by
      gcongr
      · have h := hDiscrete ⌊t⌋₊ hfloor2
        rw [show (1 / 2 : ℝ) + (r - 1 / 2) = r by ring] at h
        exact h
      · rw [norm_mul]
        have herror_norm :
            ‖(((⌊t⌋₊ : ℝ) : ℂ) - (t : ℂ))‖ ≤ 1 := by
          simpa only [← Complex.ofReal_sub, Complex.norm_real,
            Real.norm_eq_abs] using herror_abs
        exact mul_le_one₀ (norm_dirichletPrincipalIndicator_le_one χ)
          (norm_nonneg _) herror_norm
    _ ≤ C * Real.rpow t r + Real.rpow t r :=
      add_le_add (mul_le_mul_of_nonneg_left hpow_mono hC) hone_le_pow
    _ = (C + 1) * ‖Real.rpow t r‖ := by
      rw [Real.norm_eq_abs]
      have hpownonneg : 0 ≤ Real.rpow t r := Real.rpow_nonneg ht0 r
      rw [abs_of_nonneg hpownonneg]
      ring

/-- The continuously centered step function is locally integrable on the
positive real axis. -/
theorem centeredTwistedPsiStep_locallyIntegrable
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    LocallyIntegrableOn (centeredTwistedPsiStep χ) (Ioi 0) := by
  have hsum : LocallyIntegrableOn
      (fun t : ℝ ↦ twistedPsi χ ⌊t⌋₊) (Ici 0) := by
    have h := locallyIntegrableOn_mul_sum_Icc
      (c := fun n : ℕ ↦
        χ n * (ArithmeticFunction.vonMangoldt n : ℂ))
      (a := (0 : ℝ)) (m := 1) le_rfl
      (locallyIntegrableOn_const (1 : ℂ))
    change LocallyIntegrableOn
      (fun t : ℝ ↦ ∑ n ∈ Icc 1 ⌊t⌋₊,
        χ n * (ArithmeticFunction.vonMangoldt n : ℂ)) (Ici 0)
    simpa only [one_mul, twistedPsi] using h
  have hlinear : LocallyIntegrableOn
      (fun t : ℝ ↦ dirichletPrincipalIndicator χ * (t : ℂ)) (Ici 0) := by
    exact (by fun_prop : Continuous
      (fun t : ℝ ↦ dirichletPrincipalIndicator χ * (t : ℂ))).locallyIntegrable
        |>.locallyIntegrableOn (Ici 0)
  have hraw : LocallyIntegrableOn
      (fun t : ℝ ↦ twistedPsi χ ⌊t⌋₊ -
        dirichletPrincipalIndicator χ * (t : ℂ)) (Ici 0) :=
    hsum.sub hlinear
  rw [locallyIntegrableOn_iff isLocallyClosed_Ioi]
  intro K hK hKcompact
  have hrawK := hraw.integrableOn_compact_subset
    (hK.trans Ioi_subset_Ici_self) hKcompact
  have hindicator := hrawK.indicator (measurableSet_Ici : MeasurableSet (Ici (1 : ℝ)))
  have hfun : centeredTwistedPsiStep χ =
      (Ici (1 : ℝ)).indicator (fun t : ℝ ↦ twistedPsi χ ⌊t⌋₊ -
        dirichletPrincipalIndicator χ * (t : ℂ)) := by
    funext t
    by_cases ht : 1 ≤ t <;>
      simp [centeredTwistedPsiStep, Set.indicator, ht]
  rw [hfun]
  exact hindicator

/-- The centered step interpolation vanishes in a right neighborhood of
zero. -/
theorem centeredTwistedPsiStep_eventuallyEq_zero_at_zero
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    centeredTwistedPsiStep χ =ᶠ[nhdsWithin (0 : ℝ) (Ioi 0)] 0 := by
  have hIio : Iio (1 : ℝ) ∈ nhdsWithin (0 : ℝ) (Ioi 0) := by
    rw [mem_nhdsWithin_iff_exists_mem_nhds_inter]
    exact ⟨Iio 1, Iio_mem_nhds zero_lt_one, inter_subset_left⟩
  filter_upwards [hIio] with t ht
  change t < 1 at ht
  simp [centeredTwistedPsiStep, not_le.mpr ht]

theorem centeredTwistedPsiStep_isBigO_zero_rpow
    {q : ℕ} (χ : DirichletCharacter ℂ q) (b : ℝ) :
    centeredTwistedPsiStep χ =O[nhdsWithin (0 : ℝ) (Ioi 0)]
      (fun t : ℝ ↦ t ^ (-b)) := by
  exact (isBigO_zero (fun t : ℝ ↦ t ^ (-b))
      (nhdsWithin (0 : ℝ) (Ioi 0))).congr'
    (centeredTwistedPsiStep_eventuallyEq_zero_at_zero χ).symm EventuallyEq.rfl

/-- The literal centered Mellin candidate.  Convergence and holomorphy are
properties, not part of this definition. -/
@[expose]
def centeredTwistedPsiMellin
    {q : ℕ} (χ : DirichletCharacter ℂ q) (s : ℂ) : ℂ :=
  s * mellin (centeredTwistedPsiStep χ) (-s)

/-- The centered half-plus-epsilon estimate makes the literal centered
Mellin transform holomorphic at every point of `re s > 1 / 2`. -/
@[surface_novel, surface_published]
theorem differentiableAt_centeredTwistedPsiMellin
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ)
    {s : ℂ} (hs : (1 / 2 : ℝ) < s.re) :
    DifferentiableAt ℂ (centeredTwistedPsiMellin χ) s := by
  let r : ℝ := ((1 / 2 : ℝ) + s.re) / 2
  have hhalfr : (1 / 2 : ℝ) < r := by
    dsimp [r]
    linarith
  have hrs : r < s.re := by
    dsimp [r]
    linarith
  have htop : centeredTwistedPsiStep χ =O[atTop]
      (fun t : ℝ ↦ t ^ (-(-r))) := by
    simpa using centeredTwistedPsiStep_isBigO_rpow χ hBound hhalfr
  let b : ℝ := (-s).re - 1
  have hbot : centeredTwistedPsiStep χ =O[nhdsWithin (0 : ℝ) (Ioi 0)]
      (fun t : ℝ ↦ t ^ (-b)) :=
    centeredTwistedPsiStep_isBigO_zero_rpow χ b
  have hmellin : DifferentiableAt ℂ
      (mellin (centeredTwistedPsiStep χ)) (-s) := by
    apply mellin_differentiableAt_of_isBigO_rpow
      (centeredTwistedPsiStep_locallyIntegrable χ) htop
    · simpa using hrs
    · exact hbot
    · dsimp [b]
      linarith
  unfold centeredTwistedPsiMellin
  exact differentiableAt_id.mul (hmellin.comp s (by fun_prop))

/-- Global half-plane form of `differentiableAt_centeredTwistedPsiMellin`. -/
@[surface_novel, surface_published]
theorem centeredPsiMellin_differentiable
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    DifferentiableOn ℂ (centeredTwistedPsiMellin χ)
      {s : ℂ | (1 / 2 : ℝ) < s.re} := by
  intro s hs
  exact (differentiableAt_centeredTwistedPsiMellin χ hBound hs).differentiableWithinAt

private theorem twistedVonMangoldtNormPartialSums_isBigO
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    (fun n : ℕ ↦ ∑ k ∈ Finset.Icc 1 n,
      ‖χ (k : ZMod q) * (ArithmeticFunction.vonMangoldt k : ℂ)‖) =O[atTop]
      (fun n : ℕ ↦ (n : ℝ) ^ (1 : ℝ)) := by
  rw [isBigO_iff]
  refine ⟨Real.log 4 + 4, Eventually.of_forall fun n ↦ ?_⟩
  calc
    ‖∑ k ∈ Finset.Icc 1 n,
        ‖χ (k : ZMod q) * (ArithmeticFunction.vonMangoldt k : ℂ)‖‖ =
        ∑ k ∈ Finset.Icc 1 n,
          ‖χ (k : ZMod q) * (ArithmeticFunction.vonMangoldt k : ℂ)‖ := by
            rw [Real.norm_eq_abs, abs_of_nonneg]
            positivity
    _ ≤ ∑ k ∈ Finset.Icc 1 n, ArithmeticFunction.vonMangoldt k := by
      gcongr with k hk
      rw [norm_mul, Complex.norm_real,
        Real.norm_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
      exact mul_le_of_le_one_left ArithmeticFunction.vonMangoldt_nonneg
        (χ.norm_le_one (k : ZMod q))
    _ = Chebyshev.psi n := by
      have hsets : Finset.Icc 1 n = Finset.Ioc 0 n := by
        ext k
        simp only [Finset.mem_Icc, Finset.mem_Ioc]
        omega
      rw [hsets]
      simp [Chebyshev.psi]
    _ ≤ (Real.log 4 + 4) * n :=
      Chebyshev.psi_le_const_mul_self (Nat.cast_nonneg n)
    _ = (Real.log 4 + 4) * ‖(n : ℝ) ^ (1 : ℝ)‖ := by
      simp [Real.rpow_one]

private def uncenteredTwistedPsiStep
    {q : ℕ} (χ : DirichletCharacter ℂ q) (t : ℝ) : ℂ :=
  if 1 ≤ t then twistedPsi χ ⌊t⌋₊ else 0

private theorem twistedVonMangoldtLSeries_eq_uncenteredMellin
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    {s : ℂ} (hs : 1 < s.re) :
    LSeries
        ((fun n : ℕ ↦ χ n) *
          (fun n : ℕ ↦ (ArithmeticFunction.vonMangoldt n : ℂ))) s =
      s * mellin (uncenteredTwistedPsiStep χ) (-s) := by
  have hIntegral := LSeries_eq_mul_integral'
    ((fun n : ℕ ↦ χ n) *
      (fun n : ℕ ↦ (ArithmeticFunction.vonMangoldt n : ℂ)))
    (show (0 : ℝ) ≤ 1 by norm_num) hs
    (twistedVonMangoldtNormPartialSums_isBigO χ)
  rw [hIntegral]
  unfold mellin uncenteredTwistedPsiStep
  congr 1
  rw [setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
    (Ioi_subset_Ioi (show (0 : ℝ) ≤ 1 by norm_num))]
  · apply setIntegral_congr_fun measurableSet_Ioi
    intro t ht
    have ht1 : 1 ≤ t := le_of_lt ht
    simp only [smul_eq_mul, if_pos ht1, twistedPsi, Pi.mul_apply]
    rw [show -s - 1 = -(s + 1) by ring]
    ring
  · intro t ht
    have ht_le : t ≤ 1 := le_of_not_gt ht.2
    have hfloor : ⌊t⌋₊ ≤ 1 := Nat.floor_le_one_of_le_one ht_le
    interval_cases hft : ⌊t⌋₊ <;> simp [twistedPsi]

private theorem twistedPsi_isBigO_one
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    twistedPsi χ =O[atTop]
      (fun n : ℕ ↦ (n : ℝ) ^ (1 : ℝ)) := by
  refine (IsBigO.of_bound' (Eventually.of_forall fun n ↦ ?_)).trans
    (twistedVonMangoldtNormPartialSums_isBigO χ)
  rw [twistedPsi]
  exact (norm_sum_le _ _).trans (Real.le_norm_self _)

private theorem twistedPsiKernel_integrable
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    {s : ℂ} (hs : 1 < s.re) :
    IntegrableOn
      (fun t : ℝ ↦ twistedPsi χ ⌊t⌋₊ * (t : ℂ) ^ (-(s + 1)))
      (Ioi 1) := by
  have hlocal : LocallyIntegrableOn
      (fun t : ℝ ↦ twistedPsi χ ⌊t⌋₊ * (t : ℂ) ^ (-(s + 1)))
      (Ici 1) := by
    simp_rw [mul_comm]
    refine locallyIntegrableOn_mul_sum_Icc
      ((fun n : ℕ ↦ χ n) *
        (fun n : ℕ ↦ (ArithmeticFunction.vonMangoldt n : ℂ)))
      zero_le_one ?_
    refine ContinuousOn.locallyIntegrableOn (fun t ht ↦ ?_) measurableSet_Ici
    exact (continuousAt_ofReal_cpow_const _ _
      (Or.inr (zero_lt_one.trans_le ht).ne')).continuousWithinAt
  have hpartial :
      (fun t : ℝ ↦ twistedPsi χ ⌊t⌋₊) =O[atTop]
        (fun t : ℝ ↦ t ^ (1 : ℝ)) := by
    rw [isBigO_iff]
    refine ⟨Real.log 4 + 4, ?_⟩
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with t ht
    have hfloor : (⌊t⌋₊ : ℝ) ≤ t := Nat.floor_le (zero_le_one.trans ht)
    calc
      ‖twistedPsi χ ⌊t⌋₊‖ ≤ Chebyshev.psi ⌊t⌋₊ := by
        rw [twistedPsi]
        calc
          ‖∑ k ∈ Finset.Icc 1 ⌊t⌋₊,
              χ (k : ZMod q) * (ArithmeticFunction.vonMangoldt k : ℂ)‖ ≤
              ∑ k ∈ Finset.Icc 1 ⌊t⌋₊,
                ‖χ (k : ZMod q) *
                  (ArithmeticFunction.vonMangoldt k : ℂ)‖ := norm_sum_le _ _
          _ ≤ ∑ k ∈ Finset.Icc 1 ⌊t⌋₊,
                ArithmeticFunction.vonMangoldt k := by
            gcongr with k hk
            rw [norm_mul, Complex.norm_real,
              Real.norm_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
            exact mul_le_of_le_one_left ArithmeticFunction.vonMangoldt_nonneg
              (χ.norm_le_one (k : ZMod q))
          _ = Chebyshev.psi ⌊t⌋₊ := by
            have hsets : Finset.Icc 1 ⌊t⌋₊ = Finset.Ioc 0 ⌊t⌋₊ := by
              ext k
              simp only [Finset.mem_Icc, Finset.mem_Ioc]
              omega
            rw [hsets]
            simp [Chebyshev.psi]
      _ ≤ (Real.log 4 + 4) * (⌊t⌋₊ : ℝ) :=
        Chebyshev.psi_le_const_mul_self (Nat.cast_nonneg ⌊t⌋₊)
      _ ≤ (Real.log 4 + 4) * t := by
        exact mul_le_mul_of_nonneg_left hfloor (by positivity)
      _ = (Real.log 4 + 4) * ‖t ^ (1 : ℝ)‖ := by
        simp [Real.rpow_one, Real.norm_of_nonneg (zero_le_one.trans ht)]
  apply IntegrableOn.mono_set
    (hlocal.integrableOn_of_isBigO_atTop
      (g := fun t : ℝ ↦ t ^ (-s.re)) ?_ ?_)
    Ioi_subset_Ici_self
  · refine IsBigO.mul_atTop_rpow_of_isBigO_rpow
      1 (-(s + 1)).re (-s.re) hpartial ?_
        (by simp only [neg_re, add_re, one_re]; linarith)
    exact (norm_ofReal_cpow_eventually_eq_atTop _).isBigO.of_norm_left
  · rwa [integrableAtFilter_rpow_atTop_iff, neg_lt_neg_iff]

private theorem principalMellinKernel_integrable
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    {s : ℂ} (hs : 1 < s.re) :
    IntegrableOn
      (fun t : ℝ ↦ (t : ℂ) ^ (-(s + 1)) *
        (dirichletPrincipalIndicator χ * (t : ℂ)))
      (Ioi 1) := by
  have hpow : IntegrableOn (fun t : ℝ ↦ (t : ℂ) ^ (-s)) (Ioi 1) :=
    integrableOn_Ioi_cpow_of_lt (by simp; linarith) zero_lt_one
  have hcongr : ∀ t ∈ Ioi (1 : ℝ),
      (t : ℂ) ^ (-(s + 1)) *
          (dirichletPrincipalIndicator χ * (t : ℂ)) =
        dirichletPrincipalIndicator χ * (t : ℂ) ^ (-s) := by
    intro t ht
    have ht0 : (t : ℂ) ≠ 0 :=
      ofReal_ne_zero.mpr (ne_of_gt (zero_lt_one.trans ht))
    rw [show -(s + 1) = -s - 1 by ring, cpow_sub _ _ ht0]
    simp only [cpow_one]
    calc
      (t : ℂ) ^ (-s) / (t : ℂ) *
          (dirichletPrincipalIndicator χ * (t : ℂ)) =
          (t : ℂ) ^ (-s) * dirichletPrincipalIndicator χ := by
            field_simp [ht0]
      _ = _ := mul_comm _ _
  have hconst : IntegrableOn
      (fun t : ℝ ↦ dirichletPrincipalIndicator χ * (t : ℂ) ^ (-s))
      (Ioi 1) := hpow.const_mul _
  exact hconst.congr_fun (fun t ht ↦ (hcongr t ht).symm) measurableSet_Ioi

private theorem centeredTwistedPsiMellin_eq_LSeries_sub_principal
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    {s : ℂ} (hs : 1 < s.re) :
    centeredTwistedPsiMellin χ s =
      LSeries
          ((fun n : ℕ ↦ χ n) *
            (fun n : ℕ ↦ (ArithmeticFunction.vonMangoldt n : ℂ))) s -
        dirichletPrincipalIndicator χ * s / (s - 1) := by
  have hCenteredIntegral :
      mellin (centeredTwistedPsiStep χ) (-s) =
        ∫ t : ℝ in Ioi 1,
          (t : ℂ) ^ (-(s + 1)) *
            (twistedPsi χ ⌊t⌋₊ -
              dirichletPrincipalIndicator χ * (t : ℂ)) := by
    unfold mellin
    rw [setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
      (show Ici (1 : ℝ) ⊆ Ioi 0 by
        intro t ht
        change 1 ≤ t at ht
        exact zero_lt_one.trans_le ht)]
    · rw [integral_Ici_eq_integral_Ioi]
      apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      have ht1 : 1 ≤ t := le_of_lt ht
      simp only [smul_eq_mul, centeredTwistedPsiStep, if_pos ht1]
      rw [show -s - 1 = -(s + 1) by ring]
    · intro t ht
      have htnot : ¬ 1 ≤ t := ht.2
      simp [centeredTwistedPsiStep, htnot]
  rw [centeredTwistedPsiMellin, hCenteredIntegral]
  have hTwisted : IntegrableOn
      (fun t : ℝ ↦ (t : ℂ) ^ (-(s + 1)) * twistedPsi χ ⌊t⌋₊)
      (Ioi 1) := by
    exact (twistedPsiKernel_integrable χ hs).congr_fun
      (fun t ht ↦ mul_comm _ _) measurableSet_Ioi
  have hMain := principalMellinKernel_integrable χ hs
  rw [show (∫ t : ℝ in Ioi 1,
        (t : ℂ) ^ (-(s + 1)) *
          (twistedPsi χ ⌊t⌋₊ -
            dirichletPrincipalIndicator χ * (t : ℂ))) =
      (∫ t : ℝ in Ioi 1,
        (t : ℂ) ^ (-(s + 1)) * twistedPsi χ ⌊t⌋₊) -
      ∫ t : ℝ in Ioi 1,
        (t : ℂ) ^ (-(s + 1)) *
          (dirichletPrincipalIndicator χ * (t : ℂ)) by
    rw [← integral_sub hTwisted hMain]
    congr 1
    funext t
    ring]
  have hMainIntegral :
      (∫ t : ℝ in Ioi 1,
        (t : ℂ) ^ (-(s + 1)) *
          (dirichletPrincipalIndicator χ * (t : ℂ))) =
        dirichletPrincipalIndicator χ / (s - 1) := by
    have hcongr : ∀ t ∈ Ioi (1 : ℝ),
        (t : ℂ) ^ (-(s + 1)) *
            (dirichletPrincipalIndicator χ * (t : ℂ)) =
          dirichletPrincipalIndicator χ * (t : ℂ) ^ (-s) := by
      intro t ht
      have ht0 : (t : ℂ) ≠ 0 :=
        ofReal_ne_zero.mpr (ne_of_gt (zero_lt_one.trans ht))
      rw [show -(s + 1) = -s - 1 by ring, cpow_sub _ _ ht0]
      simp only [cpow_one]
      calc
        (t : ℂ) ^ (-s) / (t : ℂ) *
            (dirichletPrincipalIndicator χ * (t : ℂ)) =
            (t : ℂ) ^ (-s) * dirichletPrincipalIndicator χ := by
              field_simp [ht0]
        _ = _ := mul_comm _ _
    rw [setIntegral_congr_fun measurableSet_Ioi hcongr,
      integral_const_mul,
      integral_Ioi_cpow_of_lt (by simp; linarith) zero_lt_one]
    simp only [ofReal_one, one_cpow]
    rw [show -s + 1 = -(s - 1) by ring]
    simp only [div_eq_mul_inv, inv_neg]
    ring
  rw [hMainIntegral, mul_sub]
  have hUncenteredIntegral :
      mellin (uncenteredTwistedPsiStep χ) (-s) =
        ∫ t : ℝ in Ioi 1,
          (t : ℂ) ^ (-(s + 1)) * twistedPsi χ ⌊t⌋₊ := by
    unfold mellin
    rw [setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
      (show Ici (1 : ℝ) ⊆ Ioi 0 by
        intro t ht
        change 1 ≤ t at ht
        exact zero_lt_one.trans_le ht)]
    · rw [integral_Ici_eq_integral_Ioi]
      apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      have ht1 : 1 ≤ t := le_of_lt ht
      simp only [smul_eq_mul, uncenteredTwistedPsiStep, if_pos ht1]
      rw [show -s - 1 = -(s + 1) by ring]
    · intro t ht
      have htnot : ¬ 1 ≤ t := ht.2
      simp [uncenteredTwistedPsiStep, htnot]
  rw [← hUncenteredIntegral,
    ← twistedVonMangoldtLSeries_eq_uncenteredMellin χ hs]
  ring

/-- On the half-plane of absolute convergence, the literal centered Mellin
transform is exactly the negative logarithmic derivative of the canonical
pole-removed `L`-function, with the constant principal correction exposed.
This is the analytic identity needed by the continued first-order ODE. -/
@[surface_adapter, surface_published]
theorem centeredTwistedPsiMellin_add_principalIndicator_eq_neg_logDeriv_poleRemovedLFunction
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {s : ℂ} (hs : 1 < s.re) :
    centeredTwistedPsiMellin χ s + dirichletPrincipalIndicator χ =
      -deriv (poleRemovedLFunction χ) s /
        poleRemovedLFunction χ s := by
  classical
  have hsOne : s ≠ 1 := by
    intro h
    subst s
    norm_num at hs
  rw [centeredTwistedPsiMellin_eq_LSeries_sub_principal χ hs]
  rw [DirichletCharacter.LSeries_twist_vonMangoldt_eq χ hs]
  rw [← DirichletCharacter.LFunction_eq_LSeries χ hs,
    ← DirichletCharacter.deriv_LFunction_eq_deriv_LSeries χ hs]
  by_cases hχ : χ = 1
  · subst χ
    rw [poleRemovedLFunction_one,
      DirichletCharacter.deriv_LFunctionTrivChar₁_apply_of_ne_one q hsOne]
    simp only [dirichletPrincipalIndicator_one]
    rw [DirichletCharacter.LFunctionTrivChar₁,
      Function.update_of_ne hsOne]
    have hLne : DirichletCharacter.LFunctionTrivChar q s ≠ 0 :=
      DirichletCharacter.LFunction_ne_zero_of_one_le_re
        (1 : DirichletCharacter ℂ q) (.inr hsOne) hs.le
    have hsDiff : s - 1 ≠ 0 := sub_ne_zero.mpr hsOne
    field_simp [hsOne, hsDiff, hLne]
    ring
  · rw [poleRemovedLFunction_eq_LFunction_of_ne_one hχ,
      dirichletPrincipalIndicator_eq_zero hχ]
    ring

/-- Open right half-plane used by the zero-exclusion argument. -/
@[expose]
def criticalRightHalfPlane : Set ℂ :=
  {s | (1 / 2 : ℝ) < s.re}

@[surface_novel, surface_published]
theorem isOpen_criticalRightHalfPlane : IsOpen criticalRightHalfPlane :=
  isOpen_lt continuous_const continuous_re

@[surface_novel, surface_published]
theorem isPreconnected_criticalRightHalfPlane :
    IsPreconnected criticalRightHalfPlane :=
  (convex_halfSpace_re_gt (1 / 2 : ℝ)).isPreconnected

/--
Typed analytic square for one Dirichlet character.

The regularized function is the fixed `poleRemovedLFunction chi` adapter,
not structure data chosen by an inhabitant.  The logarithmic-derivative
identity therefore has one canonical analytic target and keeps the pole at
`s = 1` outside the ODE argument.
-/
@[surface_interface]
structure MellinLogDerivativeSquare
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) where
  mellin : ℂ → ℂ

  mellin_eq_centeredIntegral :
    ∀ s, mellin s = centeredTwistedPsiMellin χ s

  mellin_differentiableOn :
    CenteredTwistedPsiHalfPlusEpsilon χ →
      DifferentiableOn ℂ mellin criticalRightHalfPlane

  regularizedLogDerivativeIdentity :
    ∀ s : ℂ, 1 < s.re →
      mellin s + dirichletPrincipalIndicator χ =
        -deriv (poleRemovedLFunction χ) s /
          poleRemovedLFunction χ s

/-- The canonical Mellin/logarithmic-derivative square is constructed from
the literal centered twisted-Chebyshev transform.  Its existence is a
checked theorem-level construction, not an analytic interface assumption. -/
@[expose]
noncomputable def canonicalMellinLogDerivativeSquare
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) :
    MellinLogDerivativeSquare χ where
  mellin := centeredTwistedPsiMellin χ
  mellin_eq_centeredIntegral := fun _ ↦ rfl
  mellin_differentiableOn := fun hBound ↦
    centeredPsiMellin_differentiable χ hBound
  regularizedLogDerivativeIdentity := fun _ hs ↦
    centeredTwistedPsiMellin_add_principalIndicator_eq_neg_logDeriv_poleRemovedLFunction
      χ hs

/-- Holomorphic ODE residual for the regularized `L`-function. -/
@[expose]
def MellinLogDerivativeSquare.residual
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ) (s : ℂ) : ℂ :=
  deriv (poleRemovedLFunction χ) s +
    (square.mellin s + dirichletPrincipalIndicator χ) *
      poleRemovedLFunction χ s

theorem MellinLogDerivativeSquare.differentiableOn_residual
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    DifferentiableOn ℂ square.residual criticalRightHalfPlane := by
  have hL : DifferentiableOn ℂ (poleRemovedLFunction χ)
      criticalRightHalfPlane :=
    (differentiable_poleRemovedLFunction χ).differentiableOn
  have hL' : DifferentiableOn ℂ (deriv (poleRemovedLFunction χ))
      criticalRightHalfPlane :=
    hL.deriv isOpen_criticalRightHalfPlane
  exact hL'.add
    (((square.mellin_differentiableOn hBound).add
      (by fun_prop)).mul hL)

theorem MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ) {s : ℂ} (hs : 1 < s.re) :
    square.residual s = 0 := by
  have hEq := square.regularizedLogDerivativeIdentity s hs
  have hne := poleRemovedLFunction_ne_zero_of_one_lt_re χ hs
  unfold MellinLogDerivativeSquare.residual
  rw [hEq, div_mul_cancel₀ _ hne]
  ring

/-- Identity-theorem continuation of the regularized logarithmic-derivative
ODE to the whole critical right half-plane. -/
@[surface_novel, surface_interface]
theorem MellinLogDerivativeSquare.residual_eq_zero
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ)
    {s : ℂ} (hs : s ∈ criticalRightHalfPlane) :
    square.residual s = 0 := by
  have hAnalytic : AnalyticOnNhd ℂ square.residual criticalRightHalfPlane :=
    (square.differentiableOn_residual hBound).analyticOnNhd
      isOpen_criticalRightHalfPlane
  have hZero : AnalyticOnNhd ℂ (fun _ : ℂ ↦ (0 : ℂ))
      criticalRightHalfPlane := analyticOnNhd_const
  have hTwo : (2 : ℂ) ∈ criticalRightHalfPlane := by
    norm_num [criticalRightHalfPlane]
  have hEventually : square.residual =ᶠ[nhds (2 : ℂ)]
      (fun _ : ℂ ↦ (0 : ℂ)) := by
    have hOpen : IsOpen {z : ℂ | 1 < z.re} :=
      isOpen_lt continuous_const continuous_re
    have hMem : (2 : ℂ) ∈ {z : ℂ | 1 < z.re} := by norm_num
    filter_upwards [hOpen.mem_nhds hMem] with z hz
    exact square.residual_eq_zero_of_one_lt_re hz
  exact (hAnalytic.eqOn_of_preconnected_of_eventuallyEq hZero
    isPreconnected_criticalRightHalfPlane hTwo hEventually) hs

/-- The centered half-plus-epsilon estimate excludes critical-strip zeros
to the right of the critical line.  The proof is local ODE uniqueness plus
global analytic continuation of `regularizedL`; no pole theorem is assumed
as a black-box conclusion. -/
@[surface_novel, surface_interface]
theorem zeroFree_rightHalfPlane_of_mellinHolomorphic
    {q : ℕ} [NeZero q]
    {χ : DirichletCharacter ℂ q}
    (_hPrimitive : DirichletCharacter.IsPrimitive χ)
    (square : MellinLogDerivativeSquare χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    ∀ s : ℂ,
      (1 / 2 : ℝ) < s.re →
      s.re < 1 →
      DirichletCharacter.LFunction χ s ≠ 0 := by
  have hCoefficient : DifferentiableOn ℂ
      (fun z ↦ -(square.mellin z + dirichletPrincipalIndicator χ))
      criticalRightHalfPlane :=
    ((square.mellin_differentiableOn hBound).add (by fun_prop)).neg
  have hODE : ∀ z ∈ criticalRightHalfPlane,
      deriv (poleRemovedLFunction χ) z =
        -(square.mellin z + dirichletPrincipalIndicator χ) *
          poleRemovedLFunction χ z := by
    intro z hz
    have hResidual := square.residual_eq_zero hBound hz
    change deriv (poleRemovedLFunction χ) z +
      (square.mellin z + dirichletPrincipalIndicator χ) *
        poleRemovedLFunction χ z = 0 at hResidual
    calc
      deriv (poleRemovedLFunction χ) z =
          -((square.mellin z + dirichletPrincipalIndicator χ) *
            poleRemovedLFunction χ z) :=
        eq_neg_of_add_eq_zero_left hResidual
      _ = -(square.mellin z + dirichletPrincipalIndicator χ) *
          poleRemovedLFunction χ z := by ring
  have hAtTwo : poleRemovedLFunction χ (2 : ℂ) ≠ 0 :=
    poleRemovedLFunction_ne_zero_of_one_lt_re χ (by norm_num)
  have hNowhereZero := Surface.Core.Analysis.nowhereZero_of_deriv_eq_mul
    isOpen_criticalRightHalfPlane
    isPreconnected_criticalRightHalfPlane
    (poleRemovedLFunction χ)
    (fun z ↦ -(square.mellin z + dirichletPrincipalIndicator χ))
    (differentiable_poleRemovedLFunction χ).differentiableOn
    hCoefficient hODE (2 : ℂ) (by norm_num [criticalRightHalfPlane]) hAtTwo
  intro s hsHalf hsOne hLs
  have hsNeOne : s ≠ 1 := by
    intro h
    subst s
    norm_num at hsOne
  exact hNowhereZero s hsHalf
    ((poleRemovedLFunction_zero_iff_LFunction_zero χ hsNeOne).2 hLs)

/-- The half-plus-epsilon bound makes the canonical pole-removed
`L`-function nowhere zero on the full half-plane `re s > 1 / 2`.
Primitivity is not needed for this right-half-plane statement. -/
@[surface_novel, surface_published]
theorem poleRemovedL_nowhereZero_rightHalfPlane
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    ∀ s : ℂ, (1 / 2 : ℝ) < s.re → poleRemovedLFunction χ s ≠ 0 := by
  let square : MellinLogDerivativeSquare χ :=
    canonicalMellinLogDerivativeSquare χ
  have hCoefficient : DifferentiableOn ℂ
      (fun z ↦ -(square.mellin z + dirichletPrincipalIndicator χ))
      criticalRightHalfPlane :=
    ((square.mellin_differentiableOn hBound).add (by fun_prop)).neg
  have hODE : ∀ z ∈ criticalRightHalfPlane,
      deriv (poleRemovedLFunction χ) z =
        -(square.mellin z + dirichletPrincipalIndicator χ) *
          poleRemovedLFunction χ z := by
    intro z hz
    have hResidual := square.residual_eq_zero hBound hz
    change deriv (poleRemovedLFunction χ) z +
      (square.mellin z + dirichletPrincipalIndicator χ) *
        poleRemovedLFunction χ z = 0 at hResidual
    calc
      deriv (poleRemovedLFunction χ) z =
          -((square.mellin z + dirichletPrincipalIndicator χ) *
            poleRemovedLFunction χ z) :=
        eq_neg_of_add_eq_zero_left hResidual
      _ = -(square.mellin z + dirichletPrincipalIndicator χ) *
          poleRemovedLFunction χ z := by ring
  have hAtTwo : poleRemovedLFunction χ (2 : ℂ) ≠ 0 :=
    poleRemovedLFunction_ne_zero_of_one_lt_re χ (by norm_num)
  have hNowhereZero := Surface.Core.Analysis.nowhereZero_of_deriv_eq_mul
    isOpen_criticalRightHalfPlane
    isPreconnected_criticalRightHalfPlane
    (poleRemovedLFunction χ)
    (fun z ↦ -(square.mellin z + dirichletPrincipalIndicator χ))
    (differentiable_poleRemovedLFunction χ).differentiableOn
    hCoefficient hODE (2 : ℂ) (by norm_num [criticalRightHalfPlane]) hAtTwo
  intro s hs
  exact hNowhereZero s hs

/-- In the open critical strip, pole removal preserves zeros, so the direct
half-plus-epsilon bound excludes ordinary `L`-function zeros to the right of
the critical line. -/
@[surface_novel, surface_published]
theorem LFunction_zeroFree_rightHalfPlane
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    ∀ s : ℂ,
      (1 / 2 : ℝ) < s.re →
      s.re < 1 →
      DirichletCharacter.LFunction χ s ≠ 0 := by
  intro s hsHalf hsOne hZero
  have hsNeOne : s ≠ 1 := by
    intro h
    subst s
    norm_num at hsOne
  exact (poleRemovedL_nowhereZero_rightHalfPlane χ hBound s hsHalf)
    ((poleRemovedLFunction_zero_iff_LFunction_zero χ hsNeOne).2 hZero)

end

end Surface.Core.DirichletGRH
