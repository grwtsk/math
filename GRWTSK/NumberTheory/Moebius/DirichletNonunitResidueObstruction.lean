/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #592. Direct stacked parent: draft PR #588 at
`8c511882f632af8382cde73b8832859f30e61e94`.
-/
import GRWTSK.NumberTheory.Moebius.NaturalScaleSquareModulusCongruenceL1
import Mathlib.NumberTheory.DirichletCharacter.Orthogonality
import Mathlib.Data.ZMod.Units

/-!
# Nonunit residue obstruction to a pure Dirichlet-character reduction

The square-modulus congruence fibres contain residue classes that are not units
modulo the square modulus. Ordinary Dirichlet characters vanish on such
nonunits, so multiplicative-character orthogonality cannot by itself represent
the complete residue selector used by the repository.

The actual Möbius witness is

`b=6, n=4, h=2, d=2, a=1, x=a+1=2`.

Then the midpoint is `x+h=4`, hence the base lies in the exact modulus-four
congruence fibre, while `x=2` is a nonunit modulo four. The associated
endpoint Möbius product is `mu(2)mu(6)=-1`, so this is a genuinely active
nonzero arithmetic term.

No claim is made that Dirichlet L-functions are irrelevant. The witness only
shows that a complete L-function route needs an additional gcd stratification,
additive-character layer, or another theorem treating nonunit residue classes.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The concrete base index `a=1` is active in the exact endpoint-six,
prefix-four, modulus-two congruence fibre. -/
theorem actualNonunitCongruenceBase_mem :
    1 ∈ mertensEndpointCrossCongruenceBaseSet 6 4 2 := by
  unfold mertensEndpointCrossCongruenceBaseSet
    mertensEndpointCrossCollisionBaseSet
    squareDivisorCongruence
    mertensCrossCollisionMidpoint
  norm_num [Nat.ModEq]

/-- The actual endpoint variable for the witness is the nonunit residue
`2 mod 4`. -/
theorem two_not_isUnit_zmod_four :
    ¬ IsUnit (2 : ZMod 4) := by
  rw [ZMod.isUnit_iff_coprime]
  norm_num

/-- Every ordinary complex Dirichlet character modulo four vanishes at the
nonunit residue two. -/
theorem dirichletCharacter_mod_four_two_eq_zero
    (χ : DirichletCharacter ℂ 4) :
    χ (2 : ZMod 4) = 0 := by
  exact MulChar.map_nonunit χ two_not_isUnit_zmod_four

/-- Exact Möbius value at six for the actual nonunit-residue witness. -/
@[simp] theorem moebiusReal_six_for_nonunit_residue_witness :
    moebiusReal 6 = 1 := by
  change ((ArithmeticFunction.moebius 6 : ℤ) : ℝ) = 1
  have hcop : Nat.Coprime 2 3 := by norm_num
  rw [show 6 = 2 * 3 by norm_num,
    ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop,
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)]
  norm_num

/-- The endpoint Möbius product at the active nonunit-residue witness is
nonzero, in fact exactly `-1`. -/
theorem actualNonunitEndpointProduct_eq_neg_one :
    mertensSquarefreeMidpointEndpointProduct 2 1 = -1 := by
  unfold mertensSquarefreeMidpointEndpointProduct
  rw [moebiusReal_two_for_diagonal_cancellation_witness,
    moebiusReal_six_for_nonunit_residue_witness]
  norm_num

/-- A generic finite linear combination of all ordinary Dirichlet characters
modulo four. -/
def dirichletCharacterLinearCombinationModFour
    (coefficient : DirichletCharacter ℂ 4 → ℂ)
    (x : ZMod 4) : ℂ :=
  ∑ χ : DirichletCharacter ℂ 4, coefficient χ * χ x

/-- Every such multiplicative-character linear combination vanishes at the
nonunit residue two. -/
theorem dirichletCharacterLinearCombinationModFour_two_eq_zero
    (coefficient : DirichletCharacter ℂ 4 → ℂ) :
    dirichletCharacterLinearCombinationModFour coefficient (2 : ZMod 4) = 0 := by
  unfold dirichletCharacterLinearCombinationModFour
  apply Finset.sum_eq_zero
  intro χ _hχ
  rw [dirichletCharacter_mod_four_two_eq_zero, mul_zero]

/-- Indicator of the exact residue class two modulo four. -/
def residueTwoIndicatorModFour
    (x : ZMod 4) : ℂ :=
  if x = (2 : ZMod 4) then 1 else 0

@[simp] theorem residueTwoIndicatorModFour_two :
    residueTwoIndicatorModFour (2 : ZMod 4) = 1 := by
  simp [residueTwoIndicatorModFour]

/-- Proposal that the residue-two indicator is represented by a pure finite
linear combination of ordinary multiplicative Dirichlet characters mod four. -/
def PureDirichletCharacterResidueTwoRepresentation : Prop :=
  ∃ coefficient : DirichletCharacter ℂ 4 → ℂ,
    ∀ x : ZMod 4,
      residueTwoIndicatorModFour x =
        dirichletCharacterLinearCombinationModFour coefficient x

/-- Pure ordinary Dirichlet characters cannot represent the residue-two
indicator modulo four because all characters vanish on that nonunit residue. -/
theorem not_pureDirichletCharacterResidueTwoRepresentation :
    ¬ PureDirichletCharacterResidueTwoRepresentation := by
  rintro ⟨coefficient, hrepresentation⟩
  have htwo := hrepresentation (2 : ZMod 4)
  rw [residueTwoIndicatorModFour_two,
    dirichletCharacterLinearCombinationModFour_two_eq_zero] at htwo
  norm_num at htwo

/-- Named scope disposition. This refutes only a pure multiplicative-character
reduction of every exact square-modulus residue selector. -/
def PureDirichletCharacterReductionRefutedAtScope : Prop :=
  ¬ PureDirichletCharacterResidueTwoRepresentation

theorem pureDirichletCharacterReductionRefutedAtScope :
    PureDirichletCharacterReductionRefutedAtScope :=
  not_pureDirichletCharacterResidueTwoRepresentation

/-- The repair required before a Dirichlet-L-function route can cover the
complete repository fibre is kept proof-relevant. -/
structure NonunitResidueRepairAdapter : Type where
  repairedRepresentation :
    Prop
  coversNonunitResidues :
    Prop
  preservesExactSquareModulus :
    Prop
  preservesSignedTwoPointSource :
    Prop

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.actualNonunitCongruenceBase_mem
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.actualNonunitEndpointProduct_eq_neg_one
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.not_pureDirichletCharacterResidueTwoRepresentation
