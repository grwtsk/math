/- Copyright (c) 2026 grwtsk contributors. MIT.
Original Möbius source and mathematical direction: grwtsk contributors.
Lean source assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusExactSlopeQuarticTermwisePositive
import Mathlib.Tactic

/-!
# A genuine ORIGINAL quartic character-energy DIAGONAL FLOOR at q >= N(T)^2

The previous original real Dirichlet character moment theorem proves
  sum_chi familyCross(chi,T)^2 =
    totient(q) * originalQuarticCollision(q,T).
For large q >= floor(exp T)^2 the ORIGINAL ratio collision is an
exact integer rational-slope collision. The adjacent sign-rigidity
proof candidate shows EACH surviving original signed four-index
term is NONNEGATIVE, not merely the entire ratio-fiber square sum.

The two ordered-pair indices may therefore be set equal p=t to
obtain a genuine DIAGONAL LOWER bound:
  sum_chi familyCross(chi,T)^2 >=
    totient(q) * sum_(p original ordered pair,
                      original ratio unit)
      (mu(p.1)*mu(p.2)*pickupResponseGram(T,p.1,p.2))^2.

The original m!=n condition, denominator-unit and selected ratio-unit
conditions remain in the unchanged pair weight. For composite moduli,
NO nonunit term is falsely retained; the source's diagonal floor has
the same full masks.

The claim is a LOWER bound, NOT an RH/GRH estimate or an individual
character cancellation theorem. In particular the large-modulus
growth condition cannot be silently replaced by fixed q.
Native Lean compilation/axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.DirichletQuarticDiagonalFloor

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.DirichletSignedCrossRatioMoment
open GRWTSK.NumberTheory.Moebius.DirichletOriginalQuarticCollision
open GRWTSK.NumberTheory.Moebius.ExactSlopeQuarticTermwisePositive

/-- The genuine original quartic DIAGONAL part. Unlike an invented
diagonal it retains every original offdiagonal/character-unit mask. -/
def originalRatioDiagonalEnergy (q : ℕ) [NeZero q] (T : ℝ) : ℝ :=
  ∑ p ∈ originalPairInventory T,
    if originalPairRatioKey q p ∈ originalUnitRatioSet q then
      (originalRealRatioPairWeight q T p)^2
    else 0

theorem originalRatioDiagonalEnergy_nonneg (q : ℕ) [NeZero q]
    (T : ℝ) : 0 ≤ originalRatioDiagonalEnergy q T := by
  unfold originalRatioDiagonalEnergy
  apply Finset.sum_nonneg
  intro p hp
  by_cases hm : originalPairRatioKey q p ∈ originalUnitRatioSet q
  · simp [hm, sq_nonneg]
  · simp [hm]

/-- The LARGE-MODULUS exact rational-slope property prevents
negative fourfold Möbius collision terms from subtracting the
genuine pair-diagonal contribution. -/
theorem originalRatioDiagonalEnergy_le_quartic
    (q : ℕ) [NeZero q] (T : ℝ) (hT : 0 ≤ T)
    (hq : ⌊Real.exp T⌋₊ * ⌊Real.exp T⌋₊ ≤ q) :
    originalRatioDiagonalEnergy q T ≤
      originalQuarticCollision q T := by
  unfold originalRatioDiagonalEnergy originalQuarticCollision
  apply Finset.sum_le_sum
  intro p hp
  have hsingle :
      (if originalPairRatioKey q p ∈ originalUnitRatioSet q then
        (originalRealRatioPairWeight q T p)^2 else 0) =
      (if originalPairRatioKey q p =
          originalPairRatioKey q p ∧
          originalPairRatioKey q p ∈ originalUnitRatioSet q
        then originalRealRatioPairWeight q T p *
          originalRealRatioPairWeight q T p else 0) := by
    simp [pow_two]
  rw [hsingle]
  exact Finset.single_le_sum
    (fun t ht hne =>
      originalQuarticCollision_each_term_nonneg_of_noAlias
        q T hT hq p t hp ht)
    hp

/-- Source-exact unconditional finite lower bound for the ALL-character
real signed fourth-order response, retaining the exact original
denominator-unit and unit-ratio masks at composite q. -/
theorem allCharactersRealCross_secondMoment_ge_diagonal
    (q : ℕ) [NeZero q] (T : ℝ) (hT : 0 ≤ T)
    (hq : ⌊Real.exp T⌋₊ * ⌊Real.exp T⌋₊ ≤ q) :
    (q.totient : ℝ) * originalRatioDiagonalEnergy q T ≤
      ∑ χ : DirichletCharacter ℂ q,
        (familyCross (dirichletCharacterCoefficients χ) T)^2 := by
  calc
    (q.totient : ℝ) * originalRatioDiagonalEnergy q T ≤
        (q.totient : ℝ) * originalQuarticCollision q T :=
      mul_le_mul_of_nonneg_left
        (originalRatioDiagonalEnergy_le_quartic q T hT hq)
        (by positivity)
    _ = ∑ χ : DirichletCharacter ℂ q,
        (familyCross (dirichletCharacterCoefficients χ) T)^2 :=
      (allCharactersRealCross_secondMoment_eq_quartic q T).symm

end GRWTSK.NumberTheory.Moebius.DirichletQuarticDiagonalFloor
