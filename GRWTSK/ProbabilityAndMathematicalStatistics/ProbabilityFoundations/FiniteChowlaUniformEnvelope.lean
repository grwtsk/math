/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Finite uniform-envelope formalization assistance: OpenAI.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicWalshBoundary
import Mathlib.Data.Fintype.Powerset
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Uniform all-order Chowla envelope: exact finite arithmetic cost

Issue grwtsk/math#630, related arithmetic quantifier owner #441.
Direct parent draft PR #638 head fbe3bc2b651fd24edd7eb40ed4276b8b0041bbc1.

This layer is ONLY a finite conditional comparison. It does not produce any
cancellation estimate, in particular not one uniform over growing shifts.

An all-order envelope requires a bound on EVERY nonempty subset of the
selected coordinate set, for the SAME ordinary finite prefix sample and
with ONE common epsilon. Its 2^k-1 correlations contribute to the energy,
and the existing cyclic boundary theorem supplies the separately charged
r/N cost.

A fixed-form theorem with constants depending on the form cannot be used
here unless a separate proof supplies a common epsilon for the entire
growing family. Binary or logarithmically averaged results cannot fill an
all-order ordinary envelope by their names alone.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open scoped BigOperators

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- One common rational error budget for ALL nonempty source correlations
of one EXACT finite sample. This is a hypothesis, not an arithmetic result.
The empty correlation is intentionally excluded and remains normalized to 1
when roots.card > 0. -/
def AllOrderCorrelationEnvelope (roots : Finset ℕ)
    (x : ℕ → ι → Bool) (epsilon : ℚ) : Prop :=
  0 ≤ epsilon ∧
    ∀ S : Finset ι, S ≠ ∅ →
      |sourceCorrelation roots S x| ≤ epsilon

/-- The cardinality of the nonempty subset characters. This counts
each subset once, including for the zero-coordinate Boolean cube. -/
theorem nonemptyCharacterCount :
    ((Finset.univ : Finset (Finset ι)).erase ∅).card =
      2 ^ Fintype.card ι - 1 := by
  classical
  simp [Fintype.card_finset]

/-- Rational cast of the exact combinatorial count. The subtraction
is legitimate since there is always at least the empty subset. -/
theorem nonemptyCharacterCount_rat :
    (((Finset.univ : Finset (Finset ι)).erase ∅).card : ℚ) =
      (2 : ℚ) ^ Fintype.card ι - 1 := by
  rw [nonemptyCharacterCount]
  have hpos : 1 ≤ (2 : ℕ) ^ Fintype.card ι := Nat.one_le_two_pow
  rw [Nat.cast_sub hpos, Nat.cast_pow]
  norm_num

