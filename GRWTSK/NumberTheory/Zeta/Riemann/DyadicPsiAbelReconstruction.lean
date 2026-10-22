/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyNecessaryCancellation
import Mathlib.NumberTheory.AbelSummation
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Localized Abel reconstruction from Chebyshev psi

For integer X <= Y,

  sum_{X<n<=Y} Lambda(n)/n - log(Y/X)
    = Epsi(Y)/Y - Epsi(X)/X
      + integral_X^Y Epsi(u)/u^2 du,

where Epsi(u)=psi(u)-u.

At source grid points t=Y/X-1 this is exactly the repository's cumulative
dyadic discrepancy. For arbitrary t in [0,1], the atomic source is constant up
to Y=floor(X(1+t)); only the continuum logarithm changes. That floor/log
correction is at most 1/X.

Hence a uniform octave envelope |Epsi(u)|<=A on [X,2X] gives

  |cumulative X t| <= (3A+1)/X.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
LOCALIZED_PSI_ABEL_RECONSTRUCTION_DEFINED.
-/

namespace GRWTSK.RiemannHypothesis

open MeasureTheory Set
open Chebyshev
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.Analysis.Integral.UnitIntervalPrimitives
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def psiError (u : ℝ) : ℝ := ψ u - u

theorem weightedMangoldt_Ioc_abel
    {X Y : ℕ} (hX : 2 ≤ X) (hXY : X ≤ Y) :
    (∑ n ∈ Finset.Ioc X Y, coefficient n) =
      ψ (Y : ℝ) / (Y : ℝ) -
        ψ (X : ℝ) / (X : ℝ) +
        ∫ u in (X : ℝ)..(Y : ℝ), ψ u / u^2 := by
  let f : ℝ → ℝ := fun u => u⁻¹
  have hdiff :
      ∀ u ∈ Set.Icc (X : ℝ) (Y : ℝ), DifferentiableAt ℝ f u := by
    intro u hu
    dsimp [f]
    fun_prop (disch := linarith [hX])
  have hint :
      IntegrableOn (deriv f) (Set.Icc (X : ℝ) (Y : ℝ)) := by
    have hcont :
        ContinuousOn (fun u : ℝ => -(u^2)⁻¹)
          (Set.Icc (X : ℝ) (Y : ℝ)) := by
      fun_prop (disch := intro u hu; linarith [hX])
    apply IntegrableOn.congr_fun hcont.integrableOn_Icc measurableSet_Icc
    intro u hu
    simp [f, deriv_inv]
  have h :=
    sum_mul_eq_sub_sub_integral_mul'
      (c := fun n => mangoldt n) hXY hdiff hint
  rw [← intervalIntegral.integral_of_le (by exact_mod_cast hXY)] at h
  simpa [f, coefficient, mangoldt, Chebyshev.psi, deriv_inv,
    div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc] using h

