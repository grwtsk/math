/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineForm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPoleMoment
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineParseval
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# The bounded physical output of the odd bordered Weil form

The prime term from Connes–Consani–Moscovici, arXiv:2511.22755v1, (3.19)–(3.20)
includes both shifts of each supported prime power. Lebesgue translation
moves the backward shift to the test function, giving the two literal sine
correlations. The finite inventory of shifts preserves L². Window restriction
and the bounded sinh profile preserve L² for the physical output of the
bordered form. Reflection exchanges the two prime orientations, so they
preserve oddness together. The constant shift is physical, and the pole
column is the retained scalar times the sinh profile.

For a supported L² test the window indicator can be removed from the
pairing. Testing on a sine basis element gives the literal prime matrix
entry and the previously evaluated sinh coefficient. This concerns the
bounded terms of the odd physical output. The gamma pairing, the scalar
output, and the full-domain return are separate. Independent analytical
review and novelty assessment remain NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Filter

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddPrimePoleOutput

open OddRootProjection LowSchur OddSineParseval OddShiftEnergy OddSineForm OddPoleMoment OddOutputTrace

/-- Both orientations of every supported prime-power shift. -/
def primeOutput (T : ℝ) (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  ∑ q ∈ activePrimePowers T,
    primeWeight q * (f (t + Real.log q) + f (t - Real.log q))

private def sinhWindow (T : ℝ) : ℝ → ℝ :=
  (Icc (-T) T).indicator (fun t => Real.sinh (t / 2))

/-- The bounded terms in the physical output of the shifted bordered form. -/
def primePoleOutput (T β : ℝ) (f : ℝ → ℝ) (a : ℝ) : ℝ → ℝ :=
  (Icc (-T) T).indicator (fun t =>
    (gammaConstant 1 0 - β) * f t - primeOutput T f t + a * Real.sinh (t / 2))

theorem primePoleOutput_eq_zero_of_not_mem (T β : ℝ) (f : ℝ → ℝ) (a t : ℝ)
    (ht : t ∉ Icc (-T) T) : primePoleOutput T β f a t = 0 := by
  simp [primePoleOutput, ht]

private theorem memLp_translate {f : ℝ → ℝ} (hf : MemLp f 2 volume) (r : ℝ) :
    MemLp (fun t => f (t + r)) 2 volume :=
  hf.comp_measurePreserving (measurePreserving_add_right volume r)

private theorem memLp_two_shifts {f : ℝ → ℝ} (hf : MemLp f 2 volume) (r : ℝ) :
    MemLp (fun t => f (t + r) + f (t - r)) 2 volume := by
  have h := (memLp_translate hf r).add (memLp_translate hf (-r))
  convert h using 1

theorem memLp_primeOutput (T : ℝ) {f : ℝ → ℝ} (hf : MemLp f 2 volume) :
    MemLp (primeOutput T f) 2 volume := by
  have h := memLp_finsetSum' (activePrimePowers T)
    (fun q _ => (memLp_two_shifts hf (Real.log q)).const_mul (primeWeight q))
  convert h using 1
  funext t
  simp only [primeOutput, Finset.sum_apply]

private theorem memLp_sinhWindow (T : ℝ) : MemLp (sinhWindow T) 2 volume := by
  rw [sinhWindow, memLp_indicator_iff_restrict measurableSet_Icc]
  have : IsFiniteMeasure (volume.restrict (Icc (-T) T)) := ⟨by simp [Real.volume_Icc]⟩
  apply MemLp.of_bound (by fun_prop) (Real.sinh (T / 2))
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Icc] with t ht
  rw [Real.norm_eq_abs, Real.abs_sinh, Real.sinh_le_sinh, abs_le]
  exact ⟨by linarith [ht.1], by linarith [ht.2]⟩

theorem memLp_primePoleOutput (T β : ℝ) {f : ℝ → ℝ} (hf : MemLp f 2 volume) (a : ℝ) :
    MemLp (primePoleOutput T β f a) 2 volume := by
  have hbounded := (((hf.const_mul (gammaConstant 1 0 - β)).sub
    (memLp_primeOutput T hf)).indicator (measurableSet_Icc : MeasurableSet (Icc (-T) T))).add ((memLp_sinhWindow T).const_mul a)
  convert hbounded using 1
  funext t
  by_cases ht : t ∈ Icc (-T) T <;> simp [primePoleOutput, sinhWindow, ht]

theorem primeOutput_odd (T : ℝ) {f : ℝ → ℝ} (hf : Function.Odd f) :
    Function.Odd (primeOutput T f) := by
  intro t
  unfold primeOutput
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro q _
  rw [show -t + Real.log q = -(t - Real.log q) by ring,
    show -t - Real.log q = -(t + Real.log q) by ring, hf, hf]
  ring

theorem primePoleOutput_odd (T β : ℝ) {f : ℝ → ℝ} (hf : Function.Odd f) (a : ℝ) :
    Function.Odd (primePoleOutput T β f a) := by
  intro t
  have hmem : -t ∈ Icc (-T) T ↔ t ∈ Icc (-T) T := by
    constructor <;> intro h <;> exact ⟨by linarith [h.2], by linarith [h.1]⟩
  have ht : -t / 2 = -(t / 2) := by ring
  simp only [primePoleOutput, indicator_apply, hmem, hf t, primeOutput_odd T hf t, ht, Real.sinh_neg]
  split_ifs <;> ring

