/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualPoleMoments
import Mathlib.Analysis.Fourier.RiemannLebesgueLemma
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Topology.Instances.EReal.Lemmas
import Mathlib.Tactic

/-!
# Localized projections of the signed Möbius residual

The finite projection step in the analytic note at
`3d92d36bee58307365815e60a9df96f0e1226712` uses the square of the original
signed wave on the physical interval. The following lemmas identify its
rescaled square exactly and make distinct real oscillatory modes orthogonal
in the large-horizon limit.
-/

set_option autoImplicit false

noncomputable section

open Filter MeasureTheory Set
open scoped Topology BigOperators FourierTransform

namespace GRWTSK.NumberTheory.Moebius.GaussianSignedResidualFiniteProjection

open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLaplace
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPoleMoments

/-- At pole order `n+1`, the physical wave is rescaled by `T⁻ⁿ`. -/
def rescaledWave (s : ℝ) (n : ℕ) (T v : ℝ) : ℝ :=
  (T ^ n)⁻¹ * residualWave s (T * v)

theorem rescaledWave_continuous (s : ℝ) (n : ℕ) (T : ℝ) :
    Continuous (rescaledWave s n T) :=
  continuous_const.mul ((residualWave_continuous s).comp
    (continuous_const.mul continuous_id))