theorem weightedMangoldt_Ioc_error
    {X Y : ℕ} (hX : 2 ≤ X) (hXY : X ≤ Y) :
    (∑ n ∈ Finset.Ioc X Y, coefficient n) -
        Real.log ((Y : ℝ) / (X : ℝ)) =
      psiError (Y : ℝ) / (Y : ℝ) -
        psiError (X : ℝ) / (X : ℝ) +
        ∫ u in (X : ℝ)..(Y : ℝ), psiError u / u^2 := by
  have hAbel := weightedMangoldt_Ioc_abel hX hXY
  have hXpos : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 2) hX)
  have hYpos : (0 : ℝ) < (Y : ℝ) :=
    hXpos.trans_le (by exact_mod_cast hXY)
  have hpsi :
      IntervalIntegrable ψ volume (X : ℝ) (Y : ℝ) :=
    Chebyshev.psi_mono.intervalIntegrable
  have hinv2 :
      ContinuousOn (fun u : ℝ => (u^2)⁻¹)
        (Set.uIcc (X : ℝ) (Y : ℝ)) := by
    rw [Set.uIcc_of_le (by exact_mod_cast hXY)]
    fun_prop (disch := intro u hu; linarith [hX])
  have hpsiDiv :
      IntervalIntegrable (fun u : ℝ => ψ u / u^2)
        volume (X : ℝ) (Y : ℝ) := by
    simpa [div_eq_mul_inv] using hpsi.mul_continuousOn hinv2
  have hone :
      IntervalIntegrable (fun u : ℝ => (1 : ℝ) / u)
        volume (X : ℝ) (Y : ℝ) := by
    exact ContinuousOn.intervalIntegrable (by
      rw [Set.uIcc_of_le (by exact_mod_cast hXY)]
      fun_prop (disch := intro u hu; linarith [hX]))
  have herr :
      IntervalIntegrable (fun u : ℝ => psiError u / u^2)
        volume (X : ℝ) (Y : ℝ) := by
    have hsub := hpsiDiv.sub hone
    apply hsub.congr
    intro u hu
    unfold psiError
    have hu0 : u ≠ 0 := by
      rw [Set.uIcc_of_le (by exact_mod_cast hXY)] at hu
      linarith [hu.1, hX]
    field_simp [hu0]
    ring
  have hsplit :
      (∫ u in (X : ℝ)..(Y : ℝ), ψ u / u^2) =
        (∫ u in (X : ℝ)..(Y : ℝ), psiError u / u^2) +
        Real.log ((Y : ℝ) / (X : ℝ)) := by
    rw [← intervalIntegral.integral_one_div_of_pos hXpos hYpos]
    rw [← intervalIntegral.integral_add herr hone]
    apply intervalIntegral.integral_congr
    intro u hu
    unfold psiError
    have hu0 : u ≠ 0 := by
      rcases hu with ⟨hu1, hu2⟩
      linarith [hX]
    field_simp [hu0]
    ring
  rw [hAbel, hsplit]
  unfold psiError
  field_simp [hXpos.ne', hYpos.ne']
  ring

theorem location_le_location_iff
    {X n m : ℕ} (hX : 0 < X) :
    location X n ≤ location X m ↔ n ≤ m := by
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  unfold location
  constructor
  · intro h
    have hdiv :
        (n : ℝ) / (X : ℝ) ≤ (m : ℝ) / (X : ℝ) := by linarith
    have hnm : (n : ℝ) ≤ (m : ℝ) :=
      (div_le_div_iff₀ hXr hXr).mp hdiv
    exact_mod_cast hnm
  · intro h
    have hnm : (n : ℝ) ≤ (m : ℝ) := by exact_mod_cast h
    have hdiv :
        (n : ℝ) / (X : ℝ) ≤ (m : ℝ) / (X : ℝ) :=
      (div_le_div_iff₀ hXr hXr).2 hnm
    linarith

theorem step_location_location
    {X n m : ℕ} (hX : 0 < X) :
    step (location X n) (location X m) =
      if n ≤ m then 1 else 0 := by
  by_cases hnm : n ≤ m
  · have hloc := (location_le_location_iff hX).2 hnm
    simp [step, Set.indicator, hloc, hnm]
  · have hloc : ¬ location X n ≤ location X m :=
      mt (location_le_location_iff hX).1 hnm
    simp [step, Set.indicator, hloc, hnm]

theorem cumulative_at_grid
    {X m : ℕ} (hX : 0 < X)
    (hXm : X ≤ m) (hm2X : m ≤ 2 * X) :
    cumulative X (location X m) =
      (∑ n ∈ Finset.Ioc X m, coefficient n) -
        Real.log ((m : ℝ) / (X : ℝ)) := by
  have hfilter :
      (window X).filter (fun n => n ≤ m) =
        Finset.Ioc X m := by
    ext n
    simp [window]
    omega
  unfold cumulative
  have hsum :
      (∑ n ∈ window X,
          coefficient n * step (location X n) (location X m)) =
        ∑ n ∈ Finset.Ioc X m, coefficient n := by
    simp_rw [step_location_location hX]
    rw [← Finset.sum_filter]
    simpa [hfilter]
  rw [hsum]
  unfold logarithm location
  have hX0 : (X : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hX)
  rw [show 1 + ((m : ℝ) / (X : ℝ) - 1) =
      (m : ℝ) / (X : ℝ) by ring]

theorem cumulative_at_grid_eq_psiError
    {X m : ℕ} (hX : 2 ≤ X)
    (hXm : X ≤ m) (hm2X : m ≤ 2 * X) :
    cumulative X (location X m) =
      psiError (m : ℝ) / (m : ℝ) -
        psiError (X : ℝ) / (X : ℝ) +
        ∫ u in (X : ℝ)..(m : ℝ), psiError u / u^2 := by
  rw [cumulative_at_grid (lt_of_lt_of_le (by norm_num) hX) hXm hm2X]
  exact weightedMangoldt_Ioc_error hX hXm

