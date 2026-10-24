/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Finite real quadratic-form statements only. No zeta divisor, Weil
explicit-formula identity, RH, zero-density bound or inertia theorem.
-/
import GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge
import Mathlib.Tactic

/-!
# Signed consumers require an explicitly bounded positive-Gram comparison

The positive metric used to construct a Gram matrix is NOT the signed Weil
form or the signed Hodge consumer. Positivity only transfers to a target
through a source-bound comparison with the FULL residual error.

This file gives a finite, quantitative gate and an exact hostile control.
It can be consumed by the RH comparison program (#205/#207/#215/#219)
only AFTER a separate explicit-formula source identity and residual budget
has been proved. The analogies to recent signed-form inertia arguments
are NOT claims about the zero distribution of the Riemann zeta function.
-/

namespace GRWTSK.Algebra.LinearAlgebra.SignedWeilComparisonGate

open GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge

variable {X ι : Type*} [Fintype ι]

/-- A completely source-bound comparison premise. This is an assumption
about a fixed signed consumer q and a positive finite Gram target A.
It does NOT define q by the Gram expression. -/
structure PositiveGramComparison (X ι : Type*) [Fintype ι] where
  source : X → ℝ
  port : X → (ι → ℝ)
  error : X → ℝ
  error_nonneg : ∀ x, 0 ≤ error x
  bound : ∀ x, |source x - positiveEnergy (port x)| ≤ error x

set_option linter.unusedVariables false in
/-- A source negative witness of margin mu requires comparison error
at least mu. Thus no small-error positive Gram model can silently
eliminate negative witnesses of the independently defined signed form. -/
theorem negativeWitness_forces_comparisonError
    (C : PositiveGramComparison X ι) (x : X)
    (mu : ℝ) (hmu : 0 ≤ mu)
    (hneg : C.source x ≤ -mu) :
    mu ≤ C.error x := by
  have hpositive : 0 ≤ positiveEnergy (C.port x) :=
    positiveEnergy_nonneg _
  have hbound := (abs_le.mp (C.bound x)).1
  linarith

/-- If the positive-Gram error tends to zero at a fixed source vector,
then the independent source form must be nonnegative at that vector.
All quantification over source vectors and every limit remain outside
this finite theorem. -/
theorem positive_of_arbitrarily_small_comparisonError
    (q : X → ℝ) (x : X)
    (hsmall : ∀ eps : ℝ, 0 < eps →
      ∃ (y : ι → ℝ),
        |q x - positiveEnergy y| ≤ eps) :
    0 ≤ q x := by
  by_contra hneg
  have hq : q x < 0 := lt_of_not_ge hneg
  let eps : ℝ := -(q x) / 2
  have heps : 0 < eps := by dsimp [eps]; linarith
  obtain ⟨y, hbound⟩ := hsmall eps heps
  have hp := positiveEnergy_nonneg y
  have hl := (abs_le.mp hbound).1
  dsimp [eps] at hl
  linarith

/-- Exact hostile control: nonnegative Hodge/Gram energy need not mean that
the signed source consumer has nonnegative orientation. -/
theorem signed_not_positive_from_positive_metric :
    ¬ (∀ x : Fin 2 → ℝ,
        0 ≤ positiveEnergy x →
        0 ≤ signedEnergy twoSectorMask x) := by
  intro h
  have hs := positive_energy_does_not_force_signed_positive
  have hp := h negativeSectorFixture (positiveEnergy_nonneg _)
  linarith [hs.2]

/-- A finite *signed* form can be matched with zero comparison error
without becoming nonnegative. This is a relation-level counterexample,
not a newly invented Weil-form identity. -/
theorem exactSignedPort_has_negativeWitness :
    ∃ (x : Fin 2 → ℝ),
      |signedEnergy twoSectorMask x -
        signedEnergy twoSectorMask x| = 0 ∧
      signedEnergy twoSectorMask x < 0 := by
  refine ⟨negativeSectorFixture, ?_, ?_⟩
  · simp
  · exact positive_energy_does_not_force_signed_positive.2

end GRWTSK.Algebra.LinearAlgebra.SignedWeilComparisonGate
