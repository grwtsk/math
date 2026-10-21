/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Uses Mathlib finite sets, logarithms and real powers (Apache-2.0).
OpenAI Codex formalization assistance. Finite exceptional sets at every
positive epsilon are equivalent to the frozen target; no finiteness is asserted. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.EquivalentForms
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetOptimization
import Mathlib.Algebra.Order.Archimedean.Real.Basic

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Exceptional triples for the coefficient-one bound at the specified epsilon. -/
def exceptionalSet (ε : ℝ) : Set PrimitiveAdditiveTriple :=
  {t | Real.rpow (t.radical : ℝ) (1 + ε) < (t.c : ℝ)}

/-- The coefficient-one bound has only finitely many exceptions for every
positive epsilon. The quantifier over epsilon is indispensable. -/
def ABCFiniteExceptions : Prop :=
  ∀ ε : ℝ, 0 < ε → (exceptionalSet ε).Finite

theorem finite_exceptions_implies_bound (ε : ℝ)
    (hfinite : (exceptionalSet ε).Finite) : ABCBound ε := by
  classical
  obtain ⟨B, hB⟩ := (hfinite.image (fun t =>
    (t.c : ℝ) / Real.rpow (t.radical : ℝ) (1 + ε))).bddAbove
  refine ⟨max 1 B, lt_of_lt_of_le zero_lt_one (le_max_left _ _), fun t => ?_⟩
  have hp := Real.rpow_pos_of_pos t.real_radical_pos (1 + ε)
  by_cases ht : t ∈ exceptionalSet ε
  · have hq : (t.c : ℝ) / Real.rpow (t.radical : ℝ) (1 + ε) ≤ B :=
      hB ⟨t, ht, rfl⟩
    exact (div_le_iff₀ hp).mp (hq.trans (le_max_right _ _))
  · have hc : (t.c : ℝ) ≤ Real.rpow (t.radical : ℝ) (1 + ε) := le_of_not_gt ht
    exact hc.trans (le_mul_of_one_le_left hp.le (le_max_left _ _))

/-- A bound at epsilon/2 gives finitely many exceptions at epsilon. This
explicit slack step prevents a fixed-epsilon uniform-constant statement from
being confused with the coefficient-one statement at that same epsilon. -/
theorem bound_half_implies_finite_exceptions (ε : ℝ) (hε : 0 < ε)
    (hbound : ABCBound (ε / 2)) : (exceptionalSet ε).Finite := by
  obtain ⟨C, hC⟩ := (abcBound_iff_logBound _).mp hbound
  let B : ℝ := C + (1 + ε / 2) * (2 * C / ε)
  obtain ⟨N, hN⟩ := exists_nat_gt (Real.exp B)
  apply (PrimitiveAdditiveTriple.finite_height N).subset
  intro t ht
  have hbig : (1 + ε) * t.logRadical < t.logHeight := by
    have hq := (t.power_lt_height_iff_quality ε).mp ht
    exact (lt_div_iff₀ t.logRadical_pos).mp hq
  have hsmall := hC t
  have hR : t.logRadical < 2 * C / ε := by
    apply (lt_div_iff₀ hε).mpr
    nlinarith
  have hlog : t.logHeight ≤ B := by
    have hmul := mul_le_mul_of_nonneg_left hR.le (by linarith : 0 ≤ 1 + ε / 2)
    dsimp [B]
    linarith
  have hc : (t.c : ℝ) ≤ Real.exp B := by
    simpa only [PrimitiveAdditiveTriple.logHeight, Real.exp_log t.real_c_pos] using
      (Real.exp_le_exp.mpr hlog)
  exact_mod_cast (hc.trans hN.le)

theorem abcConjecture_iff_finite_exceptions :
    ABCConjecture ↔ ABCFiniteExceptions := by
  constructor
  · intro h ε hε
    exact bound_half_implies_finite_exceptions ε hε (h (ε / 2) (by linarith))
  · intro h ε hε
    exact finite_exceptions_implies_bound ε (h ε hε)

theorem exceptionalSet_eq_quality_set (ε : ℝ) :
    exceptionalSet ε = {t : PrimitiveAdditiveTriple | 1 + ε < t.quality} := by
  ext t
  exact t.power_lt_height_iff_quality ε

theorem abcConjecture_iff_finitely_many_high_quality :
    ABCConjecture ↔
      ∀ ε : ℝ, 0 < ε → {t : PrimitiveAdditiveTriple | 1 + ε < t.quality}.Finite := by
  rw [abcConjecture_iff_finite_exceptions]
  simp only [ABCFiniteExceptions, exceptionalSet_eq_quality_set]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