def gridIndex (X : ℕ) (t : ℝ) : ℕ :=
  ⌊(X : ℝ) * (1 + t)⌋₊

theorem gridIndex_bounds
    {X : ℕ} (hX : 0 < X)
    {t : ℝ} (ht : t ∈ Set.Icc (0 : ℝ) 1) :
    X ≤ gridIndex X t ∧ gridIndex X t ≤ 2 * X := by
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hy0 : 0 ≤ (X : ℝ) * (1 + t) := by positivity
  have hlow :
      (X : ℝ) ≤ (X : ℝ) * (1 + t) := by
    nlinarith [ht.1]
  have hupp :
      (X : ℝ) * (1 + t) ≤ ((2 * X : ℕ) : ℝ) := by
    push_cast
    nlinarith [ht.2, hXr]
  constructor
  · exact (Nat.le_floor_iff hy0).2 hlow
  · have hfloor :
        ((gridIndex X t : ℕ) : ℝ) ≤
          (X : ℝ) * (1 + t) := by
      exact Nat.floor_le hy0
    exact_mod_cast hfloor.trans hupp

theorem location_le_t_iff_le_gridIndex
    {X n : ℕ} (hX : 0 < X)
    {t : ℝ} (ht0 : 0 ≤ t) :
    location X n ≤ t ↔ n ≤ gridIndex X t := by
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hy0 : 0 ≤ (X : ℝ) * (1 + t) := by positivity
  rw [Nat.le_floor_iff hy0]
  unfold location
  constructor <;> intro h
  · have hdiv : (n : ℝ) / (X : ℝ) ≤ 1 + t := by linarith
    exact (div_le_iff₀ hXr).1 hdiv
  · have hdiv :
        (n : ℝ) / (X : ℝ) ≤ 1 + t :=
      (div_le_iff₀ hXr).2 h
    linarith

theorem cumulative_sub_grid_eq_logarithm_sub
    {X : ℕ} (hX : 0 < X)
    {t : ℝ} (ht : t ∈ Set.Icc (0 : ℝ) 1) :
    cumulative X t -
        cumulative X (location X (gridIndex X t)) =
      logarithm (location X (gridIndex X t)) -
        logarithm t := by
  unfold cumulative
  have hsum :
      (∑ n ∈ window X,
          coefficient n * step (location X n) t) =
        ∑ n ∈ window X,
          coefficient n *
            step (location X n) (location X (gridIndex X t)) := by
    apply Finset.sum_congr rfl
    intro n hn
    have hiff1 := location_le_t_iff_le_gridIndex hX ht.1
    have hiff2 :=
      location_le_location_iff
        (n := n) (m := gridIndex X t) hX
    by_cases hng : n ≤ gridIndex X t
    · have hlt : location X n ≤ t := hiff1.2 hng
      have hlg : location X n ≤ location X (gridIndex X t) :=
        hiff2.2 hng
      simp [step, Set.indicator, hlt, hlg]
    · have hlt : ¬ location X n ≤ t := mt hiff1.1 hng
      have hlg : ¬ location X n ≤ location X (gridIndex X t) :=
        mt hiff2.1 hng
      simp [step, Set.indicator, hlt, hlg]
  rw [hsum]
  ring

