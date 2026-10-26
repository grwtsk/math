/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.WeightedSieveAnchorReinjection
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Radical-collision weighted-sieve fixture

This module gives one explicit finite arithmetic-labelled witness for the
separation between diffusion coverage and feature identifiability.

The two states represent `2` and `2^2`. They have the same arithmetic radical
and therefore the same value under every radical-factored `K₀`-shaped class.
The raw sieve weight is one exactly when the two arithmetic values have equal
radical. On this collision fibre every weight is one, so normalization gives a
concrete nonnegative stochastic kernel with quantitative anchor reinjection and
anchor-to-type steering.

The fine state type is completely covered after two diffusion steps, while no
exact decoder can recover that fine type from the paired radical and
radical-factored `K₀`-shaped feature. This is a finite collision fixture, not an
analytic `K₀` construction, a prime-distribution estimate, an integer Chowla
theorem, or an asymptotic arithmetic-density result.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.RadicalCollisionWeightedSieve

open scoped BigOperators
open GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.WeightedSieveTypeDiffusion

/-- Two fine states retaining the exponent distinction erased by the radical. -/
abbrev TwoPowerState := Fin 2

/-- State zero represents `2`; state one represents `2^2`. -/
def arithmeticValue (state : TwoPowerState) : ℕ :=
  if state = 0 then 2 else 2 ^ 2

@[simp]
theorem arithmeticValue_zero :
    arithmeticValue (0 : TwoPowerState) = 2 := by
  simp [arithmeticValue]

@[simp]
theorem arithmeticValue_one :
    arithmeticValue (1 : TwoPowerState) = 2 ^ 2 := by
  norm_num [arithmeticValue]

/-- Both states lie in the same arithmetic-radical fibre. -/
theorem radical_constant (state : TwoPowerState) :
    Nat.radical (arithmeticValue state) = Nat.radical 2 := by
  fin_cases state
  · simp
  · simpa using
      (UniqueFactorizationMonoid.radical_pow 2
        (by norm_num : (2 : ℕ) ≠ 0))

/-- The explicit `2` versus `2^2` radical collision. -/
theorem radical_collision :
    Nat.radical (arithmeticValue (0 : TwoPowerState)) =
      Nat.radical (arithmeticValue (1 : TwoPowerState)) := by
  rw [radical_constant, radical_constant]

/-- Every radical-factored universal group-completion class collides on the two
fine states. No injectivity of the supplied stable-object lift is assumed. -/
theorem kZero_collision
    {M : Type*} [CommMonoid M] (lift : ℕ →* M) :
    kZeroRadical lift (arithmeticValue (0 : TwoPowerState)) =
      kZeroRadical lift (arithmeticValue (1 : TwoPowerState)) :=
  kZeroRadical_eq_of_radical_eq lift radical_collision

/-- A concrete nonnegative arithmetic weight supported on equality of radical
fibres. -/
def radicalFiberWeight (target source : TwoPowerState) : ℚ :=
  if Nat.radical (arithmeticValue target) =
      Nat.radical (arithmeticValue source) then 1 else 0

@[simp]
theorem radicalFiberWeight_eq_one (target source : TwoPowerState) :
    radicalFiberWeight target source = 1 := by
  simp [radicalFiberWeight, radical_constant]

/-- The exact two-state radical-fibre weighted sieve. -/
def radicalFiberSieve : WeightedSieve TwoPowerState where
  weight := radicalFiberWeight
  nonnegative := by
    intro target source
    simp
  positiveColumnMass := by
    intro source
    norm_num [Fin.sum_univ_two]

@[simp]
theorem radicalFiberSieve_columnMass (source : TwoPowerState) :
    radicalFiberSieve.columnMass source = 2 := by
  norm_num [WeightedSieve.columnMass, radicalFiberSieve, Fin.sum_univ_two]

/-- Every source sends one half of its normalized mass to state zero. -/
theorem radicalFiberSieve_reinjection :
    RawAnchorReinjection radicalFiberSieve
      (0 : TwoPowerState) (1 / 2 : ℚ) := by
  intro source
  norm_num [radicalFiberSieve_columnMass, radicalFiberSieve]

/-- The selected anchor sends one half of its normalized mass to a
representative of each fine type. -/
theorem radicalFiberSieve_outgoing :
    RawAnchorTypeMinorization radicalFiberSieve
      (fun state : TwoPowerState => state)
      (0 : TwoPowerState) (1 / 2 : ℚ) := by
  intro kind
  refine ⟨kind, rfl, ?_⟩
  norm_num [radicalFiberSieve_columnMass, radicalFiberSieve]