/-- Uniform pointwise bounds on every nonempty source coefficient imply
a summed-square energy bound, at the EXACT number of subset characters.
This theorem does not turn fixed-shift asymptotics into uniform bounds. -/
theorem energy_le_characterCount_mul_envelope_sq
    (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (epsilon : ℚ) (henvelope : AllOrderCorrelationEnvelope roots x epsilon) :
    nonemptyCorrelationEnergy roots x ≤
      (((Finset.univ : Finset (Finset ι)).erase ∅).card : ℚ) *
        epsilon ^ 2 := by
  classical
  let K : Finset (Finset ι) :=
    (Finset.univ : Finset (Finset ι)).erase ∅
  have hterm (S : Finset ι) (hS : S ∈ K) :
      (sourceCorrelation roots S x) ^ 2 ≤ epsilon ^ 2 := by
    have hnonempty : S ≠ ∅ := by
      exact (Finset.mem_erase.mp hS).1
    have hpoint : |sourceCorrelation roots S x| ≤ epsilon :=
      henvelope.2 S hnonempty
    have hsq :
        |sourceCorrelation roots S x| ^ 2 ≤ epsilon ^ 2 :=
      (sq_le_sq₀ (abs_nonneg _) henvelope.1).2 hpoint
    simpa only [sq_abs] using hsq
  calc
    nonemptyCorrelationEnergy roots x =
        ∑ S ∈ K, (sourceCorrelation roots S x) ^ 2 := rfl
    _ ≤ ∑ S ∈ K, epsilon ^ 2 := by
      apply Finset.sum_le_sum
      intro S hS
      exact hterm S hS
    _ = (K.card : ℚ) * epsilon ^ 2 := by simp

/-- Exactly 2^k-1, not k, signed product correlations are required
when the full Boolean window has k distinct coordinates. -/
theorem energy_le_exponential_envelope_sq
    (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (epsilon : ℚ) (henvelope : AllOrderCorrelationEnvelope roots x epsilon) :
    nonemptyCorrelationEnergy roots x ≤
      ((2 : ℚ) ^ Fintype.card ι - 1) * epsilon ^ 2 := by
  calc
    nonemptyCorrelationEnergy roots x ≤
        (((Finset.univ : Finset (Finset ι)).erase ∅).card : ℚ) *
          epsilon ^ 2 :=
      energy_le_characterCount_mul_envelope_sq roots x epsilon henvelope
    _ = ((2 : ℚ) ^ Fintype.card ι - 1) * epsilon ^ 2 := by
      rw [nonemptyCharacterCount_rat]

/-- The EXACT, all-subset ordinary correlation supplier at one arithmetic
scale and for one finite set of shifts. It is intentionally not populated
by a theorem here. If the shift family grows, this premise must be given
again at every scale with an appropriately uniform epsilon. -/
def OrdinaryAllOrderChowlaAtScale
    (N : ℕ) (offsets : Finset ℕ) (z : ℕ → Bool)
    (epsilon : ℚ) : Prop :=
  AllOrderCorrelationEnvelope
    (Finset.range N) (ordinaryShiftWord offsets z) epsilon

/-- A single-scale quantitative conditional return from all-order ordinary
Chowla to uniform cyclic sign patterns. The full exponential dependence
on the NUMBER OF SELECTED SHIFTS is charged without changing the
arithmetic averaging convention or swapping quantifiers.

The arithmetic hypothesis is NOT proved here, and epsilon is not
claimed to be scale-uniform by any external fixed-shift result. -/
theorem cyclicTV_le_allOrderEnvelope
    (N : ℕ) (offsets : Finset ℕ) (z : ℕ → Bool) (epsilon : ℚ)
    (hr : cyclicMaxOffset offsets < N)
    (henvelope : OrdinaryAllOrderChowlaAtScale N offsets z epsilon) :
    (totalVariationFromUniform (Finset.range N)
       (cyclicShiftWord N offsets z) : ℝ) ≤
      ((cyclicMaxOffset offsets : ℚ) / (N : ℚ) : ℝ) +
        Real.sqrt
          ((((2 : ℚ) ^ offsets.card - 1) * epsilon ^ 2 : ℚ) : ℝ) / 2 := by
  classical
  have hcount :
      Fintype.card {h : ℕ // h ∈ offsets} = offsets.card := by
    exact Fintype.card_coe offsets
  have hE :
      nonemptyCorrelationEnergy (Finset.range N)
          (ordinaryShiftWord offsets z) ≤
        ((2 : ℚ) ^ offsets.card - 1) * epsilon ^ 2 := by
    simpa only [hcount] using
      (energy_le_exponential_envelope_sq
        (ι := {h : ℕ // h ∈ offsets})
        (Finset.range N) (ordinaryShiftWord offsets z)
        epsilon henvelope)
  have hEreal :
      (nonemptyCorrelationEnergy (Finset.range N)
          (ordinaryShiftWord offsets z) : ℝ) ≤
        ((((2 : ℚ) ^ offsets.card - 1) * epsilon ^ 2 : ℚ) : ℝ) := by
    exact_mod_cast hE
  have hroot := Real.sqrt_le_sqrt hEreal
  have hrootHalf :
      Real.sqrt (nonemptyCorrelationEnergy (Finset.range N)
        (ordinaryShiftWord offsets z) : ℝ) / 2 ≤
        Real.sqrt ((((2 : ℚ) ^ offsets.card - 1) * epsilon ^ 2 : ℚ) : ℝ) / 2 :=
    div_le_div_of_nonneg_right hroot (by norm_num)
  exact (cyclicWalshTV_bound N offsets z hr).trans
    (add_le_add le_rfl hrootHalf)

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
