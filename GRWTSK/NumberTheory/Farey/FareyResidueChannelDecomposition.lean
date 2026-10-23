/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Imported Mathlib declarations retain their upstream authorship and license.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Do not import this module in GRWTSK.lean before the pinned transitive
compiler, fresh kernel, and axiom/unsafe audits have actual receipts.
-/
import GRWTSK.NumberTheory.Farey.GaussianModularDirichletBridge
import Mathlib.NumberTheory.DirichletCharacter.Orthogonality

/-!
# Exact additive and multiplicative residue channels for Farey coordinates

For a positive modulus q, the additive character average detects every
residue b in ZMod q. Dirichlet-character orthogonality realizes the SAME
selector, up to the factor phi(q), when the *target* b is a unit:

  sum_chi chi(b⁻¹) chi(a) = phi(q) * 1_{a=b}.

When b is not a unit, the unnormalized additive selector is retained as
an explicit residual. The multiplicative channel is then zero, and no
finite linear combination of ordinary Dirichlet characters can recover
the nonunit point mass: all the characters vanish at b.

The resulting decomposition is exact finite algebra, not a Dirichlet
L-function estimate. The Farey 1/2 < 2/3 witness has determinant one
but contains the nonunit coordinate 2 modulo 4. Determinant-one
unimodularity must not be confused with unit status of each entry.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Farey.ResidueChannelDecomposition

/-- The full additive frequency projector for the exact residue a = b. -/
def additiveResidueSelector (q : ℕ) [NeZero q] (a b : ZMod q) : ℂ :=
  GRWTSK.Analysis.Fourier.FiniteAdditiveProjector.characterAverage q (a - b)

/-- Additive orthogonality detects every residue, including nonunits. -/
theorem additiveResidueSelector_eq_indicator (q : ℕ) [NeZero q]
    (a b : ZMod q) :
    additiveResidueSelector q a b = if a = b then 1 else 0 := by
  simpa only [additiveResidueSelector, sub_eq_zero] using
    (GRWTSK.Analysis.Fourier.FiniteAdditiveProjector.characterAverage_eq_indicator
      q (a - b))

/-- The multiplicative orthogonality sum anchored at target b.
For an explicit indicator comparison, b must be a unit. -/
def unitCharacterSum (q : ℕ) [NeZero q] (a b : ZMod q) : ℂ :=
  ∑ χ : DirichletCharacter ℂ q, χ b⁻¹ * χ a

