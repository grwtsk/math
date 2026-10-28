/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib and imported GRWTSK sources retain their upstream licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupRadicalPhaseReturn
import GRWTSK.Analysis.IntegralInequalities.VolterraEnergyBound

/-!
# Actual causal phase reconstruction

The birth derivative, including n=1, is retained in an explicit primitive.
The source Volterra return is derived by the fundamental theorem of calculus;
it is not a certificate field. The following uniform energy comparison uses
that same return. SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped Interval BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupPhaseTransport
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupPhaseQuadratic
open GRWTSK.NumberTheory.Moebius.PickupRadicalPhaseReturn
open GRWTSK.Analysis.IntegralInequalities.VolterraEnergyBound

/-- Smooth formula above birth; used only with its explicit causal guard. -/
def smoothResponse (n : ℕ) (v : ℝ) : ℝ :=
  2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-v / 2))

def decay (u v : ℝ) : ℝ := Real.exp (-(u - v) / 2)
def green (u v : ℝ) : ℝ := 2 * (1 - decay u v)
def node (T v : ℝ) : ℝ := Real.exp (v - T)
def phaseFunction (T τ v : ℝ) : ℂ :=
  Complex.exp (Complex.I * (τ : ℂ) * (node T v : ℂ))
def phaseFirst (T τ v : ℝ) : ℂ :=
  Complex.I * (τ : ℂ) * (node T v : ℂ) * phaseFunction T τ v
def phaseSecond (T τ v : ℝ) : ℂ :=
  (Complex.I * (τ : ℂ) * (node T v : ℂ) - (τ : ℂ)^2 * (node T v : ℂ)^2) *
    phaseFunction T τ v

def transportKernel (T τ u v : ℝ) : ℂ :=
  (green u v : ℂ) * phaseSecond T τ v -
    (1 + (decay u v : ℂ)) * phaseFirst T τ v

def boundaryPrimitive (n : ℕ) (T τ u v : ℝ) : ℂ :=
  (green u v : ℂ) * phaseFunction T τ v * (Real.exp (-v / 2) : ℂ) +
    (phaseFunction T τ v - (green u v : ℂ) * phaseFirst T τ v) *
      (smoothResponse n v : ℂ)

theorem smoothResponse_derivative (n : ℕ) (v : ℝ) :
    HasDerivAt (smoothResponse n) (Real.exp (-v / 2)) v := by
  convert (((((hasDerivAt_id v).neg).div_const 2).exp).const_sub
    ((Real.sqrt (n : ℝ))⁻¹)).const_mul 2 using 1 <;>
    simp [smoothResponse] <;> ring

theorem green_derivative (u v : ℝ) :
    HasDerivAt (green u) (-decay u v) v := by
  convert (((((hasDerivAt_id v).const_sub u).neg.div_const 2).exp).const_sub 1).const_mul 2
    using 1 <;> simp [green, decay] <;> ring

theorem phaseFunction_derivative (T τ v : ℝ) :
    HasDerivAt (phaseFunction T τ) (phaseFirst T τ v) v := by
  have hd := (((((hasDerivAt_id v).sub_const T).exp).ofReal_comp).const_mul
    (Complex.I * (τ : ℂ))).cexp
  convert hd using 1 <;> simp only [phaseFunction, phaseFirst, node, id_eq] <;> ring

theorem phaseFirst_derivative (T τ v : ℝ) :
    HasDerivAt (phaseFirst T τ) (phaseSecond T τ v) v := by
  have hx := (((hasDerivAt_id v).sub_const T).exp).ofReal_comp
  have hd := (hx.const_mul (Complex.I * (τ : ℂ))).mul (phaseFunction_derivative T τ v)
  convert hd using 1 <;> simp only [phaseFirst, phaseSecond, phaseFunction, node, id_eq] <;>
    ring_nf <;> simp [Complex.I_sq]

