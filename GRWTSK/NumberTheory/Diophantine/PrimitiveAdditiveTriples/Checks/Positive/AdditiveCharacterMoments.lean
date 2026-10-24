/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex. Direct finite complex consumers only. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments

set_option autoImplicit false

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteAdditiveProjector
open scoped BigOperators

example (M d q : ℕ) [NeZero q] (W : ℕ → ℕ → ℕ → ℂ) (hq : 2 * M < q) :
    (∑ p ∈ additivePairs M, W (d * p.1) (d * p.2) (d * (p.1 + p.2))) =
      projectedJointMoment M d q W :=
  scaled_additive_sum_eq_character_cube M d q W hq

example (M d q : ℕ) [NeZero q] (W : ℕ → ℕ → ℕ → ℂ) :
    projectedJointMoment M d q W = frequencyJointMoment M d q W :=
  projectedJointMoment_eq_frequencyJointMoment M d q W

example (N d q : ℕ) [NeZero q] (W : ℕ → ℕ → ℕ → ℂ)
    (hd : 0 < d) (hq : 2 * (N / d) < q) :
    commonDivisorWeightedMoment N d W = projectedJointMoment (N / d) d q W :=
  commonDivisorWeightedMoment_eq_character_cube N d q W hd hq

example (N q : ℕ) [NeZero q] (W : ℕ → ℕ → ℕ → ℂ) (hq : 2 * N < q) :
    typedPrimitiveWeightedMoment N W =
      ∑ d ∈ Finset.Icc 1 N,
        (ArithmeticFunction.moebius d : ℂ) * frequencyJointMoment (N / d) d q W :=
  typedPrimitiveWeightedMoment_eq_moebius_frequency_sum N q W hq

-- q > M alone does not prevent wraparound: 3+3 and 2 agree modulo 4.
example : characterProjector 4 3 3 2 = 1 := by
  rw [characterProjector_eq_modular_indicator, if_pos (by decide)]

example : (3 : ℕ) < 4 ∧ 3 + 3 ≠ 2 := by decide

-- Ring subtraction in ZMod keeps the negative phase; Nat subtraction loses it.
example : characterProjector 7 1 1 3 = 0 := by
  rw [characterProjector_eq_indicator_of_noWrap (M := 3) (by decide)
    (by decide) (by decide) (by decide)]
  norm_num

example : (1 + 1 - 3 : ℕ) = 0 ∧
    (1 : ZMod 7) + (1 : ZMod 7) - (3 : ZMod 7) ≠ 0 := by decide

-- Composite moduli are allowed; the hypothesis is a bound, not primality.
example : characterProjector 8 1 1 2 = 1 := by
  rw [characterProjector_eq_indicator_of_noWrap (M := 3) (by decide)
    (by decide) (by decide) (by decide)]
  norm_num

example : characterProjector 8 1 1 3 = 0 := by
  rw [characterProjector_eq_indicator_of_noWrap (M := 3) (by decide)
    (by decide) (by decide) (by decide)]
  norm_num

-- An unnormalized zero-phase frequency sum has the extra factor q.
example : (∑ k : ZMod 7,
    ZMod.stdAddChar (k * ((1 : ZMod 7) + 1 - 2))) = (7 : ℂ) := by
  norm_num

example : characterProjector 7 1 1 2 = 1 := by
  rw [characterProjector_eq_modular_indicator]
  norm_num

-- Even q=8 > 2*M with M=3 does not permit cancellation of d=2 modulo q.
example : characterProjector 8 (2 * 3) (2 * 3) (2 * 2) = 1 := by
  rw [characterProjector_eq_modular_indicator, if_pos (by decide)]

example : characterProjector 8 3 3 2 = 0 := by
  rw [characterProjector_eq_indicator_of_noWrap (M := 3) (by decide)
    (by decide) (by decide) (by decide)]
  norm_num

example : Nat.gcd 2 8 = 2 := by decide

-- The closed cube is empty at M=0, even for modulus q=1.
example (W : ℕ → ℕ → ℕ → ℂ) : projectedJointMoment 0 2 1 W = 0 := by
  simp [projectedJointMoment]

example (W : ℕ → ℕ → ℕ → ℂ) : frequencyJointMoment 0 2 1 W = 0 := by
  simp [frequencyJointMoment]

example : projectedJointMoment 2 2 5
    (fun a b c => (a : ℂ) * (b : ℂ) * (c : ℂ)) = 16 := by
  rw [← scaled_additive_sum_eq_character_cube 2 2 5 _ (by decide)]
  rw [show additivePairs 2 = {(1, 1)} by decide]
  norm_num

example : projectedJointMoment 2 1 5
    (fun a b c => ((2 * a : ℕ) : ℂ) * ((2 * b : ℕ) : ℂ) * (c : ℂ)) = 8 := by
  rw [← scaled_additive_sum_eq_character_cube 2 1 5 _ (by decide)]
  rw [show additivePairs 2 = {(1, 1)} by decide]
  norm_num

-- This nonfactorized joint test remains admissible in the cube theorem.
example : projectedJointMoment 2 2 5
    (fun a b c => if a = b ∧ c = a + b then (c : ℂ) else 0) = 4 := by
  rw [← scaled_additive_sum_eq_character_cube 2 2 5 _ (by decide)]
  rw [show additivePairs 2 = {(1, 1)} by decide]
  norm_num
