/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.HS95CharacterCarrier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveWindowErrorCoverage
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveInverseOrbitStages

/-!
# Filtered window return for primitive Dirichlet characters

The signed target is `primitiveArithmeticValue` on the original real odd test
class. At a covering window, a lower bound for a filtered value and a two-sided
error to the arithmetic value cost the sum of their relative errors. The
existing window-stability and conductor-frontier theorems return the resulting
bound to every stage of a fixed character.

The coverage quantifiers permit a different window and error allocation for
each character. A common choice yields the character-local one. The even and
odd schedules below show why the reverse quantifier exchange requires more
information about the supplied certificates.

The analytic inputs are filtered lower bounds and signed source reconstruction
at jointly covering windows, negative original tests for upper right-strip
zeros (including real zeros), and conductor-one RH. A source reconstruction
proof must account for the actual prime-power contribution, conductor, parity
and full archimedean term. The witness input must connect the original zero
with its multiplicity to this test class and signed arithmetic expression.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open GRWTSK.NumberTheory.Conditional HS95CharacterCarrier OddRootProjection SourcePrimeCorrelation

/-- The physical windows partition the exact prime term. The conductor and
archimedean terms retain their original values. -/
theorem primitiveArithmeticValue_eq_windowSum {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1) (T : ℝ) (f : ℝ → ℂ) :
    primitiveArithmeticValue χ hp hn T f =
      gammaConstant q (gammaParity χ) * energy f +
        (∫ r in Set.Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) f r) -
        ∑ w ∈ activeWindows T,
          windowTwistedPrime T χ (fun n => correlation f (Real.log (n : ℝ))) w := by
  rw [sum_windowTwistedPrime_eq, primitiveArithmeticValue]

