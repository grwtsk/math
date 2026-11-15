/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSecondRunDiagonal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunSecondCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeCheckerCellDeficit
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeStageSineReturn

/-!
# Assembly of the conductor-three checker blocks

The first two retained runs and the crosses from the third to both earlier
runs supply five verified lower-triangular blocks. The numerator is their
exact subtotal plus the sum over the other 86 lower blocks. Endpoint certificates for pieces of later runs lie inside those
blocks. Subtracting the known subtotal from the literal checker cutoff
gives an equivalent integer test on the remaining sum.

The strict test gives the published rectangle margin. A larger cutoff is
sufficient for the original radius-one stage, whose input is a rectangle
at most one. The whole-cell deficit theorem supplies both returns for
parity-one characters on the literal midpoint table.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

open CheckerRounding (checkerMidpointLower)
open DirichletStageChain OddRootProjection

private def lowerRunPairs : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  (retainedRuns.toFinset ×ˢ retainedRuns.toFinset).filter fun p => p.2.1 ≤ p.1.1

private def certifiedRunPairs : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  {((0, 96), (0, 96)), ((284, 479), (0, 96)), ((284, 479), (284, 479)),
    ((666, 853), (0, 96)), ((666, 853), (284, 479))}

private def runPairSubtotal (p : (ℕ × ℕ) × (ℕ × ℕ)) : ℕ :=
  triangleBlock (price literalRawDeficit) sincEntry
    (retainedRunCells p.1) (retainedRunCells p.2)

/-- Lower block pairs still needed after the five certified subtotals.
Each closed interval uses the original grid indices. -/
def remainingRunPairs : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  lowerRunPairs \ certifiedRunPairs

private def sumRemaining (f : (ℕ × ℕ) × (ℕ × ℕ) → ℕ) : ℕ :=
  ∑ p ∈ remainingRunPairs, f p

/-- The still-needed contribution, in the same integer units as `total`. -/
def remainingBlockSum : ℕ := sumRemaining runPairSubtotal

private theorem remainingBlockSum_eq : remainingBlockSum = sumRemaining runPairSubtotal := rfl

/-- Expand the remaining contribution directly into the original block costs. -/
theorem remainingBlockSum_eq_sum :
    remainingBlockSum = ∑ p ∈ remainingRunPairs,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl


private theorem run_bounds :
    ∀ a ∈ retainedRuns.toFinset, a.1 ≤ a.2 ∧ a.2 < 32768 := by decide +kernel

private theorem run_right_lt_next_left {a b : ℕ × ℕ}
    (ha : a ∈ retainedRuns.toFinset) (hb : b ∈ retainedRuns.toFinset)
    (hab : a.1 < b.1) : a.2 < b.1 := by
  by_contra! h
  have hne : a ≠ b := fun e => (e ▸ hab).false
  let i : Fin 32768 := ⟨b.1, (run_bounds b hb).1.trans_lt (run_bounds b hb).2⟩
  have hia : i ∈ retainedRunCells a :=
    Finset.mem_filter.mpr ⟨Finset.mem_univ _, hab.le, h⟩
  have hib : i ∈ retainedRunCells b :=
    Finset.mem_filter.mpr ⟨Finset.mem_univ _, le_rfl, (run_bounds b hb).1⟩
  exact Finset.disjoint_left.mp (retainedRunCells_pairwiseDisjoint ha hb hne) hia hib

private theorem sum_certifiedRunPairs (f : (ℕ × ℕ) × (ℕ × ℕ) → ℕ) :
    (∑ p ∈ certifiedRunPairs, f p) =
      f ((0, 96), (0, 96)) + (f ((284, 479), (0, 96)) +
        (f ((284, 479), (284, 479)) + (f ((666, 853), (0, 96)) +
          f ((666, 853), (284, 479))))) := by
  unfold certifiedRunPairs
  rw [Finset.sum_insert (by decide), Finset.sum_insert (by decide),
    Finset.sum_insert (by decide), Finset.sum_insert (by decide), Finset.sum_singleton]