/-- Exact agreement, scaled by Euler's totient, for any unit target.
No cancellation estimate, positivity bound, or Siegel-zero theorem is used. -/
theorem unitCharacterSum_eq_totient_mul_selector (q : ℕ) [NeZero q]
    (a b : ZMod q) (hb : IsUnit b) :
    unitCharacterSum q a b =
      (q.totient : ℂ) * additiveResidueSelector q a b := by
  calc
    unitCharacterSum q a b =
        if b = a then (q.totient : ℂ) else 0 := by
      simpa only [unitCharacterSum] using
        (DirichletCharacter.sum_char_inv_mul_char_eq ℂ hb a)
    _ = (q.totient : ℂ) * additiveResidueSelector q a b := by
      rw [additiveResidueSelector_eq_indicator]
      by_cases h : a = b
      · subst a
        simp
      · have h' : b ≠ a := Ne.symm h
        simp [h, h']

/-- Keep only the character channel for unit targets; otherwise it is zero. -/
def unitCharacterCarrier (q : ℕ) [NeZero q] (a b : ZMod q) : ℂ := by
  classical
  exact if IsUnit b then unitCharacterSum q a b else 0

/-- The full additive selector left over at nonunit targets. -/
def nonunitAdditiveResidual (q : ℕ) [NeZero q] (a b : ZMod q) : ℂ := by
  classical
  exact if IsUnit b then 0 else additiveResidueSelector q a b

/-- Exact gcd/unit-stratified decomposition, with the totient scale visible.
There is no suppressed claim that an arbitrary target is a unit. -/
theorem scaled_selector_channels (q : ℕ) [NeZero q] (a b : ZMod q) :
    (q.totient : ℂ) * additiveResidueSelector q a b =
      unitCharacterCarrier q a b +
        (q.totient : ℂ) * nonunitAdditiveResidual q a b := by
  classical
  by_cases hb : IsUnit b
  · simp [unitCharacterCarrier, nonunitAdditiveResidual, hb,
      unitCharacterSum_eq_totient_mul_selector q a b hb]
  · simp [unitCharacterCarrier, nonunitAdditiveResidual, hb]

/-- At a nonunit target, its additive point mass survives in the residual. -/
theorem nonunit_residual_on_diagonal (q : ℕ) [NeZero q]
    (b : ZMod q) (hb : ¬ IsUnit b) :
    nonunitAdditiveResidual q b b = 1 := by
  classical
  simp [nonunitAdditiveResidual, hb, additiveResidueSelector_eq_indicator]

/-- Arbitrary ordinary Dirichlet coefficients still vanish at a nonunit. -/
theorem dirichlet_sum_zero_of_nonunit (q : ℕ) [NeZero q]
    (b : ZMod q) (hb : ¬ IsUnit b)
    (coefficient : DirichletCharacter ℂ q → ℂ) :
    (∑ χ : DirichletCharacter ℂ q, coefficient χ * χ b) = 0 := by
  apply Finset.sum_eq_zero
  intro χ _
  rw [MulChar.map_nonunit χ hb, mul_zero]

/-- The full additive point-mass selector on a nonunit cannot be expressed
by an arbitrary finite linear combination of ordinary characters. -/
theorem no_pure_dirichlet_expansion_of_nonunit (q : ℕ) [NeZero q]
    (b : ZMod q) (hb : ¬ IsUnit b) :
    ¬ ∃ coefficient : DirichletCharacter ℂ q → ℂ,
      ∀ a : ZMod q,
        additiveResidueSelector q a b =
          ∑ χ : DirichletCharacter ℂ q, coefficient χ * χ a := by
  rintro ⟨coefficient, hrepresentation⟩
  have h := hrepresentation b
  rw [additiveResidueSelector_eq_indicator, if_pos rfl,
      dirichlet_sum_zero_of_nonunit q b hb coefficient] at h
  exact one_ne_zero h

/-- Every Farey right numerator admits the exact unit/nonunit split,
without presuming invertibility of that coordinate modulo q. -/
theorem farey_right_coordinate_channels
    (I : GRWTSK.NumberTheory.Farey.Cell) (q : ℕ) [NeZero q]
    (a : ZMod q) :
    (q.totient : ℂ) *
        additiveResidueSelector q a ((I.rightNum : ℕ) : ZMod q) =
      unitCharacterCarrier q a ((I.rightNum : ℕ) : ZMod q) +
        (q.totient : ℂ) *
          nonunitAdditiveResidual q a ((I.rightNum : ℕ) : ZMod q) :=
  scaled_selector_channels q a ((I.rightNum : ℕ) : ZMod q)

/-- The exact nonunit right numerator of the previously constructed cell. -/
def nonunitFareyRightResidue : ZMod 4 :=
  ((GRWTSK.NumberTheory.Farey.nonunitEye.rightNum : ℕ) : ZMod 4)

theorem nonunitFareyRightResidue_nonunit :
    ¬ IsUnit nonunitFareyRightResidue := by
  simpa only [nonunitFareyRightResidue] using
    GRWTSK.NumberTheory.Farey.nonunitEye_right_nonunit

/-- A determinant-one Farey cell with nonzero additive residue and a
provably insufficient pure multiplicative channel. The last conjunct
rules out the indicated REPRESENTATION, not a zero-free region or RH. -/
theorem farey_nonunit_channel_certificate :
    GRWTSK.NumberTheory.Farey.modularDet
        GRWTSK.NumberTheory.Farey.nonunitEye 4 = 1 ∧
      nonunitAdditiveResidual 4
        nonunitFareyRightResidue nonunitFareyRightResidue = 1 ∧
      unitCharacterCarrier 4
        nonunitFareyRightResidue nonunitFareyRightResidue = 0 ∧
      ¬ ∃ coefficient : DirichletCharacter ℂ 4 → ℂ,
        ∀ a : ZMod 4,
          additiveResidueSelector 4 a nonunitFareyRightResidue =
            ∑ χ : DirichletCharacter ℂ 4, coefficient χ * χ a := by
  refine ⟨GRWTSK.NumberTheory.Farey.modularDet_eq_one
      GRWTSK.NumberTheory.Farey.nonunitEye 4,
    nonunit_residual_on_diagonal 4 nonunitFareyRightResidue
      nonunitFareyRightResidue_nonunit, ?_, ?_⟩
  · classical
    simp [unitCharacterCarrier, nonunitFareyRightResidue_nonunit]
  · exact no_pure_dirichlet_expansion_of_nonunit 4
      nonunitFareyRightResidue nonunitFareyRightResidue_nonunit

end GRWTSK.NumberTheory.Farey.ResidueChannelDecomposition