/-- Rescaling preserves the original physical-time integral, with exponent
`2*n+1` from the signed square and the time Jacobian. -/
theorem integral_rescaledWave_sq (s : ℝ) (n : ℕ) {T : ℝ} (hT : 0 < T) :
    (∫ v in (0 : ℝ)..1, rescaledWave s n T v ^ 2) =
      residualEnergy s T / T ^ (2 * n + 1) := by
  rw [show (fun v => rescaledWave s n T v ^ 2) =
    (fun v => ((T ^ n)⁻¹) ^ 2 * residualWave s (T * v) ^ 2) by
      funext v
      rw [rescaledWave, mul_pow]]
  rw [intervalIntegral.integral_const_mul,
    intervalIntegral.integral_comp_mul_left (f := fun u => residualWave s u ^ 2) hT.ne']
  rw [mul_zero, mul_one, smul_eq_mul]
  unfold residualEnergy
  rw [div_eq_mul_inv, pow_succ T (2 * n), show 2 * n = n * 2 by omega,
    pow_mul T n 2, mul_inv_rev, inv_pow]
  ring

/-- The complex exponential with angular frequency `ω`. -/
def oscillation (ω T v : ℝ) : ℂ :=
  Complex.exp (((ω * T * v : ℝ) : ℂ) * Complex.I)

/-- The mode tested by the exponential moments is the physical normalized
wave with its angular frequency removed. -/
theorem rescaledResidualMode_eq (s ω : ℝ) (n : ℕ) {T : ℝ} (hT : 0 < T) (v : ℝ) :
    rescaledResidualMode s ω (n + 1) T v =
      (rescaledWave s n T v : ℂ) * oscillation (-ω) T v := by
  have hTscale : T * T⁻¹ ^ (n + 1) = (T ^ n)⁻¹ := by
    rw [pow_succ, mul_left_comm, mul_inv_cancel₀ hT.ne', mul_one, inv_pow]
  simp only [rescaledResidualMode, rescaledWave, hTscale, Complex.ofReal_mul,
    Complex.ofReal_neg, oscillation]
  congr 1
  apply congrArg Complex.exp
  ring

@[fun_prop]
private theorem continuous_oscillation (ω T : ℝ) : Continuous (oscillation ω T) := by
  unfold oscillation
  fun_prop

/-- Conjugation reverses the angular frequency. -/
theorem star_oscillation (ω T v : ℝ) :
    (starRingEnd ℂ) (oscillation ω T v) = oscillation (-ω) T v := by
  rw [oscillation, ← Complex.exp_conj, map_mul, Complex.conj_ofReal, Complex.conj_I, oscillation]
  push_cast
  congr 1
  ring

private theorem oscillation_mul (ω ν T v : ℝ) :
    oscillation ω T v * oscillation ν T v = oscillation (ω + ν) T v := by
  rw [oscillation, oscillation, oscillation, ← Complex.exp_add]
  push_cast
  congr 1
  ring

/-- Each off-diagonal oscillatory polynomial integral tends to zero. -/
theorem tendsto_integral_power_oscillation (n : ℕ) {ω : ℝ} (hω : ω ≠ 0) :
    Tendsto (fun T : ℝ => ∫ v in (0 : ℝ)..1, (v ^ n : ℂ) * oscillation ω T v)
      atTop (𝓝 0) := by
  let f : ℝ → ℂ := (Ioc (0 : ℝ) 1).indicator (fun v => (v ^ n : ℂ))
  let a : ℝ := -ω / (2 * Real.pi)
  have ha : a ≠ 0 := div_ne_zero (neg_ne_zero.mpr hω) (by positivity)
  have hscale : Tendsto (fun T : ℝ => a * T) atTop (cocompact ℝ) :=
    Filter.tendsto_cocompact_mul_left₀ ha |>.mono_left atTop_le_cocompact
  have h := (Real.tendsto_integral_exp_smul_cocompact f).comp hscale
  apply h.congr'
  exact Filter.Eventually.of_forall fun T => by
    change (∫ v : ℝ, 𝐞 (-(v * (a * T))) • f v) =
      ∫ v in (0 : ℝ)..1, (v ^ n : ℂ) * oscillation ω T v
    rw [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1)]
    have hid (v : ℝ) :
        𝐞 (-(v * (a * T))) • f v =
          (Ioc (0 : ℝ) 1).indicator (fun x => (x ^ n : ℂ) * oscillation ω T x) v := by
      by_cases hv : v ∈ Ioc (0 : ℝ) 1
      · simp only [f, indicator_of_mem hv, Circle.smul_def, Real.fourierChar_apply,
          smul_eq_mul, oscillation]
        rw [mul_comm]
        congr 1
        congr 1
        dsimp only [a]
        push_cast
        field_simp [Real.pi_ne_zero]
      · simp [f, indicator_of_notMem hv]
    simp_rw [hid]
    exact integral_indicator measurableSet_Ioc

def probeAtom (n : ℕ) (ω : ℝ) (c : ℂ) (T v : ℝ) : ℂ :=
  c * (v ^ n : ℂ) * oscillation ω T v

def finiteProbe {ι : Type*} (J : Finset ι) (n : ℕ) (ω : ι → ℝ)
    (c : ι → ℂ) (T v : ℝ) : ℂ :=
  ∑ j ∈ J, probeAtom n (ω j) (c j) T v

private theorem continuous_probeAtom (n : ℕ) (ω : ℝ) (c : ℂ) (T : ℝ) :
    Continuous (probeAtom n ω c T) := by
  unfold probeAtom
  fun_prop

private theorem atom_mul_star_atom (n : ℕ) (ω ν : ℝ) (c d : ℂ) (T v : ℝ) :
    probeAtom n ω c T v * (starRingEnd ℂ) (probeAtom n ν d T v) =
      (c * (starRingEnd ℂ) d) * ((v ^ (2 * n) : ℂ) * oscillation (ω - ν) T v) := by
  simp only [probeAtom, map_mul, map_pow, Complex.conj_ofReal, star_oscillation]
  rw [two_mul, pow_add, sub_eq_add_neg, ← oscillation_mul]
  ring

private theorem integral_re_interval {f : ℝ → ℂ}
    (hf : IntervalIntegrable f volume 0 1) :
    (∫ v in (0 : ℝ)..1, (f v).re) = (∫ v in (0 : ℝ)..1, f v).re := by
  simp only [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1)]
  exact integral_re hf.1

