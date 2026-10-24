# Complete source: GRWTSK.NumberTheory.CharacterSums.FiniteCyclicReciprocalPhaseObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbc72d9e2ad03c28a9a2bf6486fad5b0431cb5a4` · SHA-256 `c4f478413248446092347c292d785f6939be3b6c859aa58c6b2f6ae18c0e8183`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI ChatGPT.
Mathlib imports retain their upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.CharacterSums.FiniteCyclicIntervalDistance

/-!
# Reciprocal-weight zero-mode and phase-matched obstructions

The unweighted finite cyclic interval estimate does not extend to arbitrary
norm-one coefficients.  With reciprocal weights, the same obstruction remains
exact: the opposite character cancels the negative phase pointwise and recovers
the complete positive reciprocal mass.

This file is independent of the still-unreplayed Abel source.  It uses only the
checked finite cyclic character and circular-distance layer.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.CharacterSums

open scoped BigOperators
open AddChar

variable {q : ℕ} [NeZero q]

/-- Positive reciprocal mass of an ordinary finite interval. -/
def finiteCyclicReciprocalMass (A B R : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico A B, (((n + R : ℕ) : ℝ))⁻¹

/-- The finite reciprocal mass is nonnegative. -/
theorem finiteCyclicReciprocalMass_nonneg (A B R : ℕ) :
    0 ≤ finiteCyclicReciprocalMass A B R := by
  unfold finiteCyclicReciprocalMass
  exact Finset.sum_nonneg fun n _hn => by positivity

/-- Complexification preserves the exact finite reciprocal mass. -/
theorem coe_finiteCyclicReciprocalMass (A B R : ℕ) :
    (finiteCyclicReciprocalMass A B R : ℂ) =
      ∑ n ∈ Finset.Ico A B, (((n + R : ℕ) : ℂ))⁻¹ := by
  simp [finiteCyclicReciprocalMass]

/-- At zero frequency, the reciprocal-weighted negative character sum is the
complete reciprocal mass. -/
theorem sum_stdAddChar_neg_div_nat_add_Ico_zero
    (A B R : ℕ) :
    (∑ n ∈ Finset.Ico A B,
      ZMod.stdAddChar (-((n : ZMod q) * (0 : ZMod q))) /
        (((n + R : ℕ) : ℂ))) =
      (finiteCyclicReciprocalMass A B R : ℂ) := by
  rw [coe_finiteCyclicReciprocalMass]
  apply Finset.sum_congr rfl
  intro n _hn
  simp

/-- Norm-one opposite-character coefficients cancel the negative phase
pointwise and recover the full reciprocal mass. -/
theorem stdAddChar_phaseMatched_reciprocal_Ico
    (t : ZMod q) (A B R : ℕ) :
    (∀ n : ℕ, ‖ZMod.stdAddChar ((n : ZMod q) * t)‖ = 1) ∧
      (∑ n ∈ Finset.Ico A B,
        ZMod.stdAddChar ((n : ZMod q) * t) *
          (ZMod.stdAddChar (-((n : ZMod q) * t)) /
            (((n + R : ℕ) : ℂ)))) =
        (finiteCyclicReciprocalMass A B R : ℂ) := by
  constructor
  · intro n
    exact Circle.norm_coe (ZMod.toCircle ((n : ZMod q) * t))
  · rw [coe_finiteCyclicReciprocalMass]
    apply Finset.sum_congr rfl
    intro n _hn
    have hphase :
        ZMod.stdAddChar ((n : ZMod q) * t) *
            ZMod.stdAddChar (-((n : ZMod q) * t)) = 1 := by
      rw [← map_add_eq_mul]
      simp
    rw [div_eq_mul_inv, ← mul_assoc, hphase, one_mul]

/-- The phase-matched reciprocal sum attains the complete reciprocal mass in
norm.  Thus coefficientwise norm-one control supplies no cancellation. -/
theorem norm_stdAddChar_phaseMatched_reciprocal_Ico
    (t : ZMod q) (A B R : ℕ) :
    ‖∑ n ∈ Finset.Ico A B,
        ZMod.stdAddChar ((n : ZMod q) * t) *
          (ZMod.stdAddChar (-((n : ZMod q) * t)) /
            (((n + R : ℕ) : ℂ)))‖ =
      finiteCyclicReciprocalMass A B R := by
  rw [(stdAddChar_phaseMatched_reciprocal_Ico t A B R).2,
    Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (finiteCyclicReciprocalMass_nonneg A B R)]

end GRWTSK.NumberTheory.CharacterSums
```