theorem logarithm_grid_error_le
    {X : ℕ} (hX : 0 < X)
    {t : ℝ} (ht : t ∈ Set.Icc (0 : ℝ) 1) :
    |logarithm t -
      logarithm (location X (gridIndex X t))| ≤
        1 / (X : ℝ) := by
  let y : ℝ := (X : ℝ) * (1 + t)
  let m : ℕ := gridIndex X t
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hmbounds := gridIndex_bounds hX ht
  have hmX : X ≤ m := by simpa [m] using hmbounds.1
  have hmpos : (0 : ℝ) < (m : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le hX hmX)
  have hy0 : 0 ≤ y := by
    dsimp [y]
    positivity
  have hmy : (m : ℝ) ≤ y := by
    dsimp [m, y, gridIndex]
    exact Nat.floor_le hy0
  have hylt : y < (m : ℝ) + 1 := by
    dsimp [m, y, gridIndex]
    exact_mod_cast Nat.lt_floor_add_one ((X : ℝ) * (1 + t))
  have hypos : 0 < y := hXr.mul (by linarith [ht.1])
  have hratio1 : 1 ≤ y / (m : ℝ) :=
    (le_div_iff₀ hmpos).2 (by simpa using hmy)
  have hlog0 : 0 ≤ Real.log (y / (m : ℝ)) :=
    Real.log_nonneg hratio1
  have hlogle :
      Real.log (y / (m : ℝ)) ≤ y / (m : ℝ) - 1 :=
    Real.log_le_sub_one_of_pos (div_pos hypos hmpos)
  have hfrac :
      y / (m : ℝ) - 1 ≤ 1 / (X : ℝ) := by
    have hdiff : y - (m : ℝ) < 1 := by linarith
    have hmXr : (X : ℝ) ≤ (m : ℝ) := by exact_mod_cast hmX
    have h1m : 1 / (m : ℝ) ≤ 1 / (X : ℝ) :=
      one_div_le_one_div_of_le hXr hmXr
    calc
      y / (m : ℝ) - 1
          = (y - (m : ℝ)) / (m : ℝ) := by
            field_simp [hmpos.ne']
            ring
      _ ≤ 1 / (m : ℝ) :=
        div_le_div_of_nonneg_right (le_of_lt hdiff) hmpos.le
      _ ≤ 1 / (X : ℝ) := h1m
  have hlog :
      |Real.log (y / (m : ℝ))| ≤ 1 / (X : ℝ) := by
    rw [abs_of_nonneg hlog0]
    exact hlogle.trans hfrac
  have hX0 : (X : ℝ) ≠ 0 := hXr.ne'
  have hm0 : (m : ℝ) ≠ 0 := hmpos.ne'
  have hlogarithm :
      logarithm t -
        logarithm (location X m) =
      Real.log (y / (m : ℝ)) := by
    unfold logarithm location
    rw [show 1 + ((m : ℝ) / (X : ℝ) - 1) =
        (m : ℝ) / (X : ℝ) by ring]
    rw [show 1 + t = y / (X : ℝ) by
      dsimp [y]
      field_simp [hX0]
      ring]
    rw [← Real.log_div
      (div_ne_zero hypos.ne' hX0)
      (div_ne_zero hm0 hX0)]
    congr 1
    field_simp [hX0, hm0]
    ring
  rw [hlogarithm]
  exact hlog

def PsiOctaveEnvelope (X : ℕ) (A : ℝ) : Prop :=
  0 ≤ A ∧
    ∀ u ∈ Set.Icc ((X : ℕ) : ℝ) ((2 * X : ℕ) : ℝ),
      |psiError u| ≤ A

theorem cumulative_grid_abs_le
    {X m : ℕ} (hX : 2 ≤ X)
    (hXm : X ≤ m) (hm2X : m ≤ 2 * X)
    {A : ℝ} (hA : PsiOctaveEnvelope X A) :
    |cumulative X (location X m)| ≤
      3 * A / (X : ℝ) := by
  rw [cumulative_at_grid_eq_psiError hX hXm hm2X]
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 2) hX)
  have hmr : (0 : ℝ) < (m : ℝ) :=
    hXr.trans_le (by exact_mod_cast hXm)
  have hEX := hA.2 (X : ℝ) (by
    constructor
    · exact le_rfl
    · exact_mod_cast (by omega : X ≤ 2 * X))
  have hEm := hA.2 (m : ℝ) (by
    constructor
    · exact_mod_cast hXm
    · exact_mod_cast hm2X)
  have htermX :
      |psiError (X : ℝ) / (X : ℝ)| ≤ A / (X : ℝ) := by
    rw [abs_div, abs_of_pos hXr]
    exact div_le_div_of_nonneg_right hEX hXr.le
  have htermM :
      |psiError (m : ℝ) / (m : ℝ)| ≤ A / (X : ℝ) := by
    rw [abs_div, abs_of_pos hmr]
    calc
      |psiError (m : ℝ)| / (m : ℝ)
          ≤ A / (m : ℝ) :=
        div_le_div_of_nonneg_right hEm hmr.le
      _ ≤ A / (X : ℝ) :=
        div_le_div_of_nonneg_left hA.1 hXr
          (by exact_mod_cast hXm)
  have hint :
      |∫ u in (X : ℝ)..(m : ℝ), psiError u / u^2| ≤
        A / (X : ℝ) := by
    have hnorm :=
      intervalIntegral.norm_integral_le_of_norm_le_const
        (f := fun u : ℝ => psiError u / u^2)
        (a := (X : ℝ)) (b := (m : ℝ))
        (fun u hu => by
          rw [Set.uIcc_of_le (by exact_mod_cast hXm)] at hu
          have huX : (X : ℝ) ≤ u := hu.1
          have hu2X : u ≤ ((2 * X : ℕ) : ℝ) :=
            hu.2.trans (by exact_mod_cast hm2X)
          have hEu := hA.2 u ⟨huX, hu2X⟩
          have hu0 : 0 < u := hXr.trans_le huX
          rw [Real.norm_eq_abs, abs_div, abs_pow, abs_of_pos hu0]
          have hden : (X : ℝ)^2 ≤ u^2 := by nlinarith
          exact (div_le_div_of_nonneg_right hEu (sq_nonneg u)).trans
            (div_le_div_of_nonneg_left hA.1 (sq_pos_of_pos hXr) hden))
    rw [Real.norm_eq_abs] at hnorm
    have hlen :
        |(m : ℝ) - (X : ℝ)| ≤ (X : ℝ) := by
      rw [abs_of_nonneg (by exact_mod_cast Nat.sub_nonneg.mpr hXm)]
      exact_mod_cast (by omega : m - X ≤ X)
    calc
      |∫ u in (X : ℝ)..(m : ℝ), psiError u / u^2|
          ≤ (A / (X : ℝ)^2) *
              |(m : ℝ) - (X : ℝ)| := hnorm
      _ ≤ (A / (X : ℝ)^2) * (X : ℝ) :=
        mul_le_mul_of_nonneg_left hlen (by positivity)
      _ = A / (X : ℝ) := by
        field_simp [hXr.ne']
        ring
  have htri :
      |psiError (m : ℝ) / (m : ℝ) -
          psiError (X : ℝ) / (X : ℝ) +
          ∫ u in (X : ℝ)..(m : ℝ), psiError u / u^2|
        ≤
      (|psiError (m : ℝ) / (m : ℝ)| +
          |psiError (X : ℝ) / (X : ℝ)|) +
        |∫ u in (X : ℝ)..(m : ℝ), psiError u / u^2| := by
    exact (abs_add _ _).trans
      (add_le_add_right (abs_sub _ _) _)
  exact htri.trans (by linarith)

theorem cumulative_abs_le_of_psiEnvelope
    {X : ℕ} (hX : 2 ≤ X)
    {A : ℝ} (hA : PsiOctaveEnvelope X A)
    {t : ℝ} (ht : t ∈ Set.Icc (0 : ℝ) 1) :
    |cumulative X t| ≤
      (3 * A + 1) / (X : ℝ) := by
  have hXpos : 0 < X := lt_of_lt_of_le (by norm_num) hX
  have hm := gridIndex_bounds hXpos ht
  have hgrid :=
    cumulative_grid_abs_le hX hm.1 hm.2 hA
  have hlog := logarithm_grid_error_le hXpos ht
  have hdiff := cumulative_sub_grid_eq_logarithm_sub hXpos ht
  have htri :
      |cumulative X t| ≤
        |cumulative X (location X (gridIndex X t))| +
          |logarithm t -
            logarithm (location X (gridIndex X t))| := by
    have heq :
        cumulative X t =
          cumulative X (location X (gridIndex X t)) +
            (logarithm (location X (gridIndex X t)) - logarithm t) := by
      linarith
    rw [heq]
    simpa [abs_sub_comm] using
      (abs_add
        (cumulative X (location X (gridIndex X t)))
        (logarithm (location X (gridIndex X t)) - logarithm t))
  calc
    |cumulative X t|
        ≤ |cumulative X (location X (gridIndex X t))| +
          |logarithm t -
            logarithm (location X (gridIndex X t))| := htri
    _ ≤ 3 * A / (X : ℝ) + 1 / (X : ℝ) :=
      add_le_add hgrid hlog
    _ = (3 * A + 1) / (X : ℝ) := by ring

end GRWTSK.RiemannHypothesis