/-- Initial heat is concentrated on the first fine state. -/
def initialHeat (state : TwoPowerState) : ℚ :=
  if state = 0 then 1 else 0

theorem initialHeat_nonnegative :
    ∀ state : TwoPowerState, 0 ≤ initialHeat state := by
  intro state
  unfold initialHeat
  split_ifs <;> norm_num

@[simp]
theorem initialHeat_mass :
    ∑ state : TwoPowerState, initialHeat state = 1 := by
  norm_num [initialHeat, Fin.sum_univ_two]

/-- Every fine type has at least one quarter of the total initial mass after
any two-step reinjection/steering block. -/
theorem fineTypeMass_lower_from_time_two
    (time : ℕ) (kind : TwoPowerState) :
    (1 / 4 : ℚ) ≤
      aggregate (fun state : TwoPowerState => state)
        (radicalFiberSieve.normalizedKernel.evolve initialHeat (time + 2))
        kind := by
  have bound := type_mass_lower_after_two_weighted_sieve_steps
    radicalFiberSieve initialHeat initialHeat_nonnegative
    (fun state : TwoPowerState => state) (0 : TwoPowerState)
    (1 / 2 : ℚ) (1 / 2 : ℚ) (by norm_num)
    radicalFiberSieve_reinjection radicalFiberSieve_outgoing
    time kind
  norm_num [initialHeat_mass] at bound
  exact bound

/-- The fine exponent-sensitive state type is complete from time two onward. -/
theorem fineTypeComplete_from_time_two :
    ∀ time : ℕ,
      TypeCompleteAt (fun state : TwoPowerState => state)
        (radicalFiberSieve.normalizedKernel.evolve initialHeat (time + 2)) := by
  exact eventually_type_complete_of_raw_anchor_reinjection
    radicalFiberSieve initialHeat initialHeat_nonnegative
    (by norm_num [initialHeat_mass])
    (fun state : TwoPowerState => state) (0 : TwoPowerState)
    (1 / 2 : ℚ) (1 / 2 : ℚ) (by norm_num) (by norm_num)
    radicalFiberSieve_reinjection radicalFiberSieve_outgoing

/-- Despite complete diffusion coverage of both fine states, no exact decoder
can factor through the paired radical and radical-factored `K₀`-shaped class. -/
theorem no_exact_feature_decoder
    {M : Type*} [CommMonoid M] (lift : ℕ →* M) :
    ¬ ∃ decode : GrothendieckKZero M × ℕ → TwoPowerState,
        ∀ state : TwoPowerState,
          decode
              (kZeroRadical lift (arithmeticValue state),
                Nat.radical (arithmeticValue state)) = state := by
  rintro ⟨decode, correct⟩
  have observedCollision :
      (kZeroRadical lift (arithmeticValue (0 : TwoPowerState)),
          Nat.radical (arithmeticValue (0 : TwoPowerState))) =
        (kZeroRadical lift (arithmeticValue (1 : TwoPowerState)),
          Nat.radical (arithmeticValue (1 : TwoPowerState))) :=
    Prod.ext (kZero_collision lift) radical_collision
  have stateCollision : (0 : TwoPowerState) = (1 : TwoPowerState) := by
    calc
      (0 : TwoPowerState) =
          decode
            (kZeroRadical lift (arithmeticValue (0 : TwoPowerState)),
              Nat.radical (arithmeticValue (0 : TwoPowerState))) :=
        (correct 0).symm
      _ = decode
            (kZeroRadical lift (arithmeticValue (1 : TwoPowerState)),
              Nat.radical (arithmeticValue (1 : TwoPowerState))) :=
        congrArg decode observedCollision
      _ = (1 : TwoPowerState) := correct 1
  exact (by decide : (0 : TwoPowerState) ≠ (1 : TwoPowerState)) stateCollision

/-- Concrete independence theorem: fine-type diffusion completeness coexists
with failure of exact decoding from the coarse radical/`K₀` feature. -/
theorem diffusion_complete_but_feature_not_decodable
    {M : Type*} [CommMonoid M] (lift : ℕ →* M) :
    (∀ time : ℕ,
      TypeCompleteAt (fun state : TwoPowerState => state)
        (radicalFiberSieve.normalizedKernel.evolve initialHeat (time + 2))) ∧
    ¬ ∃ decode : GrothendieckKZero M × ℕ → TwoPowerState,
        ∀ state : TwoPowerState,
          decode
              (kZeroRadical lift (arithmeticValue state),
                Nat.radical (arithmeticValue state)) = state := by
  exact ⟨fineTypeComplete_from_time_two, no_exact_feature_decoder lift⟩

end GRWTSK.Algebra.KTheory.RadicalCollisionWeightedSieve