/-- The certified lower bound and reconstruction error are measured in the
energy of the original test, including when that energy is zero. -/
def FilterWindowBound {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (filtered : ℕ → (ℝ → ℝ) → ℝ)
    (k : ℕ) (lowerError returnError : ℝ) : Prop :=
  ∀ f : ℝ → ℝ, Admissible χ ((k : ℝ) + 1) f →
    -lowerError * energy (liftReal f) ≤ filtered k f ∧
    |filtered k f - primitiveArithmeticValue χ hp hn ((k : ℝ) + 1) (liftReal f)| ≤
      returnError * energy (liftReal f)

/-- Below the existing conductor frontier, each tolerance must be attained
at a window covering the requested stage. -/
def CharacterLocalFilterCoverage {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (filtered : ℕ → (ℝ → ℝ) → ℝ) : Prop :=
  ∀ (j : ℕ) (ε : ℝ), 0 < ε → ∃ (k : ℕ) (lowerError returnError : ℝ),
    j ≤ k ∧ 0 ≤ lowerError ∧ 0 ≤ returnError ∧ lowerError + returnError ≤ ε ∧
      (χ.conductor < conductorFrontier (k + 1) →
        FilterWindowBound χ hp hn filtered k lowerError returnError)

/-- Filtered values indexed by the original primitive nonprincipal sector. -/
abbrev PrimitiveFilteredFamily :=
  ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q),
    χ.IsPrimitive → χ ≠ 1 → ℕ → (ℝ → ℝ) → ℝ

/-- A common window and error allocation for every conductor and character. -/
def ConductorUniformFilterCoverage (filtered : PrimitiveFilteredFamily) : Prop :=
  ∀ (j : ℕ) (ε : ℝ), 0 < ε → ∃ (k : ℕ) (lowerError returnError : ℝ),
    j ≤ k ∧ 0 ≤ lowerError ∧ 0 ≤ returnError ∧ lowerError + returnError ≤ ε ∧
      ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
        (hp : χ.IsPrimitive) (hn : χ ≠ 1), χ.conductor < conductorFrontier (k + 1) →
          FilterWindowBound χ hp hn (filtered q χ hp hn) k lowerError returnError

theorem characterLocalFilterCoverage_of_uniform {filtered : PrimitiveFilteredFamily}
    (h : ConductorUniformFilterCoverage filtered) {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1) :
    CharacterLocalFilterCoverage χ hp hn (filtered q χ hp hn) := by
  intro j ε hε
  obtain ⟨k, lowerError, returnError, hjk, hlower, hreturn, hsum, hbound⟩ := h j ε hε
  exact ⟨k, lowerError, returnError, hjk, hlower, hreturn, hsum, hbound q χ hp hn⟩

/-- Two disjoint cofinal certificate schedules have no common index. -/
theorem disjoint_cofinal_certificate_schedules :
    (∀ j : ℕ, ∃ k ≥ j, k % 2 = 0) ∧
    (∀ j : ℕ, ∃ k ≥ j, k % 2 = 1) ∧
    ¬ ∃ k : ℕ, k % 2 = 0 ∧ k % 2 = 1 := by
  refine ⟨fun j => ⟨2 * j, by omega, by omega⟩,
    fun j => ⟨2 * j + 1, by omega, by omega⟩, ?_⟩
  rintro ⟨k, heven, hodd⟩
  omega

/-- Every fixed conductor is below the frontier at all sufficiently large
stages, where the character-local certificates are required. -/
theorem conductor_lt_frontier_of_le_stage {conductor stage : ℕ}
    (h : conductor ≤ stage) : conductor < conductorFrontier (stage + 1) := by
  have hpow (n : ℕ) : n < 3 ^ n :=
    n.lt_two_pow_self.trans_le (Nat.pow_le_pow_left (by decide) n)
  have hfactor : 0 < 3 ^ (stage + 1) - 1 := by
    have := hpow (stage + 1)
    omega
  have hexponent : stage + 1 ≤ conductorExponent (stage + 1) := by
    unfold conductorExponent
    have hmul := Nat.le_mul_of_pos_right (8 * (stage + 1)) hfactor
    omega
  exact h.trans_lt <| (Nat.lt_succ_self stage).trans <|
    (hpow (stage + 1)).trans_le (Nat.pow_le_pow_right (by decide) hexponent)

/-- Subtracting the reconstruction budget from the surrogate lower bound
retains the signed arithmetic inequality. -/
theorem arithmeticValue_lower_of_filter {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {filtered : ℕ → (ℝ → ℝ) → ℝ} {k : ℕ} {lowerError returnError ε : ℝ}
    (hbound : FilterWindowBound χ hp hn filtered k lowerError returnError)
    (hbudget : lowerError + returnError ≤ ε) {f : ℝ → ℝ}
    (hf : Admissible χ ((k : ℝ) + 1) f) :
    -ε * energy (liftReal f) ≤
      primitiveArithmeticValue χ hp hn ((k : ℝ) + 1) (liftReal f) := by
  obtain ⟨hlower, hreturn⟩ := hbound f hf
  have henergy : 0 ≤ energy (liftReal f) := by
    rw [energy_eq_norm_toLp_sq hf.2.2.2.2.1]
    exact sq_nonneg _
  calc
    -ε * energy (liftReal f) ≤ -(lowerError + returnError) * energy (liftReal f) :=
      mul_le_mul_of_nonneg_right (neg_le_neg hbudget) henergy
    _ ≤ primitiveArithmeticValue χ hp hn ((k : ℝ) + 1) (liftReal f) := by
      have hdiff := (le_abs_self _).trans hreturn
      linarith

theorem smallConductorStages_of_filterCoverage {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {filtered : ℕ → (ℝ → ℝ) → ℝ}
    (hcover : CharacterLocalFilterCoverage χ hp hn filtered) : SmallConductorStages χ hp hn := by
  apply smallConductorStages_of_joint_window_error_coverage χ hp hn
  intro j ε hε
  obtain ⟨k, lowerError, returnError, hjk, _, _, hbudget, hbound⟩ := hcover j ε hε
  exact ⟨k, hjk, fun hsmall _ hf => arithmeticValue_lower_of_filter χ hp hn
    (hbound hsmall) hbudget hf⟩

/-- Character-local filtered coverage suffices for the genuine Dirichlet GRH
return, provided conductor-one RH and the upper right-strip witness supplier. -/
theorem dirichletGRH_of_filteredWindowCoverage
    (hRH : _root_.RiemannHypothesis) (hwitness : PrimitiveUpperRightStripNegativeWitness)
    (filtered : PrimitiveFilteredFamily)
    (hcover : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
      (hp : χ.IsPrimitive) (hn : χ ≠ 1),
      CharacterLocalFilterCoverage χ hp hn (filtered q χ hp hn)) : DirichletGRH := by
  apply dirichletGRH_of_rh_and_rightStrip_witness hRH
    (primitiveRightStripNegativeWitness_iff_upper.mpr hwitness)
  intro q hq χ hp hn
  exact smallConductorStages_of_filterCoverage χ hp hn (hcover q χ hp hn)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