private theorem sum_certified_values (f : (ℕ × ℕ) × (ℕ × ℕ) → ℕ)
    (h₁ : f ((0, 96), (0, 96)) = 17405127940461858326897087293074263913445848239025)
    (h₂ : f ((284, 479), (0, 96)) = 701039135599897704764551425563095860425326800384984)
    (h₃ : f ((284, 479), (284, 479)) = 14961632208278026891628444835409540279661179542674737)
    (h₄ : f ((666, 853), (0, 96)) = 238780014751586666605561128830481458346334797588634)
    (h₅ : f ((666, 853), (284, 479)) = 1311278393856190875689196326702710022402905770354834) :
    (∑ p ∈ certifiedRunPairs, f p) = 17230134880426163997014650803798901884749192759242214 := by
  rw [sum_certifiedRunPairs, h₁, h₂, h₃, h₄, h₅]

private theorem certifiedRunPairs_subtotal :
    (∑ p ∈ certifiedRunPairs, runPairSubtotal p) =
      17230134880426163997014650803798901884749192759242214 := by
  have hsecond : retainedRunCells (284, 479) = secondRetainedRunCells :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hdiagonal : runPairSubtotal ((284, 479), (284, 479)) =
      14961632208278026891628444835409540279661179542674737 :=
    (congrArg (fun s => triangleBlock (price literalRawDeficit) sincEntry s s) hsecond).trans
      secondRetainedRunDiagonal
  exact sum_certified_values runPairSubtotal firstRetainedRunDiagonal firstTwoRetainedRunsCross
    hdiagonal thirdWithFirstRetainedRunCross thirdWithSecondRetainedRunCross

private theorem sum_lowerRunPairs (f : (ℕ × ℕ) × (ℕ × ℕ) → ℕ)
    (h : certifiedRunPairs ⊆ lowerRunPairs) :
    (∑ p ∈ lowerRunPairs, f p) =
      (∑ p ∈ certifiedRunPairs, f p) + sumRemaining f :=
  (Finset.sum_sdiff (f := f) h).symm.trans (Nat.add_comm _ _)

private theorem add_known_to_remaining (f : (ℕ × ℕ) × (ℕ × ℕ) → ℕ)
    (n known remaining : ℕ)
    (htotal : n = ∑ p ∈ retainedRuns.toFinset ×ˢ retainedRuns.toFinset, f p)
    (hlower : (∑ p ∈ lowerRunPairs, f p) =
      ∑ p ∈ retainedRuns.toFinset ×ˢ retainedRuns.toFinset, f p)
    (hsubset : certifiedRunPairs ⊆ lowerRunPairs)
    (hknown : (∑ p ∈ certifiedRunPairs, f p) = known) (hremaining : remaining = sumRemaining f) :
    n = known + remaining := by
  rw [htotal, ← hlower, sum_lowerRunPairs f hsubset, hknown, hremaining]

/-- Exact decomposition for the midpoint table used by the original script. -/
theorem literal_total_eq_certified_add_remaining :
    total checkerMidpointLower =
      17230134880426163997014650803798901884749192759242214 + remainingBlockSum := by
  have hsubset : certifiedRunPairs ⊆ lowerRunPairs := by
    intro p hp
    simp [certifiedRunPairs] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl <;>
      exact Finset.mem_filter.mpr
        ⟨Finset.mem_product.mpr ⟨by decide, by decide⟩, by decide⟩
  have hlower :
      (∑ p ∈ lowerRunPairs, runPairSubtotal p) =
        ∑ p ∈ retainedRuns.toFinset ×ˢ retainedRuns.toFinset, runPairSubtotal p := by
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro p hp hnot
    obtain ⟨ha, hb⟩ := Finset.mem_product.mp hp
    have hab : p.1.1 < p.2.1 := by
      apply lt_of_not_ge
      intro h
      exact hnot (Finset.mem_filter.mpr ⟨hp, h⟩)
    have hsep := run_right_lt_next_left ha hb hab
    apply triangleBlock_eq_zero_of_lt
    intro i hi j hj
    change i.val < j.val
    exact lt_of_le_of_lt (Finset.mem_filter.mp hi).2.2
      (hsep.trans_le (Finset.mem_filter.mp hj).2.1)
  have htotal : total checkerMidpointLower =
      ∑ p ∈ retainedRuns.toFinset ×ˢ retainedRuns.toFinset, runPairSubtotal p := by
    rw [Finset.sum_product]
    exact total_eq_retainedRunBlocks checkerMidpointLower (fun _ => rfl)
  exact add_known_to_remaining runPairSubtotal (total checkerMidpointLower)
    17230134880426163997014650803798901884749192759242214 remainingBlockSum
    htotal hlower hsubset certifiedRunPairs_subtotal remainingBlockSum_eq