private theorem integral_mul_backward (g f : ℝ → ℝ) (r : ℝ) :
    (∫ t : ℝ, g t * f (t - r)) = ∫ t : ℝ, f t * g (t + r) := by
  simpa only [add_sub_cancel_right, mul_comm] using
    (integral_add_right_eq_self (fun t : ℝ => g t * f (t - r)) r).symm

/-- The actual mixed prime pairing, with both input/test orientations. -/
theorem integral_mul_primeOutput (T : ℝ) {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    (∫ t : ℝ, g t * primeOutput T f t) =
      ∑ q ∈ activePrimePowers T, primeWeight q *
        ((∫ t : ℝ, g t * f (t + Real.log q)) + ∫ t : ℝ, f t * g (t + Real.log q)) := by
  classical
  have hplus (r : ℝ) : Integrable (fun t : ℝ => g t * f (t + r)) :=
    hg.integrable_mul (memLp_translate hf r)
  have hminus (r : ℝ) : Integrable (fun t : ℝ => g t * f (t - r)) := by
    simpa only [sub_eq_add_neg] using hplus (-r)
  have hterm (q : ℕ) : Integrable (fun t : ℝ =>
      primeWeight q * (g t * f (t + Real.log q) + g t * f (t - Real.log q))) :=
    ((hplus _).add (hminus _)).const_mul _
  calc
    _ = ∫ t : ℝ, ∑ q ∈ activePrimePowers T, primeWeight q *
        (g t * f (t + Real.log q) + g t * f (t - Real.log q)) := by
      apply integral_congr_ae
      filter_upwards [] with t
      rw [primeOutput, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro q _
      ring
    _ = _ := by
      rw [integral_finsetSum _ (fun q _ => hterm q)]
      apply Finset.sum_congr rfl
      intro q _
      rw [integral_const_mul, integral_add (hplus _) (hminus _), integral_mul_backward]

/-- The windowed output has the same pairing as its three unwindowed terms
on every supported L² test. -/
theorem integral_mul_primePoleOutput (T β : ℝ) {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0) (a : ℝ) :
    (∫ t : ℝ, g t * primePoleOutput T β f a t) =
      (gammaConstant 1 0 - β) * (∫ t : ℝ, g t * f t) -
      (∫ t : ℝ, g t * primeOutput T f t) +
      a * (∫ t : ℝ, g t * Real.sinh (t / 2)) := by
  have hmass : Integrable (fun t : ℝ => g t * f t) := hg.integrable_mul hf
  have hprime : Integrable (fun t : ℝ => g t * primeOutput T f t) :=
    hg.integrable_mul (memLp_primeOutput T hf)
  have hpole : Integrable (fun t : ℝ => g t * Real.sinh (t / 2)) := by
    refine (hg.integrable_mul (memLp_sinhWindow T)).congr ?_
    filter_upwards [hsupport] with t ht
    change g t * sinhWindow T t = _
    by_cases hm : t ∈ Icc (-T) T
    · simp only [sinhWindow, indicator_of_mem hm]
    · simp only [ht hm, zero_mul]
  calc
    _ = ∫ t : ℝ, ((gammaConstant 1 0 - β) * (g t * f t) -
        g t * primeOutput T f t) + a * (g t * Real.sinh (t / 2)) := by
      apply integral_congr_ae
      filter_upwards [hsupport] with t ht
      by_cases hm : t ∈ Icc (-T) T
      · simp only [primePoleOutput, indicator_of_mem hm]
        ring
      · rw [ht hm]
        ring
    _ = _ := by
      have hadd := integral_add ((hmass.const_mul (gammaConstant 1 0 - β)).sub hprime) (hpole.const_mul a)
      simp only [Pi.sub_apply] at hadd
      rw [hadd, integral_sub (hmass.const_mul (gammaConstant 1 0 - β)) hprime,
        integral_const_mul, integral_const_mul]

/-- The actual prime matrix entry tested against a sine and a sine input. -/
theorem integral_sine_mul_primeOutput_sine (T : ℝ) (m n : ℕ) :
    (∫ t : ℝ, zeroExtendedSine T m t * primeOutput T (zeroExtendedSine T n) t) =
      ∑ q ∈ activePrimePowers T, primeWeight q * sineShiftEntry T m n (Real.log q) := by
  rw [integral_mul_primeOutput T (memLp_zeroExtendedSine T n) (memLp_zeroExtendedSine T m)]
  simp only [sineShiftEntry, sineCorrelation]

private theorem integrable_sine_mul_continuous (T : ℝ) (n : ℕ) {f : ℝ → ℝ} (hf : Continuous f) :
    Integrable (fun t : ℝ => zeroExtendedSine T n t * f t) := by
  have heq : (fun t : ℝ => zeroExtendedSine T n t * f t) =
      (Icc (-T) T).indicator
        (fun t : ℝ => (Real.sin (Real.pi * (n : ℝ) * t / T) / Real.sqrt T) * f t) := by
    funext t
    by_cases ht : t ∈ Icc (-T) T <;> simp [zeroExtendedSine, ht]
  rw [heq, integrable_indicator_iff measurableSet_Icc]
  apply Continuous.integrableOn_Icc
  fun_prop

/-- The actual sinh pairing returns the existing analytic coefficient. -/
theorem integral_sine_mul_sinh (T : ℝ) (hT : 0 < T) (n : ℕ) :
    (∫ t : ℝ, zeroExtendedSine T (n + 1) t * Real.sinh (t / 2)) =
      sinePoleCoefficient T (n + 1) := by
  have hplus := integrable_sine_mul_continuous T (n + 1)
    (by fun_prop : Continuous (fun t : ℝ => Real.exp ((1 / 2 : ℝ) * t)))
  have hminus := integrable_sine_mul_continuous T (n + 1)
    (by fun_prop : Continuous (fun t : ℝ => Real.exp ((-1 / 2 : ℝ) * t)))
  have hmoment := sinhMomentRow_eq_sinePoleCoefficient T hT (Fin.last n)
  change (sinePoleMoment T (1 / 2) (n + 1) - sinePoleMoment T (-1 / 2) (n + 1)) / 2 =
    sinePoleCoefficient T (n + 1) at hmoment
  unfold sinePoleMoment at hmoment
  calc
    _ = ∫ t : ℝ, (zeroExtendedSine T (n + 1) t * Real.exp ((1 / 2 : ℝ) * t) -
          zeroExtendedSine T (n + 1) t * Real.exp ((-1 / 2 : ℝ) * t)) / 2 := by
      apply integral_congr_ae
      filter_upwards [] with t
      rw [Real.sinh_eq, show t / 2 = (1 / 2 : ℝ) * t by ring,
        show -((1 / 2 : ℝ) * t) = (-1 / 2 : ℝ) * t by ring]
      ring
    _ = _ := by rw [integral_div, integral_sub hplus hminus, hmoment]

/-- The bounded physical output coefficient of a single sine input and
the retained scalar pole coordinate. -/
theorem sineCoefficient_primePoleOutput_sine (T : ℝ) (hT : 0 < T) (β a : ℝ) (m n : ℕ) :
    sineCoefficient T (primePoleOutput T β (zeroExtendedSine T n) a) (m + 1) =
      (gammaConstant 1 0 - β) * sineCorrelation T (m + 1) n 0 -
        (∑ q ∈ activePrimePowers T, primeWeight q * sineShiftEntry T (m + 1) n (Real.log q)) +
        a * sinePoleCoefficient T (m + 1) := by
  have hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → zeroExtendedSine T (m + 1) t = 0 :=
    Filter.Eventually.of_forall (fun t ht => by simp only [zeroExtendedSine, ht, ite_false])
  unfold sineCoefficient
  rw [integral_mul_primePoleOutput T β (memLp_zeroExtendedSine T n)
    (memLp_zeroExtendedSine T (m + 1)) hsupport, integral_sine_mul_primeOutput_sine,
    integral_sine_mul_sinh T hT]
  simp only [sineCorrelation, add_zero]

/-- The bounded physical output is linear in the finite sine input and
its independent pole coordinate. -/
theorem primePoleOutput_finiteSine {M : ℕ} (T β a : ℝ) (x : Fin M → ℝ) (t : ℝ) :
    primePoleOutput T β (finiteSine T x) a t =
      (∑ i, x i * primePoleOutput T β (zeroExtendedSine T (i.val + 1)) 0 t) +
        primePoleOutput T β (fun _ => 0) a t := by
  have hprime : primeOutput T (finiteSine T x) t =
      ∑ i, x i * primeOutput T (zeroExtendedSine T (i.val + 1)) t := by
    simp only [primeOutput, finiteSine, ← Finset.sum_add_distrib, Finset.mul_sum]
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro q _
    ring
  have hz : primeOutput T (fun _ => 0) t = 0 := by simp [primeOutput]
  by_cases ht : t ∈ Icc (-T) T
  · simp only [primePoleOutput, indicator_of_mem ht, mul_zero, hz, sub_zero, zero_add]
    rw [hprime]
    simp only [finiteSine, Finset.mul_sum]
    congr 1
    rw [← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro i _
    ring
  · simp [primePoleOutput, ht]

/-- The physical output of the scalar pole alone is its normalized sinh row. -/
theorem sineCoefficient_primePoleOutput_zero (T : ℝ) (hT : 0 < T) (β a : ℝ) (m : ℕ) :
    sineCoefficient T (primePoleOutput T β (fun _ => 0) a) (m + 1) =
      a * sinePoleCoefficient T (m + 1) := by
  have hz : zeroExtendedSine T 0 = fun _ => 0 := by
    funext t
    simp [zeroExtendedSine]
  rw [← hz, sineCoefficient_primePoleOutput_sine T hT β a m 0]
  simp [sineShiftEntry, sineCorrelation, hz]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddPrimePoleOutput
