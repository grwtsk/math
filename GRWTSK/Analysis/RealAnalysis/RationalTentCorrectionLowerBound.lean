/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
import GRWTSK.Analysis.ComplexAnalysis.RationalRoundedArithmetic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Direct rational lower endpoints for signed tent corrections

`TentRationalCorrection.correctionPrefix` is an upper approximation to the
negative rational correction. A separately justified prefix enclosure

  |prefix - value| <= error

together with the existing complete geometric remainder yields the lower endpoint

  value - error - remainder <= rationalTentCorrection.

The prime criterion consumes only such a one-sided lower bound. This module rounds
that endpoint DOWN once with exact rational arithmetic. It does not pretend that a
numeric center and error certify the analytic prefix: `PrefixEnclosure` remains an
explicit semantic premise.

The verifier checks the analytic-domain guards, nonnegative reported prefix error,
exact claimed recomputation, and a requested lower floor. It does not construct the
prefix enclosure, a zeta packet, a prime margin, or an RH result.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.RealAnalysis.RationalTentCorrectionLowerBound

open GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
open GRWTSK.Analysis.ComplexAnalysis.RationalRoundedArithmetic

noncomputable section

/-- Rational form of the analytic domain used by the correction theorem. -/
def Admissible (x h : ℚ) : Prop :=
  0 < h ∧ 1 < x - h

instance (x h : ℚ) : Decidable (Admissible x h) := by
  unfold Admissible
  infer_instance

/-- Semantic enclosure of the ACTUAL finite correction prefix. This is not
established by a small error field or by Boolean acceptance below. -/
def PrefixEnclosure
    (N : ℕ) (x h value error : ℚ) : Prop :=
  |correctionPrefix N (x : ℝ) (h : ℝ) - (value : ℝ)| ≤ (error : ℝ)

/-- Exact rational version of the complete geometric prefix remainder. -/
def remainderQ (N : ℕ) (x h : ℚ) : ℚ :=
  h / ((x - h) * ((x - h) ^ 2 - 1)) * (1 / (x - h) ^ 2) ^ N

/-- Unrounded lower endpoint supplied by a prefix center and symmetric error. -/
def lowerBaseQ
    (N : ℕ) (x h value error : ℚ) : ℚ :=
  value - error - remainderQ N x h

/-- Directed lower endpoint: round DOWN exactly once. -/
def computeLower
    (N : ℕ) (x h value error : ℚ) (bits : ℕ) : ℚ :=
  downQ bits (lowerBaseQ N x h value error)

/-- Accept only fixed recomputation and a requested floor. A larger lower bound is
better downstream, but it remains sound only with `PrefixEnclosure`. -/
def evaluate
    (N : ℕ) (x h value error : ℚ) (bits : ℕ)
    (floor : ℚ) : Option ℚ :=
  if Admissible x h ∧ 0 ≤ error then
    let lower := computeLower N x h value error bits
    if floor ≤ lower then some lower else none
  else none

/-- Boolean acceptance retains byte-level equality with the fixed rational result. -/
def verify
    (N : ℕ) (x h value error : ℚ) (bits : ℕ)
    (floor claimed : ℚ) : Bool :=
  decide (evaluate N x h value error bits floor = some claimed)

@[simp] theorem cast_remainderQ
    (N : ℕ) (x h : ℚ) :
    (remainderQ N x h : ℝ) =
      (h : ℝ) /
        (((x : ℝ) - (h : ℝ)) * (((x : ℝ) - (h : ℝ)) ^ 2 - 1)) *
          (1 / ((x : ℝ) - (h : ℝ)) ^ 2) ^ N := by
  simp [remainderQ]

@[simp] theorem cast_lowerBaseQ
    (N : ℕ) (x h value error : ℚ) :
    (lowerBaseQ N x h value error : ℝ) =
      (value : ℝ) - (error : ℝ) - (remainderQ N x h : ℝ) := by
  simp [lowerBaseQ]

/-- Downward rounding never exceeds the proposed analytic endpoint. -/
theorem computeLower_le_base
    (N : ℕ) (x h value error : ℚ) (bits : ℕ) :
    (computeLower N x h value error bits : ℝ) ≤
      (lowerBaseQ N x h value error : ℝ) := by
  unfold computeLower
  rw [cast_downQ]
  exact (GRWTSK.Analysis.ComplexAnalysis.DyadicRoundedSquaring.down_bounds bits _).1

