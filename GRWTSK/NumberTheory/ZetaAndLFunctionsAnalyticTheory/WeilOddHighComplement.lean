/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddMultiplierBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBoundaryNorm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualParseval
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineForm

set_option autoImplicit false
noncomputable section

/-!
# High-frequency floor from the odd periodic comparison

Section 5 of the supplied periodic boundary note uses the increasing
diagonal multiplier, the prime mass and a bound for the periodization
boundary. The high block in the bordered odd form is pole-free, since the
scalar port is in the retained head. The floor here therefore pays the
prime and boundary costs with the physical spectral shift `-β`.

Parseval and monotonicity bound the periodic high energy by its first
retained frequency times the same Lebesgue mass. The logarithmic lower
bound supplies an explicit integer cutoff. The prime cost is the checked
whole-line translation bound for the actual von Mangoldt readout.
The comparison between the literal zero-extended gamma energy and the
periodic diagonal energy remains an explicit premise. The coefficient
argument does not supply a closed-form or operator-domain realization.
Independent analytical review and novelty assessment are pending.
-/

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddHighComplement

open MeasureTheory Set LowSchur OddRootProjection OddOutputTrace
open OddMultiplierBounds OddSineParseval OddResidualParseval OddSineForm

/-- The literal gamma correction for a zero-extended real odd input. -/
def oddArchimedeanEnergy (f : ℝ → ℝ) : ℝ :=
  ∫ r in Ioi (0 : ℝ), parityKernel 0 r * (∫ t : ℝ, (f (t + r) - f t) ^ 2)

def shiftedOddCoreEnergy (T β : ℝ) (f : ℝ → ℝ) : ℝ :=
  (gammaConstant 1 0 - β) * (∫ t : ℝ, ‖f t‖ ^ 2) +
    oddArchimedeanEnergy f - primeEnergy T f

def highDiagonalTerm (T : ℝ) (N : ℕ) (f : ℝ → ℝ) (j : ℕ) : ℝ :=
  periodicMultiplier 0 (frequency T (N + 1 + j)) * sineCoefficient T f (N + 1 + j) ^ 2

theorem highDiagonalEnergy_ge (T : ℝ) (hT : 0 < T) {N : ℕ} {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hodd : ∀ᵐ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hhead : ∀ n < N, sineCoefficient T f (n + 1) = 0)
    (hdiag : Summable (highDiagonalTerm T N f)) :
    periodicMultiplier 0 (frequency T (N + 1)) * (∫ t : ℝ, ‖f t‖ ^ 2) ≤
      ∑' j : ℕ, highDiagonalTerm T N f j := by
  have hmass := highSine_sq_hasSum T hT hf hodd hsupport hhead
  have hfreq (j : ℕ) : |frequency T (N + 1)| ≤ |frequency T (N + 1 + j)| := by
    have hidx : ((N + 1 : ℕ) : ℝ) ≤ ((N + 1 + j : ℕ) : ℝ) := by exact_mod_cast Nat.le_add_right _ _
    unfold frequency
    rw [abs_of_nonneg (by positivity), abs_of_nonneg (by positivity)]
    exact div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hidx Real.pi_pos.le) hT.le
  rw [← hmass.tsum_eq, ← tsum_mul_left]
  exact (hmass.summable.mul_left _).tsum_le_tsum (fun j =>
    mul_le_mul_of_nonneg_right (periodicMultiplier_abs_mono 0 (hfreq j)) (sq_nonneg _)) hdiag

/-- A sufficient cutoff for a requested floor after paying the prime and boundary costs. -/
def highCutoff (T β boundaryLoss requested : ℝ) : ℕ :=
  ⌈(T / (2 * Real.pi)) *
    Real.exp (requested + β + primeMass T + boundaryLoss - gammaConstant 1 0)⌉₊

