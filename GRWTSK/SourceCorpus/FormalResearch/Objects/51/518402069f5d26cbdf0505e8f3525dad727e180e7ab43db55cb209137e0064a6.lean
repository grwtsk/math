import ProperPowerMoments
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.MeasureTheory.Constructions.Polish.Basic

/-! Actual proper-power integral and closed-onset complement transport.
Direction grwtsk contributors; focused scratch proof OpenAI Codex.
The weighted Mangoldt/source-prefix dictionary and Laurent/c/Ramare bridges remain separate. -/
set_option autoImplicit false
set_option maxHeartbeats 800000
noncomputable section
namespace ContinuousResearch.ProperPowerTransport
open MeasureTheory Set Filter
open scoped Topology
open ContinuousResearch.ProperPowerMoments

def powerOnset (p : Nat.Primes) (k : ℕ) : ℝ :=
  ((k+2:ℕ):ℝ)*Real.log (p.val:ℝ)

def powerWeight (p : Nat.Primes) (k : ℕ) : ℝ :=
  Real.log (p.val:ℝ)/(p.val:ℝ)^(k+2)

def positiveOnsetAtom (p : Nat.Primes) (k : ℕ) : ℝ → ℝ :=
  (Ioo 0 (powerOnset p k)).indicator (fun _ => powerWeight p k)

def positiveOnsetTail (t : ℝ) : ℝ :=
  ∑' pk : Nat.Primes×ℕ, positiveOnsetAtom pk.1 pk.2 t

theorem powerOnset_pos (p : Nat.Primes) (k : ℕ) : 0<powerOnset p k := by
  unfold powerOnset
  exact mul_pos (by positivity) (Real.log_pos (by exact_mod_cast p.property.one_lt))

theorem powerWeight_nonneg (p : Nat.Primes) (k : ℕ) : 0≤powerWeight p k := by
  have hl := Real.log_nonneg (show (1:ℝ)≤p.val by exact_mod_cast p.property.one_le)
  unfold powerWeight
  positivity

theorem positiveOnsetAtom_nonneg (p : Nat.Primes) (k : ℕ) (t : ℝ) :
    0≤positiveOnsetAtom p k t := by
  exact indicator_nonneg (fun _ _ => powerWeight_nonneg p k) t

theorem positiveOnsetAtom_measurable (p : Nat.Primes) (k : ℕ) :
    Measurable (positiveOnsetAtom p k) :=
  measurable_const.indicator measurableSet_Ioo

theorem positiveOnsetAtom_integrable (p : Nat.Primes) (k : ℕ) :
    Integrable (positiveOnsetAtom p k) := by
  unfold positiveOnsetAtom
  exact (integrableOn_const (by simp : volume (Ioo 0 (powerOnset p k)) ≠ ∞)).integrable_indicator
    measurableSet_Ioo

theorem positiveOnsetAtom_integral (p : Nat.Primes) (k : ℕ) :
    (∫ t : ℝ, positiveOnsetAtom p k t) = primeMomentAtom 1 p k := by
  unfold positiveOnsetAtom
  rw [integral_indicator_const _ measurableSet_Ioo,
    Real.volume_real_Ioo_of_le (powerOnset_pos p k).le,sub_zero,smul_eq_mul]
  unfold powerOnset powerWeight primeMomentAtom momentAtom
  ring

theorem positiveOnsetAtom_eq_omitted (p : Nat.Primes) (k : ℕ) (t : ℝ) :
    positiveOnsetAtom p k t = if 0<t then omittedOnsetAtom t p k else 0 := by
  unfold positiveOnsetAtom powerOnset powerWeight omittedOnsetAtom
  by_cases h0 : 0<t <;> by_cases ht : t < ↑(k+2)*Real.log (p.val:ℝ) <;>
    simp [h0,ht]

theorem positiveOnsetAtom_le_zeroMoment (p : Nat.Primes) (k : ℕ) (t : ℝ) :
    positiveOnsetAtom p k t ≤ primeMomentAtom 0 p k := by
  rw [positiveOnsetAtom_eq_omitted]
  split_ifs
  · exact omittedOnsetAtom_le_zeroMoment t p k
  · exact momentAtom_nonneg 0 p.val k

theorem positiveOnsetTail_summable (t : ℝ) :
    Summable (fun pk : Nat.Primes×ℕ => positiveOnsetAtom pk.1 pk.2 t) :=
  Summable.of_nonneg_of_le (fun pk => positiveOnsetAtom_nonneg pk.1 pk.2 t)
    (fun pk => positiveOnsetAtom_le_zeroMoment pk.1 pk.2 t) (primeMomentAtom_summable 0)

theorem positiveOnsetTail_nonneg (t : ℝ) : 0≤positiveOnsetTail t :=
  tsum_nonneg (fun pk => positiveOnsetAtom_nonneg pk.1 pk.2 t)

theorem positiveOnsetTail_measurable : Measurable positiveOnsetTail :=
  Measurable.tsum (fun pk : Nat.Primes×ℕ => positiveOnsetAtom_measurable pk.1 pk.2)

theorem positiveOnsetTail_eq_indicator :
    positiveOnsetTail = (Ioi 0).indicator omittedOnsetTail := by
  funext t
  unfold positiveOnsetTail
  simp_rw [positiveOnsetAtom_eq_omitted]
  by_cases ht : 0<t
  · simp [ht,omittedOnsetTail]
  · simp [ht]

end ContinuousResearch.ProperPowerTransport