/-- Exact integration-by-parts primitive; no jump has been integrated away. -/
theorem boundaryPrimitive_derivative (n : ℕ) (T τ u v : ℝ) :
    HasDerivAt (boundaryPrimitive n T τ u)
      (-(transportKernel T τ u v * (smoothResponse n v : ℂ))) v := by
  have hg := (green_derivative u v).ofReal_comp
  have hq := phaseFunction_derivative T τ v
  have hq1 := phaseFirst_derivative T τ v
  have hr := (smoothResponse_derivative n v).ofReal_comp
  have he := ((((hasDerivAt_id v).neg).div_const 2).exp).ofReal_comp
  have hd := ((hg.mul hq).mul he).add ((hq.sub (hg.mul hq1)).mul hr)
  convert hd using 1 <;>
    simp only [boundaryPrimitive, transportKernel, Complex.ofReal_neg,
      Complex.ofReal_mul, Complex.ofReal_div, Complex.ofReal_ofNat, id_eq] <;>
    unfold green <;> push_cast <;> ring

theorem smoothResponse_at_birth {n : ℕ} (hn : 1 ≤ n) :
    smoothResponse n (Real.log n) = 0 := by
  simp only [smoothResponse, pickup_exp_negative_log_half hn, sub_self, mul_zero]

theorem green_birth_response {n : ℕ} (hn : 1 ≤ n) (u : ℝ) :
    green u (Real.log n) * Real.exp (-Real.log n / 2) = smoothResponse n u := by
  have he : decay u (Real.log n) * Real.exp (-Real.log n / 2) = Real.exp (-u / 2) := by
    rw [decay, ← Real.exp_add]
    congr 1
    ring
  rw [pickup_exp_negative_log_half hn] at he
  unfold green smoothResponse
  nlinarith

/-- The finite birth identity holds before passing to the causal interval. -/
theorem smooth_birth_transport {n : ℕ} (hn : 1 ≤ n) (T τ u : ℝ) :
    phaseFunction T τ (Real.log n) * (smoothResponse n u : ℂ) =
      phaseFunction T τ u * (smoothResponse n u : ℂ) +
        ∫ v in (Real.log n)..u, transportKernel T τ u v * (smoothResponse n v : ℂ) := by
  have hi : IntervalIntegrable
      (fun v => -(transportKernel T τ u v * (smoothResponse n v : ℂ))) volume
      (Real.log n) u :=
    (by unfold transportKernel green decay phaseFirst phaseSecond phaseFunction node smoothResponse
        fun_prop : Continuous
          (fun v => -(transportKernel T τ u v * (smoothResponse n v : ℂ)))).intervalIntegrable _ _
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun v _ => boundaryPrimitive_derivative n T τ u v) hi
  have hup : boundaryPrimitive n T τ u u = phaseFunction T τ u * (smoothResponse n u : ℂ) := by
    simp [boundaryPrimitive, green, decay]
  have hbirth : boundaryPrimitive n T τ u (Real.log n) =
      phaseFunction T τ (Real.log n) * (smoothResponse n u : ℂ) := by
    rw [boundaryPrimitive, smoothResponse_at_birth hn, Complex.ofReal_zero,
      mul_zero, add_zero]
    have hb := congrArg (fun x : ℝ => (x : ℂ)) (green_birth_response hn u)
    push_cast at hb
    calc
      _ = phaseFunction T τ (Real.log n) *
          ((green u (Real.log n) : ℂ) * (Real.exp (-Real.log n / 2) : ℂ)) := by ring
      _ = _ := by rw [hb]
  rw [intervalIntegral.integral_neg, hup, hbirth] at he
  linear_combination he