theorem floor_le_of_highCutoff (T : ℝ) (hT : 0 < T) (β boundaryLoss requested : ℝ) {N : ℕ}
    (hN : highCutoff T β boundaryLoss requested ≤ N) :
    requested ≤ gammaConstant 1 0 - β + periodicMultiplier 0 (frequency T (N + 1)) -
      primeMass T - boundaryLoss := by
  let k := requested + β + primeMass T + boundaryLoss - gammaConstant 1 0
  have hπ := Real.pi_pos
  have hceil : (T / (2 * Real.pi)) * Real.exp k ≤ (highCutoff T β boundaryLoss requested : ℝ) :=
    Nat.le_ceil _
  have hNR : (highCutoff T β boundaryLoss requested : ℝ) ≤ ((N + 1 : ℕ) : ℝ) := by
    exact_mod_cast hN.trans (Nat.le_succ _)
  have hscale := mul_le_mul_of_nonneg_left (hceil.trans hNR)
    (show 0 ≤ 2 * Real.pi / T by positivity)
  have hexp : Real.exp k ≤ 2 * frequency T (N + 1) := by
    calc
      _ = (2 * Real.pi / T) * ((T / (2 * Real.pi)) * Real.exp k) := by
        field_simp [hT.ne', hπ.ne']
      _ ≤ _ := by
        convert hscale using 1
        unfold frequency
        ring
  have hlog := Real.log_le_log (Real.exp_pos k) hexp
  rw [Real.log_exp] at hlog
  have hw : 0 < frequency T (N + 1) := by unfold frequency; positivity
  have hmul := log_two_mul_le_periodicMultiplier_zero hw
  dsimp [k] at hlog
  linarith

