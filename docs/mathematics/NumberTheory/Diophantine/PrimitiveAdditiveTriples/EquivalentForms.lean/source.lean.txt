/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib logarithms and real powers (Apache-2.0).
OpenAI Codex formalization assistance. These are formulation equivalences,
not a proof of the common abc proposition. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

namespace PrimitiveAdditiveTriple

/-- Logarithmic height in the positive integral normalization. -/
noncomputable def logHeight (t : PrimitiveAdditiveTriple) : ℝ := Real.log (t.c : ℝ)

/-- Logarithmic radical, strictly positive for every primitive positive triple. -/
noncomputable def logRadical (t : PrimitiveAdditiveTriple) : ℝ :=
  Real.log (t.radical : ℝ)

/-- The quality of a triple, with the canonical radical in the denominator. -/
noncomputable def quality (t : PrimitiveAdditiveTriple) : ℝ :=
  t.logHeight / t.logRadical

variable (t : PrimitiveAdditiveTriple)

theorem real_c_pos : 0 < (t.c : ℝ) := by exact_mod_cast t.c_pos

theorem real_radical_pos : 0 < (t.radical : ℝ) := by exact_mod_cast t.radical_pos

theorem logRadical_pos : 0 < t.logRadical := by
  apply Real.log_pos
  have h := t.radical_two_le
  exact_mod_cast (by omega : 1 < t.radical)

theorem bound_iff_log_bound (ε K : ℝ) (hK : 0 < K) :
    (t.c : ℝ) ≤ K * Real.rpow (t.radical : ℝ) (1 + ε) ↔
      t.logHeight ≤ Real.log K + (1 + ε) * t.logRadical := by
  simp only [Real.rpow_eq_pow]
  rw [← Real.log_le_log_iff t.real_c_pos
    (mul_pos hK (Real.rpow_pos_of_pos t.real_radical_pos _))]
  rw [Real.log_mul hK.ne' (Real.rpow_pos_of_pos t.real_radical_pos _).ne',
    Real.log_rpow t.real_radical_pos]
  rfl

theorem log_bound_iff_quality_bound (ε C : ℝ) :
    t.logHeight ≤ C + (1 + ε) * t.logRadical ↔
      t.quality ≤ 1 + ε + C / t.logRadical := by
  rw [quality, div_le_iff₀ t.logRadical_pos]
  rw [show (1 + ε + C / t.logRadical) * t.logRadical =
      C + (1 + ε) * t.logRadical by
    rw [add_mul, div_mul_cancel₀ _ t.logRadical_pos.ne', add_comm]]

theorem power_lt_height_iff_quality (ε : ℝ) :
    Real.rpow (t.radical : ℝ) (1 + ε) < (t.c : ℝ) ↔
      1 + ε < t.quality := by
  simp only [Real.rpow_eq_pow]
  rw [← Real.log_lt_log_iff (Real.rpow_pos_of_pos t.real_radical_pos _) t.real_c_pos,
    Real.log_rpow t.real_radical_pos, quality, lt_div_iff₀ t.logRadical_pos]
  rfl

end PrimitiveAdditiveTriple

/-- The logarithmic-height formulation, with one additive constant for each
fixed epsilon, uniformly over all triples. -/
def ABCLogBound (ε : ℝ) : Prop :=
  ∃ C : ℝ, ∀ t : PrimitiveAdditiveTriple,
    t.logHeight ≤ C + (1 + ε) * t.logRadical

/-- A quality formulation retaining the logarithmic constant term. Deleting
that term at fixed epsilon would change the formulation. -/
def ABCQualityBound (ε : ℝ) : Prop :=
  ∃ C : ℝ, ∀ t : PrimitiveAdditiveTriple,
    t.quality ≤ 1 + ε + C / t.logRadical

theorem abcBound_iff_logBound (ε : ℝ) : ABCBound ε ↔ ABCLogBound ε := by
  constructor
  · rintro ⟨K, hK, h⟩
    exact ⟨Real.log K, fun t => (t.bound_iff_log_bound ε K hK).mp (h t)⟩
  · rintro ⟨C, h⟩
    refine ⟨Real.exp C, Real.exp_pos C, fun t => ?_⟩
    apply (t.bound_iff_log_bound ε _ (Real.exp_pos C)).mpr
    simpa only [Real.log_exp] using h t

theorem abcLogBound_iff_qualityBound (ε : ℝ) :
    ABCLogBound ε ↔ ABCQualityBound ε := by
  constructor
  · rintro ⟨C, h⟩
    exact ⟨C, fun t => (t.log_bound_iff_quality_bound ε C).mp (h t)⟩
  · rintro ⟨C, h⟩
    exact ⟨C, fun t => (t.log_bound_iff_quality_bound ε C).mpr (h t)⟩

theorem abcConjecture_iff_logarithmic :
    ABCConjecture ↔ ∀ ε : ℝ, 0 < ε → ABCLogBound ε := by
  simp only [ABCConjecture, abcBound_iff_logBound]

theorem abcConjecture_iff_quality :
    ABCConjecture ↔ ∀ ε : ℝ, 0 < ε → ABCQualityBound ε := by
  simp only [ABCConjecture, abcBound_iff_logBound, abcLogBound_iff_qualityBound]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
