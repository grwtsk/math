/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachArithmeticMargin

set_option autoImplicit false
noncomputable section

/-!
# A discrete arithmetic gap and honest signed-margin certificates

The actual prime-only mass is zero or at least log(2)^2, because every
nonempty literal prime overlap contributes at least this amount. This
does not prove that the overlap is nonempty for all even targets.
Approximation certificates retain the COMPLETE absolute mass error.
They can certify either zero mass or a positive signed margin; no source
estimate or all-target certificate supplier is manufactured here.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Primes.GoldbachCertifiedArithmeticGap
open GoldbachArithmeticMargin GoldbachWeighted GoldbachReflectionSectors

def primeMassGap : ℝ := (Real.log 2) ^ 2

theorem primeMassGap_pos : 0 < primeMassGap :=
  sq_pos_of_pos (Real.log_pos (by norm_num))

theorem source_mass_zero_or_gap (N : ℕ) :
    goldbachLogMass N = 0 ∨ primeMassGap ≤ goldbachLogMass N := by
  classical
  by_cases hs : (primeOverlap N).Nonempty
  · right
    have hc : (1 : ℝ) ≤ ((primeOverlap N).card : ℝ) := by
      exact_mod_cast (Finset.one_le_card.mpr hs)
    have h := mul_le_mul_of_nonneg_right hc (le_of_lt primeMassGap_pos)
    simp only [one_mul] at h
    exact h.trans (mass_lower_of_actual_overlap_count N)
  · left
    have he : primeOverlap N = ∅ := Finset.not_nonempty_iff_eq_empty.mp hs
    rw [mass_eq_primeOverlap_sum, he]
    simp

theorem source_mass_pos_iff_gap (N : ℕ) :
    0 < goldbachLogMass N ↔ primeMassGap ≤ goldbachLogMass N := by
  constructor
  · intro hp
    rcases source_mass_zero_or_gap N with hz | hg
    · linarith
    · exact hg
  · exact fun hg => primeMassGap_pos.trans_le hg

/-- A low model with sufficiently small complete error certifies zero, not Goldbach. -/
theorem source_mass_zero_of_low_certificate (N : ℕ) (model error : ℝ)
    (herr : |goldbachLogMass N - model| ≤ error)
    (herror : error < primeMassGap / 2) (hmodel : model ≤ primeMassGap / 2) :
    goldbachLogMass N = 0 := by
  rcases source_mass_zero_or_gap N with hz | hg
  · exact hz
  · have hupper := (abs_le.mp herr).2
    linarith

/-- A high model certifies the full arithmetic gap, retaining every error premise. -/
theorem source_margin_of_high_certificate (N : ℕ) (model error : ℝ)
    (herr : |goldbachLogMass N - model| ≤ error)
    (herror : error < primeMassGap / 2) (hmodel : primeMassGap / 2 ≤ model) :
    primeMassGap ≤ goldbachLogMass N := by
  apply (source_mass_pos_iff_gap N).mp
  have hlower := (abs_le.mp herr).1
  linarith

theorem signed_sector_margin_of_high_certificate (N : ℕ) (model error : ℝ)
    (herr : |goldbachLogMass N - model| ≤ error)
    (herror : error < primeMassGap / 2) (hmodel : primeMassGap / 2 ≤ model) :
    energy N (oddPart N (primeVector N)) + primeMassGap ≤
      energy N (evenPart N (primeVector N)) := by
  have h := source_margin_of_high_certificate N model error herr herror hmodel
  rw [goldbachLogMass_eq_sector_difference] at h
  linarith

/-- Specialize the certificate to a full-vector comparison, preserving its
signed model mass and the complete Cauchy-Schwarz source error. -/
theorem signed_margin_of_full_vector_certificate (N : ℕ) (y : Fin (N + 1) → ℝ)
    (herror : Real.sqrt (energy N (primeVector N - y) * energy N (primeVector N + y)) <
      primeMassGap / 2)
    (hmodel : primeMassGap / 2 ≤ GoldbachFullVectorError.signedMass N y) :
    energy N (oddPart N (primeVector N)) + primeMassGap ≤
      energy N (evenPart N (primeVector N)) := by
  have he : |goldbachLogMass N - GoldbachFullVectorError.signedMass N y| ≤
      Real.sqrt (energy N (primeVector N - y) * energy N (primeVector N + y)) := by
    simpa only [GoldbachFullVectorError.signedMass, goldbachLogMass_eq_reflection_pairing]
      using GoldbachFullVectorError.signed_mass_error_abs N (primeVector N) y
  exact signed_sector_margin_of_high_certificate N _ _ he herror hmodel

/-- A purported small-error certificate centered exactly between the two source
alternatives is impossible; this guards against an invented surrogate margin. -/
theorem no_half_gap_small_error_certificate (N : ℕ) :
    primeMassGap / 2 ≤ |goldbachLogMass N - primeMassGap / 2| := by
  rcases source_mass_zero_or_gap N with hz | hg
  · rw [hz, zero_sub, abs_neg, abs_of_nonneg (by positivity)]
  · have hnonneg : 0 ≤ goldbachLogMass N - primeMassGap / 2 := by
      linarith [primeMassGap_pos]
    rw [abs_of_nonneg hnonneg]
    linarith

end GRWTSK.NumberTheory.Primes.GoldbachCertifiedArithmeticGap
