/-
Copyright (c) 2026 Gershon Bialer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gershon Bialer
-/
import MathExtras.NumberTheory.Mertens.RamareCorrectedR3Envelopes
import MathExtras.NumberTheory.Mertens.RamareEq22EnvelopeContracts

/-!
# The corrected `R2*` envelopes

This module combines the exact corrected Lemma 6.1 bridge with the proved
`R3` and `R4` range estimates.  Its two final theorems inhabit precisely the
envelope propositions consumed by equation (22).
-/

noncomputable section

namespace MathExtras.RamareMertens2025

set_option maxHeartbeats 1000000

open MathExtras.MertensFirstSharp

/-- The `0.031` envelope from `21 * 10^9` through `10^16`. -/
theorem correctedR2StarMidEnvelope
    (hfin : RamareCorrectedFiniteCertificates)
    (hinputs : RamareChebyshevInputs) :
    R2StarMidEnvelope := by
  intro u hlo hhi
  let N : ℕ := ⌊u⌋₊
  have hu0 : 0 ≤ u := le_trans (by norm_num [eq22K1]) hlo
  have hNlo : 21000000000 ≤ N := by
    apply Nat.le_floor
    simpa [eq22K1] using hlo
  have hNu : (N : ℝ) ≤ u := by
    dsimp [N]
    exact Nat.floor_le hu0
  change u ≤ (((10 : ℕ) ^ 16 : ℕ) : ℝ) at hhi
  have hNhi : N ≤ (10 : ℕ) ^ 16 := by
    exact_mod_cast hNu.trans hhi
  have hN : 1 ≤ N := le_trans (by norm_num) hNlo
  have hbridge := r2Star_abs_le_corrected N hN
  have hR3 := correctedR3_le_low hinputs hfin N hNlo hNhi
  have hR4 := correctedR4_abs_le_low hinputs N hNlo hNhi
  have hone : (1 : ℝ) ≤ (1 / 1000 : ℝ) * N := by
    have h10000Nat : 10000 ≤ N := le_trans (by norm_num) hNlo
    have h10000 : (10000 : ℝ) ≤ N := by exact_mod_cast h10000Nat
    nlinarith
  have hNbound : |r2Star N| ≤ (31 / 1000 : ℝ) * N := by
    nlinarith
  calc
    |r2Star ⌊u⌋₊| = |r2Star N| := by rfl
    _ ≤ (31 / 1000 : ℝ) * N := hNbound
    _ ≤ (31 / 1000 : ℝ) * u :=
      mul_le_mul_of_nonneg_left hNu (by norm_num)

/-- The uniform `0.0065` envelope above `10^16`. -/
theorem correctedR2StarHighEnvelope
    (hfin : RamareCorrectedFiniteCertificates)
    (hinputs : RamareChebyshevInputs) :
    R2StarHighEnvelope := by
  intro u hlo
  let N : ℕ := ⌊u⌋₊
  have hu0 : 0 ≤ u := le_trans (by norm_num [eq22K0]) hlo
  have hNlo : (10 : ℕ) ^ 16 ≤ N := by
    apply Nat.le_floor
    simpa [eq22K0] using hlo
  have hNu : (N : ℝ) ≤ u := by
    dsimp [N]
    exact Nat.floor_le hu0
  have hN : 1 ≤ N := le_trans (by norm_num) hNlo
  have hbridge := r2Star_abs_le_corrected N hN
  have hNbound : |r2Star N| ≤ (65 / 10000 : ℝ) * N := by
    by_cases hmid : N ≤ (10 : ℕ) ^ 21
    · have hR3 := correctedR3_le_mid hinputs hfin N hNlo hmid
      have hR4 := correctedR4_abs_le_mid_high_sharp hinputs N hNlo hmid
      have hone : (1 : ℝ) ≤ (6 / 10000 : ℝ) * N := by
        have h10000Nat : 10000 ≤ N := le_trans (by norm_num) hNlo
        have h10000 : (10000 : ℝ) ≤ N := by exact_mod_cast h10000Nat
        nlinarith
      nlinarith
    · have h21 : (10 : ℕ) ^ 21 ≤ N := by omega
      have hR3 : correctedR3 N ≤ (21 / 10000 : ℝ) * N := by
        by_cases hpre : (N : ℝ) ≤ (effectivePNTHandoff : ℝ) ^ 2
        · exact correctedR3_le_pre_effective hinputs hfin N h21 hpre
        · exact correctedR3_le_effective hinputs hfin N (le_of_not_ge hpre)
      have hR4 := correctedR4_abs_le_high hinputs N hNlo
      have hone : (1 : ℝ) ≤ (16 / 10000 : ℝ) * N := by
        have h10000Nat : 10000 ≤ N := le_trans (by norm_num) h21
        have h10000 : (10000 : ℝ) ≤ N := by exact_mod_cast h10000Nat
        nlinarith
      nlinarith
  calc
    |r2Star ⌊u⌋₊| = |r2Star N| := by rfl
    _ ≤ (65 / 10000 : ℝ) * N := hNbound
    _ ≤ (65 / 10000 : ℝ) * u :=
      mul_le_mul_of_nonneg_left hNu (by norm_num)

#print axioms correctedR2StarMidEnvelope
#print axioms correctedR2StarHighEnvelope

end MathExtras.RamareMertens2025