/-- The directly rounded lower endpoint loses strictly less than one dyadic unit. -/
theorem base_lt_computeLower_add_grid
    (N : ℕ) (x h value error : ℚ) (bits : ℕ) :
    (lowerBaseQ N x h value error : ℝ) <
      (computeLower N x h value error bits : ℝ) +
        1 / GRWTSK.Analysis.ComplexAnalysis.DyadicRoundedSquaring.scale bits := by
  unfold computeLower
  rw [cast_downQ]
  exact (GRWTSK.Analysis.ComplexAnalysis.DyadicRoundedSquaring.down_bounds bits _).2

/-- Prefix enclosure plus the complete geometric remainder gives a valid lower
bound for the independently defined signed integral. -/
theorem lowerBase_le_correction
    (N : ℕ) (x h value error : ℚ)
    (hadm : Admissible x h)
    (enclosure : PrefixEnclosure N x h value error) :
    (lowerBaseQ N x h value error : ℝ) ≤
      rationalTentCorrection (x : ℝ) (h : ℝ) := by
  rcases hadm with ⟨hhQ, haQ⟩
  have hh : (0 : ℝ) < (h : ℝ) := by exact_mod_cast hhQ
  have ha : (1 : ℝ) < (x : ℝ) - (h : ℝ) := by exact_mod_cast haQ
  have prefixLower :
      (value : ℝ) - (error : ℝ) ≤
        correctionPrefix N (x : ℝ) (h : ℝ) := by
    have hlo := (abs_le.mp enclosure).1
    linarith
  have correctionLower := correctionPrefix_lower N (x : ℝ) (h : ℝ) hh ha
  rw [cast_lowerBaseQ, cast_remainderQ]
  exact (sub_le_sub_right prefixLower _).trans correctionLower

/-- The directed rational endpoint is a sound correction lower bound. -/
theorem computeLower_sound
    (N : ℕ) (x h value error : ℚ) (bits : ℕ)
    (hadm : Admissible x h)
    (enclosure : PrefixEnclosure N x h value error) :
    (computeLower N x h value error bits : ℝ) ≤
      rationalTentCorrection (x : ℝ) (h : ℝ) :=
  (computeLower_le_base N x h value error bits).trans
    (lowerBase_le_correction N x h value error hadm enclosure)

/-- Accepted output exposes all guards, the requested floor, and fixed recomputation. -/
theorem verify_iff
    (N : ℕ) (x h value error : ℚ) (bits : ℕ)
    (floor claimed : ℚ) :
    verify N x h value error bits floor claimed = true ↔
      Admissible x h ∧ 0 ≤ error ∧
      floor ≤ computeLower N x h value error bits ∧
      computeLower N x h value error bits = claimed := by
  unfold verify evaluate
  split_ifs <;> simp_all

/-- Semantic prefix containment turns Boolean acceptance into a correction lower
bound. The requested floor is also certified below the accepted endpoint. -/
theorem verify_sound
    (N : ℕ) (x h value error : ℚ) (bits : ℕ)
    (floor claimed : ℚ)
    (accepted : verify N x h value error bits floor claimed = true)
    (enclosure : PrefixEnclosure N x h value error) :
    (claimed : ℝ) ≤ rationalTentCorrection (x : ℝ) (h : ℝ) ∧
      floor ≤ claimed := by
  obtain ⟨hadm, _errorNonneg, floorBound, fixed⟩ :=
    (verify_iff N x h value error bits floor claimed).mp accepted
  constructor
  · rw [← fixed]
    exact computeLower_sound N x h value error bits hadm enclosure
  · rw [← fixed]
    exact floorBound

/-- The verifier's requested floor itself is a sound lower bound. -/
theorem verify_floor_sound
    (N : ℕ) (x h value error : ℚ) (bits : ℕ)
    (floor claimed : ℚ)
    (accepted : verify N x h value error bits floor claimed = true)
    (enclosure : PrefixEnclosure N x h value error) :
    (floor : ℝ) ≤ rationalTentCorrection (x : ℝ) (h : ℝ) := by
  have hs := verify_sound N x h value error bits floor claimed accepted enclosure
  exact (by exact_mod_cast hs.2).trans hs.1

/-- Equality with a requested floor is accepted as an enclosure but supplies no
strict downstream margin by itself. -/
theorem floor_equality_not_strict_fixture (q : ℚ) :
    ¬ (q : ℝ) < q := by simp

end

end GRWTSK.Analysis.RealAnalysis.RationalTentCorrectionLowerBound