/-- Pay separately checked prime and boundary losses against the actual
first high multiplier on the same form domain. -/
theorem shiftedOddCoreEnergy_ge_of_budget (T : ℝ) (hT : 0 < T)
    (β primeLoss boundaryLoss requested : ℝ) {N : ℕ}
    (hbudget : requested ≤ gammaConstant 1 0 - β + periodicMultiplier 0 (frequency T (N + 1)) -
      primeLoss - boundaryLoss) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hodd : ∀ᵐ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hhead : ∀ n < N, sineCoefficient T f (n + 1) = 0)
    (hdiag : Summable (highDiagonalTerm T N f))
    (hprime : primeEnergy T f ≤ primeLoss * (∫ t : ℝ, ‖f t‖ ^ 2))
    (hcompare : (∑' j : ℕ, highDiagonalTerm T N f j) -
      boundaryLoss * (∫ t : ℝ, ‖f t‖ ^ 2) ≤ oddArchimedeanEnergy f) :
    requested * (∫ t : ℝ, ‖f t‖ ^ 2) ≤ shiftedOddCoreEnergy T β f := by
  have hmass : 0 ≤ ∫ t : ℝ, ‖f t‖ ^ 2 := integral_nonneg (fun _ => sq_nonneg _)
  have hbound := highDiagonalEnergy_ge T hT hf hodd hsupport hhead hdiag
  have hscale := mul_le_mul_of_nonneg_right hbudget hmass
  unfold shiftedOddCoreEnergy
  nlinarith

/-- A full high-complement floor from the explicit sufficient cutoff and
the full prime mass. -/
theorem shiftedOddCoreEnergy_ge_of_periodicComparison (T : ℝ) (hT : 0 < T)
    (β boundaryLoss requested : ℝ) {N : ℕ}
    (hN : highCutoff T β boundaryLoss requested ≤ N) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hodd : ∀ᵐ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hhead : ∀ n < N, sineCoefficient T f (n + 1) = 0)
    (hdiag : Summable (highDiagonalTerm T N f))
    (hcompare : (∑' j : ℕ, highDiagonalTerm T N f j) -
      boundaryLoss * (∫ t : ℝ, ‖f t‖ ^ 2) ≤ oddArchimedeanEnergy f) :
    requested * (∫ t : ℝ, ‖f t‖ ^ 2) ≤ shiftedOddCoreEnergy T β f := by
  have hprime := (le_abs_self (primeEnergy T f)).trans (abs_primeEnergy_le T f hf.integrable_sq)
  have hprime' : primeEnergy T f ≤ primeMass T * (∫ t : ℝ, ‖f t‖ ^ 2) := by
    simpa only [Real.norm_eq_abs, sq_abs] using hprime
  exact shiftedOddCoreEnergy_ge_of_budget T hT β (primeMass T) boundaryLoss requested
    (floor_le_of_highCutoff T hT β boundaryLoss requested hN) hf hodd hsupport hhead hdiag hprime' hcompare

/-- A supported odd input has twice its positive-half squared mass. -/
theorem oddMass_eq_twice_positive (T : ℝ) {f : ℝ → ℝ}
    (hf : Integrable (fun t : ℝ => f t ^ 2))
    (hodd : ∀ᵐ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    (∫ t : ℝ, ‖f t‖ ^ 2) = 2 * ∫ t in Ioo 0 T, f t ^ 2 := by
  have hsplit := integral_add_compl (measurableSet_Ioi (a := (0 : ℝ))) hf
  rw [compl_Ioi] at hsplit
  have hrefl : (∫ t in Iic (0 : ℝ), f t ^ 2) = ∫ t in Ioi (0 : ℝ), f t ^ 2 := by
    have hneg := integral_comp_neg_Ioi 0 (fun t : ℝ => f t ^ 2)
    rw [neg_zero] at hneg
    rw [← hneg]
    apply integral_congr_ae
    filter_upwards [ae_restrict_of_ae hodd] with t ht
    rw [ht, neg_sq]
  have hpos : (∫ t in Ioi (0 : ℝ), f t ^ 2) = ∫ t in Ioo 0 T, f t ^ 2 := by
    rw [← integral_indicator measurableSet_Ioi, ← integral_indicator measurableSet_Ioo]
    apply integral_congr_ae
    filter_upwards [hsupport, volume.ae_ne T] with t hs hne
    by_cases ht : 0 < t
    · by_cases htT : t < T
      · simp [ht, htT]
      · have hTt : T < t := lt_of_le_of_ne (le_of_not_gt htT) (Ne.symm hne)
        have hz : f t = 0 := hs (fun h => (not_le_of_gt hTt) h.2)
        simp [ht, htT, hz]
    · simp [ht]
  rw [hrefl, hpos, ← two_mul] at hsplit
  simpa only [Real.norm_eq_abs, sq_abs] using hsplit.symm

/-- The explicit cutoff with the checked uniform odd boundary loss. The
periodization identity on the same input and the periodic energy summability
remain hypotheses. -/
theorem shiftedOddCoreEnergy_ge_of_periodization (T : ℝ) (hT : 0 < T)
    (β requested : ℝ) {N : ℕ} (hN : highCutoff T β 4 requested ≤ N) {f : ℝ → ℝ}
    (hfmeas : Measurable f) (hf : MemLp f 2 volume) (hodd : ∀ᵐ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hhead : ∀ n < N, sineCoefficient T f (n + 1) = 0)
    (hdiag : Summable (highDiagonalTerm T N f))
    (hperiodization : oddArchimedeanEnergy f = (∑' j : ℕ, highDiagonalTerm T N f j) +
      2 * ∫ t in Ioo 0 T, ∫ s in Ioo 0 T, OddBoundaryNorm.oddKernel T t s * f t * f s) :
    requested * (∫ t : ℝ, ‖f t‖ ^ 2) ≤ shiftedOddCoreEnergy T β f := by
  have hf₂ : Integrable (fun t : ℝ => f t ^ 2) := by
    simpa only [Real.norm_eq_abs, sq_abs] using hf.integrable_norm_pow (p := 2) (by norm_num)
  have hmass := oddMass_eq_twice_positive T hf₂ hodd hsupport
  have hbd := OddBoundaryNorm.oddKernel_quadratic_ge T f hfmeas hf₂.integrableOn
  apply shiftedOddCoreEnergy_ge_of_periodicComparison T hT β 4 requested hN hf hodd hsupport hhead hdiag
  rw [hperiodization, hmass]
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.OddHighComplement