/-- Causal reconstruction, with n=1 and zero-width birth intervals included. -/
theorem response_transport {n : ℕ} (hn : 1 ≤ n) (T τ u : ℝ) (hu : 0 ≤ u) :
    phaseFunction T τ (Real.log n) * (pickupResponse n u : ℂ) =
      phaseFunction T τ u * (pickupResponse n u : ℂ) +
        ∫ v in (0 : ℝ)..u, transportKernel T τ u v * (pickupResponse n v : ℂ) := by
  have hb : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  have hc : Continuous (fun v => transportKernel T τ u v * (pickupResponse n v : ℂ)) := by
    have hr := Complex.continuous_ofReal.comp (pickupResponse_continuous hn)
    apply Continuous.mul _ hr
    unfold transportKernel green decay phaseFirst phaseSecond phaseFunction node
    fun_prop
  by_cases hbu : Real.log (n : ℝ) ≤ u
  · have he := smooth_birth_transport hn T τ u
    have hzero : (∫ v in (0 : ℝ)..(Real.log n),
        transportKernel T τ u v * (pickupResponse n v : ℂ)) = 0 := by
      calc
        _ = ∫ v in (0 : ℝ)..Real.log n, (0 : ℂ) := by
          apply intervalIntegral.integral_congr
          intro v hv
          have hv' : v ∈ Set.Icc 0 (Real.log n) := (Set.uIcc_of_le hb) ▸ hv
          rw [response_zero_before_birth hn hv'.2, Complex.ofReal_zero, mul_zero]
        _ = 0 := intervalIntegral.integral_zero
    have hsplit := intervalIntegral.integral_add_adjacent_intervals
      (hc.intervalIntegrable 0 (Real.log n)) (hc.intervalIntegrable (Real.log n) u)
    rw [hzero, zero_add] at hsplit
    have hsame : (∫ v in (Real.log n)..u,
        transportKernel T τ u v * (pickupResponse n v : ℂ)) =
        ∫ v in (Real.log n)..u,
          transportKernel T τ u v * (smoothResponse n v : ℂ) := by
      apply intervalIntegral.integral_congr
      intro v hv
      have hv' : v ∈ Set.Icc (Real.log n) u := (Set.uIcc_of_le hbu) ▸ hv
      simp only [pickupResponse, if_pos hv'.1, smoothResponse]
    rw [← hsplit, hsame]
    simpa only [pickupResponse, if_pos hbu, smoothResponse] using he
  · have hz : pickupResponse n u = 0 := response_zero_before_birth hn (le_of_not_ge hbu)
    rw [hz, Complex.ofReal_zero, mul_zero, mul_zero, zero_add]
    symm
    calc
      _ = ∫ v in (0 : ℝ)..u, (0 : ℂ) := by
        apply intervalIntegral.integral_congr
        intro v hv
        have hv' : v ∈ Set.Icc 0 u := (Set.uIcc_of_le hu) ▸ hv
        rw [response_zero_before_birth hn (hv'.2.trans (le_of_not_ge hbu)),
          Complex.ofReal_zero, mul_zero]
      _ = 0 := intervalIntegral.integral_zero

/-- The smooth phase at each birth is exactly the original arithmetic label. -/
theorem phase_at_birth {n : ℕ} (hn : 1 ≤ n) (T τ : ℝ) :
    phaseFunction T τ (Real.log n) =
      Complex.exp (Complex.I * (τ * (n : ℝ) * Real.exp (-T) : ℝ)) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  unfold phaseFunction node
  rw [sub_eq_add_neg, Real.exp_add, Real.exp_log hn0]
  congr 1
  push_cast
  ring

/-- Arbitrary complex coefficients; the same finite inventory is used throughout. -/
def waveform (S : Finset ℕ) (a : ℕ → ℂ) (u : ℝ) : ℂ :=
  ∑ n ∈ S, a n * (pickupResponse n u : ℂ)

def twisted (T τ : ℝ) (a : ℕ → ℂ) (n : ℕ) : ℂ :=
  a n * Complex.exp (Complex.I * (τ * (n : ℝ) * Real.exp (-T) : ℝ))

theorem waveform_continuous (S : Finset ℕ) (hS : ∀ n ∈ S, 1 ≤ n) (a : ℕ → ℂ) :
    Continuous (waveform S a) := by
  apply continuous_finsetSum
  intro n hn
  exact continuous_const.mul (Complex.continuous_ofReal.comp (pickupResponse_continuous (hS n hn)))

theorem waveform_transport (S : Finset ℕ) (hS : ∀ n ∈ S, 1 ≤ n)
    (a : ℕ → ℂ) (T τ u : ℝ) (hu : 0 ≤ u) :
    waveform S (twisted T τ a) u = phaseFunction T τ u * waveform S a u +
      ∫ v in (0 : ℝ)..u, transportKernel T τ u v * waveform S a v := by
  have he (n : ℕ) (hn : n ∈ S) :
      Complex.exp (Complex.I * (τ * (n : ℝ) * Real.exp (-T) : ℝ)) *
        (pickupResponse n u : ℂ) =
      phaseFunction T τ u * (pickupResponse n u : ℂ) +
        ∫ v in (0 : ℝ)..u, transportKernel T τ u v * (pickupResponse n v : ℂ) := by
    simpa only [phase_at_birth (hS n hn)] using response_transport (hS n hn) T τ u hu
  unfold waveform twisted
  rw [Finset.mul_sum]
  have hsum : (∫ v in (0 : ℝ)..u,
      transportKernel T τ u v * ∑ n ∈ S, a n * (pickupResponse n v : ℂ)) =
      ∑ n ∈ S, a n * (∫ v in (0 : ℝ)..u,
        transportKernel T τ u v * (pickupResponse n v : ℂ)) := by
    simp_rw [Finset.mul_sum]
    rw [intervalIntegral.integral_finsetSum]
    · apply Finset.sum_congr rfl
      intro n _
      calc
        _ = ∫ v in (0 : ℝ)..u, a n *
            (transportKernel T τ u v * (pickupResponse n v : ℂ)) := by
          apply intervalIntegral.integral_congr
          intro v _
          ring
        _ = _ := intervalIntegral.integral_const_mul _ _
    · intro n hn
      apply Continuous.intervalIntegrable
      have hr := Complex.continuous_ofReal.comp (pickupResponse_continuous (hS n hn))
      apply Continuous.mul _ (continuous_const.mul hr)
      unfold transportKernel green decay phaseFirst phaseSecond phaseFunction node
      fun_prop
  rw [hsum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  linear_combination (a n) * (he n hn)


theorem phaseFunction_norm (T τ v : ℝ) : ‖phaseFunction T τ v‖ = 1 := by
  simp [phaseFunction, Complex.norm_exp, Complex.mul_re, Complex.mul_im]

theorem transportKernel_formula (T τ u v : ℝ) :
    transportKernel T τ u v = phaseFunction T τ v *
      (Complex.I * (τ : ℂ) * (node T v : ℂ) * (1 - 3 * (decay u v : ℂ)) -
        2 * (τ : ℂ)^2 * (node T v : ℂ)^2 * (1 - (decay u v : ℂ))) := by
  unfold transportKernel phaseFirst phaseSecond green
  push_cast
  ring

/-- The estimate is independent of the number or values of the source coefficients. -/
theorem transportKernel_bound (T τ u v : ℝ) (hτ : |τ| ≤ 1)
    (hvu : v ≤ u) (hvT : v ≤ T) :
    ‖transportKernel T τ u v‖ ≤ 4 * Real.exp (v - T) := by
  have hx : 0 < node T v := Real.exp_pos _
  have hx1 : node T v ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
  have hs : 0 < decay u v := Real.exp_pos _
  have hs1 : decay u v ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
  have hfirst : |1 - 3 * decay u v| ≤ 2 := by rw [abs_le]; constructor <;> linarith
  have hsecond : |1 - decay u v| ≤ 1 := by rw [abs_le]; constructor <;> linarith
  rw [transportKernel_formula, norm_mul, phaseFunction_norm, one_mul]
  have hn := norm_sub_le
    (Complex.I * (τ : ℂ) * (node T v : ℂ) * (1 - 3 * (decay u v : ℂ)))
    (2 * (τ : ℂ)^2 * (node T v : ℂ)^2 * (1 - (decay u v : ℂ)))
  have hnorm1 :
      ‖Complex.I * (τ : ℂ) * (node T v : ℂ) * (1 - 3 * (decay u v : ℂ))‖ =
        |τ| * node T v * |1 - 3 * decay u v| := by
    have he : (1 - 3 * (decay u v : ℂ)) = ((1 - 3 * decay u v : ℝ) : ℂ) := by push_cast; rfl
    rw [he]
    simp [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hx]
  have hnorm2 :
      ‖2 * (τ : ℂ)^2 * (node T v : ℂ)^2 * (1 - (decay u v : ℂ))‖ =
        2 * |τ|^2 * (node T v)^2 * |1 - decay u v| := by
    have he : (1 - (decay u v : ℂ)) = ((1 - decay u v : ℝ) : ℂ) := by push_cast; rfl
    rw [he]
    simp [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hx]
  rw [hnorm1, hnorm2] at hn
  have hτsq : |τ|^2 ≤ 1 := by nlinarith [abs_nonneg τ]
  have hxSq : (node T v)^2 ≤ node T v := by nlinarith
  have hτx : |τ| * node T v ≤ node T v := by
    simpa only [one_mul] using mul_le_mul_of_nonneg_right hτ hx.le
  have h1 := mul_le_mul hτx hfirst (abs_nonneg _) hx.le
  have h2a := mul_le_mul hτsq hxSq (sq_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
  have h2 := mul_le_mul_of_nonneg_right h2a (abs_nonneg (1 - decay u v))
  have h2b := mul_le_mul_of_nonneg_left hsecond hx.le
  change _ ≤ 4 * node T v
  nlinarith

/-- The actual compact-interval source comparison, with no reconstruction premise. -/
theorem waveform_energy_le_nine (S : Finset ℕ) (hS : ∀ n ∈ S, 1 ≤ n)
    (a : ℕ → ℂ) (T τ : ℝ) (hT : 0 ≤ T) (hτ : |τ| ≤ 1) :
    (∫ u in (0 : ℝ)..T, ‖waveform S (twisted T τ a) u‖^2) ≤
      9 * (∫ u in (0 : ℝ)..T, ‖waveform S a u‖^2) := by
  apply energy_le_nine T hT (waveform S a) (waveform S (twisted T τ a))
    (phaseFunction T τ) (transportKernel T τ)
    (waveform_continuous S hS a) (waveform_continuous S hS _)
    (by unfold phaseFunction node; fun_prop)
    (by intro u; unfold transportKernel green decay phaseFirst phaseSecond phaseFunction node; fun_prop)
    (fun u _ => phaseFunction_norm T τ u)
  · intro u hu v hv
    exact transportKernel_bound T τ u v hτ hv.2 (hv.2.trans hu.2)
  · intro u hu
    exact waveform_transport S hS a T τ u hu.1

theorem twisted_zero (T : ℝ) (a : ℕ → ℂ) : twisted T 0 a = a := by
  funext n
  simp [twisted]

theorem twisted_add (T τ σ : ℝ) (a : ℕ → ℂ) :
    twisted T σ (twisted T τ a) = twisted T (τ + σ) a := by
  funext n
  unfold twisted
  rw [mul_assoc, ← Complex.exp_add]
  congr 2
  push_cast
  ring

/-- Reversibility is applied to the same coefficients after twisting, not a new source. -/
theorem waveform_energy_comparison (S : Finset ℕ) (hS : ∀ n ∈ S, 1 ≤ n)
    (a : ℕ → ℂ) (T τ : ℝ) (hT : 0 ≤ T) (hτ : |τ| ≤ 1) :
    (∫ u in (0 : ℝ)..T, ‖waveform S a u‖^2) ≤
        9 * (∫ u in (0 : ℝ)..T, ‖waveform S (twisted T τ a) u‖^2) ∧
    (∫ u in (0 : ℝ)..T, ‖waveform S (twisted T τ a) u‖^2) ≤
        9 * (∫ u in (0 : ℝ)..T, ‖waveform S a u‖^2) := by
  refine ⟨?_, waveform_energy_le_nine S hS a T τ hT hτ⟩
  have h := waveform_energy_le_nine S hS (twisted T τ a) T (-τ) hT (by simpa using hτ)
  simpa only [twisted_add, add_neg_cancel, twisted_zero] using h

/-- Real and imaginary coordinates are those of the already defined source waveform. -/
theorem complex_source_coordinates (T τ u : ℝ) :
    (waveform (Finset.Icc 1 ⌊Real.exp T⌋₊)
      (twisted T τ (fun n => (moebiusReal n : ℂ))) u).re = realWave T τ u ∧
    (waveform (Finset.Icc 1 ⌊Real.exp T⌋₊)
      (twisted T τ (fun n => (moebiusReal n : ℂ))) u).im = imagWave T τ u := by
  constructor <;> simp [waveform, twisted, realWave, imagWave, phase,
    Complex.exp_re, Complex.exp_im, Complex.mul_re, Complex.mul_im]

theorem source_energy_complex (T τ : ℝ) :
    (∫ u in (0 : ℝ)..T, ‖waveform (Finset.Icc 1 ⌊Real.exp T⌋₊)
      (twisted T τ (fun n => (moebiusReal n : ℂ))) u‖^2) = phaseEnergy T τ := by
  apply intervalIntegral.integral_congr
  intro u _
  rw [Complex.sq_norm]
  obtain ⟨hr, hi⟩ := complex_source_coordinates T τ u
  simp only [Complex.normSq_apply, hr, hi]
  ring

/-- The former observation comparison is now derived for the literal pickup. -/
theorem phaseEnergy_comparison {T : ℝ} (hT : 0 ≤ T) (τ : ℝ) (hτ : |τ| ≤ 1) :
    pickupEnergy T ≤ 9 * phaseEnergy T τ ∧ phaseEnergy T τ ≤ 9 * pickupEnergy T := by
  have h := waveform_energy_comparison (Finset.Icc 1 ⌊Real.exp T⌋₊)
    (fun n hn => (Finset.mem_Icc.mp hn).1) (fun n => (moebiusReal n : ℂ)) T τ hT hτ
  have hzero : (∫ u in (0 : ℝ)..T, ‖waveform (Finset.Icc 1 ⌊Real.exp T⌋₊)
      (fun n => (moebiusReal n : ℂ)) u‖^2) = pickupEnergy T := by
    have he := source_energy_complex T 0
    simpa only [twisted_zero, phaseEnergy_zero hT] using he
  simp only [source_energy_complex, hzero] at h
  exact h

/-- Both inequalities are averaged on a fixed normalized phase interval. -/
theorem phaseAverage_comparison {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T ≤ 9 * phaseAverage T ∧ phaseAverage T ≤ 9 * pickupEnergy T := by
  have h1 := intervalIntegral.integral_mono_on (by norm_num : (-1 : ℝ) ≤ 1)
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => pickupEnergy T) volume (-1) 1)
    ((continuous_const.mul (phaseEnergy_continuous T)).intervalIntegrable _ _)
    (fun τ hτ => (phaseEnergy_comparison hT τ (abs_le.mpr hτ)).1)
  have h2 := intervalIntegral.integral_mono_on (by norm_num : (-1 : ℝ) ≤ 1)
    ((phaseEnergy_continuous T).intervalIntegrable _ _)
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => 9 * pickupEnergy T) volume (-1) 1)
    (fun τ hτ => (phaseEnergy_comparison hT τ (abs_le.mpr hτ)).2)
  rw [intervalIntegral.integral_const, intervalIntegral.integral_const_mul] at h1
  rw [intervalIntegral.integral_const] at h2
  simp only [sub_neg_eq_add, one_add_one_eq_two, smul_eq_mul] at h1 h2
  unfold phaseAverage average
  constructor <;> linarith

end GRWTSK.NumberTheory.Moebius.PickupPhaseTransport
