/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
Imported Mathlib and GRWTSK sources retain their licenses.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Outside GRWTSK.lean until pinned kernel and transitive axiom receipts.
-/
import GRWTSK.Geometry.Hodge.FiniteMatrixHodge
import GRWTSK.NumberTheory.Farey.FareyResidueChannelDecomposition
import Mathlib.Tactic

/-!
# Cyclic-residue Hodge mechanics and the Farey nonunit obstruction

The cyclic graph on ZMod q has coboundary f(x+1)-f(x). Its real
Hodge Laplacian delta*delta is positive semidefinite. Unit/nonunit
coordinate cutoffs are complementary idempotents, orthogonal in
the counting pairing; they need not be invariant under translation
or the cyclic Hodge Laplacian. Modulo four, the additive point mass
at the actual Farey nonunit coordinate 2 shifts into unit coordinate 1.

This is finite graph Hodge theory, not the algebraic Hodge conjecture,
a zero-density estimate, an L-function spectral channel, or RH.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Farey.CyclicResidueHodge

open scoped BigOperators
open Matrix
open GRWTSK.Geometry.Hodge.FiniteGraphCellular
open GRWTSK.Geometry.Hodge.FiniteMatrixHodge
open GRWTSK.NumberTheory.Farey.ResidueChannelDecomposition

/-- The oriented edge at x goes from x to x+1. -/
def cyclicIncidence (q : ℕ) [NeZero q] :
    OrientedIncidence (ZMod q) (ZMod q) where
  source := id
  target := fun x => x + 1

@[simp] theorem cyclic_coboundary_apply (q : ℕ) [NeZero q]
    (f : ZMod q → ℝ) (x : ZMod q) :
    (cyclicIncidence q).coboundary ℝ f x = f (x + 1) - f x := rfl

/-- The cyclic edge-square energy is nonnegative. -/
theorem cyclic_energy_nonneg (q : ℕ) [NeZero q]
    (f : ZMod q → ℝ) :
    0 ≤ (cyclicIncidence q).energy f :=
  (cyclicIncidence q).energy_nonneg f

/-- Positive semidefinite finite cyclic Hodge Laplacian. -/
theorem cyclic_laplacian_nonneg (q : ℕ) [NeZero q]
    (f : ZMod q → ℝ) :
    0 ≤ f ⬝ᵥ (laplacian (cyclicIncidence q) f) :=
  laplacian_nonneg (cyclicIncidence q) f

/-- Its kernel is precisely the coboundary kernel. -/
theorem cyclic_laplacian_kernel (q : ℕ) [NeZero q] :
    LinearMap.ker (laplacian (cyclicIncidence q)) =
      LinearMap.ker (delta (cyclicIncidence q)) :=
  laplacian_ker_eq_delta_ker (cyclicIncidence q)

/-- Multiplicative-unit coordinate projection of a complex residue signal. -/
def unitPart (q : ℕ) [NeZero q] (f : ZMod q → ℂ) : ZMod q → ℂ :=
  fun x => if IsUnit x then f x else 0

/-- Complementary nonunit coordinate projection. -/
def nonunitPart (q : ℕ) [NeZero q] (f : ZMod q → ℂ) : ZMod q → ℂ :=
  fun x => if IsUnit x then 0 else f x

theorem unit_add_nonunit (q : ℕ) [NeZero q] (f : ZMod q → ℂ) :
    unitPart q f + nonunitPart q f = f := by
  classical
  funext x
  by_cases hx : IsUnit x <;> simp [unitPart, nonunitPart, hx]

theorem unitPart_idempotent (q : ℕ) [NeZero q] (f : ZMod q → ℂ) :
    unitPart q (unitPart q f) = unitPart q f := by
  classical
  funext x
  by_cases hx : IsUnit x <;> simp [unitPart, hx]

theorem nonunitPart_idempotent (q : ℕ) [NeZero q] (f : ZMod q → ℂ) :
    nonunitPart q (nonunitPart q f) = nonunitPart q f := by
  classical
  funext x
  by_cases hx : IsUnit x <;> simp [nonunitPart, hx]

/-- Cross-coordinate mass vanishes pointwise. -/
theorem unit_nonunit_pointwise_zero (q : ℕ) [NeZero q]
    (f g : ZMod q → ℂ) (x : ZMod q) :
    unitPart q f x * nonunitPart q g x = 0 := by
  classical
  by_cases hx : IsUnit x <;> simp [unitPart, nonunitPart, hx]

/-- Orthogonal unit/nonunit decomposition in the counting pairing. -/
theorem unit_nonunit_counting_orthogonal (q : ℕ) [NeZero q]
    (f g : ZMod q → ℂ) :
    (∑ x : ZMod q, unitPart q f x * conj (nonunitPart q g x)) = 0 := by
  classical
  apply Finset.sum_eq_zero
  intro x _
  by_cases hx : IsUnit x <;> simp [unitPart, nonunitPart, hx]

theorem unitPart_nonunitPart_zero (q : ℕ) [NeZero q]
    (f : ZMod q → ℂ) :
    unitPart q (nonunitPart q f) = 0 := by
  classical
  funext x
  by_cases hx : IsUnit x <;> simp [unitPart, nonunitPart, hx]

def translateUp (q : ℕ) [NeZero q] (f : ZMod q → ℂ) : ZMod q → ℂ :=
  fun x => f (x + 1)

/-- Reuse the additive point mass at the real Farey eye's right numerator. -/
def fareyNonunitPointMass (x : ZMod 4) : ℂ :=
  additiveResidueSelector 4 x nonunitFareyRightResidue

theorem fareyNonunitPointMass_eq_indicator (x : ZMod 4) :
    fareyNonunitPointMass x =
      if x = (2 : ZMod 4) then (1 : ℂ) else 0 := by
  rw [fareyNonunitPointMass, additiveResidueSelector_eq_indicator]
  simp [nonunitFareyRightResidue, GRWTSK.NumberTheory.Farey.nonunitEye]

/-- Concrete failure of translation-equivariance of the unit projector. -/
theorem farey_unit_projector_not_translation_equivariant :
    unitPart 4 (translateUp 4 fareyNonunitPointMass) ≠
      translateUp 4 (unitPart 4 fareyNonunitPointMass) := by
  intro heq
  have h := congrFun heq (1 : ZMod 4)
  have hone : IsUnit (1 : ZMod 4) := isUnit_one
  have htwo : ¬ IsUnit (2 : ZMod 4) :=
    GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.two_not_isUnit_zmod_four
  have hshift : (1 : ZMod 4) + 1 = (2 : ZMod 4) := by norm_num
  simp [unitPart, translateUp, hshift, hone, htwo,
    fareyNonunitPointMass_eq_indicator] at h

end GRWTSK.NumberTheory.Farey.CyclicResidueHodge