private theorem denominator_value :
    denominator = 161703598507366392702253809664000000000000000000000000 := by
  decide +kernel

private theorem strict_cutoff (remaining : ℕ) :
    (17230134880426163997014650803798901884749192759242214 + remaining) * 62500 <
        47961 * 161703598507366392702253809664000000000000000000000000 ↔
      remaining ≤ 106857325727762628969270068640922762115250807240757785 := by
  omega

private theorem unit_cutoff (remaining : ℕ) :
    17230134880426163997014650803798901884749192759242214 + remaining ≤
        161703598507366392702253809664000000000000000000000000 ↔
      remaining ≤ 144473463626940228705239158860201098115250807240757786 := by
  omega

/-- The literal strict integer test is equivalent to this inclusive upper
bound on the remaining 86 lower blocks. -/
theorem checker_test_iff_remainingBlockSum_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      remainingBlockSum ≤ 106857325727762628969270068640922762115250807240757785 :=
  (congrArg₂ (fun t d : ℕ => t * 62500 < 47961 * d)
    literal_total_eq_certified_add_remaining denominator_value).to_iff.trans
      (strict_cutoff remainingBlockSum)

/-- The integer test sufficient for a rectangle at most one allows this
larger remaining contribution. -/
theorem checker_unit_test_iff_remainingBlockSum_le :
    total checkerMidpointLower ≤ denominator ↔
      remainingBlockSum ≤ 144473463626940228705239158860201098115250807240757786 :=
  (congrArg₂ (fun t d : ℕ => t ≤ d)
    literal_total_eq_certified_add_remaining denominator_value).to_iff.trans
      (unit_cutoff remainingBlockSum)

/-- The remaining integer comparison supplies the original strict rectangle
margin, using the published whole-cell bound for the literal clipped prices. -/
theorem rectangle_lt_of_remainingBlockSum_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hremaining :
      remainingBlockSum ≤ 106857325727762628969270068640922762115250807240757785) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  (rectangle_le_checker_fraction χ checkerMidpointLower
    (q3SineDeficit_le_checkerCellPrice χ hodd)).trans_lt
      (checker_fraction_lt_of_integer_test checkerMidpointLower
        (checker_test_iff_remainingBlockSum_le.mpr hremaining))

/-- A bound on the same remaining blocks supplies stage zero with the
weaker cutoff corresponding to a rectangle at most one. -/
theorem primitiveStageLower_of_remainingBlockSum_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hremaining :
      remainingBlockSum ≤ 144473463626940228705239158860201098115250807240757786) :
    PrimitiveStageLower χ hp hn 0 := by
  have htotal : (total checkerMidpointLower : ℝ) ≤ (denominator : ℝ) := by
    exact_mod_cast checker_unit_test_iff_remainingBlockSum_le.mpr hremaining
  have hpos : (0 : ℝ) < (denominator : ℝ) := by
    rw [denominator_value]
    positivity
  have hquot : (total checkerMidpointLower : ℝ) / (denominator : ℝ) ≤ 1 :=
    (div_le_iff₀ hpos).mpr (by simpa only [one_mul] using htotal)
  exact q3_primitiveStageLower_of_rectangle_le_one χ hp hn hodd
    ((rectangle_le_checker_fraction χ checkerMidpointLower
      (q3SineDeficit_le_checkerCellPrice χ hodd)).trans hquot)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