private theorem probeAtom_pair_limit (n : ℕ) (ω ν : ℝ) (c d : ℂ) (hne : ω ≠ ν) :
    Tendsto (fun T : ℝ => ∫ v in (0 : ℝ)..1,
      (probeAtom n ω c T v * (starRingEnd ℂ) (probeAtom n ν d T v)).re)
      atTop (𝓝 0) := by
  have hc := (tendsto_integral_power_oscillation (2 * n) (sub_ne_zero.mpr hne)).const_mul
    (c * (starRingEnd ℂ) d)
  have hr := Complex.continuous_re.continuousAt.tendsto.comp hc
  simp only [mul_zero, Complex.zero_re, Function.comp_def] at hr
  apply hr.congr'
  exact Filter.Eventually.of_forall fun T => by
    simp_rw [atom_mul_star_atom]
    rw [integral_re_interval (hf := (by fun_prop : Continuous (fun v : ℝ =>
      (c * (starRingEnd ℂ) d) * ((v ^ (2 * n) : ℂ) * oscillation (ω - ν) T v))).intervalIntegrable _ _),
      intervalIntegral.integral_const_mul]

private theorem integral_probeAtom_diagonal (n : ℕ) (ω : ℝ) (c : ℂ) (T : ℝ) :
    (∫ v in (0 : ℝ)..1,
        (probeAtom n ω c T v * (starRingEnd ℂ) (probeAtom n ω c T v)).re) =
      ‖c‖ ^ 2 / ((2 * n : ℕ) + (1 : ℝ)) := by
  simp_rw [atom_mul_star_atom, sub_self]
  have hterm (v : ℝ) :
      ((c * (starRingEnd ℂ) c) * ((v ^ (2 * n) : ℂ) * oscillation 0 T v)).re =
        ‖c‖ ^ 2 * v ^ (2 * n) := by
    rw [show oscillation 0 T v = 1 by simp [oscillation], mul_one, Complex.mul_conj']
    rw [← Complex.ofReal_pow, ← Complex.ofReal_pow, ← Complex.ofReal_mul, Complex.ofReal_re]
  simp_rw [hterm]
  rw [intervalIntegral.integral_const_mul, integral_pow]
  simp [div_eq_mul_inv]

/-- A finite sum of modulated polynomial profiles has the diagonal limit
on the original rescaled time interval. The frequency list can include
both signs, with frequency zero included at most once. -/
theorem tendsto_finiteProbe_norm_sq {ι : Type*}
    (J : Finset ι) (n : ℕ) (ω : ι → ℝ) (c : ι → ℂ)
    (hω : Set.InjOn ω (↑J : Set ι)) :
    Tendsto (fun T : ℝ => ∫ v in (0 : ℝ)..1, ‖finiteProbe J n ω c T v‖ ^ 2)
      atTop (𝓝 (∑ j ∈ J, ‖c j‖ ^ 2 / ((2 * n : ℕ) + (1 : ℝ)))) := by
  classical
  let pair (T : ℝ) (i j : ι) (v : ℝ) :=
    (probeAtom n (ω i) (c i) T v * (starRingEnd ℂ) (probeAtom n (ω j) (c j) T v)).re
  have hcont (T : ℝ) (i j : ι) : Continuous (pair T i j) :=
    Complex.continuous_re.comp ((continuous_probeAtom n (ω i) (c i) T).mul
      ((Complex.continuous_conj).comp (continuous_probeAtom n (ω j) (c j) T)))
  let d (i : ι) := ‖c i‖ ^ 2 / ((2 * n : ℕ) + (1 : ℝ))
  have hp (i : ι) (hi : i ∈ J) (j : ι) (hj : j ∈ J) :
      Tendsto (fun T : ℝ => ∫ v in (0 : ℝ)..1, pair T i j v)
        atTop (𝓝 (if i = j then d i else 0)) := by
    by_cases hij : i = j
    · subst j
      rw [ite_eq_left rfl]
      simpa only [pair, integral_probeAtom_diagonal] using (tendsto_const_nhds (x := d i))
    · rw [ite_eq_right hij]
      exact probeAtom_pair_limit n (ω i) (ω j) (c i) (c j)
        (fun h => hij (hω hi hj h))
  have hlim := tendsto_finsetSum J fun i hi => tendsto_finsetSum J (hp i hi)
  have hdiag : (∑ i ∈ J, ∑ j ∈ J, if i = j then d i else 0) = ∑ i ∈ J, d i := by
    apply Finset.sum_congr rfl
    intro i hi
    simp [Finset.sum_ite_eq, hi]
  rw [hdiag] at hlim
  apply hlim.congr'
  exact Filter.Eventually.of_forall fun T => by
    change (∑ i ∈ J, ∑ j ∈ J, ∫ v in (0 : ℝ)..1, pair T i j v) = _
    calc
      _ = ∑ i ∈ J, ∫ v in (0 : ℝ)..1, ∑ j ∈ J, pair T i j v := by
        apply Finset.sum_congr rfl
        intro i _
        rw [intervalIntegral.integral_finsetSum (fun j _ => (hcont T i j).intervalIntegrable _ _)]
      _ = ∫ v in (0 : ℝ)..1, ∑ i ∈ J, ∑ j ∈ J, pair T i j v :=
        (intervalIntegral.integral_finsetSum
          (fun i _ => (continuous_finsetSum J fun j _ => hcont T i j).intervalIntegrable _ _)).symm
      _ = _ := by
        apply intervalIntegral.integral_congr
        intro v _
        change (∑ i ∈ J, ∑ j ∈ J, pair T i j v) = ‖finiteProbe J n ω c T v‖ ^ 2
        have h := congrArg Complex.re (Complex.mul_conj' (finiteProbe J n ω c T v))
        simp only [Complex.ofReal_re, ← Complex.ofReal_pow] at h
        rw [← h]
        simp only [finiteProbe, pair, map_sum]
        rw [Finset.sum_mul]
        simp only [Finset.mul_sum, Complex.re_sum]

/-- Localized pairings with the individual modes imply the global normalized
lower bound by subtracting the nonnegative square of the approximation
error. The pairing limits are explicit hypotheses. -/
theorem liminf_normalizedEnergy_of_localizedPairings {ι : Type*}
    (s : ℝ) (n : ℕ) (J : Finset ι) (ω : ι → ℝ) (c : ι → ℂ)
    (hω : Set.InjOn ω (↑J : Set ι))
    (hPairing : ∀ j ∈ J, Tendsto (fun T : ℝ => ∫ v in (0 : ℝ)..1,
      ((rescaledWave s n T v : ℂ) * (starRingEnd ℂ) (probeAtom n (ω j) (c j) T v)).re)
      atTop (𝓝 (‖c j‖ ^ 2 / ((2 * n : ℕ) + (1 : ℝ))))) :
    ((∑ j ∈ J, ‖c j‖ ^ 2 / ((2 * n : ℕ) + (1 : ℝ)) : ℝ) : EReal) ≤
      liminf (fun T : ℝ => ((residualEnergy s T / T ^ (2 * n + 1) : ℝ) : EReal)) atTop := by
  classical
  let wave := rescaledWave s n
  let atom := fun j => probeAtom n (ω j) (c j)
  let probe := finiteProbe J n ω c
  let pair (T v : ℝ) := ((wave T v : ℂ) * (starRingEnd ℂ) (probe T v)).re
  let pairAtom (j : ι) (T v : ℝ) :=
    ((wave T v : ℂ) * (starRingEnd ℂ) (atom j T v)).re
  have hcont (T : ℝ) (f : ℝ → ℂ) (hf : Continuous f) :
      Continuous (fun v => ((wave T v : ℂ) * (starRingEnd ℂ) (f v)).re) :=
    Complex.continuous_re.comp ((Complex.continuous_ofReal.comp (rescaledWave_continuous s n T)).mul
      (Complex.continuous_conj.comp hf))
  have hAtom (j : ι) (T : ℝ) : Continuous (atom j T) :=
    continuous_probeAtom n (ω j) (c j) T
  have hProbe (T : ℝ) : Continuous (probe T) :=
    continuous_finsetSum J fun j _ => hAtom j T
  let Q : ℝ := ∑ j ∈ J, ‖c j‖ ^ 2 / ((2 * n : ℕ) + (1 : ℝ))
  have hp : Tendsto (fun T : ℝ => ∫ v in (0 : ℝ)..1, pair T v) atTop (𝓝 Q) := by
    apply (tendsto_finsetSum J hPairing).congr'
    exact Filter.Eventually.of_forall fun T => by
      change (∑ j ∈ J, ∫ v in (0 : ℝ)..1, pairAtom j T v) = _
      rw [← intervalIntegral.integral_finsetSum
        (fun j _ => (hcont T (atom j T) (hAtom j T)).intervalIntegrable 0 1)]
      apply intervalIntegral.integral_congr
      intro v _
      simp only [pair, probe, finiteProbe, map_sum, Finset.mul_sum, Complex.re_sum, atom]
  let H (T : ℝ) := 2 * (∫ v in (0 : ℝ)..1, pair T v) -
    ∫ v in (0 : ℝ)..1, ‖probe T v‖ ^ 2
  have hn : Tendsto (fun T : ℝ => ∫ v in (0 : ℝ)..1, ‖probe T v‖ ^ 2) atTop (𝓝 Q) :=
    tendsto_finiteProbe_norm_sq J n ω c hω
  have hH : Tendsto H atTop (𝓝 Q) := by
    have heq : 2 * Q - Q = Q := by ring
    rw [← heq]
    exact (hp.const_mul 2).sub hn
  have hle : ∀ᶠ T in atTop, (H T : EReal) ≤
      ((residualEnergy s T / T ^ (2 * n + 1) : ℝ) : EReal) := by
    filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
    apply EReal.coe_le_coe_iff.2
    have hfp : Continuous (pair T) := hcont T (probe T) (hProbe T)
    have hfn : Continuous (fun v => ‖probe T v‖ ^ 2) := (hProbe T).norm.pow _
    have hfl : Continuous (fun v => 2 * pair T v - ‖probe T v‖ ^ 2) :=
      (continuous_const.mul hfp).sub hfn
    have hfr : Continuous (fun v => wave T v ^ 2) := (rescaledWave_continuous s n T).pow _
    rw [← integral_rescaledWave_sq s n hT]
    have hb := intervalIntegral.integral_mono_on (μ := volume) (by norm_num : (0 : ℝ) ≤ 1)
      (hfl.intervalIntegrable 0 1) (hfr.intervalIntegrable 0 1) (fun v _ => by
        simp only [pair, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero,
          Complex.conj_re, ← Complex.normSq_eq_norm_sq, Complex.normSq_apply]
        nlinarith [sq_nonneg (wave T v - (probe T v).re), sq_nonneg (probe T v).im])
    have hs : IntervalIntegrable (fun v => 2 * pair T v) volume 0 1 :=
      (continuous_const.mul hfp).intervalIntegrable 0 1
    rwa [intervalIntegral.integral_sub hs (hfn.intervalIntegrable 0 1),
      intervalIntegral.integral_const_mul] at hb
  have hc : Tendsto (fun T => (H T : EReal)) atTop (𝓝 (Q : EReal)) :=
    continuous_coe_real_ereal.continuousAt.tendsto.comp hH
  change (Q : EReal) ≤ _
  rw [← hc.liminf_eq]
  exact liminf_le_liminf hle

private theorem pairing_conjugate_frequency (s : ℝ) (n : ℕ) (ω : ℝ) (c : ℂ)
    (T v : ℝ) :
    ((rescaledWave s n T v : ℂ) *
      (starRingEnd ℂ) (probeAtom n (-ω) ((starRingEnd ℂ) c) T v)).re =
      ((rescaledWave s n T v : ℂ) * (starRingEnd ℂ) (probeAtom n ω c T v)).re := by
  have hprobe :
      (starRingEnd ℂ) (probeAtom n ω c T v) =
        probeAtom n (-ω) ((starRingEnd ℂ) c) T v := by
    simp only [probeAtom, map_mul, map_pow, Complex.conj_ofReal, star_oscillation]
  rw [← hprobe, Complex.conj_conj]
  simpa only [map_mul, Complex.conj_ofReal] using
    (Complex.conj_re ((rescaledWave s n T v : ℂ) * probeAtom n ω c T v)).symm

/-- A finite family of distinct positive frequencies contributes both signs
to the energy coefficient. The real wave supplies the negative-frequency
pairings by conjugation. -/
theorem liminf_normalizedEnergy_of_positivePairings {ι : Type*}
    (s : ℝ) (n : ℕ) (J : Finset ι) (ω : ι → ℝ) (c : ι → ℂ)
    (hpos : ∀ j ∈ J, 0 < ω j)
    (hω : Set.InjOn ω (↑J : Set ι))
    (hPairing : ∀ j ∈ J, Tendsto (fun T : ℝ => ∫ v in (0 : ℝ)..1,
      ((rescaledWave s n T v : ℂ) * (starRingEnd ℂ) (probeAtom n (ω j) (c j) T v)).re)
      atTop (𝓝 (‖c j‖ ^ 2 / ((2 * n : ℕ) + (1 : ℝ))))) :
    ((2 * ∑ j ∈ J, ‖c j‖ ^ 2 / ((2 * n : ℕ) + (1 : ℝ)) : ℝ) : EReal) ≤
      liminf (fun T : ℝ => ((residualEnergy s T / T ^ (2 * n + 1) : ℝ) : EReal)) atTop := by
  classical
  let K : Finset (Bool × ι) := Finset.univ ×ˢ J
  let ω' (j : Bool × ι) := if j.1 then -ω j.2 else ω j.2
  let c' (j : Bool × ι) := if j.1 then (starRingEnd ℂ) (c j.2) else c j.2
  have hω' : Set.InjOn ω' (↑K : Set (Bool × ι)) := by
    rintro ⟨a, i⟩ hi ⟨b, j⟩ hj heq
    have hi' : i ∈ J := (Finset.mem_product.mp hi).2
    have hj' : j ∈ J := (Finset.mem_product.mp hj).2
    cases a <;> cases b
    · exact Prod.ext rfl (hω hi' hj' (by simpa only [ω', Bool.false_eq_true, ite_false] using heq))
    · have h : ω i = -ω j := by simpa only [ω', Bool.false_eq_true, ite_false, ite_true] using heq
      linarith [hpos i hi', hpos j hj']
    · have h : -ω i = ω j := by simpa only [ω', Bool.false_eq_true, ite_false, ite_true] using heq
      linarith [hpos i hi', hpos j hj']
    · exact Prod.ext rfl (hω hi' hj' (neg_injective (by simpa only [ω', ite_true] using heq)))
  have hp : ∀ j ∈ K, Tendsto (fun T : ℝ => ∫ v in (0 : ℝ)..1,
      ((rescaledWave s n T v : ℂ) * (starRingEnd ℂ) (probeAtom n (ω' j) (c' j) T v)).re)
      atTop (𝓝 (‖c' j‖ ^ 2 / ((2 * n : ℕ) + (1 : ℝ)))) := by
    rintro ⟨b, j⟩ hj
    have hj' : j ∈ J := (Finset.mem_product.mp hj).2
    cases b
    · exact hPairing j hj'
    · simp only [ω', c', ite_true, Complex.norm_conj]
      simp_rw [pairing_conjugate_frequency]
      exact hPairing j hj'
  have h := liminf_normalizedEnergy_of_localizedPairings s n K ω' c' hω' hp
  simpa [K, Finset.sum_product, Fintype.sum_bool, c', Complex.norm_conj, two_mul] using h

end GRWTSK.NumberTheory.Moebius.GaussianSignedResidualFiniteProjection
