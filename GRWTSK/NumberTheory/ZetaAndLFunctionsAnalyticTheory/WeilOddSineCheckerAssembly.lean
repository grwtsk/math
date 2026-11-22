/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSecondRunDiagonal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunSecondCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunDiagonal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunSecondCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunThirdCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunDiagonal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunSecondCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunThirdCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunFourthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunDiagonal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunSecondCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunThirdCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFourthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFifthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunDiagonal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunSecondCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunThirdCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFourthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFifthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunSixthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunDiagonal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunSecondCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunThirdCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFourthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFifthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunSixthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunSeventhCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunDiagonal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunSecondCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunThirdCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFourthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFifthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunSixthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunSeventhCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunEighthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunDiagonal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunSecondCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunThirdCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFourthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFifthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunSixthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunSeventhCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunEighthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunNinthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunDiagonal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunSecondCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunThirdCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFourthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFifthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunSixthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunSeventhCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunEighthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunNinthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunTenthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunDiagonal
<<<<<<< HEAD
=======
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunSecondCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunThirdCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFourthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFifthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunSixthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunSeventhCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunEighthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunNinthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunTenthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunEleventhCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunDiagonal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunSecondCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunThirdCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunFourthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunFifthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunSixthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunSeventhCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunEighthCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunNinthCross
>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
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


/-- Replace one remaining block by its certified subtotal. The membership
hypothesis refers to the current set of pairs, and the new sum erases that pair. -/
theorem sum_runBlocks_eq_subtotal_add_sum_erase
    {pairs : Finset ((ℕ × ℕ) × (ℕ × ℕ))} {p : (ℕ × ℕ) × (ℕ × ℕ)} {subtotal : ℕ}
    (hp : p ∈ pairs)
    (hsubtotal : triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells p.1) (retainedRunCells p.2) = subtotal) :
    (∑ q ∈ pairs, triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells q.1) (retainedRunCells q.2)) =
      subtotal + ∑ q ∈ pairs.erase p, triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells q.1) (retainedRunCells q.2) := by
  change runPairSubtotal p = subtotal at hsubtotal
  change (∑ q ∈ pairs, runPairSubtotal q) = subtotal + ∑ q ∈ pairs.erase p, runPairSubtotal q
  rw [← hsubtotal, Finset.add_sum_erase pairs runPairSubtotal hp]


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

private def thirdDiagonalPair : (ℕ × ℕ) × (ℕ × ℕ) := ((666, 853), (666, 853))

private def fourthFirstPair : (ℕ × ℕ) × (ℕ × ℕ) := ((1177, 1294), (0, 96))

private theorem thirdDiagonalPair_mem : thirdDiagonalPair ∈ remainingRunPairs :=
  Finset.mem_sdiff.mpr
    ⟨Finset.mem_filter.mpr ⟨Finset.mem_product.mpr ⟨by decide, by decide⟩, by decide⟩,
      by decide⟩

private theorem fourthFirstPair_mem_after_third :
    fourthFirstPair ∈ remainingRunPairs.erase thirdDiagonalPair :=
  Finset.mem_erase.mpr
    ⟨by decide, Finset.mem_sdiff.mpr
      ⟨Finset.mem_filter.mpr ⟨Finset.mem_product.mpr ⟨by decide, by decide⟩, by decide⟩,
        by decide⟩⟩

/-- The remaining lower pairs after extracting the third diagonal and the
cross from the fourth run to the first. -/
def reducedRunPairs : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  (remainingRunPairs.erase thirdDiagonalPair).erase fourthFirstPair

set_option maxRecDepth 32768 in
private theorem remainingRunPairs_card : remainingRunPairs.card = 86 := by
  decide +kernel

/-- Each certified block removes one pair from the actual remaining set. -/
theorem reducedRunPairs_card : reducedRunPairs.card = 84 := by
  rw [reducedRunPairs, Finset.card_erase_of_mem fourthFirstPair_mem_after_third,
    Finset.card_erase_of_mem thirdDiagonalPair_mem, remainingRunPairs_card]

/-- Literal checker costs over the 84 remaining pairs. -/
def reducedBlockSum : ℕ := ∑ p ∈ reducedRunPairs, runPairSubtotal p

/-- Expand the reduced contribution into the public block costs. -/
theorem reducedBlockSum_eq_sum :
    reducedBlockSum = ∑ p ∈ reducedRunPairs, triangleBlock (price literalRawDeficit)
      sincEntry (retainedRunCells p.1) (retainedRunCells p.2) := rfl

private theorem add_erased_subtotals {n original afterFirst erased reduced a b subtotal : ℕ}
    (hn : n = original) (h₁ : original = a + afterFirst) (h₂ : afterFirst = b + erased)
    (hr : reduced = erased) (hab : a + b = subtotal) : n = subtotal + reduced := by
  omega

/-- The two newly certified blocks contribute their exact combined subtotal. -/
theorem remainingBlockSum_eq_add_reducedBlockSum :
    remainingBlockSum =
      34618038486723545022022631286248553998482522598197307 + reducedBlockSum := by
  have h₁ := sum_runBlocks_eq_subtotal_add_sum_erase thirdDiagonalPair_mem
    thirdRetainedRunDiagonal
  have h₂ := sum_runBlocks_eq_subtotal_add_sum_erase fourthFirstPair_mem_after_third
    fourthWithFirstRetainedRunCross
  exact add_erased_subtotals remainingBlockSum_eq_sum h₁ h₂ reducedBlockSum_eq_sum (by decide)

private theorem accumulate_reduced_subtotal {n old reduced : ℕ}
    (hn : n = 17230134880426163997014650803798901884749192759242214 + old)
    (hred : old = 34618038486723545022022631286248553998482522598197307 + reduced) :
    n = 51848173367149709019037282090047455883231715357439521 + reduced := by
  omega

/-- Total checker numerator after accounting for the seven certified blocks. -/
theorem literal_total_eq_certified_add_reduced :
    total checkerMidpointLower =
      51848173367149709019037282090047455883231715357439521 + reducedBlockSum :=
  accumulate_reduced_subtotal literal_total_eq_certified_add_remaining
    remainingBlockSum_eq_add_reducedBlockSum

private theorem reduced_strict_cutoff (r : ℕ) :
    34618038486723545022022631286248553998482522598197307 + r ≤
      106857325727762628969270068640922762115250807240757785 ↔
    r ≤ 72239287241039083947247437354674208116768284642560478 := by
  omega

private theorem reduced_unit_cutoff (r : ℕ) :
    34618038486723545022022631286248553998482522598197307 + r ≤
      144473463626940228705239158860201098115250807240757786 ↔
    r ≤ 109855425140216683683216527573952544116768284642560479 := by
  omega

/-- The original strict checker comparison after extracting both blocks. -/
theorem checker_test_iff_reducedBlockSum_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      reducedBlockSum ≤ 72239287241039083947247437354674208116768284642560478 :=
  checker_test_iff_remainingBlockSum_le.trans
    ((congrArg (fun n : ℕ => n ≤ 106857325727762628969270068640922762115250807240757785)
      remainingBlockSum_eq_add_reducedBlockSum).to_iff.trans
        (reduced_strict_cutoff reducedBlockSum))

/-- The separate checker comparison that suffices for stage zero. -/
theorem checker_unit_test_iff_reducedBlockSum_le :
    total checkerMidpointLower ≤ denominator ↔
      reducedBlockSum ≤ 109855425140216683683216527573952544116768284642560479 :=
  checker_unit_test_iff_remainingBlockSum_le.trans
    ((congrArg (fun n : ℕ => n ≤ 144473463626940228705239158860201098115250807240757786)
      remainingBlockSum_eq_add_reducedBlockSum).to_iff.trans
        (reduced_unit_cutoff reducedBlockSum))

/-- Return the original strict rectangle margin from the reduced bound. -/
theorem rectangle_lt_of_reducedBlockSum_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : reducedBlockSum ≤ 72239287241039083947247437354674208116768284642560478) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_remainingBlockSum_le χ hodd
    (checker_test_iff_remainingBlockSum_le.mp (checker_test_iff_reducedBlockSum_le.mpr hr))

/-- Return stage zero from the weaker reduced bound. -/
theorem primitiveStageLower_of_reducedBlockSum_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : reducedBlockSum ≤ 109855425140216683683216527573952544116768284642560479) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_remainingBlockSum_le χ hp hn hodd
    (checker_unit_test_iff_remainingBlockSum_le.mp (checker_unit_test_iff_reducedBlockSum_le.mpr hr))

private def fourthSecondPair : (ℕ × ℕ) × (ℕ × ℕ) := ((1177, 1294), (284, 479))

private theorem fourthSecondPair_mem : fourthSecondPair ∈ reducedRunPairs :=
  Finset.mem_erase.mpr
    ⟨by decide, Finset.mem_erase.mpr
      ⟨by decide, Finset.mem_sdiff.mpr
        ⟨Finset.mem_filter.mpr ⟨Finset.mem_product.mpr ⟨by decide, by decide⟩, by decide⟩,
          by decide⟩⟩⟩

/-- The remaining lower pairs after extracting the fourth-to-second cross. -/
def runPairsAfterFourthSecond : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  reducedRunPairs.erase fourthSecondPair

theorem runPairsAfterFourthSecond_card : runPairsAfterFourthSecond.card = 83 := by
  rw [runPairsAfterFourthSecond, Finset.card_erase_of_mem fourthSecondPair_mem,
    reducedRunPairs_card]

/-- Literal checker costs over the 83 pairs left by this erasure. -/
def blockSumAfterFourthSecond : ℕ := ∑ p ∈ runPairsAfterFourthSecond, runPairSubtotal p

theorem blockSumAfterFourthSecond_eq_sum :
    blockSumAfterFourthSecond = ∑ p ∈ runPairsAfterFourthSecond,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

private theorem bind_erased_subtotal {n expanded subtotal erased rest : ℕ}
    (hn : n = expanded) (hsubtotal : expanded = subtotal + erased) (hrest : rest = erased) :
    n = subtotal + rest := by
  rw [hn, hsubtotal, hrest]

/-- The original fourth-to-second subtotal is counted once in the split. -/
theorem reducedBlockSum_eq_add_blockSumAfterFourthSecond :
    reducedBlockSum = 136729321893220622228699442967370061135068769887440 + blockSumAfterFourthSecond :=
  bind_erased_subtotal reducedBlockSum_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase fourthSecondPair_mem fourthWithSecondRetainedRunCross)
    blockSumAfterFourthSecond_eq_sum

private theorem accumulate_fourth_second_subtotal {n old rest : ℕ}
    (hn : n = 51848173367149709019037282090047455883231715357439521 + old)
    (hrest : old = 136729321893220622228699442967370061135068769887440 + rest) :
    n = 51984902689042929641265981533014825944366784127326961 + rest := by
  omega

/-- The checker numerator with the eight exact contributions separated. -/
theorem literal_total_eq_certified_add_afterFourthSecond :
    total checkerMidpointLower =
      51984902689042929641265981533014825944366784127326961 + blockSumAfterFourthSecond :=
  accumulate_fourth_second_subtotal literal_total_eq_certified_add_reduced
    reducedBlockSum_eq_add_blockSumAfterFourthSecond

private theorem after_fourth_second_strict_cutoff (r : ℕ) :
    136729321893220622228699442967370061135068769887440 + r ≤
      72239287241039083947247437354674208116768284642560478 ↔
    r ≤ 72102557919145863325018737911706838055633215872673038 := by
  omega

private theorem after_fourth_second_unit_cutoff (r : ℕ) :
    136729321893220622228699442967370061135068769887440 + r ≤
      109855425140216683683216527573952544116768284642560479 ↔
    r ≤ 109718695818323463060987828130985174055633215872673039 := by
  omega

/-- The original strict integer test in terms of the 83-pair sum. -/
theorem checker_test_iff_blockSumAfterFourthSecond_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterFourthSecond ≤ 72102557919145863325018737911706838055633215872673038 :=
  checker_test_iff_reducedBlockSum_le.trans
    ((congrArg (fun n : ℕ => n ≤ 72239287241039083947247437354674208116768284642560478)
      reducedBlockSum_eq_add_blockSumAfterFourthSecond).to_iff.trans
        (after_fourth_second_strict_cutoff blockSumAfterFourthSecond))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterFourthSecond_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterFourthSecond ≤ 109718695818323463060987828130985174055633215872673039 :=
  checker_unit_test_iff_reducedBlockSum_le.trans
    ((congrArg (fun n : ℕ => n ≤ 109855425140216683683216527573952544116768284642560479)
      reducedBlockSum_eq_add_blockSumAfterFourthSecond).to_iff.trans
        (after_fourth_second_unit_cutoff blockSumAfterFourthSecond))

theorem rectangle_lt_of_blockSumAfterFourthSecond_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterFourthSecond ≤ 72102557919145863325018737911706838055633215872673038) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_reducedBlockSum_le χ hodd
    (checker_test_iff_reducedBlockSum_le.mp (checker_test_iff_blockSumAfterFourthSecond_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterFourthSecond_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterFourthSecond ≤ 109718695818323463060987828130985174055633215872673039) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_reducedBlockSum_le χ hp hn hodd
    (checker_unit_test_iff_reducedBlockSum_le.mp
      (checker_unit_test_iff_blockSumAfterFourthSecond_le.mpr hr))

private def fourthThirdPair : (ℕ × ℕ) × (ℕ × ℕ) := ((1177, 1294), (666, 853))

private def fourthDiagonalPair : (ℕ × ℕ) × (ℕ × ℕ) := ((1177, 1294), (1177, 1294))

private def fifthFirstPair : (ℕ × ℕ) × (ℕ × ℕ) := ((1610, 1795), (0, 96))

set_option maxRecDepth 32768 in
private theorem newPairs_mem :
    fourthThirdPair ∈ runPairsAfterFourthSecond ∧
      fourthDiagonalPair ∈ runPairsAfterFourthSecond ∧
      fifthFirstPair ∈ runPairsAfterFourthSecond := by
  decide +kernel

private theorem fourthDiagonalPair_mem_after_cross :
    fourthDiagonalPair ∈ runPairsAfterFourthSecond.erase fourthThirdPair :=
  Finset.mem_erase.mpr ⟨by decide, newPairs_mem.2.1⟩

private theorem fifthFirstPair_mem_after_fourth :
    fifthFirstPair ∈ (runPairsAfterFourthSecond.erase fourthThirdPair).erase fourthDiagonalPair :=
  Finset.mem_erase.mpr ⟨by decide, Finset.mem_erase.mpr ⟨by decide, newPairs_mem.2.2⟩⟩

/-- The remaining lower pairs after completing the fourth run and
extracting the fifth-to-first cross. -/
def runPairsAfterFifthFirst : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  ((runPairsAfterFourthSecond.erase fourthThirdPair).erase fourthDiagonalPair).erase fifthFirstPair

theorem runPairsAfterFifthFirst_card : runPairsAfterFifthFirst.card = 80 := by
  rw [runPairsAfterFifthFirst, Finset.card_erase_of_mem fifthFirstPair_mem_after_fourth,
    Finset.card_erase_of_mem fourthDiagonalPair_mem_after_cross,
    Finset.card_erase_of_mem newPairs_mem.1, runPairsAfterFourthSecond_card]

/-- Literal checker costs over the 80 pairs left by these erasures. -/
def blockSumAfterFifthFirst : ℕ := ∑ p ∈ runPairsAfterFifthFirst, runPairSubtotal p

theorem blockSumAfterFifthFirst_eq_sum :
    blockSumAfterFifthFirst = ∑ p ∈ runPairsAfterFifthFirst,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

private theorem bind_three_erased_subtotals
    {n expanded afterFirst afterSecond erased rest a b c subtotal : ℕ}
    (hn : n = expanded) (h₁ : expanded = a + afterFirst)
    (h₂ : afterFirst = b + afterSecond) (h₃ : afterSecond = c + erased)
    (hrest : rest = erased) (hadd : a + b + c = subtotal) :
    n = subtotal + rest := by
  omega

/-- Each of the three certified contributions is added once. -/
theorem blockSumAfterFourthSecond_eq_add_blockSumAfterFifthFirst :
    blockSumAfterFourthSecond =
      6129708141988184136489085423466338127349928595872548 + blockSumAfterFifthFirst :=
  bind_three_erased_subtotals blockSumAfterFourthSecond_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase newPairs_mem.1 fourthWithThirdRetainedRunCross)
    (sum_runBlocks_eq_subtotal_add_sum_erase fourthDiagonalPair_mem_after_cross
      fourthRetainedRunDiagonal)
    (sum_runBlocks_eq_subtotal_add_sum_erase fifthFirstPair_mem_after_fourth
      fifthWithFirstRetainedRunCross)
    blockSumAfterFifthFirst_eq_sum (by decide)

private theorem accumulate_fifth_first_subtotal {n old rest : ℕ}
    (hn : n = 51984902689042929641265981533014825944366784127326961 + old)
    (hrest : old = 6129708141988184136489085423466338127349928595872548 + rest) :
    n = 58114610831031113777755066956481164071716712723199509 + rest := by
  omega

/-- The checker numerator with eleven exact contributions separated. -/
theorem literal_total_eq_certified_add_afterFifthFirst :
    total checkerMidpointLower =
      58114610831031113777755066956481164071716712723199509 + blockSumAfterFifthFirst :=
  accumulate_fifth_first_subtotal literal_total_eq_certified_add_afterFourthSecond
    blockSumAfterFourthSecond_eq_add_blockSumAfterFifthFirst

private theorem after_fifth_first_strict_cutoff (r : ℕ) :
    6129708141988184136489085423466338127349928595872548 + r ≤
      72102557919145863325018737911706838055633215872673038 ↔
    r ≤ 65972849777157679188529652488240499928283287276800490 := by
  omega

private theorem after_fifth_first_unit_cutoff (r : ℕ) :
    6129708141988184136489085423466338127349928595872548 + r ≤
      109718695818323463060987828130985174055633215872673039 ↔
    r ≤ 103588987676335278924498742707518835928283287276800491 := by
  omega

/-- The original strict integer test in terms of the 80-pair sum. -/
theorem checker_test_iff_blockSumAfterFifthFirst_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterFifthFirst ≤ 65972849777157679188529652488240499928283287276800490 :=
  checker_test_iff_blockSumAfterFourthSecond_le.trans
    ((congrArg (fun n : ℕ => n ≤ 72102557919145863325018737911706838055633215872673038)
      blockSumAfterFourthSecond_eq_add_blockSumAfterFifthFirst).to_iff.trans
        (after_fifth_first_strict_cutoff blockSumAfterFifthFirst))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterFifthFirst_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterFifthFirst ≤ 103588987676335278924498742707518835928283287276800491 :=
  checker_unit_test_iff_blockSumAfterFourthSecond_le.trans
    ((congrArg (fun n : ℕ => n ≤ 109718695818323463060987828130985174055633215872673039)
      blockSumAfterFourthSecond_eq_add_blockSumAfterFifthFirst).to_iff.trans
        (after_fifth_first_unit_cutoff blockSumAfterFifthFirst))

theorem rectangle_lt_of_blockSumAfterFifthFirst_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterFifthFirst ≤ 65972849777157679188529652488240499928283287276800490) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterFourthSecond_le χ hodd
    (checker_test_iff_blockSumAfterFourthSecond_le.mp (checker_test_iff_blockSumAfterFifthFirst_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterFifthFirst_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterFifthFirst ≤ 103588987676335278924498742707518835928283287276800491) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterFourthSecond_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterFourthSecond_le.mp
      (checker_unit_test_iff_blockSumAfterFifthFirst_le.mpr hr))

private def fifthSecondPair : (ℕ × ℕ) × (ℕ × ℕ) := ((1610, 1795), (284, 479))

set_option maxRecDepth 32768 in
private theorem fifthSecondPair_mem : fifthSecondPair ∈ runPairsAfterFifthFirst := by
  decide +kernel

/-- The remaining lower pairs after extracting the fifth-to-second cross. -/
def runPairsAfterFifthSecond : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterFifthFirst.erase fifthSecondPair

theorem runPairsAfterFifthSecond_card : runPairsAfterFifthSecond.card = 79 := by
  rw [runPairsAfterFifthSecond, Finset.card_erase_of_mem fifthSecondPair_mem,
    runPairsAfterFifthFirst_card]

/-- Literal checker costs over the 79 pairs left by this erasure. -/
def blockSumAfterFifthSecond : ℕ := ∑ p ∈ runPairsAfterFifthSecond, runPairSubtotal p

theorem blockSumAfterFifthSecond_eq_sum :
    blockSumAfterFifthSecond = ∑ p ∈ runPairsAfterFifthSecond,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The fifth-to-second subtotal is counted once in the split. -/
theorem blockSumAfterFifthFirst_eq_add_blockSumAfterFifthSecond :
    blockSumAfterFifthFirst =
      194625489870117698805235341541821027570415798178360 + blockSumAfterFifthSecond :=
  bind_erased_subtotal blockSumAfterFifthFirst_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase fifthSecondPair_mem fifthWithSecondRetainedRunCross)
    blockSumAfterFifthSecond_eq_sum

private theorem accumulate_fifth_second_subtotal {n old rest : ℕ}
    (hn : n = 58114610831031113777755066956481164071716712723199509 + old)
    (hrest : old = 194625489870117698805235341541821027570415798178360 + rest) :
    n = 58309236320901231476560302298022985099287128521377869 + rest := by
  omega

/-- The checker numerator with twelve exact contributions separated. -/
theorem literal_total_eq_certified_add_afterFifthSecond :
    total checkerMidpointLower =
      58309236320901231476560302298022985099287128521377869 + blockSumAfterFifthSecond :=
  accumulate_fifth_second_subtotal literal_total_eq_certified_add_afterFifthFirst
    blockSumAfterFifthFirst_eq_add_blockSumAfterFifthSecond

private theorem after_fifth_second_strict_cutoff (r : ℕ) :
    194625489870117698805235341541821027570415798178360 + r ≤
      65972849777157679188529652488240499928283287276800490 ↔
    r ≤ 65778224287287561489724417146698678900712871478622130 := by
  omega

private theorem after_fifth_second_unit_cutoff (r : ℕ) :
    194625489870117698805235341541821027570415798178360 + r ≤
      103588987676335278924498742707518835928283287276800491 ↔
    r ≤ 103394362186465161225693507365977014900712871478622131 := by
  omega

/-- The original strict integer test in terms of the 79-pair sum. -/
theorem checker_test_iff_blockSumAfterFifthSecond_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterFifthSecond ≤ 65778224287287561489724417146698678900712871478622130 :=
  checker_test_iff_blockSumAfterFifthFirst_le.trans
    ((congrArg (fun n : ℕ => n ≤ 65972849777157679188529652488240499928283287276800490)
      blockSumAfterFifthFirst_eq_add_blockSumAfterFifthSecond).to_iff.trans
        (after_fifth_second_strict_cutoff blockSumAfterFifthSecond))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterFifthSecond_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterFifthSecond ≤ 103394362186465161225693507365977014900712871478622131 :=
  checker_unit_test_iff_blockSumAfterFifthFirst_le.trans
    ((congrArg (fun n : ℕ => n ≤ 103588987676335278924498742707518835928283287276800491)
      blockSumAfterFifthFirst_eq_add_blockSumAfterFifthSecond).to_iff.trans
        (after_fifth_second_unit_cutoff blockSumAfterFifthSecond))

theorem rectangle_lt_of_blockSumAfterFifthSecond_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterFifthSecond ≤ 65778224287287561489724417146698678900712871478622130) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterFifthFirst_le χ hodd
    (checker_test_iff_blockSumAfterFifthFirst_le.mp (checker_test_iff_blockSumAfterFifthSecond_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterFifthSecond_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterFifthSecond ≤ 103394362186465161225693507365977014900712871478622131) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterFifthFirst_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterFifthFirst_le.mp
      (checker_unit_test_iff_blockSumAfterFifthSecond_le.mpr hr))

private def fifthThirdPair : (ℕ × ℕ) × (ℕ × ℕ) := ((1610, 1795), (666, 853))

set_option maxRecDepth 32768 in
private theorem fifthThirdPair_mem : fifthThirdPair ∈ runPairsAfterFifthSecond := by
  decide +kernel

/-- The remaining lower pairs after extracting the fifth-to-third cross. -/
def runPairsAfterFifthThird : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterFifthSecond.erase fifthThirdPair

theorem runPairsAfterFifthThird_card : runPairsAfterFifthThird.card = 78 := by
  rw [runPairsAfterFifthThird, Finset.card_erase_of_mem fifthThirdPair_mem,
    runPairsAfterFifthSecond_card]

/-- Literal checker costs over the 78 pairs left by this erasure. -/
def blockSumAfterFifthThird : ℕ := ∑ p ∈ runPairsAfterFifthThird, runPairSubtotal p

theorem blockSumAfterFifthThird_eq_sum :
    blockSumAfterFifthThird = ∑ p ∈ runPairsAfterFifthThird,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The fifth-to-third subtotal is counted once in the split. -/
theorem blockSumAfterFifthSecond_eq_add_blockSumAfterFifthThird :
    blockSumAfterFifthSecond =
      911595983776199292133487386409646107035205390286796 + blockSumAfterFifthThird :=
  bind_erased_subtotal blockSumAfterFifthSecond_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase fifthThirdPair_mem fifthWithThirdRetainedRunCross)
    blockSumAfterFifthThird_eq_sum

private theorem accumulate_fifth_third_subtotal {n old rest : ℕ}
    (hn : n = 58309236320901231476560302298022985099287128521377869 + old)
    (hrest : old = 911595983776199292133487386409646107035205390286796 + rest) :
    n = 59220832304677430768693789684432631206322333911664665 + rest := by
  omega

/-- The checker numerator with thirteen exact contributions separated. -/
theorem literal_total_eq_certified_add_afterFifthThird :
    total checkerMidpointLower =
      59220832304677430768693789684432631206322333911664665 + blockSumAfterFifthThird :=
  accumulate_fifth_third_subtotal literal_total_eq_certified_add_afterFifthSecond
    blockSumAfterFifthSecond_eq_add_blockSumAfterFifthThird

private theorem after_fifth_third_strict_cutoff (r : ℕ) :
    911595983776199292133487386409646107035205390286796 + r ≤
      65778224287287561489724417146698678900712871478622130 ↔
    r ≤ 64866628303511362197590929760289032793677666088335334 := by
  omega

private theorem after_fifth_third_unit_cutoff (r : ℕ) :
    911595983776199292133487386409646107035205390286796 + r ≤
      103394362186465161225693507365977014900712871478622131 ↔
    r ≤ 102482766202688961933560019979567368793677666088335335 := by
  omega

/-- The original strict integer test in terms of the 78-pair sum. -/
theorem checker_test_iff_blockSumAfterFifthThird_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterFifthThird ≤ 64866628303511362197590929760289032793677666088335334 :=
  checker_test_iff_blockSumAfterFifthSecond_le.trans
    ((congrArg (fun n : ℕ => n ≤ 65778224287287561489724417146698678900712871478622130)
      blockSumAfterFifthSecond_eq_add_blockSumAfterFifthThird).to_iff.trans
        (after_fifth_third_strict_cutoff blockSumAfterFifthThird))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterFifthThird_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterFifthThird ≤ 102482766202688961933560019979567368793677666088335335 :=
  checker_unit_test_iff_blockSumAfterFifthSecond_le.trans
    ((congrArg (fun n : ℕ => n ≤ 103394362186465161225693507365977014900712871478622131)
      blockSumAfterFifthSecond_eq_add_blockSumAfterFifthThird).to_iff.trans
        (after_fifth_third_unit_cutoff blockSumAfterFifthThird))

theorem rectangle_lt_of_blockSumAfterFifthThird_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterFifthThird ≤ 64866628303511362197590929760289032793677666088335334) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterFifthSecond_le χ hodd
    (checker_test_iff_blockSumAfterFifthSecond_le.mp (checker_test_iff_blockSumAfterFifthThird_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterFifthThird_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterFifthThird ≤ 102482766202688961933560019979567368793677666088335335) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterFifthSecond_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterFifthSecond_le.mp
      (checker_unit_test_iff_blockSumAfterFifthThird_le.mpr hr))

private def fifthFourthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((1610, 1795), (1177, 1294))

set_option maxRecDepth 32768 in
private theorem fifthFourthPair_mem : fifthFourthPair ∈ runPairsAfterFifthThird := by
  decide +kernel

/-- The remaining lower pairs after extracting the fifth-to-fourth cross. -/
def runPairsAfterFifthFourth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterFifthThird.erase fifthFourthPair

theorem runPairsAfterFifthFourth_card : runPairsAfterFifthFourth.card = 77 := by
  rw [runPairsAfterFifthFourth, Finset.card_erase_of_mem fifthFourthPair_mem,
    runPairsAfterFifthThird_card]

/-- Literal checker costs over the 77 pairs left by this erasure. -/
def blockSumAfterFifthFourth : ℕ := ∑ p ∈ runPairsAfterFifthFourth, runPairSubtotal p

theorem blockSumAfterFifthFourth_eq_sum :
    blockSumAfterFifthFourth = ∑ p ∈ runPairsAfterFifthFourth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The fifth-to-fourth subtotal is counted once in the split. -/
theorem blockSumAfterFifthThird_eq_add_blockSumAfterFifthFourth :
    blockSumAfterFifthThird =
      522726590759205332500833322479218018949251457402886 + blockSumAfterFifthFourth :=
  bind_erased_subtotal blockSumAfterFifthThird_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase fifthFourthPair_mem fifthWithFourthRetainedRunCross)
    blockSumAfterFifthFourth_eq_sum

private theorem accumulate_fifth_fourth_subtotal {n old rest : ℕ}
    (hn : n = 59220832304677430768693789684432631206322333911664665 + old)
    (hrest : old = 522726590759205332500833322479218018949251457402886 + rest) :
    n = 59743558895436636101194623006911849225271585369067551 + rest := by
  omega

/-- The checker numerator with fourteen exact contributions separated. -/
theorem literal_total_eq_certified_add_afterFifthFourth :
    total checkerMidpointLower =
      59743558895436636101194623006911849225271585369067551 + blockSumAfterFifthFourth :=
  accumulate_fifth_fourth_subtotal literal_total_eq_certified_add_afterFifthThird
    blockSumAfterFifthThird_eq_add_blockSumAfterFifthFourth

private theorem after_fifth_fourth_strict_cutoff (r : ℕ) :
    522726590759205332500833322479218018949251457402886 + r ≤
      64866628303511362197590929760289032793677666088335334 ↔
    r ≤ 64343901712752156865090096437809814774728414630932448 := by
  omega

private theorem after_fifth_fourth_unit_cutoff (r : ℕ) :
    522726590759205332500833322479218018949251457402886 + r ≤
      102482766202688961933560019979567368793677666088335335 ↔
    r ≤ 101960039611929756601059186657088150774728414630932449 := by
  omega

/-- The original strict integer test in terms of the 77-pair sum. -/
theorem checker_test_iff_blockSumAfterFifthFourth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterFifthFourth ≤ 64343901712752156865090096437809814774728414630932448 :=
  checker_test_iff_blockSumAfterFifthThird_le.trans
    ((congrArg (fun n : ℕ => n ≤ 64866628303511362197590929760289032793677666088335334)
      blockSumAfterFifthThird_eq_add_blockSumAfterFifthFourth).to_iff.trans
        (after_fifth_fourth_strict_cutoff blockSumAfterFifthFourth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterFifthFourth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterFifthFourth ≤ 101960039611929756601059186657088150774728414630932449 :=
  checker_unit_test_iff_blockSumAfterFifthThird_le.trans
    ((congrArg (fun n : ℕ => n ≤ 102482766202688961933560019979567368793677666088335335)
      blockSumAfterFifthThird_eq_add_blockSumAfterFifthFourth).to_iff.trans
        (after_fifth_fourth_unit_cutoff blockSumAfterFifthFourth))

theorem rectangle_lt_of_blockSumAfterFifthFourth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterFifthFourth ≤ 64343901712752156865090096437809814774728414630932448) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterFifthThird_le χ hodd
    (checker_test_iff_blockSumAfterFifthThird_le.mp (checker_test_iff_blockSumAfterFifthFourth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterFifthFourth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterFifthFourth ≤ 101960039611929756601059186657088150774728414630932449) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterFifthThird_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterFifthThird_le.mp
      (checker_unit_test_iff_blockSumAfterFifthFourth_le.mpr hr))

private def fifthDiagonalPair : (ℕ × ℕ) × (ℕ × ℕ) := ((1610, 1795), (1610, 1795))

set_option maxRecDepth 32768 in
private theorem fifthDiagonalPair_mem : fifthDiagonalPair ∈ runPairsAfterFifthFourth := by
  decide +kernel

/-- The remaining lower pairs after extracting the fifth diagonal. -/
def runPairsAfterFifthDiagonal : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterFifthFourth.erase fifthDiagonalPair

theorem runPairsAfterFifthDiagonal_card : runPairsAfterFifthDiagonal.card = 76 := by
  rw [runPairsAfterFifthDiagonal, Finset.card_erase_of_mem fifthDiagonalPair_mem,
    runPairsAfterFifthFourth_card]

/-- Literal checker costs over the 76 pairs left by this erasure. -/
def blockSumAfterFifthDiagonal : ℕ := ∑ p ∈ runPairsAfterFifthDiagonal, runPairSubtotal p

theorem blockSumAfterFifthDiagonal_eq_sum :
    blockSumAfterFifthDiagonal = ∑ p ∈ runPairsAfterFifthDiagonal,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The fifth diagonal subtotal is counted once in the split. -/
theorem blockSumAfterFifthFourth_eq_add_blockSumAfterFifthDiagonal :
    blockSumAfterFifthFourth =
      55014137763846052174802493448274935154091047294209935 + blockSumAfterFifthDiagonal :=
  bind_erased_subtotal blockSumAfterFifthFourth_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase fifthDiagonalPair_mem fifthRetainedRunDiagonal)
    blockSumAfterFifthDiagonal_eq_sum

private theorem accumulate_fifth_diagonal_subtotal {n old rest : ℕ}
    (hn : n = 59743558895436636101194623006911849225271585369067551 + old)
    (hrest : old = 55014137763846052174802493448274935154091047294209935 + rest) :
    n = 114757696659282688275997116455186784379362632663277486 + rest := by
  omega

/-- The checker numerator with fifteen exact contributions separated. -/
theorem literal_total_eq_certified_add_afterFifthDiagonal :
    total checkerMidpointLower =
      114757696659282688275997116455186784379362632663277486 + blockSumAfterFifthDiagonal :=
  accumulate_fifth_diagonal_subtotal literal_total_eq_certified_add_afterFifthFourth
    blockSumAfterFifthFourth_eq_add_blockSumAfterFifthDiagonal

private theorem after_fifth_diagonal_strict_cutoff (r : ℕ) :
    55014137763846052174802493448274935154091047294209935 + r ≤
      64343901712752156865090096437809814774728414630932448 ↔
    r ≤ 9329763948906104690287602989534879620637367336722513 := by
  omega

private theorem after_fifth_diagonal_unit_cutoff (r : ℕ) :
    55014137763846052174802493448274935154091047294209935 + r ≤
      101960039611929756601059186657088150774728414630932449 ↔
    r ≤ 46945901848083704426256693208813215620637367336722514 := by
  omega

/-- The original strict integer test in terms of the 76-pair sum. -/
theorem checker_test_iff_blockSumAfterFifthDiagonal_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterFifthDiagonal ≤ 9329763948906104690287602989534879620637367336722513 :=
  checker_test_iff_blockSumAfterFifthFourth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 64343901712752156865090096437809814774728414630932448)
      blockSumAfterFifthFourth_eq_add_blockSumAfterFifthDiagonal).to_iff.trans
        (after_fifth_diagonal_strict_cutoff blockSumAfterFifthDiagonal))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterFifthDiagonal_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterFifthDiagonal ≤ 46945901848083704426256693208813215620637367336722514 :=
  checker_unit_test_iff_blockSumAfterFifthFourth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 101960039611929756601059186657088150774728414630932449)
      blockSumAfterFifthFourth_eq_add_blockSumAfterFifthDiagonal).to_iff.trans
        (after_fifth_diagonal_unit_cutoff blockSumAfterFifthDiagonal))

theorem rectangle_lt_of_blockSumAfterFifthDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterFifthDiagonal ≤ 9329763948906104690287602989534879620637367336722513) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterFifthFourth_le χ hodd
    (checker_test_iff_blockSumAfterFifthFourth_le.mp (checker_test_iff_blockSumAfterFifthDiagonal_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterFifthDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterFifthDiagonal ≤ 46945901848083704426256693208813215620637367336722514) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterFifthFourth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterFifthFourth_le.mp
      (checker_unit_test_iff_blockSumAfterFifthDiagonal_le.mpr hr))

/-- The remaining lower pairs after extracting all six sixth-run blocks. -/
def runPairsAfterSixthDiagonal : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterFifthDiagonal
    |>.erase ((2790, 2913), (0, 96))
    |>.erase ((2790, 2913), (284, 479))
    |>.erase ((2790, 2913), (666, 853))
    |>.erase ((2790, 2913), (1177, 1294))
    |>.erase ((2790, 2913), (1610, 1795))
    |>.erase ((2790, 2913), (2790, 2913))

set_option maxRecDepth 32768 in
theorem runPairsAfterSixthDiagonal_card : runPairsAfterSixthDiagonal.card = 70 := by
  decide +kernel

/-- Literal checker costs over the remaining 70 pairs. -/
def blockSumAfterSixthDiagonal : ℕ := ∑ p ∈ runPairsAfterSixthDiagonal, runPairSubtotal p

theorem blockSumAfterSixthDiagonal_eq_sum :
    blockSumAfterSixthDiagonal = ∑ p ∈ runPairsAfterSixthDiagonal,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

set_option maxRecDepth 32768 in
/-- Each sixth-run subtotal occurs once in the split. -/
theorem blockSumAfterFifthDiagonal_eq_add_blockSumAfterSixthDiagonal :
    blockSumAfterFifthDiagonal =
      4382869246783614325713727352756684084182797942847623 + blockSumAfterSixthDiagonal := by
  rw [blockSumAfterFifthDiagonal_eq_sum, blockSumAfterSixthDiagonal_eq_sum,
    runPairsAfterSixthDiagonal]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterFifthDiagonal)
    (p := ((2790, 2913), (0, 96))) (by decide +kernel) sixthWithFirstRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterFifthDiagonal
        |>.erase ((2790, 2913), (0, 96)))
    (p := ((2790, 2913), (284, 479))) (by decide +kernel) sixthWithSecondRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterFifthDiagonal
        |>.erase ((2790, 2913), (0, 96))
        |>.erase ((2790, 2913), (284, 479)))
    (p := ((2790, 2913), (666, 853))) (by decide +kernel) sixthWithThirdRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterFifthDiagonal
        |>.erase ((2790, 2913), (0, 96))
        |>.erase ((2790, 2913), (284, 479))
        |>.erase ((2790, 2913), (666, 853)))
    (p := ((2790, 2913), (1177, 1294))) (by decide +kernel) sixthWithFourthRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterFifthDiagonal
        |>.erase ((2790, 2913), (0, 96))
        |>.erase ((2790, 2913), (284, 479))
        |>.erase ((2790, 2913), (666, 853))
        |>.erase ((2790, 2913), (1177, 1294)))
    (p := ((2790, 2913), (1610, 1795))) (by decide +kernel) sixthWithFifthRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterFifthDiagonal
        |>.erase ((2790, 2913), (0, 96))
        |>.erase ((2790, 2913), (284, 479))
        |>.erase ((2790, 2913), (666, 853))
        |>.erase ((2790, 2913), (1177, 1294))
        |>.erase ((2790, 2913), (1610, 1795)))
    (p := ((2790, 2913), (2790, 2913))) (by decide +kernel) sixthRetainedRunDiagonal]
  omega

/-- The original numerator after separating the complete sixth run. -/
theorem literal_total_eq_certified_add_afterSixthDiagonal :
    total checkerMidpointLower =
      119140565906066302601710843807943468463545430606125109 + blockSumAfterSixthDiagonal := by
  rw [literal_total_eq_certified_add_afterFifthDiagonal,
    blockSumAfterFifthDiagonal_eq_add_blockSumAfterSixthDiagonal]
  omega

/-- The strict integer test in terms of the 70-pair residual. -/
theorem checker_test_iff_blockSumAfterSixthDiagonal_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterSixthDiagonal ≤ 4946894702122490364573875636778195536454569393874890 := by
  rw [checker_test_iff_blockSumAfterFifthDiagonal_le,
    blockSumAfterFifthDiagonal_eq_add_blockSumAfterSixthDiagonal]
  omega

/-- The unit test for the original radius-one stage in terms of the same residual. -/
theorem checker_unit_test_iff_blockSumAfterSixthDiagonal_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterSixthDiagonal ≤ 42563032601300090100542965856056531536454569393874891 := by
  rw [checker_unit_test_iff_blockSumAfterFifthDiagonal_le,
    blockSumAfterFifthDiagonal_eq_add_blockSumAfterSixthDiagonal]
  omega

theorem rectangle_lt_of_blockSumAfterSixthDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterSixthDiagonal ≤ 4946894702122490364573875636778195536454569393874890) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterFifthDiagonal_le χ hodd
    (checker_test_iff_blockSumAfterFifthDiagonal_le.mp
      (checker_test_iff_blockSumAfterSixthDiagonal_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterSixthDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterSixthDiagonal ≤ 42563032601300090100542965856056531536454569393874891) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterFifthDiagonal_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterFifthDiagonal_le.mp
      (checker_unit_test_iff_blockSumAfterSixthDiagonal_le.mpr hr))

/-- The remaining lower pairs after extracting all seven seventh-run blocks. -/
def runPairsAfterSeventhDiagonal : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterSixthDiagonal
    |>.erase ((4110, 4199), (0, 96))
    |>.erase ((4110, 4199), (284, 479))
    |>.erase ((4110, 4199), (666, 853))
    |>.erase ((4110, 4199), (1177, 1294))
    |>.erase ((4110, 4199), (1610, 1795))
    |>.erase ((4110, 4199), (2790, 2913))
    |>.erase ((4110, 4199), (4110, 4199))

set_option maxRecDepth 32768 in
theorem runPairsAfterSeventhDiagonal_card : runPairsAfterSeventhDiagonal.card = 63 := by
  decide +kernel

/-- Literal checker costs over the remaining 63 pairs. -/
def blockSumAfterSeventhDiagonal : ℕ := ∑ p ∈ runPairsAfterSeventhDiagonal, runPairSubtotal p

theorem blockSumAfterSeventhDiagonal_eq_sum :
    blockSumAfterSeventhDiagonal = ∑ p ∈ runPairsAfterSeventhDiagonal,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

set_option maxRecDepth 32768 in
/-- Each seventh-run subtotal occurs once in the split. -/
theorem blockSumAfterSixthDiagonal_eq_add_blockSumAfterSeventhDiagonal :
    blockSumAfterSixthDiagonal =
      827663310361097079689164800523799338411890332878489 + blockSumAfterSeventhDiagonal := by
  rw [blockSumAfterSixthDiagonal_eq_sum, blockSumAfterSeventhDiagonal_eq_sum,
    runPairsAfterSeventhDiagonal]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSixthDiagonal)
    (p := ((4110, 4199), (0, 96))) (by decide +kernel) seventhWithFirstRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSixthDiagonal
        |>.erase ((4110, 4199), (0, 96)))
    (p := ((4110, 4199), (284, 479))) (by decide +kernel) seventhWithSecondRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSixthDiagonal
        |>.erase ((4110, 4199), (0, 96))
        |>.erase ((4110, 4199), (284, 479)))
    (p := ((4110, 4199), (666, 853))) (by decide +kernel) seventhWithThirdRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSixthDiagonal
        |>.erase ((4110, 4199), (0, 96))
        |>.erase ((4110, 4199), (284, 479))
        |>.erase ((4110, 4199), (666, 853)))
    (p := ((4110, 4199), (1177, 1294))) (by decide +kernel) seventhWithFourthRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSixthDiagonal
        |>.erase ((4110, 4199), (0, 96))
        |>.erase ((4110, 4199), (284, 479))
        |>.erase ((4110, 4199), (666, 853))
        |>.erase ((4110, 4199), (1177, 1294)))
    (p := ((4110, 4199), (1610, 1795))) (by decide +kernel) seventhWithFifthRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSixthDiagonal
        |>.erase ((4110, 4199), (0, 96))
        |>.erase ((4110, 4199), (284, 479))
        |>.erase ((4110, 4199), (666, 853))
        |>.erase ((4110, 4199), (1177, 1294))
        |>.erase ((4110, 4199), (1610, 1795)))
    (p := ((4110, 4199), (2790, 2913))) (by decide +kernel) seventhWithSixthRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSixthDiagonal
        |>.erase ((4110, 4199), (0, 96))
        |>.erase ((4110, 4199), (284, 479))
        |>.erase ((4110, 4199), (666, 853))
        |>.erase ((4110, 4199), (1177, 1294))
        |>.erase ((4110, 4199), (1610, 1795))
        |>.erase ((4110, 4199), (2790, 2913)))
    (p := ((4110, 4199), (4110, 4199))) (by decide +kernel) seventhRetainedRunDiagonal]
  omega

/-- The original numerator after separating the complete seventh run. -/
theorem literal_total_eq_certified_add_afterSeventhDiagonal :
    total checkerMidpointLower =
      119968229216427399681400008608467267801957320939003598 + blockSumAfterSeventhDiagonal := by
  rw [literal_total_eq_certified_add_afterSixthDiagonal,
    blockSumAfterSixthDiagonal_eq_add_blockSumAfterSeventhDiagonal]
  omega

/-- The strict integer test in terms of the 63-pair residual. -/
theorem checker_test_iff_blockSumAfterSeventhDiagonal_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterSeventhDiagonal ≤ 4119231391761393284884710836254396198042679060996401 := by
  rw [checker_test_iff_blockSumAfterSixthDiagonal_le,
    blockSumAfterSixthDiagonal_eq_add_blockSumAfterSeventhDiagonal]
  omega

/-- The unit test for the original radius-one stage in terms of the same residual. -/
theorem checker_unit_test_iff_blockSumAfterSeventhDiagonal_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterSeventhDiagonal ≤ 41735369290938993020853801055532732198042679060996402 := by
  rw [checker_unit_test_iff_blockSumAfterSixthDiagonal_le,
    blockSumAfterSixthDiagonal_eq_add_blockSumAfterSeventhDiagonal]
  omega

theorem rectangle_lt_of_blockSumAfterSeventhDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterSeventhDiagonal ≤ 4119231391761393284884710836254396198042679060996401) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterSixthDiagonal_le χ hodd
    (checker_test_iff_blockSumAfterSixthDiagonal_le.mp
      (checker_test_iff_blockSumAfterSeventhDiagonal_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterSeventhDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterSeventhDiagonal ≤ 41735369290938993020853801055532732198042679060996402) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterSixthDiagonal_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterSixthDiagonal_le.mp
      (checker_unit_test_iff_blockSumAfterSeventhDiagonal_le.mpr hr))

/-- The remaining lower pairs after extracting all eight eighth-run blocks. -/
def runPairsAfterEighthDiagonal : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterSeventhDiagonal
    |>.erase ((5271, 5331), (0, 96))
    |>.erase ((5271, 5331), (284, 479))
    |>.erase ((5271, 5331), (666, 853))
    |>.erase ((5271, 5331), (1177, 1294))
    |>.erase ((5271, 5331), (1610, 1795))
    |>.erase ((5271, 5331), (2790, 2913))
    |>.erase ((5271, 5331), (4110, 4199))
    |>.erase ((5271, 5331), (5271, 5331))

set_option maxRecDepth 32768 in
theorem runPairsAfterEighthDiagonal_card : runPairsAfterEighthDiagonal.card = 55 := by
  decide +kernel

/-- Literal checker costs over the remaining 55 pairs. -/
def blockSumAfterEighthDiagonal : ℕ := ∑ p ∈ runPairsAfterEighthDiagonal, runPairSubtotal p

theorem blockSumAfterEighthDiagonal_eq_sum :
    blockSumAfterEighthDiagonal = ∑ p ∈ runPairsAfterEighthDiagonal,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

set_option maxRecDepth 32768 in
/-- Each eighth-run subtotal occurs once in the split. -/
theorem blockSumAfterSeventhDiagonal_eq_add_blockSumAfterEighthDiagonal :
    blockSumAfterSeventhDiagonal =
      67728198787903315714274499382616912294031952199685 + blockSumAfterEighthDiagonal := by
  rw [blockSumAfterSeventhDiagonal_eq_sum, blockSumAfterEighthDiagonal_eq_sum,
    runPairsAfterEighthDiagonal]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSeventhDiagonal)
    (p := ((5271, 5331), (0, 96))) (by decide +kernel) eighthWithFirstRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSeventhDiagonal
        |>.erase ((5271, 5331), (0, 96)))
    (p := ((5271, 5331), (284, 479))) (by decide +kernel) eighthWithSecondRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSeventhDiagonal
        |>.erase ((5271, 5331), (0, 96))
        |>.erase ((5271, 5331), (284, 479)))
    (p := ((5271, 5331), (666, 853))) (by decide +kernel) eighthWithThirdRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSeventhDiagonal
        |>.erase ((5271, 5331), (0, 96))
        |>.erase ((5271, 5331), (284, 479))
        |>.erase ((5271, 5331), (666, 853)))
    (p := ((5271, 5331), (1177, 1294))) (by decide +kernel) eighthWithFourthRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSeventhDiagonal
        |>.erase ((5271, 5331), (0, 96))
        |>.erase ((5271, 5331), (284, 479))
        |>.erase ((5271, 5331), (666, 853))
        |>.erase ((5271, 5331), (1177, 1294)))
    (p := ((5271, 5331), (1610, 1795))) (by decide +kernel) eighthWithFifthRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSeventhDiagonal
        |>.erase ((5271, 5331), (0, 96))
        |>.erase ((5271, 5331), (284, 479))
        |>.erase ((5271, 5331), (666, 853))
        |>.erase ((5271, 5331), (1177, 1294))
        |>.erase ((5271, 5331), (1610, 1795)))
    (p := ((5271, 5331), (2790, 2913))) (by decide +kernel) eighthWithSixthRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSeventhDiagonal
        |>.erase ((5271, 5331), (0, 96))
        |>.erase ((5271, 5331), (284, 479))
        |>.erase ((5271, 5331), (666, 853))
        |>.erase ((5271, 5331), (1177, 1294))
        |>.erase ((5271, 5331), (1610, 1795))
        |>.erase ((5271, 5331), (2790, 2913)))
    (p := ((5271, 5331), (4110, 4199))) (by decide +kernel) eighthWithSeventhRetainedRunCross]
  rw [sum_runBlocks_eq_subtotal_add_sum_erase (pairs := runPairsAfterSeventhDiagonal
        |>.erase ((5271, 5331), (0, 96))
        |>.erase ((5271, 5331), (284, 479))
        |>.erase ((5271, 5331), (666, 853))
        |>.erase ((5271, 5331), (1177, 1294))
        |>.erase ((5271, 5331), (1610, 1795))
        |>.erase ((5271, 5331), (2790, 2913))
        |>.erase ((5271, 5331), (4110, 4199)))
    (p := ((5271, 5331), (5271, 5331))) (by decide +kernel) eighthRetainedRunDiagonal]
  omega

/-- The original numerator after separating the complete eighth run. -/
theorem literal_total_eq_certified_add_afterEighthDiagonal :
    total checkerMidpointLower =
      120035957415215302997114283107849884714251352891203283 + blockSumAfterEighthDiagonal := by
  rw [literal_total_eq_certified_add_afterSeventhDiagonal,
    blockSumAfterSeventhDiagonal_eq_add_blockSumAfterEighthDiagonal]
  omega

/-- The strict integer test in terms of the 55-pair residual. -/
theorem checker_test_iff_blockSumAfterEighthDiagonal_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterEighthDiagonal ≤ 4051503192973489969170436336871779285748647108796716 := by
  rw [checker_test_iff_blockSumAfterSeventhDiagonal_le,
    blockSumAfterSeventhDiagonal_eq_add_blockSumAfterEighthDiagonal]
  omega

/-- The unit test for the original radius-one stage in terms of the same residual. -/
theorem checker_unit_test_iff_blockSumAfterEighthDiagonal_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterEighthDiagonal ≤ 41667641092151089705139526556150115285748647108796717 := by
  rw [checker_unit_test_iff_blockSumAfterSeventhDiagonal_le,
    blockSumAfterSeventhDiagonal_eq_add_blockSumAfterEighthDiagonal]
  omega

theorem rectangle_lt_of_blockSumAfterEighthDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEighthDiagonal ≤ 4051503192973489969170436336871779285748647108796716) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterSeventhDiagonal_le χ hodd
    (checker_test_iff_blockSumAfterSeventhDiagonal_le.mp
      (checker_test_iff_blockSumAfterEighthDiagonal_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterEighthDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEighthDiagonal ≤ 41667641092151089705139526556150115285748647108796717) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterSeventhDiagonal_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterSeventhDiagonal_le.mp
      (checker_unit_test_iff_blockSumAfterEighthDiagonal_le.mpr hr))

private def ninthFirstPair : (ℕ × ℕ) × (ℕ × ℕ) := ((6208, 6270), (0, 96))

set_option maxRecDepth 32768 in
private theorem ninthFirstPair_mem : ninthFirstPair ∈ runPairsAfterEighthDiagonal := by
  decide +kernel

/-- The remaining lower pairs after extracting the ninth-to-first cross. -/
def runPairsAfterNinthFirst : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterEighthDiagonal.erase ninthFirstPair

theorem runPairsAfterNinthFirst_card : runPairsAfterNinthFirst.card = 54 := by
  rw [runPairsAfterNinthFirst, Finset.card_erase_of_mem ninthFirstPair_mem,
    runPairsAfterEighthDiagonal_card]

/-- Literal checker costs over the 54 pairs left by this erasure. -/
def blockSumAfterNinthFirst : ℕ := ∑ p ∈ runPairsAfterNinthFirst, runPairSubtotal p

theorem blockSumAfterNinthFirst_eq_sum :
    blockSumAfterNinthFirst = ∑ p ∈ runPairsAfterNinthFirst,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The ninth-to-first cross subtotal is counted once in the split. -/
theorem blockSumAfterEighthDiagonal_eq_add_blockSumAfterNinthFirst :
    blockSumAfterEighthDiagonal =
      99219746837082189961611458927684501085443306246 + blockSumAfterNinthFirst :=
  bind_erased_subtotal blockSumAfterEighthDiagonal_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase ninthFirstPair_mem ninthWithFirstRetainedRunCross)
    blockSumAfterNinthFirst_eq_sum

private theorem accumulate_ninth_first_subtotal {n old rest : ℕ}
    (hn : n = 120035957415215302997114283107849884714251352891203283 + old)
    (hrest : old = 99219746837082189961611458927684501085443306246 + rest) :
    n = 120036056634962140079304244719308812398752438334509529 + rest := by
  omega

/-- The checker numerator with thirty-seven exact contributions separated. -/
theorem literal_total_eq_certified_add_afterNinthFirst :
    total checkerMidpointLower =
      120036056634962140079304244719308812398752438334509529 + blockSumAfterNinthFirst :=
  accumulate_ninth_first_subtotal literal_total_eq_certified_add_afterEighthDiagonal
    blockSumAfterEighthDiagonal_eq_add_blockSumAfterNinthFirst

private theorem after_ninth_first_strict_cutoff (r : ℕ) :
    99219746837082189961611458927684501085443306246 + r ≤
      4051503192973489969170436336871779285748647108796716 ↔
    r ≤ 4051403973226652886980474725412851601247561665490470 := by
  omega

private theorem after_ninth_first_unit_cutoff (r : ℕ) :
    99219746837082189961611458927684501085443306246 + r ≤
      41667641092151089705139526556150115285748647108796717 ↔
    r ≤ 41667541872404252622949564944691187601247561665490471 := by
  omega

/-- The original strict integer test in terms of the 54-pair sum. -/
theorem checker_test_iff_blockSumAfterNinthFirst_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterNinthFirst ≤ 4051403973226652886980474725412851601247561665490470 :=
  checker_test_iff_blockSumAfterEighthDiagonal_le.trans
    ((congrArg (fun n : ℕ => n ≤ 4051503192973489969170436336871779285748647108796716)
      blockSumAfterEighthDiagonal_eq_add_blockSumAfterNinthFirst).to_iff.trans
        (after_ninth_first_strict_cutoff blockSumAfterNinthFirst))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterNinthFirst_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterNinthFirst ≤ 41667541872404252622949564944691187601247561665490471 :=
  checker_unit_test_iff_blockSumAfterEighthDiagonal_le.trans
    ((congrArg (fun n : ℕ => n ≤ 41667641092151089705139526556150115285748647108796717)
      blockSumAfterEighthDiagonal_eq_add_blockSumAfterNinthFirst).to_iff.trans
        (after_ninth_first_unit_cutoff blockSumAfterNinthFirst))

theorem rectangle_lt_of_blockSumAfterNinthFirst_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterNinthFirst ≤ 4051403973226652886980474725412851601247561665490470) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterEighthDiagonal_le χ hodd
    (checker_test_iff_blockSumAfterEighthDiagonal_le.mp (checker_test_iff_blockSumAfterNinthFirst_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterNinthFirst_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterNinthFirst ≤ 41667541872404252622949564944691187601247561665490471) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterEighthDiagonal_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterEighthDiagonal_le.mp
      (checker_unit_test_iff_blockSumAfterNinthFirst_le.mpr hr))

/-- Lower run pairs left after extracting the entire ninth run. -/
def runPairsAfterNinthDiagonal : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterNinthFirst
    |>.erase ((6208, 6270), (284, 479))
    |>.erase ((6208, 6270), (666, 853))
    |>.erase ((6208, 6270), (1177, 1294))
    |>.erase ((6208, 6270), (1610, 1795))
    |>.erase ((6208, 6270), (2790, 2913))
    |>.erase ((6208, 6270), (4110, 4199))
    |>.erase ((6208, 6270), (5271, 5331))
    |>.erase ((6208, 6270), (6208, 6270))

set_option maxRecDepth 32768 in
theorem runPairsAfterNinthDiagonal_card : runPairsAfterNinthDiagonal.card = 46 := by
  decide +kernel

/-- Literal checker costs over the remaining 46 pairs. -/
def blockSumAfterNinthDiagonal : ℕ := ∑ p ∈ runPairsAfterNinthDiagonal, runPairSubtotal p

theorem blockSumAfterNinthDiagonal_eq_sum :
    blockSumAfterNinthDiagonal = ∑ p ∈ runPairsAfterNinthDiagonal,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

set_option maxRecDepth 32768 in
/-- The seven remaining ninth-run crosses and the diagonal are counted once. -/
theorem blockSumAfterNinthFirst_eq_add_blockSumAfterNinthDiagonal :
    blockSumAfterNinthFirst =
      125212342385029726616338130726145238261946033699703 + blockSumAfterNinthDiagonal := by
  rw [blockSumAfterNinthFirst_eq_sum, blockSumAfterNinthDiagonal_eq_sum,
    runPairsAfterNinthDiagonal,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((6208, 6270), (284, 479)))
      (by decide +kernel) ninthWithSecondRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((6208, 6270), (666, 853)))
      (by decide +kernel) ninthWithThirdRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((6208, 6270), (1177, 1294)))
      (by decide +kernel) ninthWithFourthRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((6208, 6270), (1610, 1795)))
      (by decide +kernel) ninthWithFifthRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((6208, 6270), (2790, 2913)))
      (by decide +kernel) ninthWithSixthRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((6208, 6270), (4110, 4199)))
      (by decide +kernel) ninthWithSeventhRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((6208, 6270), (5271, 5331)))
      (by decide +kernel) ninthWithEighthRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((6208, 6270), (6208, 6270)))
      (by decide +kernel) ninthRetainedRunDiagonal]
  omega

/-- The checker numerator after separating the entire ninth run. -/
theorem literal_total_eq_certified_add_afterNinthDiagonal :
    total checkerMidpointLower =
      120161268977347169805920582850034957637014384368209232 + blockSumAfterNinthDiagonal := by
  rw [literal_total_eq_certified_add_afterNinthFirst,
    blockSumAfterNinthFirst_eq_add_blockSumAfterNinthDiagonal]
  omega

/-- The strict integer test in terms of the 46-pair residual. -/
theorem checker_test_iff_blockSumAfterNinthDiagonal_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterNinthDiagonal ≤ 3926191630841623160364136594686706362985615631790767 := by
  rw [checker_test_iff_blockSumAfterNinthFirst_le,
    blockSumAfterNinthFirst_eq_add_blockSumAfterNinthDiagonal]
  omega

/-- The unit test for the original radius-one stage in terms of the same residual. -/
theorem checker_unit_test_iff_blockSumAfterNinthDiagonal_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterNinthDiagonal ≤ 41542329530019222896333226813965042362985615631790768 := by
  rw [checker_unit_test_iff_blockSumAfterNinthFirst_le,
    blockSumAfterNinthFirst_eq_add_blockSumAfterNinthDiagonal]
  omega

theorem rectangle_lt_of_blockSumAfterNinthDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterNinthDiagonal ≤ 3926191630841623160364136594686706362985615631790767) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterNinthFirst_le χ hodd
    (checker_test_iff_blockSumAfterNinthFirst_le.mp
      (checker_test_iff_blockSumAfterNinthDiagonal_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterNinthDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterNinthDiagonal ≤ 41542329530019222896333226813965042362985615631790768) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterNinthFirst_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterNinthFirst_le.mp
      (checker_unit_test_iff_blockSumAfterNinthDiagonal_le.mpr hr))

private def tenthFirstPair : (ℕ × ℕ) × (ℕ × ℕ) := ((8652, 8758), (0, 96))

set_option maxRecDepth 32768 in
private theorem tenthFirstPair_mem : tenthFirstPair ∈ runPairsAfterNinthDiagonal := by
  decide +kernel

/-- The remaining lower pairs after extracting the tenth-to-first cross. -/
def runPairsAfterTenthFirst : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterNinthDiagonal.erase tenthFirstPair

theorem runPairsAfterTenthFirst_card : runPairsAfterTenthFirst.card = 45 := by
  rw [runPairsAfterTenthFirst, Finset.card_erase_of_mem tenthFirstPair_mem,
    runPairsAfterNinthDiagonal_card]

/-- Literal checker costs over the 45 pairs left by this erasure. -/
def blockSumAfterTenthFirst : ℕ := ∑ p ∈ runPairsAfterTenthFirst, runPairSubtotal p

theorem blockSumAfterTenthFirst_eq_sum :
    blockSumAfterTenthFirst = ∑ p ∈ runPairsAfterTenthFirst,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The tenth-to-first cross subtotal is counted once in the split. -/
theorem blockSumAfterNinthDiagonal_eq_add_blockSumAfterTenthFirst :
    blockSumAfterNinthDiagonal =
      917787096373801359263063614541302092449280281722 + blockSumAfterTenthFirst :=
  bind_erased_subtotal blockSumAfterNinthDiagonal_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase tenthFirstPair_mem tenthWithFirstRetainedRunCross)
    blockSumAfterTenthFirst_eq_sum

private theorem accumulate_tenth_first_subtotal {n old rest : ℕ}
    (hn : n = 120161268977347169805920582850034957637014384368209232 + old)
    (hrest : old = 917787096373801359263063614541302092449280281722 + rest) :
    n = 120162186764443543607279845913649498939106833648490954 + rest := by
  omega

/-- The checker numerator with forty-six exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTenthFirst :
    total checkerMidpointLower =
      120162186764443543607279845913649498939106833648490954 + blockSumAfterTenthFirst :=
  accumulate_tenth_first_subtotal literal_total_eq_certified_add_afterNinthDiagonal
    blockSumAfterNinthDiagonal_eq_add_blockSumAfterTenthFirst

private theorem after_tenth_first_strict_cutoff (r : ℕ) :
    917787096373801359263063614541302092449280281722 + r ≤
      3926191630841623160364136594686706362985615631790767 ↔
    r ≤ 3925273843745249359004873531072165060893166351509045 := by
  omega

private theorem after_tenth_first_unit_cutoff (r : ℕ) :
    917787096373801359263063614541302092449280281722 + r ≤
      41542329530019222896333226813965042362985615631790768 ↔
    r ≤ 41541411742922849094973963750350501060893166351509046 := by
  omega

/-- The original strict integer test in terms of the 45-pair sum. -/
theorem checker_test_iff_blockSumAfterTenthFirst_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTenthFirst ≤ 3925273843745249359004873531072165060893166351509045 :=
  checker_test_iff_blockSumAfterNinthDiagonal_le.trans
    ((congrArg (fun n : ℕ => n ≤ 3926191630841623160364136594686706362985615631790767)
      blockSumAfterNinthDiagonal_eq_add_blockSumAfterTenthFirst).to_iff.trans
        (after_tenth_first_strict_cutoff blockSumAfterTenthFirst))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTenthFirst_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTenthFirst ≤ 41541411742922849094973963750350501060893166351509046 :=
  checker_unit_test_iff_blockSumAfterNinthDiagonal_le.trans
    ((congrArg (fun n : ℕ => n ≤ 41542329530019222896333226813965042362985615631790768)
      blockSumAfterNinthDiagonal_eq_add_blockSumAfterTenthFirst).to_iff.trans
        (after_tenth_first_unit_cutoff blockSumAfterTenthFirst))

theorem rectangle_lt_of_blockSumAfterTenthFirst_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthFirst ≤ 3925273843745249359004873531072165060893166351509045) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterNinthDiagonal_le χ hodd
    (checker_test_iff_blockSumAfterNinthDiagonal_le.mp (checker_test_iff_blockSumAfterTenthFirst_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTenthFirst_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthFirst ≤ 41541411742922849094973963750350501060893166351509046) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterNinthDiagonal_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterNinthDiagonal_le.mp
      (checker_unit_test_iff_blockSumAfterTenthFirst_le.mpr hr))

private def tenthSecondPair : (ℕ × ℕ) × (ℕ × ℕ) := ((8652, 8758), (284, 479))

set_option maxRecDepth 32768 in
private theorem tenthSecondPair_mem : tenthSecondPair ∈ runPairsAfterTenthFirst := by
  decide +kernel

/-- The remaining lower pairs after extracting the tenth-to-second cross. -/
def runPairsAfterTenthSecond : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTenthFirst.erase tenthSecondPair

theorem runPairsAfterTenthSecond_card : runPairsAfterTenthSecond.card = 44 := by
  rw [runPairsAfterTenthSecond, Finset.card_erase_of_mem tenthSecondPair_mem,
    runPairsAfterTenthFirst_card]

/-- Literal checker costs over the 44 pairs left by this erasure. -/
def blockSumAfterTenthSecond : ℕ := ∑ p ∈ runPairsAfterTenthSecond, runPairSubtotal p

theorem blockSumAfterTenthSecond_eq_sum :
    blockSumAfterTenthSecond = ∑ p ∈ runPairsAfterTenthSecond,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The tenth-to-second cross subtotal is counted once in the split. -/
theorem blockSumAfterTenthFirst_eq_add_blockSumAfterTenthSecond :
    blockSumAfterTenthFirst =
      2012700610936223493195886848016418638594998335822 + blockSumAfterTenthSecond :=
  bind_erased_subtotal blockSumAfterTenthFirst_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase tenthSecondPair_mem tenthWithSecondRetainedRunCross)
    blockSumAfterTenthSecond_eq_sum

private theorem accumulate_tenth_second_subtotal {n old rest : ℕ}
    (hn : n = 120162186764443543607279845913649498939106833648490954 + old)
    (hrest : old = 2012700610936223493195886848016418638594998335822 + rest) :
    n = 120164199465054479830773041800497515357745428646826776 + rest := by
  omega

/-- The checker numerator with forty-seven exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTenthSecond :
    total checkerMidpointLower =
      120164199465054479830773041800497515357745428646826776 + blockSumAfterTenthSecond :=
  accumulate_tenth_second_subtotal literal_total_eq_certified_add_afterTenthFirst
    blockSumAfterTenthFirst_eq_add_blockSumAfterTenthSecond

private theorem after_tenth_second_strict_cutoff (r : ℕ) :
    2012700610936223493195886848016418638594998335822 + r ≤
      3925273843745249359004873531072165060893166351509045 ↔
    r ≤ 3923261143134313135511677644224148642254571353173223 := by
  omega

private theorem after_tenth_second_unit_cutoff (r : ℕ) :
    2012700610936223493195886848016418638594998335822 + r ≤
      41541411742922849094973963750350501060893166351509046 ↔
    r ≤ 41539399042311912871480767863502484642254571353173224 := by
  omega

/-- The original strict integer test in terms of the 44-pair sum. -/
theorem checker_test_iff_blockSumAfterTenthSecond_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTenthSecond ≤ 3923261143134313135511677644224148642254571353173223 :=
  checker_test_iff_blockSumAfterTenthFirst_le.trans
    ((congrArg (fun n : ℕ => n ≤ 3925273843745249359004873531072165060893166351509045)
      blockSumAfterTenthFirst_eq_add_blockSumAfterTenthSecond).to_iff.trans
        (after_tenth_second_strict_cutoff blockSumAfterTenthSecond))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTenthSecond_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTenthSecond ≤ 41539399042311912871480767863502484642254571353173224 :=
  checker_unit_test_iff_blockSumAfterTenthFirst_le.trans
    ((congrArg (fun n : ℕ => n ≤ 41541411742922849094973963750350501060893166351509046)
      blockSumAfterTenthFirst_eq_add_blockSumAfterTenthSecond).to_iff.trans
        (after_tenth_second_unit_cutoff blockSumAfterTenthSecond))

theorem rectangle_lt_of_blockSumAfterTenthSecond_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthSecond ≤ 3923261143134313135511677644224148642254571353173223) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTenthFirst_le χ hodd
    (checker_test_iff_blockSumAfterTenthFirst_le.mp (checker_test_iff_blockSumAfterTenthSecond_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTenthSecond_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthSecond ≤ 41539399042311912871480767863502484642254571353173224) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTenthFirst_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTenthFirst_le.mp
      (checker_unit_test_iff_blockSumAfterTenthSecond_le.mpr hr))

private def tenthThirdPair : (ℕ × ℕ) × (ℕ × ℕ) := ((8652, 8758), (666, 853))

set_option maxRecDepth 32768 in
private theorem tenthThirdPair_mem : tenthThirdPair ∈ runPairsAfterTenthSecond := by
  decide +kernel

/-- The remaining lower pairs after extracting the tenth-to-third cross. -/
def runPairsAfterTenthThird : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTenthSecond.erase tenthThirdPair

theorem runPairsAfterTenthThird_card : runPairsAfterTenthThird.card = 43 := by
  rw [runPairsAfterTenthThird, Finset.card_erase_of_mem tenthThirdPair_mem,
    runPairsAfterTenthSecond_card]

/-- Literal checker costs over the 43 pairs left by this erasure. -/
def blockSumAfterTenthThird : ℕ := ∑ p ∈ runPairsAfterTenthThird, runPairSubtotal p

theorem blockSumAfterTenthThird_eq_sum :
    blockSumAfterTenthThird = ∑ p ∈ runPairsAfterTenthThird,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The tenth-to-third cross subtotal is counted once in the split. -/
theorem blockSumAfterTenthSecond_eq_add_blockSumAfterTenthThird :
    blockSumAfterTenthSecond =
      3197099236284404402469545626464432235729544909716 + blockSumAfterTenthThird :=
  bind_erased_subtotal blockSumAfterTenthSecond_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase tenthThirdPair_mem tenthWithThirdRetainedRunCross)
    blockSumAfterTenthThird_eq_sum

private theorem accumulate_tenth_third_subtotal {n old rest : ℕ}
    (hn : n = 120164199465054479830773041800497515357745428646826776 + old)
    (hrest : old = 3197099236284404402469545626464432235729544909716 + rest) :
    n = 120167396564290764235175511346123979789981158191736492 + rest := by
  omega

/-- The checker numerator with forty-eight exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTenthThird :
    total checkerMidpointLower =
      120167396564290764235175511346123979789981158191736492 + blockSumAfterTenthThird :=
  accumulate_tenth_third_subtotal literal_total_eq_certified_add_afterTenthSecond
    blockSumAfterTenthSecond_eq_add_blockSumAfterTenthThird

private theorem after_tenth_third_strict_cutoff (r : ℕ) :
    3197099236284404402469545626464432235729544909716 + r ≤
      3923261143134313135511677644224148642254571353173223 ↔
    r ≤ 3920064043898028731109208098597684210018841808263507 := by
  omega

private theorem after_tenth_third_unit_cutoff (r : ℕ) :
    3197099236284404402469545626464432235729544909716 + r ≤
      41539399042311912871480767863502484642254571353173224 ↔
    r ≤ 41536201943075628467078298317876020210018841808263508 := by
  omega

/-- The original strict integer test in terms of the 43-pair sum. -/
theorem checker_test_iff_blockSumAfterTenthThird_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTenthThird ≤ 3920064043898028731109208098597684210018841808263507 :=
  checker_test_iff_blockSumAfterTenthSecond_le.trans
    ((congrArg (fun n : ℕ => n ≤ 3923261143134313135511677644224148642254571353173223)
      blockSumAfterTenthSecond_eq_add_blockSumAfterTenthThird).to_iff.trans
        (after_tenth_third_strict_cutoff blockSumAfterTenthThird))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTenthThird_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTenthThird ≤ 41536201943075628467078298317876020210018841808263508 :=
  checker_unit_test_iff_blockSumAfterTenthSecond_le.trans
    ((congrArg (fun n : ℕ => n ≤ 41539399042311912871480767863502484642254571353173224)
      blockSumAfterTenthSecond_eq_add_blockSumAfterTenthThird).to_iff.trans
        (after_tenth_third_unit_cutoff blockSumAfterTenthThird))

theorem rectangle_lt_of_blockSumAfterTenthThird_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthThird ≤ 3920064043898028731109208098597684210018841808263507) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTenthSecond_le χ hodd
    (checker_test_iff_blockSumAfterTenthSecond_le.mp (checker_test_iff_blockSumAfterTenthThird_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTenthThird_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthThird ≤ 41536201943075628467078298317876020210018841808263508) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTenthSecond_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTenthSecond_le.mp
      (checker_unit_test_iff_blockSumAfterTenthThird_le.mpr hr))

private def tenthFourthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((8652, 8758), (1177, 1294))

set_option maxRecDepth 32768 in
private theorem tenthFourthPair_mem : tenthFourthPair ∈ runPairsAfterTenthThird := by
  decide +kernel

/-- The remaining lower pairs after extracting the tenth-to-fourth cross. -/
def runPairsAfterTenthFourth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTenthThird.erase tenthFourthPair

theorem runPairsAfterTenthFourth_card : runPairsAfterTenthFourth.card = 42 := by
  rw [runPairsAfterTenthFourth, Finset.card_erase_of_mem tenthFourthPair_mem,
    runPairsAfterTenthThird_card]

/-- Literal checker costs over the 42 pairs left by this erasure. -/
def blockSumAfterTenthFourth : ℕ := ∑ p ∈ runPairsAfterTenthFourth, runPairSubtotal p

theorem blockSumAfterTenthFourth_eq_sum :
    blockSumAfterTenthFourth = ∑ p ∈ runPairsAfterTenthFourth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The tenth-to-fourth cross subtotal is counted once in the split. -/
theorem blockSumAfterTenthThird_eq_add_blockSumAfterTenthFourth :
    blockSumAfterTenthThird =
      1941697918675265102165036231127685607338610711178 + blockSumAfterTenthFourth :=
  bind_erased_subtotal blockSumAfterTenthThird_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase tenthFourthPair_mem tenthWithFourthRetainedRunCross)
    blockSumAfterTenthFourth_eq_sum

private theorem accumulate_tenth_fourth_subtotal {n old rest : ℕ}
    (hn : n = 120167396564290764235175511346123979789981158191736492 + old)
    (hrest : old = 1941697918675265102165036231127685607338610711178 + rest) :
    n = 120169338262209439500277676382355107475588496802447670 + rest := by
  omega

/-- The checker numerator with forty-nine exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTenthFourth :
    total checkerMidpointLower =
      120169338262209439500277676382355107475588496802447670 + blockSumAfterTenthFourth :=
  accumulate_tenth_fourth_subtotal literal_total_eq_certified_add_afterTenthThird
    blockSumAfterTenthThird_eq_add_blockSumAfterTenthFourth

private theorem after_tenth_fourth_strict_cutoff (r : ℕ) :
    1941697918675265102165036231127685607338610711178 + r ≤
      3920064043898028731109208098597684210018841808263507 ↔
    r ≤ 3918122345979353466007043062366556524411503197552329 := by
  omega

private theorem after_tenth_fourth_unit_cutoff (r : ℕ) :
    1941697918675265102165036231127685607338610711178 + r ≤
      41536201943075628467078298317876020210018841808263508 ↔
    r ≤ 41534260245156953201976133281644892524411503197552330 := by
  omega

/-- The original strict integer test in terms of the 42-pair sum. -/
theorem checker_test_iff_blockSumAfterTenthFourth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTenthFourth ≤ 3918122345979353466007043062366556524411503197552329 :=
  checker_test_iff_blockSumAfterTenthThird_le.trans
    ((congrArg (fun n : ℕ => n ≤ 3920064043898028731109208098597684210018841808263507)
      blockSumAfterTenthThird_eq_add_blockSumAfterTenthFourth).to_iff.trans
        (after_tenth_fourth_strict_cutoff blockSumAfterTenthFourth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTenthFourth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTenthFourth ≤ 41534260245156953201976133281644892524411503197552330 :=
  checker_unit_test_iff_blockSumAfterTenthThird_le.trans
    ((congrArg (fun n : ℕ => n ≤ 41536201943075628467078298317876020210018841808263508)
      blockSumAfterTenthThird_eq_add_blockSumAfterTenthFourth).to_iff.trans
        (after_tenth_fourth_unit_cutoff blockSumAfterTenthFourth))

theorem rectangle_lt_of_blockSumAfterTenthFourth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthFourth ≤ 3918122345979353466007043062366556524411503197552329) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTenthThird_le χ hodd
    (checker_test_iff_blockSumAfterTenthThird_le.mp (checker_test_iff_blockSumAfterTenthFourth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTenthFourth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthFourth ≤ 41534260245156953201976133281644892524411503197552330) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTenthThird_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTenthThird_le.mp
      (checker_unit_test_iff_blockSumAfterTenthFourth_le.mpr hr))

private def tenthFifthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((8652, 8758), (1610, 1795))

set_option maxRecDepth 32768 in
private theorem tenthFifthPair_mem : tenthFifthPair ∈ runPairsAfterTenthFourth := by
  decide +kernel

/-- The remaining lower pairs after extracting the tenth-to-fifth cross. -/
def runPairsAfterTenthFifth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTenthFourth.erase tenthFifthPair

theorem runPairsAfterTenthFifth_card : runPairsAfterTenthFifth.card = 41 := by
  rw [runPairsAfterTenthFifth, Finset.card_erase_of_mem tenthFifthPair_mem,
    runPairsAfterTenthFourth_card]

/-- Literal checker costs over the 41 pairs left by this erasure. -/
def blockSumAfterTenthFifth : ℕ := ∑ p ∈ runPairsAfterTenthFifth, runPairSubtotal p

theorem blockSumAfterTenthFifth_eq_sum :
    blockSumAfterTenthFifth = ∑ p ∈ runPairsAfterTenthFifth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The tenth-to-fifth cross subtotal is counted once in the split. -/
theorem blockSumAfterTenthFourth_eq_add_blockSumAfterTenthFifth :
    blockSumAfterTenthFourth =
      12396850826389854387316231374604208139802676941144 + blockSumAfterTenthFifth :=
  bind_erased_subtotal blockSumAfterTenthFourth_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase tenthFifthPair_mem tenthWithFifthRetainedRunCross)
    blockSumAfterTenthFifth_eq_sum

private theorem accumulate_tenth_fifth_subtotal {n old rest : ℕ}
    (hn : n = 120169338262209439500277676382355107475588496802447670 + old)
    (hrest : old = 12396850826389854387316231374604208139802676941144 + rest) :
    n = 120181735113035829354664992613729711683728299479388814 + rest := by
  omega

/-- The checker numerator with fifty exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTenthFifth :
    total checkerMidpointLower =
      120181735113035829354664992613729711683728299479388814 + blockSumAfterTenthFifth :=
  accumulate_tenth_fifth_subtotal literal_total_eq_certified_add_afterTenthFourth
    blockSumAfterTenthFourth_eq_add_blockSumAfterTenthFifth

private theorem after_tenth_fifth_strict_cutoff (r : ℕ) :
    12396850826389854387316231374604208139802676941144 + r ≤
      3918122345979353466007043062366556524411503197552329 ↔
    r ≤ 3905725495152963611619726830991952316271700520611185 := by
  omega

private theorem after_tenth_fifth_unit_cutoff (r : ℕ) :
    12396850826389854387316231374604208139802676941144 + r ≤
      41534260245156953201976133281644892524411503197552330 ↔
    r ≤ 41521863394330563347588817050270288316271700520611186 := by
  omega

/-- The original strict integer test in terms of the 41-pair sum. -/
theorem checker_test_iff_blockSumAfterTenthFifth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTenthFifth ≤ 3905725495152963611619726830991952316271700520611185 :=
  checker_test_iff_blockSumAfterTenthFourth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 3918122345979353466007043062366556524411503197552329)
      blockSumAfterTenthFourth_eq_add_blockSumAfterTenthFifth).to_iff.trans
        (after_tenth_fifth_strict_cutoff blockSumAfterTenthFifth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTenthFifth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTenthFifth ≤ 41521863394330563347588817050270288316271700520611186 :=
  checker_unit_test_iff_blockSumAfterTenthFourth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 41534260245156953201976133281644892524411503197552330)
      blockSumAfterTenthFourth_eq_add_blockSumAfterTenthFifth).to_iff.trans
        (after_tenth_fifth_unit_cutoff blockSumAfterTenthFifth))

theorem rectangle_lt_of_blockSumAfterTenthFifth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthFifth ≤ 3905725495152963611619726830991952316271700520611185) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTenthFourth_le χ hodd
    (checker_test_iff_blockSumAfterTenthFourth_le.mp (checker_test_iff_blockSumAfterTenthFifth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTenthFifth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthFifth ≤ 41521863394330563347588817050270288316271700520611186) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTenthFourth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTenthFourth_le.mp
      (checker_unit_test_iff_blockSumAfterTenthFifth_le.mpr hr))

private def tenthSixthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((8652, 8758), (2790, 2913))

set_option maxRecDepth 32768 in
private theorem tenthSixthPair_mem : tenthSixthPair ∈ runPairsAfterTenthFifth := by
  decide +kernel

/-- The remaining lower pairs after extracting the tenth-to-sixth cross. -/
def runPairsAfterTenthSixth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTenthFifth.erase tenthSixthPair

theorem runPairsAfterTenthSixth_card : runPairsAfterTenthSixth.card = 40 := by
  rw [runPairsAfterTenthSixth, Finset.card_erase_of_mem tenthSixthPair_mem,
    runPairsAfterTenthFifth_card]

/-- Literal checker costs over the 40 pairs left by this erasure. -/
def blockSumAfterTenthSixth : ℕ := ∑ p ∈ runPairsAfterTenthSixth, runPairSubtotal p

theorem blockSumAfterTenthSixth_eq_sum :
    blockSumAfterTenthSixth = ∑ p ∈ runPairsAfterTenthSixth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The tenth-to-sixth cross subtotal is counted once in the split. -/
theorem blockSumAfterTenthFifth_eq_add_blockSumAfterTenthSixth :
    blockSumAfterTenthFifth =
      3438870280285022206309325645136416962548068169458 + blockSumAfterTenthSixth :=
  bind_erased_subtotal blockSumAfterTenthFifth_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase tenthSixthPair_mem tenthWithSixthRetainedRunCross)
    blockSumAfterTenthSixth_eq_sum

private theorem accumulate_tenth_sixth_subtotal {n old rest : ℕ}
    (hn : n = 120181735113035829354664992613729711683728299479388814 + old)
    (hrest : old = 3438870280285022206309325645136416962548068169458 + rest) :
    n = 120185173983316114376871301939374848100690847547558272 + rest := by
  omega

/-- The checker numerator with fifty-one exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTenthSixth :
    total checkerMidpointLower =
      120185173983316114376871301939374848100690847547558272 + blockSumAfterTenthSixth :=
  accumulate_tenth_sixth_subtotal literal_total_eq_certified_add_afterTenthFifth
    blockSumAfterTenthFifth_eq_add_blockSumAfterTenthSixth

private theorem after_tenth_sixth_strict_cutoff (r : ℕ) :
    3438870280285022206309325645136416962548068169458 + r ≤
      3905725495152963611619726830991952316271700520611185 ↔
    r ≤ 3902286624872678589413417505346815899309152452441727 := by
  omega

private theorem after_tenth_sixth_unit_cutoff (r : ℕ) :
    3438870280285022206309325645136416962548068169458 + r ≤
      41521863394330563347588817050270288316271700520611186 ↔
    r ≤ 41518424524050278325382507724625151899309152452441728 := by
  omega

/-- The original strict integer test in terms of the 40-pair sum. -/
theorem checker_test_iff_blockSumAfterTenthSixth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTenthSixth ≤ 3902286624872678589413417505346815899309152452441727 :=
  checker_test_iff_blockSumAfterTenthFifth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 3905725495152963611619726830991952316271700520611185)
      blockSumAfterTenthFifth_eq_add_blockSumAfterTenthSixth).to_iff.trans
        (after_tenth_sixth_strict_cutoff blockSumAfterTenthSixth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTenthSixth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTenthSixth ≤ 41518424524050278325382507724625151899309152452441728 :=
  checker_unit_test_iff_blockSumAfterTenthFifth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 41521863394330563347588817050270288316271700520611186)
      blockSumAfterTenthFifth_eq_add_blockSumAfterTenthSixth).to_iff.trans
        (after_tenth_sixth_unit_cutoff blockSumAfterTenthSixth))

theorem rectangle_lt_of_blockSumAfterTenthSixth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthSixth ≤ 3902286624872678589413417505346815899309152452441727) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTenthFifth_le χ hodd
    (checker_test_iff_blockSumAfterTenthFifth_le.mp (checker_test_iff_blockSumAfterTenthSixth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTenthSixth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthSixth ≤ 41518424524050278325382507724625151899309152452441728) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTenthFifth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTenthFifth_le.mp
      (checker_unit_test_iff_blockSumAfterTenthSixth_le.mpr hr))

private def tenthSeventhPair : (ℕ × ℕ) × (ℕ × ℕ) := ((8652, 8758), (4110, 4199))

set_option maxRecDepth 32768 in
private theorem tenthSeventhPair_mem : tenthSeventhPair ∈ runPairsAfterTenthSixth := by
  decide +kernel

/-- The remaining lower pairs after extracting the tenth-to-seventh cross. -/
def runPairsAfterTenthSeventh : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTenthSixth.erase tenthSeventhPair

theorem runPairsAfterTenthSeventh_card : runPairsAfterTenthSeventh.card = 39 := by
  rw [runPairsAfterTenthSeventh, Finset.card_erase_of_mem tenthSeventhPair_mem,
    runPairsAfterTenthSixth_card]

/-- Literal checker costs over the 39 pairs left by this erasure. -/
def blockSumAfterTenthSeventh : ℕ := ∑ p ∈ runPairsAfterTenthSeventh, runPairSubtotal p

theorem blockSumAfterTenthSeventh_eq_sum :
    blockSumAfterTenthSeventh = ∑ p ∈ runPairsAfterTenthSeventh,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The tenth-to-seventh cross subtotal is counted once in the split. -/
theorem blockSumAfterTenthSixth_eq_add_blockSumAfterTenthSeventh :
    blockSumAfterTenthSixth =
      3168812048510042462827031661809456906421434116440 + blockSumAfterTenthSeventh :=
  bind_erased_subtotal blockSumAfterTenthSixth_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase tenthSeventhPair_mem tenthWithSeventhRetainedRunCross)
    blockSumAfterTenthSeventh_eq_sum

private theorem accumulate_tenth_seventh_subtotal {n old rest : ℕ}
    (hn : n = 120185173983316114376871301939374848100690847547558272 + old)
    (hrest : old = 3168812048510042462827031661809456906421434116440 + rest) :
    n = 120188342795364624419334128971036657557597268981674712 + rest := by
  omega

/-- The checker numerator with fifty-two exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTenthSeventh :
    total checkerMidpointLower =
      120188342795364624419334128971036657557597268981674712 + blockSumAfterTenthSeventh :=
  accumulate_tenth_seventh_subtotal literal_total_eq_certified_add_afterTenthSixth
    blockSumAfterTenthSixth_eq_add_blockSumAfterTenthSeventh

private theorem after_tenth_seventh_strict_cutoff (r : ℕ) :
    3168812048510042462827031661809456906421434116440 + r ≤
      3902286624872678589413417505346815899309152452441727 ↔
    r ≤ 3899117812824168546950590473685006442402731018325287 := by
  omega

private theorem after_tenth_seventh_unit_cutoff (r : ℕ) :
    3168812048510042462827031661809456906421434116440 + r ≤
      41518424524050278325382507724625151899309152452441728 ↔
    r ≤ 41515255712001768282919680692963342442402731018325288 := by
  omega

/-- The original strict integer test in terms of the 39-pair sum. -/
theorem checker_test_iff_blockSumAfterTenthSeventh_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTenthSeventh ≤ 3899117812824168546950590473685006442402731018325287 :=
  checker_test_iff_blockSumAfterTenthSixth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 3902286624872678589413417505346815899309152452441727)
      blockSumAfterTenthSixth_eq_add_blockSumAfterTenthSeventh).to_iff.trans
        (after_tenth_seventh_strict_cutoff blockSumAfterTenthSeventh))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTenthSeventh_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTenthSeventh ≤ 41515255712001768282919680692963342442402731018325288 :=
  checker_unit_test_iff_blockSumAfterTenthSixth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 41518424524050278325382507724625151899309152452441728)
      blockSumAfterTenthSixth_eq_add_blockSumAfterTenthSeventh).to_iff.trans
        (after_tenth_seventh_unit_cutoff blockSumAfterTenthSeventh))

theorem rectangle_lt_of_blockSumAfterTenthSeventh_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthSeventh ≤ 3899117812824168546950590473685006442402731018325287) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTenthSixth_le χ hodd
    (checker_test_iff_blockSumAfterTenthSixth_le.mp (checker_test_iff_blockSumAfterTenthSeventh_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTenthSeventh_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthSeventh ≤ 41515255712001768282919680692963342442402731018325288) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTenthSixth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTenthSixth_le.mp
      (checker_unit_test_iff_blockSumAfterTenthSeventh_le.mpr hr))

/-- Lower run pairs left after extracting the entire tenth run. -/
def runPairsAfterTenthDiagonal : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTenthSeventh
    |>.erase ((8652, 8758), (5271, 5331))
    |>.erase ((8652, 8758), (6208, 6270))
    |>.erase ((8652, 8758), (8652, 8758))

set_option maxRecDepth 32768 in
theorem runPairsAfterTenthDiagonal_card : runPairsAfterTenthDiagonal.card = 36 := by
  decide +kernel

/-- Literal checker costs over the remaining 36 pairs. -/
def blockSumAfterTenthDiagonal : ℕ := ∑ p ∈ runPairsAfterTenthDiagonal, runPairSubtotal p

theorem blockSumAfterTenthDiagonal_eq_sum :
    blockSumAfterTenthDiagonal = ∑ p ∈ runPairsAfterTenthDiagonal,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

set_option maxRecDepth 32768 in
/-- The two remaining tenth-run crosses and the diagonal are counted once. -/
theorem blockSumAfterTenthSeventh_eq_add_blockSumAfterTenthDiagonal :
    blockSumAfterTenthSeventh =
      3650801059870653692560240530214968296712788701879369 + blockSumAfterTenthDiagonal := by
  rw [blockSumAfterTenthSeventh_eq_sum, blockSumAfterTenthDiagonal_eq_sum,
    runPairsAfterTenthDiagonal,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((8652, 8758), (5271, 5331)))
      (by decide +kernel) tenthWithEighthRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((8652, 8758), (6208, 6270)))
      (by decide +kernel) tenthWithNinthRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((8652, 8758), (8652, 8758)))
      (by decide +kernel) tenthRetainedRunDiagonal]
  omega

/-- The checker numerator after separating the entire tenth run. -/
theorem literal_total_eq_certified_add_afterTenthDiagonal :
    total checkerMidpointLower =
      123839143855235278111894369501251625854310057683554081 + blockSumAfterTenthDiagonal := by
  rw [literal_total_eq_certified_add_afterTenthSeventh,
    blockSumAfterTenthSeventh_eq_add_blockSumAfterTenthDiagonal]
  omega

/-- The strict integer test in terms of the 36-pair residual. -/
theorem checker_test_iff_blockSumAfterTenthDiagonal_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTenthDiagonal ≤ 248316752953514854390349943470038145689942316445918 := by
  rw [checker_test_iff_blockSumAfterTenthSeventh_le,
    blockSumAfterTenthSeventh_eq_add_blockSumAfterTenthDiagonal]
  omega

/-- The unit test for the original radius-one stage in terms of the same residual. -/
theorem checker_unit_test_iff_blockSumAfterTenthDiagonal_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTenthDiagonal ≤ 37864454652131114590359440162748374145689942316445919 := by
  rw [checker_unit_test_iff_blockSumAfterTenthSeventh_le,
    blockSumAfterTenthSeventh_eq_add_blockSumAfterTenthDiagonal]
  omega

theorem rectangle_lt_of_blockSumAfterTenthDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthDiagonal ≤ 248316752953514854390349943470038145689942316445918) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTenthSeventh_le χ hodd
    (checker_test_iff_blockSumAfterTenthSeventh_le.mp
      (checker_test_iff_blockSumAfterTenthDiagonal_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTenthDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTenthDiagonal ≤ 37864454652131114590359440162748374145689942316445919) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTenthSeventh_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTenthSeventh_le.mp
      (checker_unit_test_iff_blockSumAfterTenthDiagonal_le.mpr hr))

private def eleventhFirstPair : (ℕ × ℕ) × (ℕ × ℕ) := ((13225, 13271), (0, 96))

set_option maxRecDepth 32768 in
private theorem eleventhFirstPair_mem : eleventhFirstPair ∈ runPairsAfterTenthDiagonal := by
  decide +kernel

/-- The remaining lower pairs after extracting the eleventh-to-first cross. -/
def runPairsAfterEleventhFirst : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTenthDiagonal.erase eleventhFirstPair

theorem runPairsAfterEleventhFirst_card : runPairsAfterEleventhFirst.card = 35 := by
  rw [runPairsAfterEleventhFirst, Finset.card_erase_of_mem eleventhFirstPair_mem,
    runPairsAfterTenthDiagonal_card]

/-- Literal checker costs over the 35 pairs left by this erasure. -/
def blockSumAfterEleventhFirst : ℕ := ∑ p ∈ runPairsAfterEleventhFirst, runPairSubtotal p

theorem blockSumAfterEleventhFirst_eq_sum :
    blockSumAfterEleventhFirst = ∑ p ∈ runPairsAfterEleventhFirst,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The eleventh-to-first cross subtotal is counted once in the split. -/
theorem blockSumAfterTenthDiagonal_eq_add_blockSumAfterEleventhFirst :
    blockSumAfterTenthDiagonal =
      105668584853619787454090033301597798031946503220 + blockSumAfterEleventhFirst :=
  bind_erased_subtotal blockSumAfterTenthDiagonal_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase eleventhFirstPair_mem eleventhWithFirstRetainedRunCross)
    blockSumAfterEleventhFirst_eq_sum

private theorem accumulate_eleventh_first_subtotal {n old rest : ℕ}
    (hn : n = 123839143855235278111894369501251625854310057683554081 + old)
    (hrest : old = 105668584853619787454090033301597798031946503220 + rest) :
    n = 123839249523820131731681823591284927452108089630057301 + rest := by
  omega

/-- The checker numerator with fifty-six exact contributions separated. -/
theorem literal_total_eq_certified_add_afterEleventhFirst :
    total checkerMidpointLower =
      123839249523820131731681823591284927452108089630057301 + blockSumAfterEleventhFirst :=
  accumulate_eleventh_first_subtotal literal_total_eq_certified_add_afterTenthDiagonal
    blockSumAfterTenthDiagonal_eq_add_blockSumAfterEleventhFirst

private theorem after_eleventh_first_strict_cutoff (r : ℕ) :
    105668584853619787454090033301597798031946503220 + r ≤
      248316752953514854390349943470038145689942316445918 ↔
    r ≤ 248211084368661234602895853436736547891910369942698 := by
  omega

private theorem after_eleventh_first_unit_cutoff (r : ℕ) :
    105668584853619787454090033301597798031946503220 + r ≤
      37864454652131114590359440162748374145689942316445919 ↔
    r ≤ 37864348983546260970571986072715072547891910369942699 := by
  omega

/-- The original strict integer test in terms of the 35-pair sum. -/
theorem checker_test_iff_blockSumAfterEleventhFirst_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterEleventhFirst ≤ 248211084368661234602895853436736547891910369942698 :=
  checker_test_iff_blockSumAfterTenthDiagonal_le.trans
    ((congrArg (fun n : ℕ => n ≤ 248316752953514854390349943470038145689942316445918)
      blockSumAfterTenthDiagonal_eq_add_blockSumAfterEleventhFirst).to_iff.trans
        (after_eleventh_first_strict_cutoff blockSumAfterEleventhFirst))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterEleventhFirst_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterEleventhFirst ≤ 37864348983546260970571986072715072547891910369942699 :=
  checker_unit_test_iff_blockSumAfterTenthDiagonal_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37864454652131114590359440162748374145689942316445919)
      blockSumAfterTenthDiagonal_eq_add_blockSumAfterEleventhFirst).to_iff.trans
        (after_eleventh_first_unit_cutoff blockSumAfterEleventhFirst))

theorem rectangle_lt_of_blockSumAfterEleventhFirst_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhFirst ≤ 248211084368661234602895853436736547891910369942698) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTenthDiagonal_le χ hodd
    (checker_test_iff_blockSumAfterTenthDiagonal_le.mp (checker_test_iff_blockSumAfterEleventhFirst_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterEleventhFirst_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhFirst ≤ 37864348983546260970571986072715072547891910369942699) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTenthDiagonal_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTenthDiagonal_le.mp
      (checker_unit_test_iff_blockSumAfterEleventhFirst_le.mpr hr))

private def eleventhSecondPair : (ℕ × ℕ) × (ℕ × ℕ) := ((13225, 13271), (284, 479))

set_option maxRecDepth 32768 in
private theorem eleventhSecondPair_mem : eleventhSecondPair ∈ runPairsAfterEleventhFirst := by
  decide +kernel

/-- The remaining lower pairs after extracting the eleventh-to-second cross. -/
def runPairsAfterEleventhSecond : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterEleventhFirst.erase eleventhSecondPair

theorem runPairsAfterEleventhSecond_card : runPairsAfterEleventhSecond.card = 34 := by
  rw [runPairsAfterEleventhSecond, Finset.card_erase_of_mem eleventhSecondPair_mem,
    runPairsAfterEleventhFirst_card]

/-- Literal checker costs over the 34 pairs left by this erasure. -/
def blockSumAfterEleventhSecond : ℕ := ∑ p ∈ runPairsAfterEleventhSecond, runPairSubtotal p

theorem blockSumAfterEleventhSecond_eq_sum :
    blockSumAfterEleventhSecond = ∑ p ∈ runPairsAfterEleventhSecond,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The eleventh-to-second cross subtotal is counted once in the split. -/
theorem blockSumAfterEleventhFirst_eq_add_blockSumAfterEleventhSecond :
    blockSumAfterEleventhFirst =
      242269528062551855671832414403975046956493208692 + blockSumAfterEleventhSecond :=
  bind_erased_subtotal blockSumAfterEleventhFirst_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase eleventhSecondPair_mem eleventhWithSecondRetainedRunCross)
    blockSumAfterEleventhSecond_eq_sum

private theorem accumulate_eleventh_second_subtotal {n old rest : ℕ}
    (hn : n = 123839249523820131731681823591284927452108089630057301 + old)
    (hrest : old = 242269528062551855671832414403975046956493208692 + rest) :
    n = 123839491793348194283537495423699331427155046123265993 + rest := by
  omega

/-- The checker numerator with fifty-seven exact contributions separated. -/
theorem literal_total_eq_certified_add_afterEleventhSecond :
    total checkerMidpointLower =
      123839491793348194283537495423699331427155046123265993 + blockSumAfterEleventhSecond :=
  accumulate_eleventh_second_subtotal literal_total_eq_certified_add_afterEleventhFirst
    blockSumAfterEleventhFirst_eq_add_blockSumAfterEleventhSecond

private theorem after_eleventh_second_strict_cutoff (r : ℕ) :
    242269528062551855671832414403975046956493208692 + r ≤
      248211084368661234602895853436736547891910369942698 ↔
    r ≤ 247968814840598682747224021022332572844953876734006 := by
  omega

private theorem after_eleventh_second_unit_cutoff (r : ℕ) :
    242269528062551855671832414403975046956493208692 + r ≤
      37864348983546260970571986072715072547891910369942699 ↔
    r ≤ 37864106714018198418716314240300668572844953876734007 := by
  omega

/-- The original strict integer test in terms of the 34-pair sum. -/
theorem checker_test_iff_blockSumAfterEleventhSecond_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterEleventhSecond ≤ 247968814840598682747224021022332572844953876734006 :=
  checker_test_iff_blockSumAfterEleventhFirst_le.trans
    ((congrArg (fun n : ℕ => n ≤ 248211084368661234602895853436736547891910369942698)
      blockSumAfterEleventhFirst_eq_add_blockSumAfterEleventhSecond).to_iff.trans
        (after_eleventh_second_strict_cutoff blockSumAfterEleventhSecond))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterEleventhSecond_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterEleventhSecond ≤ 37864106714018198418716314240300668572844953876734007 :=
  checker_unit_test_iff_blockSumAfterEleventhFirst_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37864348983546260970571986072715072547891910369942699)
      blockSumAfterEleventhFirst_eq_add_blockSumAfterEleventhSecond).to_iff.trans
        (after_eleventh_second_unit_cutoff blockSumAfterEleventhSecond))

theorem rectangle_lt_of_blockSumAfterEleventhSecond_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhSecond ≤ 247968814840598682747224021022332572844953876734006) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterEleventhFirst_le χ hodd
    (checker_test_iff_blockSumAfterEleventhFirst_le.mp (checker_test_iff_blockSumAfterEleventhSecond_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterEleventhSecond_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhSecond ≤ 37864106714018198418716314240300668572844953876734007) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterEleventhFirst_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterEleventhFirst_le.mp
      (checker_unit_test_iff_blockSumAfterEleventhSecond_le.mpr hr))

private def eleventhThirdPair : (ℕ × ℕ) × (ℕ × ℕ) := ((13225, 13271), (666, 853))

set_option maxRecDepth 32768 in
private theorem eleventhThirdPair_mem : eleventhThirdPair ∈ runPairsAfterEleventhSecond := by
  decide +kernel

/-- The remaining lower pairs after extracting the eleventh-to-third cross. -/
def runPairsAfterEleventhThird : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterEleventhSecond.erase eleventhThirdPair

theorem runPairsAfterEleventhThird_card : runPairsAfterEleventhThird.card = 33 := by
  rw [runPairsAfterEleventhThird, Finset.card_erase_of_mem eleventhThirdPair_mem,
    runPairsAfterEleventhSecond_card]

/-- Literal checker costs over the 33 pairs left by this erasure. -/
def blockSumAfterEleventhThird : ℕ := ∑ p ∈ runPairsAfterEleventhThird, runPairSubtotal p

theorem blockSumAfterEleventhThird_eq_sum :
    blockSumAfterEleventhThird = ∑ p ∈ runPairsAfterEleventhThird,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The eleventh-to-third cross subtotal is counted once in the split. -/
theorem blockSumAfterEleventhSecond_eq_add_blockSumAfterEleventhThird :
    blockSumAfterEleventhSecond =
      432771505440815688194021826180922529692901762218 + blockSumAfterEleventhThird :=
  bind_erased_subtotal blockSumAfterEleventhSecond_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase eleventhThirdPair_mem eleventhWithThirdRetainedRunCross)
    blockSumAfterEleventhThird_eq_sum

private theorem accumulate_eleventh_third_subtotal {n old rest : ℕ}
    (hn : n = 123839491793348194283537495423699331427155046123265993 + old)
    (hrest : old = 432771505440815688194021826180922529692901762218 + rest) :
    n = 123839924564853635099225689445525512349684739025028211 + rest := by
  omega

/-- The checker numerator with fifty-eight exact contributions separated. -/
theorem literal_total_eq_certified_add_afterEleventhThird :
    total checkerMidpointLower =
      123839924564853635099225689445525512349684739025028211 + blockSumAfterEleventhThird :=
  accumulate_eleventh_third_subtotal literal_total_eq_certified_add_afterEleventhSecond
    blockSumAfterEleventhSecond_eq_add_blockSumAfterEleventhThird

private theorem after_eleventh_third_strict_cutoff (r : ℕ) :
    432771505440815688194021826180922529692901762218 + r ≤
      247968814840598682747224021022332572844953876734006 ↔
    r ≤ 247536043335157867059029999196151650315260974971788 := by
  omega

private theorem after_eleventh_third_unit_cutoff (r : ℕ) :
    432771505440815688194021826180922529692901762218 + r ≤
      37864106714018198418716314240300668572844953876734007 ↔
    r ≤ 37863673942512757603028120218474487650315260974971789 := by
  omega

/-- The original strict integer test in terms of the 33-pair sum. -/
theorem checker_test_iff_blockSumAfterEleventhThird_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterEleventhThird ≤ 247536043335157867059029999196151650315260974971788 :=
  checker_test_iff_blockSumAfterEleventhSecond_le.trans
    ((congrArg (fun n : ℕ => n ≤ 247968814840598682747224021022332572844953876734006)
      blockSumAfterEleventhSecond_eq_add_blockSumAfterEleventhThird).to_iff.trans
        (after_eleventh_third_strict_cutoff blockSumAfterEleventhThird))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterEleventhThird_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterEleventhThird ≤ 37863673942512757603028120218474487650315260974971789 :=
  checker_unit_test_iff_blockSumAfterEleventhSecond_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37864106714018198418716314240300668572844953876734007)
      blockSumAfterEleventhSecond_eq_add_blockSumAfterEleventhThird).to_iff.trans
        (after_eleventh_third_unit_cutoff blockSumAfterEleventhThird))

theorem rectangle_lt_of_blockSumAfterEleventhThird_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhThird ≤ 247536043335157867059029999196151650315260974971788) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterEleventhSecond_le χ hodd
    (checker_test_iff_blockSumAfterEleventhSecond_le.mp (checker_test_iff_blockSumAfterEleventhThird_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterEleventhThird_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhThird ≤ 37863673942512757603028120218474487650315260974971789) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterEleventhSecond_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterEleventhSecond_le.mp
      (checker_unit_test_iff_blockSumAfterEleventhThird_le.mpr hr))

private def eleventhFourthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((13225, 13271), (1177, 1294))

set_option maxRecDepth 32768 in
private theorem eleventhFourthPair_mem : eleventhFourthPair ∈ runPairsAfterEleventhThird := by
  decide +kernel

/-- The remaining lower pairs after extracting the eleventh-to-fourth cross. -/
def runPairsAfterEleventhFourth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterEleventhThird.erase eleventhFourthPair

theorem runPairsAfterEleventhFourth_card : runPairsAfterEleventhFourth.card = 32 := by
  rw [runPairsAfterEleventhFourth, Finset.card_erase_of_mem eleventhFourthPair_mem,
    runPairsAfterEleventhThird_card]

/-- Literal checker costs over the 32 pairs left by this erasure. -/
def blockSumAfterEleventhFourth : ℕ := ∑ p ∈ runPairsAfterEleventhFourth, runPairSubtotal p

theorem blockSumAfterEleventhFourth_eq_sum :
    blockSumAfterEleventhFourth = ∑ p ∈ runPairsAfterEleventhFourth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The eleventh-to-fourth cross subtotal is counted once in the split. -/
theorem blockSumAfterEleventhThird_eq_add_blockSumAfterEleventhFourth :
    blockSumAfterEleventhThird =
      140589591889469140670011383192838051217827677776 + blockSumAfterEleventhFourth :=
  bind_erased_subtotal blockSumAfterEleventhThird_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase eleventhFourthPair_mem eleventhWithFourthRetainedRunCross)
    blockSumAfterEleventhFourth_eq_sum

private theorem accumulate_eleventh_fourth_subtotal {n old rest : ℕ}
    (hn : n = 123839924564853635099225689445525512349684739025028211 + old)
    (hrest : old = 140589591889469140670011383192838051217827677776 + rest) :
    n = 123840065154445524568366359456908705187735956852705987 + rest := by
  omega

/-- The checker numerator with fifty-nine exact contributions separated. -/
theorem literal_total_eq_certified_add_afterEleventhFourth :
    total checkerMidpointLower =
      123840065154445524568366359456908705187735956852705987 + blockSumAfterEleventhFourth :=
  accumulate_eleventh_fourth_subtotal literal_total_eq_certified_add_afterEleventhThird
    blockSumAfterEleventhThird_eq_add_blockSumAfterEleventhFourth

private theorem after_eleventh_fourth_strict_cutoff (r : ℕ) :
    140589591889469140670011383192838051217827677776 + r ≤
      247536043335157867059029999196151650315260974971788 ↔
    r ≤ 247395453743268397918359987812958812264043147294012 := by
  omega

private theorem after_eleventh_fourth_unit_cutoff (r : ℕ) :
    140589591889469140670011383192838051217827677776 + r ≤
      37863673942512757603028120218474487650315260974971789 ↔
    r ≤ 37863533352920868133887450207091294812264043147294013 := by
  omega

/-- The original strict integer test in terms of the 32-pair sum. -/
theorem checker_test_iff_blockSumAfterEleventhFourth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterEleventhFourth ≤ 247395453743268397918359987812958812264043147294012 :=
  checker_test_iff_blockSumAfterEleventhThird_le.trans
    ((congrArg (fun n : ℕ => n ≤ 247536043335157867059029999196151650315260974971788)
      blockSumAfterEleventhThird_eq_add_blockSumAfterEleventhFourth).to_iff.trans
        (after_eleventh_fourth_strict_cutoff blockSumAfterEleventhFourth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterEleventhFourth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterEleventhFourth ≤ 37863533352920868133887450207091294812264043147294013 :=
  checker_unit_test_iff_blockSumAfterEleventhThird_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37863673942512757603028120218474487650315260974971789)
      blockSumAfterEleventhThird_eq_add_blockSumAfterEleventhFourth).to_iff.trans
        (after_eleventh_fourth_unit_cutoff blockSumAfterEleventhFourth))

theorem rectangle_lt_of_blockSumAfterEleventhFourth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhFourth ≤ 247395453743268397918359987812958812264043147294012) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterEleventhThird_le χ hodd
    (checker_test_iff_blockSumAfterEleventhThird_le.mp (checker_test_iff_blockSumAfterEleventhFourth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterEleventhFourth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhFourth ≤ 37863533352920868133887450207091294812264043147294013) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterEleventhThird_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterEleventhThird_le.mp
      (checker_unit_test_iff_blockSumAfterEleventhFourth_le.mpr hr))

private def eleventhFifthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((13225, 13271), (1610, 1795))

set_option maxRecDepth 32768 in
private theorem eleventhFifthPair_mem : eleventhFifthPair ∈ runPairsAfterEleventhFourth := by
  decide +kernel

/-- The remaining lower pairs after extracting the eleventh-to-fifth cross. -/
def runPairsAfterEleventhFifth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterEleventhFourth.erase eleventhFifthPair

theorem runPairsAfterEleventhFifth_card : runPairsAfterEleventhFifth.card = 31 := by
  rw [runPairsAfterEleventhFifth, Finset.card_erase_of_mem eleventhFifthPair_mem,
    runPairsAfterEleventhFourth_card]

/-- Literal checker costs over the 31 pairs left by this erasure. -/
def blockSumAfterEleventhFifth : ℕ := ∑ p ∈ runPairsAfterEleventhFifth, runPairSubtotal p

theorem blockSumAfterEleventhFifth_eq_sum :
    blockSumAfterEleventhFifth = ∑ p ∈ runPairsAfterEleventhFifth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The eleventh-to-fifth cross subtotal is counted once in the split. -/
theorem blockSumAfterEleventhFourth_eq_add_blockSumAfterEleventhFifth :
    blockSumAfterEleventhFourth =
      1147499574201466175782328374614992543149327155104 + blockSumAfterEleventhFifth :=
  bind_erased_subtotal blockSumAfterEleventhFourth_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase eleventhFifthPair_mem eleventhWithFifthRetainedRunCross)
    blockSumAfterEleventhFifth_eq_sum

private theorem accumulate_eleventh_fifth_subtotal {n old rest : ℕ}
    (hn : n = 123840065154445524568366359456908705187735956852705987 + old)
    (hrest : old = 1147499574201466175782328374614992543149327155104 + rest) :
    n = 123841212654019726034542141785283320180279106179861091 + rest := by
  omega

/-- The checker numerator with sixty exact contributions separated. -/
theorem literal_total_eq_certified_add_afterEleventhFifth :
    total checkerMidpointLower =
      123841212654019726034542141785283320180279106179861091 + blockSumAfterEleventhFifth :=
  accumulate_eleventh_fifth_subtotal literal_total_eq_certified_add_afterEleventhFourth
    blockSumAfterEleventhFourth_eq_add_blockSumAfterEleventhFifth

private theorem after_eleventh_fifth_strict_cutoff (r : ℕ) :
    1147499574201466175782328374614992543149327155104 + r ≤
      247395453743268397918359987812958812264043147294012 ↔
    r ≤ 246247954169066931742577659438343819720893820138908 := by
  omega

private theorem after_eleventh_fifth_unit_cutoff (r : ℕ) :
    1147499574201466175782328374614992543149327155104 + r ≤
      37863533352920868133887450207091294812264043147294013 ↔
    r ≤ 37862385853346666667711667878716679819720893820138909 := by
  omega

/-- The original strict integer test in terms of the 31-pair sum. -/
theorem checker_test_iff_blockSumAfterEleventhFifth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterEleventhFifth ≤ 246247954169066931742577659438343819720893820138908 :=
  checker_test_iff_blockSumAfterEleventhFourth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 247395453743268397918359987812958812264043147294012)
      blockSumAfterEleventhFourth_eq_add_blockSumAfterEleventhFifth).to_iff.trans
        (after_eleventh_fifth_strict_cutoff blockSumAfterEleventhFifth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterEleventhFifth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterEleventhFifth ≤ 37862385853346666667711667878716679819720893820138909 :=
  checker_unit_test_iff_blockSumAfterEleventhFourth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37863533352920868133887450207091294812264043147294013)
      blockSumAfterEleventhFourth_eq_add_blockSumAfterEleventhFifth).to_iff.trans
        (after_eleventh_fifth_unit_cutoff blockSumAfterEleventhFifth))

theorem rectangle_lt_of_blockSumAfterEleventhFifth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhFifth ≤ 246247954169066931742577659438343819720893820138908) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterEleventhFourth_le χ hodd
    (checker_test_iff_blockSumAfterEleventhFourth_le.mp (checker_test_iff_blockSumAfterEleventhFifth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterEleventhFifth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhFifth ≤ 37862385853346666667711667878716679819720893820138909) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterEleventhFourth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterEleventhFourth_le.mp
      (checker_unit_test_iff_blockSumAfterEleventhFifth_le.mpr hr))

private def eleventhSixthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((13225, 13271), (2790, 2913))

set_option maxRecDepth 32768 in
private theorem eleventhSixthPair_mem : eleventhSixthPair ∈ runPairsAfterEleventhFifth := by
  decide +kernel

/-- The remaining lower pairs after extracting the eleventh-to-sixth cross. -/
def runPairsAfterEleventhSixth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterEleventhFifth.erase eleventhSixthPair

theorem runPairsAfterEleventhSixth_card : runPairsAfterEleventhSixth.card = 30 := by
  rw [runPairsAfterEleventhSixth, Finset.card_erase_of_mem eleventhSixthPair_mem,
    runPairsAfterEleventhFifth_card]

/-- Literal checker costs over the 30 pairs left by this erasure. -/
def blockSumAfterEleventhSixth : ℕ := ∑ p ∈ runPairsAfterEleventhSixth, runPairSubtotal p

theorem blockSumAfterEleventhSixth_eq_sum :
    blockSumAfterEleventhSixth = ∑ p ∈ runPairsAfterEleventhSixth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The eleventh-to-sixth cross subtotal is counted once in the split. -/
theorem blockSumAfterEleventhFifth_eq_add_blockSumAfterEleventhSixth :
    blockSumAfterEleventhFifth =
      151518659489965702407036531995947466506148256040 + blockSumAfterEleventhSixth :=
  bind_erased_subtotal blockSumAfterEleventhFifth_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase eleventhSixthPair_mem eleventhWithSixthRetainedRunCross)
    blockSumAfterEleventhSixth_eq_sum

private theorem accumulate_eleventh_sixth_subtotal {n old rest : ℕ}
    (hn : n = 123841212654019726034542141785283320180279106179861091 + old)
    (hrest : old = 151518659489965702407036531995947466506148256040 + rest) :
    n = 123841364172679216000244548821815316127745612328117131 + rest := by
  omega

/-- The checker numerator with sixty-one exact contributions separated. -/
theorem literal_total_eq_certified_add_afterEleventhSixth :
    total checkerMidpointLower =
      123841364172679216000244548821815316127745612328117131 + blockSumAfterEleventhSixth :=
  accumulate_eleventh_sixth_subtotal literal_total_eq_certified_add_afterEleventhFifth
    blockSumAfterEleventhFifth_eq_add_blockSumAfterEleventhSixth

private theorem after_eleventh_sixth_strict_cutoff (r : ℕ) :
    151518659489965702407036531995947466506148256040 + r ≤
      246247954169066931742577659438343819720893820138908 ↔
    r ≤ 246096435509576966040170622906347872254387671882868 := by
  omega

private theorem after_eleventh_sixth_unit_cutoff (r : ℕ) :
    151518659489965702407036531995947466506148256040 + r ≤
      37862385853346666667711667878716679819720893820138909 ↔
    r ≤ 37862234334687176702009260842184683872254387671882869 := by
  omega

/-- The original strict integer test in terms of the 30-pair sum. -/
theorem checker_test_iff_blockSumAfterEleventhSixth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterEleventhSixth ≤ 246096435509576966040170622906347872254387671882868 :=
  checker_test_iff_blockSumAfterEleventhFifth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 246247954169066931742577659438343819720893820138908)
      blockSumAfterEleventhFifth_eq_add_blockSumAfterEleventhSixth).to_iff.trans
        (after_eleventh_sixth_strict_cutoff blockSumAfterEleventhSixth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterEleventhSixth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterEleventhSixth ≤ 37862234334687176702009260842184683872254387671882869 :=
  checker_unit_test_iff_blockSumAfterEleventhFifth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37862385853346666667711667878716679819720893820138909)
      blockSumAfterEleventhFifth_eq_add_blockSumAfterEleventhSixth).to_iff.trans
        (after_eleventh_sixth_unit_cutoff blockSumAfterEleventhSixth))

theorem rectangle_lt_of_blockSumAfterEleventhSixth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhSixth ≤ 246096435509576966040170622906347872254387671882868) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterEleventhFifth_le χ hodd
    (checker_test_iff_blockSumAfterEleventhFifth_le.mp (checker_test_iff_blockSumAfterEleventhSixth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterEleventhSixth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhSixth ≤ 37862234334687176702009260842184683872254387671882869) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterEleventhFifth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterEleventhFifth_le.mp
      (checker_unit_test_iff_blockSumAfterEleventhSixth_le.mpr hr))

private def eleventhSeventhPair : (ℕ × ℕ) × (ℕ × ℕ) := ((13225, 13271), (4110, 4199))

set_option maxRecDepth 32768 in
private theorem eleventhSeventhPair_mem : eleventhSeventhPair ∈ runPairsAfterEleventhSixth := by
  decide +kernel

/-- The remaining lower pairs after extracting the eleventh-to-seventh cross. -/
def runPairsAfterEleventhSeventh : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterEleventhSixth.erase eleventhSeventhPair

theorem runPairsAfterEleventhSeventh_card : runPairsAfterEleventhSeventh.card = 29 := by
  rw [runPairsAfterEleventhSeventh, Finset.card_erase_of_mem eleventhSeventhPair_mem,
    runPairsAfterEleventhSixth_card]

/-- Literal checker costs over the 29 pairs left by this erasure. -/
def blockSumAfterEleventhSeventh : ℕ := ∑ p ∈ runPairsAfterEleventhSeventh, runPairSubtotal p

theorem blockSumAfterEleventhSeventh_eq_sum :
    blockSumAfterEleventhSeventh = ∑ p ∈ runPairsAfterEleventhSeventh,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The eleventh-to-seventh cross subtotal is counted once in the split. -/
theorem blockSumAfterEleventhSixth_eq_add_blockSumAfterEleventhSeventh :
    blockSumAfterEleventhSixth =
      213257600085867618180032305852960293645203239444 + blockSumAfterEleventhSeventh :=
  bind_erased_subtotal blockSumAfterEleventhSixth_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase eleventhSeventhPair_mem eleventhWithSeventhRetainedRunCross)
    blockSumAfterEleventhSeventh_eq_sum

private theorem accumulate_eleventh_seventh_subtotal {n old rest : ℕ}
    (hn : n = 123841364172679216000244548821815316127745612328117131 + old)
    (hrest : old = 213257600085867618180032305852960293645203239444 + rest) :
    n = 123841577430279301867862728854121169088039257531356575 + rest := by
  omega

/-- The checker numerator with sixty-two exact contributions separated. -/
theorem literal_total_eq_certified_add_afterEleventhSeventh :
    total checkerMidpointLower =
      123841577430279301867862728854121169088039257531356575 + blockSumAfterEleventhSeventh :=
  accumulate_eleventh_seventh_subtotal literal_total_eq_certified_add_afterEleventhSixth
    blockSumAfterEleventhSixth_eq_add_blockSumAfterEleventhSeventh

private theorem after_eleventh_seventh_strict_cutoff (r : ℕ) :
    213257600085867618180032305852960293645203239444 + r ≤
      246096435509576966040170622906347872254387671882868 ↔
    r ≤ 245883177909491098421990590600494911960742468643424 := by
  omega

private theorem after_eleventh_seventh_unit_cutoff (r : ℕ) :
    213257600085867618180032305852960293645203239444 + r ≤
      37862234334687176702009260842184683872254387671882869 ↔
    r ≤ 37862021077087090834391080809878830911960742468643425 := by
  omega

/-- The original strict integer test in terms of the 29-pair sum. -/
theorem checker_test_iff_blockSumAfterEleventhSeventh_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterEleventhSeventh ≤ 245883177909491098421990590600494911960742468643424 :=
  checker_test_iff_blockSumAfterEleventhSixth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 246096435509576966040170622906347872254387671882868)
      blockSumAfterEleventhSixth_eq_add_blockSumAfterEleventhSeventh).to_iff.trans
        (after_eleventh_seventh_strict_cutoff blockSumAfterEleventhSeventh))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterEleventhSeventh_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterEleventhSeventh ≤ 37862021077087090834391080809878830911960742468643425 :=
  checker_unit_test_iff_blockSumAfterEleventhSixth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37862234334687176702009260842184683872254387671882869)
      blockSumAfterEleventhSixth_eq_add_blockSumAfterEleventhSeventh).to_iff.trans
        (after_eleventh_seventh_unit_cutoff blockSumAfterEleventhSeventh))

theorem rectangle_lt_of_blockSumAfterEleventhSeventh_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhSeventh ≤ 245883177909491098421990590600494911960742468643424) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterEleventhSixth_le χ hodd
    (checker_test_iff_blockSumAfterEleventhSixth_le.mp (checker_test_iff_blockSumAfterEleventhSeventh_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterEleventhSeventh_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhSeventh ≤ 37862021077087090834391080809878830911960742468643425) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterEleventhSixth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterEleventhSixth_le.mp
      (checker_unit_test_iff_blockSumAfterEleventhSeventh_le.mpr hr))

/-- The lower checker pairs left after extracting all blocks of the eleventh retained run. -/
def runPairsAfterEleventhDiagonal : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterEleventhSeventh
    |>.erase ((13225, 13271), (5271, 5331))
    |>.erase ((13225, 13271), (6208, 6270))
    |>.erase ((13225, 13271), (8652, 8758))
    |>.erase ((13225, 13271), (13225, 13271))

set_option maxRecDepth 32768 in
theorem runPairsAfterEleventhDiagonal_card : runPairsAfterEleventhDiagonal.card = 25 := by
  decide +kernel

/-- Literal checker costs over the remaining 25 pairs. -/
def blockSumAfterEleventhDiagonal : ℕ := ∑ p ∈ runPairsAfterEleventhDiagonal, runPairSubtotal p

theorem blockSumAfterEleventhDiagonal_eq_sum :
    blockSumAfterEleventhDiagonal = ∑ p ∈ runPairsAfterEleventhDiagonal,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

set_option maxRecDepth 32768 in
/-- Extract the eighth through tenth crosses and the diagonal, each once. -/
theorem blockSumAfterEleventhSeventh_eq_add_blockSumAfterEleventhDiagonal :
    blockSumAfterEleventhSeventh =
      30023368213588374534856401935876000391961306380080 + blockSumAfterEleventhDiagonal := by
  rewrite [blockSumAfterEleventhSeventh_eq_sum, blockSumAfterEleventhDiagonal_eq_sum,
    runPairsAfterEleventhDiagonal,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((13225, 13271), (5271, 5331)))
      (by decide +kernel) eleventhWithEighthRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((13225, 13271), (6208, 6270)))
      (by decide +kernel) eleventhWithNinthRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((13225, 13271), (8652, 8758)))
      (by decide +kernel) eleventhWithTenthRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((13225, 13271), (13225, 13271)))
      (by decide +kernel) eleventhRetainedRunDiagonal]
  omega

private theorem addEleventhDiagonalSubtotal {n old rest : ℕ}
    (hn : n = 123841577430279301867862728854121169088039257531356575 + old)
    (hrest : old = 30023368213588374534856401935876000391961306380080 + rest) :
    n = 123871600798492890242397585256057045088431218837736655 + rest := by
  omega

private theorem after_eleventh_diagonal_strict_cutoff (r : ℕ) :
    30023368213588374534856401935876000391961306380080 + r ≤ 245883177909491098421990590600494911960742468643424 ↔
      r ≤ 215859809695902723887134188664618911568781162263344 := by
  omega

private theorem after_eleventh_diagonal_unit_cutoff (r : ℕ) :
    30023368213588374534856401935876000391961306380080 + r ≤ 37862021077087090834391080809878830911960742468643425 ↔
      r ≤ 37831997708873502459856224407942954911568781162263345 := by
  omega

/-- The checker numerator after separating all sixty-six certified block costs. -/
theorem literal_total_eq_certified_add_afterEleventhDiagonal :
    total checkerMidpointLower =
      123871600798492890242397585256057045088431218837736655 + blockSumAfterEleventhDiagonal :=
  addEleventhDiagonalSubtotal literal_total_eq_certified_add_afterEleventhSeventh
    blockSumAfterEleventhSeventh_eq_add_blockSumAfterEleventhDiagonal

/-- The original strict integer test in terms of the 25-pair residual. -/
theorem checker_test_iff_blockSumAfterEleventhDiagonal_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterEleventhDiagonal ≤ 215859809695902723887134188664618911568781162263344 :=
  checker_test_iff_blockSumAfterEleventhSeventh_le.trans
    ((congrArg (fun n : ℕ => n ≤ 245883177909491098421990590600494911960742468643424)
      blockSumAfterEleventhSeventh_eq_add_blockSumAfterEleventhDiagonal).to_iff.trans
        (after_eleventh_diagonal_strict_cutoff blockSumAfterEleventhDiagonal))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterEleventhDiagonal_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterEleventhDiagonal ≤ 37831997708873502459856224407942954911568781162263345 :=
  checker_unit_test_iff_blockSumAfterEleventhSeventh_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37862021077087090834391080809878830911960742468643425)
      blockSumAfterEleventhSeventh_eq_add_blockSumAfterEleventhDiagonal).to_iff.trans
        (after_eleventh_diagonal_unit_cutoff blockSumAfterEleventhDiagonal))

theorem rectangle_lt_of_blockSumAfterEleventhDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhDiagonal ≤ 215859809695902723887134188664618911568781162263344) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterEleventhSeventh_le χ hodd
    (checker_test_iff_blockSumAfterEleventhSeventh_le.mp
      (checker_test_iff_blockSumAfterEleventhDiagonal_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterEleventhDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterEleventhDiagonal ≤ 37831997708873502459856224407942954911568781162263345) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterEleventhSeventh_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterEleventhSeventh_le.mp
      (checker_unit_test_iff_blockSumAfterEleventhDiagonal_le.mpr hr))

<<<<<<< HEAD
=======
private def twelfthFirstPair : (ℕ × ℕ) × (ℕ × ℕ) := ((15678, 15741), (0, 96))

set_option maxRecDepth 32768 in
private theorem twelfthFirstPair_mem : twelfthFirstPair ∈ runPairsAfterEleventhDiagonal := by
  decide +kernel

/-- The remaining lower pairs after extracting the twelfth-to-first cross. -/
def runPairsAfterTwelfthFirst : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterEleventhDiagonal.erase twelfthFirstPair

theorem runPairsAfterTwelfthFirst_card : runPairsAfterTwelfthFirst.card = 24 := by
  rw [runPairsAfterTwelfthFirst, Finset.card_erase_of_mem twelfthFirstPair_mem,
    runPairsAfterEleventhDiagonal_card]

/-- Literal checker costs over the 24 pairs left by this erasure. -/
def blockSumAfterTwelfthFirst : ℕ := ∑ p ∈ runPairsAfterTwelfthFirst, runPairSubtotal p

theorem blockSumAfterTwelfthFirst_eq_sum :
    blockSumAfterTwelfthFirst = ∑ p ∈ runPairsAfterTwelfthFirst,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The twelfth-to-first cross subtotal is counted once in the split. -/
theorem blockSumAfterEleventhDiagonal_eq_add_blockSumAfterTwelfthFirst :
    blockSumAfterEleventhDiagonal =
      237115540096685167055980636828976456457953103310 + blockSumAfterTwelfthFirst :=
  bind_erased_subtotal blockSumAfterEleventhDiagonal_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase twelfthFirstPair_mem twelfthWithFirstRetainedRunCross)
    blockSumAfterTwelfthFirst_eq_sum

private theorem accumulate_twelfth_first_subtotal {n old rest : ℕ}
    (hn : n = 123871600798492890242397585256057045088431218837736655 + old)
    (hrest : old = 237115540096685167055980636828976456457953103310 + rest) :
    n = 123871837914032986927564641236693874064887676790839965 + rest := by
  omega

/-- The checker numerator with sixty-seven exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTwelfthFirst :
    total checkerMidpointLower =
      123871837914032986927564641236693874064887676790839965 + blockSumAfterTwelfthFirst :=
  accumulate_twelfth_first_subtotal literal_total_eq_certified_add_afterEleventhDiagonal
    blockSumAfterEleventhDiagonal_eq_add_blockSumAfterTwelfthFirst

private theorem after_twelfth_first_strict_cutoff (r : ℕ) :
    237115540096685167055980636828976456457953103310 + r ≤
      215859809695902723887134188664618911568781162263344 ↔
    r ≤ 215622694155806038720078208027789935112323209160034 := by
  omega

private theorem after_twelfth_first_unit_cutoff (r : ℕ) :
    237115540096685167055980636828976456457953103310 + r ≤
      37831997708873502459856224407942954911568781162263345 ↔
    r ≤ 37831760593333405774689168427306125935112323209160035 := by
  omega

/-- The original strict integer test in terms of the 24-pair sum. -/
theorem checker_test_iff_blockSumAfterTwelfthFirst_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTwelfthFirst ≤ 215622694155806038720078208027789935112323209160034 :=
  checker_test_iff_blockSumAfterEleventhDiagonal_le.trans
    ((congrArg (fun n : ℕ => n ≤ 215859809695902723887134188664618911568781162263344)
      blockSumAfterEleventhDiagonal_eq_add_blockSumAfterTwelfthFirst).to_iff.trans
        (after_twelfth_first_strict_cutoff blockSumAfterTwelfthFirst))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTwelfthFirst_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTwelfthFirst ≤ 37831760593333405774689168427306125935112323209160035 :=
  checker_unit_test_iff_blockSumAfterEleventhDiagonal_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37831997708873502459856224407942954911568781162263345)
      blockSumAfterEleventhDiagonal_eq_add_blockSumAfterTwelfthFirst).to_iff.trans
        (after_twelfth_first_unit_cutoff blockSumAfterTwelfthFirst))

theorem rectangle_lt_of_blockSumAfterTwelfthFirst_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthFirst ≤ 215622694155806038720078208027789935112323209160034) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterEleventhDiagonal_le χ hodd
    (checker_test_iff_blockSumAfterEleventhDiagonal_le.mp (checker_test_iff_blockSumAfterTwelfthFirst_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTwelfthFirst_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthFirst ≤ 37831760593333405774689168427306125935112323209160035) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterEleventhDiagonal_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterEleventhDiagonal_le.mp
      (checker_unit_test_iff_blockSumAfterTwelfthFirst_le.mpr hr))

private def twelfthSecondPair : (ℕ × ℕ) × (ℕ × ℕ) := ((15678, 15741), (284, 479))

set_option maxRecDepth 32768 in
private theorem twelfthSecondPair_mem : twelfthSecondPair ∈ runPairsAfterTwelfthFirst := by
  decide +kernel

/-- The remaining lower pairs after extracting the twelfth-to-second cross. -/
def runPairsAfterTwelfthSecond : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTwelfthFirst.erase twelfthSecondPair

theorem runPairsAfterTwelfthSecond_card : runPairsAfterTwelfthSecond.card = 23 := by
  rw [runPairsAfterTwelfthSecond, Finset.card_erase_of_mem twelfthSecondPair_mem,
    runPairsAfterTwelfthFirst_card]

/-- Literal checker costs over the 23 pairs left by this erasure. -/
def blockSumAfterTwelfthSecond : ℕ := ∑ p ∈ runPairsAfterTwelfthSecond, runPairSubtotal p

theorem blockSumAfterTwelfthSecond_eq_sum :
    blockSumAfterTwelfthSecond = ∑ p ∈ runPairsAfterTwelfthSecond,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The twelfth-to-second cross subtotal is counted once in the split. -/
theorem blockSumAfterTwelfthFirst_eq_add_blockSumAfterTwelfthSecond :
    blockSumAfterTwelfthFirst =
      543345624948049426701389349583658524937067095966 + blockSumAfterTwelfthSecond :=
  bind_erased_subtotal blockSumAfterTwelfthFirst_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase twelfthSecondPair_mem twelfthWithSecondRetainedRunCross)
    blockSumAfterTwelfthSecond_eq_sum

private theorem accumulate_twelfth_second_subtotal {n old rest : ℕ}
    (hn : n = 123871837914032986927564641236693874064887676790839965 + old)
    (hrest : old = 543345624948049426701389349583658524937067095966 + rest) :
    n = 123872381259657934976991342626043457723412613857935931 + rest := by
  omega

/-- The checker numerator with sixty-eight exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTwelfthSecond :
    total checkerMidpointLower =
      123872381259657934976991342626043457723412613857935931 + blockSumAfterTwelfthSecond :=
  accumulate_twelfth_second_subtotal literal_total_eq_certified_add_afterTwelfthFirst
    blockSumAfterTwelfthFirst_eq_add_blockSumAfterTwelfthSecond

private theorem after_twelfth_second_strict_cutoff (r : ℕ) :
    543345624948049426701389349583658524937067095966 + r ≤
      215622694155806038720078208027789935112323209160034 ↔
    r ≤ 215079348530857989293376818678206276587386142064068 := by
  omega

private theorem after_twelfth_second_unit_cutoff (r : ℕ) :
    543345624948049426701389349583658524937067095966 + r ≤
      37831760593333405774689168427306125935112323209160035 ↔
    r ≤ 37831217247708457725262467037956542276587386142064069 := by
  omega

/-- The original strict integer test in terms of the 23-pair sum. -/
theorem checker_test_iff_blockSumAfterTwelfthSecond_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTwelfthSecond ≤ 215079348530857989293376818678206276587386142064068 :=
  checker_test_iff_blockSumAfterTwelfthFirst_le.trans
    ((congrArg (fun n : ℕ => n ≤ 215622694155806038720078208027789935112323209160034)
      blockSumAfterTwelfthFirst_eq_add_blockSumAfterTwelfthSecond).to_iff.trans
        (after_twelfth_second_strict_cutoff blockSumAfterTwelfthSecond))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTwelfthSecond_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTwelfthSecond ≤ 37831217247708457725262467037956542276587386142064069 :=
  checker_unit_test_iff_blockSumAfterTwelfthFirst_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37831760593333405774689168427306125935112323209160035)
      blockSumAfterTwelfthFirst_eq_add_blockSumAfterTwelfthSecond).to_iff.trans
        (after_twelfth_second_unit_cutoff blockSumAfterTwelfthSecond))

theorem rectangle_lt_of_blockSumAfterTwelfthSecond_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthSecond ≤ 215079348530857989293376818678206276587386142064068) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTwelfthFirst_le χ hodd
    (checker_test_iff_blockSumAfterTwelfthFirst_le.mp (checker_test_iff_blockSumAfterTwelfthSecond_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTwelfthSecond_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthSecond ≤ 37831217247708457725262467037956542276587386142064069) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTwelfthFirst_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTwelfthFirst_le.mp
      (checker_unit_test_iff_blockSumAfterTwelfthSecond_le.mpr hr))

private def twelfthThirdPair : (ℕ × ℕ) × (ℕ × ℕ) := ((15678, 15741), (666, 853))

set_option maxRecDepth 32768 in
private theorem twelfthThirdPair_mem : twelfthThirdPair ∈ runPairsAfterTwelfthSecond := by
  decide +kernel

/-- The remaining lower pairs after extracting the twelfth-to-third cross. -/
def runPairsAfterTwelfthThird : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTwelfthSecond.erase twelfthThirdPair

theorem runPairsAfterTwelfthThird_card : runPairsAfterTwelfthThird.card = 22 := by
  rw [runPairsAfterTwelfthThird, Finset.card_erase_of_mem twelfthThirdPair_mem,
    runPairsAfterTwelfthSecond_card]

/-- Literal checker costs over the 22 pairs left by this erasure. -/
def blockSumAfterTwelfthThird : ℕ := ∑ p ∈ runPairsAfterTwelfthThird, runPairSubtotal p

theorem blockSumAfterTwelfthThird_eq_sum :
    blockSumAfterTwelfthThird = ∑ p ∈ runPairsAfterTwelfthThird,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The twelfth-to-third cross subtotal is counted once in the split. -/
theorem blockSumAfterTwelfthSecond_eq_add_blockSumAfterTwelfthThird :
    blockSumAfterTwelfthSecond =
      973375570650004805024600951038570879619339381384 + blockSumAfterTwelfthThird :=
  bind_erased_subtotal blockSumAfterTwelfthSecond_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase twelfthThirdPair_mem twelfthWithThirdRetainedRunCross)
    blockSumAfterTwelfthThird_eq_sum

private theorem accumulate_twelfth_third_subtotal {n old rest : ℕ}
    (hn : n = 123872381259657934976991342626043457723412613857935931 + old)
    (hrest : old = 973375570650004805024600951038570879619339381384 + rest) :
    n = 123873354635228584981796367226994496294292233197317315 + rest := by
  omega

/-- The checker numerator with sixty-nine exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTwelfthThird :
    total checkerMidpointLower =
      123873354635228584981796367226994496294292233197317315 + blockSumAfterTwelfthThird :=
  accumulate_twelfth_third_subtotal literal_total_eq_certified_add_afterTwelfthSecond
    blockSumAfterTwelfthSecond_eq_add_blockSumAfterTwelfthThird

private theorem after_twelfth_third_strict_cutoff (r : ℕ) :
    973375570650004805024600951038570879619339381384 + r ≤
      215079348530857989293376818678206276587386142064068 ↔
    r ≤ 214105972960207984488352217727167705707766802682684 := by
  omega

private theorem after_twelfth_third_unit_cutoff (r : ℕ) :
    973375570650004805024600951038570879619339381384 + r ≤
      37831217247708457725262467037956542276587386142064069 ↔
    r ≤ 37830243872137807720457442437005503705707766802682685 := by
  omega

/-- The original strict integer test in terms of the 22-pair sum. -/
theorem checker_test_iff_blockSumAfterTwelfthThird_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTwelfthThird ≤ 214105972960207984488352217727167705707766802682684 :=
  checker_test_iff_blockSumAfterTwelfthSecond_le.trans
    ((congrArg (fun n : ℕ => n ≤ 215079348530857989293376818678206276587386142064068)
      blockSumAfterTwelfthSecond_eq_add_blockSumAfterTwelfthThird).to_iff.trans
        (after_twelfth_third_strict_cutoff blockSumAfterTwelfthThird))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTwelfthThird_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTwelfthThird ≤ 37830243872137807720457442437005503705707766802682685 :=
  checker_unit_test_iff_blockSumAfterTwelfthSecond_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37831217247708457725262467037956542276587386142064069)
      blockSumAfterTwelfthSecond_eq_add_blockSumAfterTwelfthThird).to_iff.trans
        (after_twelfth_third_unit_cutoff blockSumAfterTwelfthThird))

theorem rectangle_lt_of_blockSumAfterTwelfthThird_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthThird ≤ 214105972960207984488352217727167705707766802682684) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTwelfthSecond_le χ hodd
    (checker_test_iff_blockSumAfterTwelfthSecond_le.mp (checker_test_iff_blockSumAfterTwelfthThird_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTwelfthThird_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthThird ≤ 37830243872137807720457442437005503705707766802682685) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTwelfthSecond_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTwelfthSecond_le.mp
      (checker_unit_test_iff_blockSumAfterTwelfthThird_le.mpr hr))

private def twelfthFourthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((15678, 15741), (1177, 1294))

set_option maxRecDepth 32768 in
private theorem twelfthFourthPair_mem : twelfthFourthPair ∈ runPairsAfterTwelfthThird := by
  decide +kernel

/-- The remaining lower pairs after extracting the twelfth-to-fourth cross. -/
def runPairsAfterTwelfthFourth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTwelfthThird.erase twelfthFourthPair

theorem runPairsAfterTwelfthFourth_card : runPairsAfterTwelfthFourth.card = 21 := by
  rw [runPairsAfterTwelfthFourth, Finset.card_erase_of_mem twelfthFourthPair_mem,
    runPairsAfterTwelfthThird_card]

/-- Literal checker costs over the 21 pairs left by this erasure. -/
def blockSumAfterTwelfthFourth : ℕ := ∑ p ∈ runPairsAfterTwelfthFourth, runPairSubtotal p

theorem blockSumAfterTwelfthFourth_eq_sum :
    blockSumAfterTwelfthFourth = ∑ p ∈ runPairsAfterTwelfthFourth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The twelfth-to-fourth cross subtotal is counted once in the split. -/
theorem blockSumAfterTwelfthThird_eq_add_blockSumAfterTwelfthFourth :
    blockSumAfterTwelfthThird =
      297222843978227522611355534261085286045476525596 + blockSumAfterTwelfthFourth :=
  bind_erased_subtotal blockSumAfterTwelfthThird_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase twelfthFourthPair_mem twelfthWithFourthRetainedRunCross)
    blockSumAfterTwelfthFourth_eq_sum

private theorem accumulate_twelfth_fourth_subtotal {n old rest : ℕ}
    (hn : n = 123873354635228584981796367226994496294292233197317315 + old)
    (hrest : old = 297222843978227522611355534261085286045476525596 + rest) :
    n = 123873651858072563209318978582528757379578278673842911 + rest := by
  omega

/-- The checker numerator with seventy exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTwelfthFourth :
    total checkerMidpointLower =
      123873651858072563209318978582528757379578278673842911 + blockSumAfterTwelfthFourth :=
  accumulate_twelfth_fourth_subtotal literal_total_eq_certified_add_afterTwelfthThird
    blockSumAfterTwelfthThird_eq_add_blockSumAfterTwelfthFourth

private theorem after_twelfth_fourth_strict_cutoff (r : ℕ) :
    297222843978227522611355534261085286045476525596 + r ≤
      214105972960207984488352217727167705707766802682684 ↔
    r ≤ 213808750116229756965740862192906620421721326157088 := by
  omega

private theorem after_twelfth_fourth_unit_cutoff (r : ℕ) :
    297222843978227522611355534261085286045476525596 + r ≤
      37830243872137807720457442437005503705707766802682685 ↔
    r ≤ 37829946649293829492934831081471242620421721326157089 := by
  omega

/-- The original strict integer test in terms of the 21-pair sum. -/
theorem checker_test_iff_blockSumAfterTwelfthFourth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTwelfthFourth ≤ 213808750116229756965740862192906620421721326157088 :=
  checker_test_iff_blockSumAfterTwelfthThird_le.trans
    ((congrArg (fun n : ℕ => n ≤ 214105972960207984488352217727167705707766802682684)
      blockSumAfterTwelfthThird_eq_add_blockSumAfterTwelfthFourth).to_iff.trans
        (after_twelfth_fourth_strict_cutoff blockSumAfterTwelfthFourth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTwelfthFourth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTwelfthFourth ≤ 37829946649293829492934831081471242620421721326157089 :=
  checker_unit_test_iff_blockSumAfterTwelfthThird_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37830243872137807720457442437005503705707766802682685)
      blockSumAfterTwelfthThird_eq_add_blockSumAfterTwelfthFourth).to_iff.trans
        (after_twelfth_fourth_unit_cutoff blockSumAfterTwelfthFourth))

theorem rectangle_lt_of_blockSumAfterTwelfthFourth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthFourth ≤ 213808750116229756965740862192906620421721326157088) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTwelfthThird_le χ hodd
    (checker_test_iff_blockSumAfterTwelfthThird_le.mp (checker_test_iff_blockSumAfterTwelfthFourth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTwelfthFourth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthFourth ≤ 37829946649293829492934831081471242620421721326157089) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTwelfthThird_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTwelfthThird_le.mp
      (checker_unit_test_iff_blockSumAfterTwelfthFourth_le.mpr hr))

private def twelfthFifthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((15678, 15741), (1610, 1795))

set_option maxRecDepth 32768 in
private theorem twelfthFifthPair_mem : twelfthFifthPair ∈ runPairsAfterTwelfthFourth := by
  decide +kernel

/-- The remaining lower pairs after extracting the twelfth-to-fifth cross. -/
def runPairsAfterTwelfthFifth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTwelfthFourth.erase twelfthFifthPair

theorem runPairsAfterTwelfthFifth_card : runPairsAfterTwelfthFifth.card = 20 := by
  rw [runPairsAfterTwelfthFifth, Finset.card_erase_of_mem twelfthFifthPair_mem,
    runPairsAfterTwelfthFourth_card]

/-- Literal checker costs over the 20 pairs left by this erasure. -/
def blockSumAfterTwelfthFifth : ℕ := ∑ p ∈ runPairsAfterTwelfthFifth, runPairSubtotal p

theorem blockSumAfterTwelfthFifth_eq_sum :
    blockSumAfterTwelfthFifth = ∑ p ∈ runPairsAfterTwelfthFifth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The twelfth-to-fifth cross subtotal is counted once in the split. -/
theorem blockSumAfterTwelfthFourth_eq_add_blockSumAfterTwelfthFifth :
    blockSumAfterTwelfthFourth =
      2261251501896829297413388294735514224026319848126 + blockSumAfterTwelfthFifth :=
  bind_erased_subtotal blockSumAfterTwelfthFourth_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase twelfthFifthPair_mem twelfthWithFifthRetainedRunCross)
    blockSumAfterTwelfthFifth_eq_sum

private theorem accumulate_twelfth_fifth_subtotal {n old rest : ℕ}
    (hn : n = 123873651858072563209318978582528757379578278673842911 + old)
    (hrest : old = 2261251501896829297413388294735514224026319848126 + rest) :
    n = 123875913109574460038616391970823492893802304993691037 + rest := by
  omega

/-- The checker numerator with seventy-one exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTwelfthFifth :
    total checkerMidpointLower =
      123875913109574460038616391970823492893802304993691037 + blockSumAfterTwelfthFifth :=
  accumulate_twelfth_fifth_subtotal literal_total_eq_certified_add_afterTwelfthFourth
    blockSumAfterTwelfthFourth_eq_add_blockSumAfterTwelfthFifth

private theorem after_twelfth_fifth_strict_cutoff (r : ℕ) :
    2261251501896829297413388294735514224026319848126 + r ≤
      213808750116229756965740862192906620421721326157088 ↔
    r ≤ 211547498614332927668327473898171106197695006308962 := by
  omega

private theorem after_twelfth_fifth_unit_cutoff (r : ℕ) :
    2261251501896829297413388294735514224026319848126 + r ≤
      37829946649293829492934831081471242620421721326157089 ↔
    r ≤ 37827685397791932663637417693176507106197695006308963 := by
  omega

/-- The original strict integer test in terms of the 20-pair sum. -/
theorem checker_test_iff_blockSumAfterTwelfthFifth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTwelfthFifth ≤ 211547498614332927668327473898171106197695006308962 :=
  checker_test_iff_blockSumAfterTwelfthFourth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 213808750116229756965740862192906620421721326157088)
      blockSumAfterTwelfthFourth_eq_add_blockSumAfterTwelfthFifth).to_iff.trans
        (after_twelfth_fifth_strict_cutoff blockSumAfterTwelfthFifth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTwelfthFifth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTwelfthFifth ≤ 37827685397791932663637417693176507106197695006308963 :=
  checker_unit_test_iff_blockSumAfterTwelfthFourth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37829946649293829492934831081471242620421721326157089)
      blockSumAfterTwelfthFourth_eq_add_blockSumAfterTwelfthFifth).to_iff.trans
        (after_twelfth_fifth_unit_cutoff blockSumAfterTwelfthFifth))

theorem rectangle_lt_of_blockSumAfterTwelfthFifth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthFifth ≤ 211547498614332927668327473898171106197695006308962) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTwelfthFourth_le χ hodd
    (checker_test_iff_blockSumAfterTwelfthFourth_le.mp (checker_test_iff_blockSumAfterTwelfthFifth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTwelfthFifth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthFifth ≤ 37827685397791932663637417693176507106197695006308963) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTwelfthFourth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTwelfthFourth_le.mp
      (checker_unit_test_iff_blockSumAfterTwelfthFifth_le.mpr hr))

private def twelfthSixthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((15678, 15741), (2790, 2913))

set_option maxRecDepth 32768 in
private theorem twelfthSixthPair_mem : twelfthSixthPair ∈ runPairsAfterTwelfthFifth := by
  decide +kernel

/-- The remaining lower pairs after extracting the twelfth-to-sixth cross. -/
def runPairsAfterTwelfthSixth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTwelfthFifth.erase twelfthSixthPair

theorem runPairsAfterTwelfthSixth_card : runPairsAfterTwelfthSixth.card = 19 := by
  rw [runPairsAfterTwelfthSixth, Finset.card_erase_of_mem twelfthSixthPair_mem,
    runPairsAfterTwelfthFifth_card]

/-- Literal checker costs over the 19 pairs left by this erasure. -/
def blockSumAfterTwelfthSixth : ℕ := ∑ p ∈ runPairsAfterTwelfthSixth, runPairSubtotal p

theorem blockSumAfterTwelfthSixth_eq_sum :
    blockSumAfterTwelfthSixth = ∑ p ∈ runPairsAfterTwelfthSixth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The twelfth-to-sixth cross subtotal is counted once in the split. -/
theorem blockSumAfterTwelfthFifth_eq_add_blockSumAfterTwelfthSixth :
    blockSumAfterTwelfthFifth =
      285161111808594276083202486289339884714377737382 + blockSumAfterTwelfthSixth :=
  bind_erased_subtotal blockSumAfterTwelfthFifth_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase twelfthSixthPair_mem twelfthWithSixthRetainedRunCross)
    blockSumAfterTwelfthSixth_eq_sum

private theorem accumulate_twelfth_sixth_subtotal {n old rest : ℕ}
    (hn : n = 123875913109574460038616391970823492893802304993691037 + old)
    (hrest : old = 285161111808594276083202486289339884714377737382 + rest) :
    n = 123876198270686268632892475173309782233687019371428419 + rest := by
  omega

/-- The checker numerator with seventy-two exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTwelfthSixth :
    total checkerMidpointLower =
      123876198270686268632892475173309782233687019371428419 + blockSumAfterTwelfthSixth :=
  accumulate_twelfth_sixth_subtotal literal_total_eq_certified_add_afterTwelfthFifth
    blockSumAfterTwelfthFifth_eq_add_blockSumAfterTwelfthSixth

private theorem after_twelfth_sixth_strict_cutoff (r : ℕ) :
    285161111808594276083202486289339884714377737382 + r ≤
      211547498614332927668327473898171106197695006308962 ↔
    r ≤ 211262337502524333392244271411881766312980628571580 := by
  omega

private theorem after_twelfth_sixth_unit_cutoff (r : ℕ) :
    285161111808594276083202486289339884714377737382 + r ≤
      37827685397791932663637417693176507106197695006308963 ↔
    r ≤ 37827400236680124069361334490690217766312980628571581 := by
  omega

/-- The original strict integer test in terms of the 19-pair sum. -/
theorem checker_test_iff_blockSumAfterTwelfthSixth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTwelfthSixth ≤ 211262337502524333392244271411881766312980628571580 :=
  checker_test_iff_blockSumAfterTwelfthFifth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 211547498614332927668327473898171106197695006308962)
      blockSumAfterTwelfthFifth_eq_add_blockSumAfterTwelfthSixth).to_iff.trans
        (after_twelfth_sixth_strict_cutoff blockSumAfterTwelfthSixth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTwelfthSixth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTwelfthSixth ≤ 37827400236680124069361334490690217766312980628571581 :=
  checker_unit_test_iff_blockSumAfterTwelfthFifth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37827685397791932663637417693176507106197695006308963)
      blockSumAfterTwelfthFifth_eq_add_blockSumAfterTwelfthSixth).to_iff.trans
        (after_twelfth_sixth_unit_cutoff blockSumAfterTwelfthSixth))

theorem rectangle_lt_of_blockSumAfterTwelfthSixth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthSixth ≤ 211262337502524333392244271411881766312980628571580) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTwelfthFifth_le χ hodd
    (checker_test_iff_blockSumAfterTwelfthFifth_le.mp (checker_test_iff_blockSumAfterTwelfthSixth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTwelfthSixth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthSixth ≤ 37827400236680124069361334490690217766312980628571581) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTwelfthFifth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTwelfthFifth_le.mp
      (checker_unit_test_iff_blockSumAfterTwelfthSixth_le.mpr hr))

private def twelfthSeventhPair : (ℕ × ℕ) × (ℕ × ℕ) := ((15678, 15741), (4110, 4199))

set_option maxRecDepth 32768 in
private theorem twelfthSeventhPair_mem : twelfthSeventhPair ∈ runPairsAfterTwelfthSixth := by
  decide +kernel

/-- The remaining lower pairs after extracting the twelfth-to-seventh cross. -/
def runPairsAfterTwelfthSeventh : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTwelfthSixth.erase twelfthSeventhPair

theorem runPairsAfterTwelfthSeventh_card : runPairsAfterTwelfthSeventh.card = 18 := by
  rw [runPairsAfterTwelfthSeventh, Finset.card_erase_of_mem twelfthSeventhPair_mem,
    runPairsAfterTwelfthSixth_card]

/-- Literal checker costs over the 18 pairs left by this erasure. -/
def blockSumAfterTwelfthSeventh : ℕ := ∑ p ∈ runPairsAfterTwelfthSeventh, runPairSubtotal p

theorem blockSumAfterTwelfthSeventh_eq_sum :
    blockSumAfterTwelfthSeventh = ∑ p ∈ runPairsAfterTwelfthSeventh,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The twelfth-to-seventh cross subtotal is counted once in the split. -/
theorem blockSumAfterTwelfthSixth_eq_add_blockSumAfterTwelfthSeventh :
    blockSumAfterTwelfthSixth =
      383149119939508030565896235846943876399659947786 + blockSumAfterTwelfthSeventh :=
  bind_erased_subtotal blockSumAfterTwelfthSixth_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase twelfthSeventhPair_mem twelfthWithSeventhRetainedRunCross)
    blockSumAfterTwelfthSeventh_eq_sum

private theorem accumulate_twelfth_seventh_subtotal {n old rest : ℕ}
    (hn : n = 123876198270686268632892475173309782233687019371428419 + old)
    (hrest : old = 383149119939508030565896235846943876399659947786 + rest) :
    n = 123876581419806208140923041069545629177563419031376205 + rest := by
  omega

/-- The checker numerator with seventy-three exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTwelfthSeventh :
    total checkerMidpointLower =
      123876581419806208140923041069545629177563419031376205 + blockSumAfterTwelfthSeventh :=
  accumulate_twelfth_seventh_subtotal literal_total_eq_certified_add_afterTwelfthSixth
    blockSumAfterTwelfthSixth_eq_add_blockSumAfterTwelfthSeventh

private theorem after_twelfth_seventh_strict_cutoff (r : ℕ) :
    383149119939508030565896235846943876399659947786 + r ≤
      211262337502524333392244271411881766312980628571580 ↔
    r ≤ 210879188382584825361678375176034822436580968623794 := by
  omega

private theorem after_twelfth_seventh_unit_cutoff (r : ℕ) :
    383149119939508030565896235846943876399659947786 + r ≤
      37827400236680124069361334490690217766312980628571581 ↔
    r ≤ 37827017087560184561330768594454370822436580968623795 := by
  omega

/-- The original strict integer test in terms of the 18-pair sum. -/
theorem checker_test_iff_blockSumAfterTwelfthSeventh_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTwelfthSeventh ≤ 210879188382584825361678375176034822436580968623794 :=
  checker_test_iff_blockSumAfterTwelfthSixth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 211262337502524333392244271411881766312980628571580)
      blockSumAfterTwelfthSixth_eq_add_blockSumAfterTwelfthSeventh).to_iff.trans
        (after_twelfth_seventh_strict_cutoff blockSumAfterTwelfthSeventh))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTwelfthSeventh_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTwelfthSeventh ≤ 37827017087560184561330768594454370822436580968623795 :=
  checker_unit_test_iff_blockSumAfterTwelfthSixth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37827400236680124069361334490690217766312980628571581)
      blockSumAfterTwelfthSixth_eq_add_blockSumAfterTwelfthSeventh).to_iff.trans
        (after_twelfth_seventh_unit_cutoff blockSumAfterTwelfthSeventh))

theorem rectangle_lt_of_blockSumAfterTwelfthSeventh_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthSeventh ≤ 210879188382584825361678375176034822436580968623794) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTwelfthSixth_le χ hodd
    (checker_test_iff_blockSumAfterTwelfthSixth_le.mp (checker_test_iff_blockSumAfterTwelfthSeventh_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTwelfthSeventh_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthSeventh ≤ 37827017087560184561330768594454370822436580968623795) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTwelfthSixth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTwelfthSixth_le.mp
      (checker_unit_test_iff_blockSumAfterTwelfthSeventh_le.mpr hr))

private def twelfthEighthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((15678, 15741), (5271, 5331))

set_option maxRecDepth 32768 in
private theorem twelfthEighthPair_mem : twelfthEighthPair ∈ runPairsAfterTwelfthSeventh := by
  decide +kernel

/-- The remaining lower pairs after extracting the twelfth-to-eighth cross. -/
def runPairsAfterTwelfthEighth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTwelfthSeventh.erase twelfthEighthPair

theorem runPairsAfterTwelfthEighth_card : runPairsAfterTwelfthEighth.card = 17 := by
  rw [runPairsAfterTwelfthEighth, Finset.card_erase_of_mem twelfthEighthPair_mem,
    runPairsAfterTwelfthSeventh_card]

/-- Literal checker costs over the 17 pairs left by this erasure. -/
def blockSumAfterTwelfthEighth : ℕ := ∑ p ∈ runPairsAfterTwelfthEighth, runPairSubtotal p

theorem blockSumAfterTwelfthEighth_eq_sum :
    blockSumAfterTwelfthEighth = ∑ p ∈ runPairsAfterTwelfthEighth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The twelfth-to-eighth cross subtotal is counted once in the split. -/
theorem blockSumAfterTwelfthSeventh_eq_add_blockSumAfterTwelfthEighth :
    blockSumAfterTwelfthSeventh =
      58044570838165900713607310846031790304834241506 + blockSumAfterTwelfthEighth :=
  bind_erased_subtotal blockSumAfterTwelfthSeventh_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase twelfthEighthPair_mem twelfthWithEighthRetainedRunCross)
    blockSumAfterTwelfthEighth_eq_sum

private theorem accumulate_twelfth_eighth_subtotal {n old rest : ℕ}
    (hn : n = 123876581419806208140923041069545629177563419031376205 + old)
    (hrest : old = 58044570838165900713607310846031790304834241506 + rest) :
    n = 123876639464377046306823754676856475209353723865617711 + rest := by
  omega

/-- The checker numerator with seventy-four exact contributions separated. -/
theorem literal_total_eq_certified_add_afterTwelfthEighth :
    total checkerMidpointLower =
      123876639464377046306823754676856475209353723865617711 + blockSumAfterTwelfthEighth :=
  accumulate_twelfth_eighth_subtotal literal_total_eq_certified_add_afterTwelfthSeventh
    blockSumAfterTwelfthSeventh_eq_add_blockSumAfterTwelfthEighth

private theorem after_twelfth_eighth_strict_cutoff (r : ℕ) :
    58044570838165900713607310846031790304834241506 + r ≤
      210879188382584825361678375176034822436580968623794 ↔
    r ≤ 210821143811746659460964767865188790646276134382288 := by
  omega

private theorem after_twelfth_eighth_unit_cutoff (r : ℕ) :
    58044570838165900713607310846031790304834241506 + r ≤
      37827017087560184561330768594454370822436580968623795 ↔
    r ≤ 37826959042989346395430054987143524790646276134382289 := by
  omega

/-- The original strict integer test in terms of the 17-pair sum. -/
theorem checker_test_iff_blockSumAfterTwelfthEighth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTwelfthEighth ≤ 210821143811746659460964767865188790646276134382288 :=
  checker_test_iff_blockSumAfterTwelfthSeventh_le.trans
    ((congrArg (fun n : ℕ => n ≤ 210879188382584825361678375176034822436580968623794)
      blockSumAfterTwelfthSeventh_eq_add_blockSumAfterTwelfthEighth).to_iff.trans
        (after_twelfth_eighth_strict_cutoff blockSumAfterTwelfthEighth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTwelfthEighth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTwelfthEighth ≤ 37826959042989346395430054987143524790646276134382289 :=
  checker_unit_test_iff_blockSumAfterTwelfthSeventh_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37827017087560184561330768594454370822436580968623795)
      blockSumAfterTwelfthSeventh_eq_add_blockSumAfterTwelfthEighth).to_iff.trans
        (after_twelfth_eighth_unit_cutoff blockSumAfterTwelfthEighth))

theorem rectangle_lt_of_blockSumAfterTwelfthEighth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthEighth ≤ 210821143811746659460964767865188790646276134382288) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTwelfthSeventh_le χ hodd
    (checker_test_iff_blockSumAfterTwelfthSeventh_le.mp (checker_test_iff_blockSumAfterTwelfthEighth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTwelfthEighth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthEighth ≤ 37826959042989346395430054987143524790646276134382289) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTwelfthSeventh_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTwelfthSeventh_le.mp
      (checker_unit_test_iff_blockSumAfterTwelfthEighth_le.mpr hr))

/-- The lower checker pairs left after extracting all blocks of the twelfth retained run. -/
def runPairsAfterTwelfthDiagonal : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTwelfthEighth
    |>.erase ((15678, 15741), (6208, 6270))
    |>.erase ((15678, 15741), (8652, 8758))
    |>.erase ((15678, 15741), (13225, 13271))
    |>.erase ((15678, 15741), (15678, 15741))

set_option maxRecDepth 32768 in
theorem runPairsAfterTwelfthDiagonal_card : runPairsAfterTwelfthDiagonal.card = 13 := by
  decide +kernel

/-- Literal checker costs over the remaining 13 pairs. -/
def blockSumAfterTwelfthDiagonal : ℕ := ∑ p ∈ runPairsAfterTwelfthDiagonal, runPairSubtotal p

theorem blockSumAfterTwelfthDiagonal_eq_sum :
    blockSumAfterTwelfthDiagonal = ∑ p ∈ runPairsAfterTwelfthDiagonal,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

set_option maxRecDepth 32768 in
/-- Extract the ninth through eleventh crosses and the diagonal, each once. -/
theorem blockSumAfterTwelfthEighth_eq_add_blockSumAfterTwelfthDiagonal :
    blockSumAfterTwelfthEighth =
      197243069645620105916706557042391359371856701211073 + blockSumAfterTwelfthDiagonal := by
  rewrite [blockSumAfterTwelfthEighth_eq_sum, blockSumAfterTwelfthDiagonal_eq_sum,
    runPairsAfterTwelfthDiagonal,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((15678, 15741), (6208, 6270)))
      (by decide +kernel) twelfthWithNinthRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((15678, 15741), (8652, 8758)))
      (by decide +kernel) twelfthWithTenthRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((15678, 15741), (13225, 13271)))
      (by decide +kernel) twelfthWithEleventhRetainedRunCross,
    sum_runBlocks_eq_subtotal_add_sum_erase (p := ((15678, 15741), (15678, 15741)))
      (by decide +kernel) twelfthRetainedRunDiagonal]
  omega

private theorem addTwelfthDiagonalSubtotal {n old rest : ℕ}
    (hn : n = 123876639464377046306823754676856475209353723865617711 + old)
    (hrest : old = 197243069645620105916706557042391359371856701211073 + rest) :
    n = 124073882534022666412740461233898866568725580566828784 + rest := by
  omega

private theorem after_twelfth_diagonal_strict_cutoff (r : ℕ) :
    197243069645620105916706557042391359371856701211073 + r ≤ 210821143811746659460964767865188790646276134382288 ↔
      r ≤ 13578074166126553544258210822797431274419433171215 := by
  omega

private theorem after_twelfth_diagonal_unit_cutoff (r : ℕ) :
    197243069645620105916706557042391359371856701211073 + r ≤ 37826959042989346395430054987143524790646276134382289 ↔
      r ≤ 37629715973343726289513348430101133431274419433171216 := by
  omega

/-- The checker numerator after separating all seventy-eight certified block costs. -/
theorem literal_total_eq_certified_add_afterTwelfthDiagonal :
    total checkerMidpointLower =
      124073882534022666412740461233898866568725580566828784 + blockSumAfterTwelfthDiagonal :=
  addTwelfthDiagonalSubtotal literal_total_eq_certified_add_afterTwelfthEighth
    blockSumAfterTwelfthEighth_eq_add_blockSumAfterTwelfthDiagonal

/-- The original strict integer test in terms of the 13-pair residual. -/
theorem checker_test_iff_blockSumAfterTwelfthDiagonal_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterTwelfthDiagonal ≤ 13578074166126553544258210822797431274419433171215 :=
  checker_test_iff_blockSumAfterTwelfthEighth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 210821143811746659460964767865188790646276134382288)
      blockSumAfterTwelfthEighth_eq_add_blockSumAfterTwelfthDiagonal).to_iff.trans
        (after_twelfth_diagonal_strict_cutoff blockSumAfterTwelfthDiagonal))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterTwelfthDiagonal_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterTwelfthDiagonal ≤ 37629715973343726289513348430101133431274419433171216 :=
  checker_unit_test_iff_blockSumAfterTwelfthEighth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37826959042989346395430054987143524790646276134382289)
      blockSumAfterTwelfthEighth_eq_add_blockSumAfterTwelfthDiagonal).to_iff.trans
        (after_twelfth_diagonal_unit_cutoff blockSumAfterTwelfthDiagonal))

theorem rectangle_lt_of_blockSumAfterTwelfthDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthDiagonal ≤ 13578074166126553544258210822797431274419433171215) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTwelfthEighth_le χ hodd
    (checker_test_iff_blockSumAfterTwelfthEighth_le.mp
      (checker_test_iff_blockSumAfterTwelfthDiagonal_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterTwelfthDiagonal_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterTwelfthDiagonal ≤ 37629715973343726289513348430101133431274419433171216) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTwelfthEighth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTwelfthEighth_le.mp
      (checker_unit_test_iff_blockSumAfterTwelfthDiagonal_le.mpr hr))


private def thirteenthFirstPair : (ℕ × ℕ) × (ℕ × ℕ) := ((20236, 20275), (0, 96))

set_option maxRecDepth 32768 in
private theorem thirteenthFirstPair_mem : thirteenthFirstPair ∈ runPairsAfterTwelfthDiagonal := by
  decide +kernel

/-- The remaining lower pairs after extracting the thirteenth-to-first cross. -/
def runPairsAfterThirteenthFirst : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterTwelfthDiagonal.erase thirteenthFirstPair

theorem runPairsAfterThirteenthFirst_card : runPairsAfterThirteenthFirst.card = 12 := by
  rw [runPairsAfterThirteenthFirst, Finset.card_erase_of_mem thirteenthFirstPair_mem,
    runPairsAfterTwelfthDiagonal_card]

/-- Literal checker costs over the 12 pairs left by this erasure. -/
def blockSumAfterThirteenthFirst : ℕ := ∑ p ∈ runPairsAfterThirteenthFirst, runPairSubtotal p

theorem blockSumAfterThirteenthFirst_eq_sum :
    blockSumAfterThirteenthFirst = ∑ p ∈ runPairsAfterThirteenthFirst,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The thirteenth-to-first cross subtotal is counted once in the split. -/
theorem blockSumAfterTwelfthDiagonal_eq_add_blockSumAfterThirteenthFirst :
    blockSumAfterTwelfthDiagonal =
      32836787054544585338034549778279134771180342996 + blockSumAfterThirteenthFirst :=
  bind_erased_subtotal blockSumAfterTwelfthDiagonal_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase thirteenthFirstPair_mem thirteenthWithFirstRetainedRunCross)
    blockSumAfterThirteenthFirst_eq_sum

private theorem accumulate_thirteenth_first_subtotal {n old rest : ℕ}
    (hn : n = 124073882534022666412740461233898866568725580566828784 + old)
    (hrest : old = 32836787054544585338034549778279134771180342996 + rest) :
    n = 124073915370809720957325799268448644847860351747171780 + rest := by
  omega

/-- The checker numerator with seventy-nine exact contributions separated. -/
theorem literal_total_eq_certified_add_afterThirteenthFirst :
    total checkerMidpointLower =
      124073915370809720957325799268448644847860351747171780 + blockSumAfterThirteenthFirst :=
  accumulate_thirteenth_first_subtotal literal_total_eq_certified_add_afterTwelfthDiagonal
    blockSumAfterTwelfthDiagonal_eq_add_blockSumAfterThirteenthFirst

private theorem after_thirteenth_first_strict_cutoff (r : ℕ) :
    32836787054544585338034549778279134771180342996 + r ≤
      13578074166126553544258210822797431274419433171215 ↔
    r ≤ 13545237379072008958920176273019152139648252828219 := by
  omega

private theorem after_thirteenth_first_unit_cutoff (r : ℕ) :
    32836787054544585338034549778279134771180342996 + r ≤
      37629715973343726289513348430101133431274419433171216 ↔
    r ≤ 37629683136556671744928010395551355152139648252828220 := by
  omega

/-- The original strict integer test in terms of the 12-pair sum. -/
theorem checker_test_iff_blockSumAfterThirteenthFirst_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterThirteenthFirst ≤ 13545237379072008958920176273019152139648252828219 :=
  checker_test_iff_blockSumAfterTwelfthDiagonal_le.trans
    ((congrArg (fun n : ℕ => n ≤ 13578074166126553544258210822797431274419433171215)
      blockSumAfterTwelfthDiagonal_eq_add_blockSumAfterThirteenthFirst).to_iff.trans
        (after_thirteenth_first_strict_cutoff blockSumAfterThirteenthFirst))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterThirteenthFirst_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterThirteenthFirst ≤ 37629683136556671744928010395551355152139648252828220 :=
  checker_unit_test_iff_blockSumAfterTwelfthDiagonal_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37629715973343726289513348430101133431274419433171216)
      blockSumAfterTwelfthDiagonal_eq_add_blockSumAfterThirteenthFirst).to_iff.trans
        (after_thirteenth_first_unit_cutoff blockSumAfterThirteenthFirst))

theorem rectangle_lt_of_blockSumAfterThirteenthFirst_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthFirst ≤ 13545237379072008958920176273019152139648252828219) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterTwelfthDiagonal_le χ hodd
    (checker_test_iff_blockSumAfterTwelfthDiagonal_le.mp (checker_test_iff_blockSumAfterThirteenthFirst_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterThirteenthFirst_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthFirst ≤ 37629683136556671744928010395551355152139648252828220) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterTwelfthDiagonal_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterTwelfthDiagonal_le.mp
      (checker_unit_test_iff_blockSumAfterThirteenthFirst_le.mpr hr))

private def thirteenthSecondPair : (ℕ × ℕ) × (ℕ × ℕ) := ((20236, 20275), (284, 479))

set_option maxRecDepth 32768 in
private theorem thirteenthSecondPair_mem : thirteenthSecondPair ∈ runPairsAfterThirteenthFirst := by
  decide +kernel

/-- The remaining lower pairs after extracting the thirteenth-to-second cross. -/
def runPairsAfterThirteenthSecond : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterThirteenthFirst.erase thirteenthSecondPair

theorem runPairsAfterThirteenthSecond_card : runPairsAfterThirteenthSecond.card = 11 := by
  rw [runPairsAfterThirteenthSecond, Finset.card_erase_of_mem thirteenthSecondPair_mem,
    runPairsAfterThirteenthFirst_card]

/-- Literal checker costs over the 11 pairs left by this erasure. -/
def blockSumAfterThirteenthSecond : ℕ := ∑ p ∈ runPairsAfterThirteenthSecond, runPairSubtotal p

theorem blockSumAfterThirteenthSecond_eq_sum :
    blockSumAfterThirteenthSecond = ∑ p ∈ runPairsAfterThirteenthSecond,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The thirteenth-to-second cross subtotal is counted once in the split. -/
theorem blockSumAfterThirteenthFirst_eq_add_blockSumAfterThirteenthSecond :
    blockSumAfterThirteenthFirst =
      73007990266957031066558221914382367605436786402 + blockSumAfterThirteenthSecond :=
  bind_erased_subtotal blockSumAfterThirteenthFirst_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase thirteenthSecondPair_mem thirteenthWithSecondRetainedRunCross)
    blockSumAfterThirteenthSecond_eq_sum

private theorem accumulate_thirteenth_second_subtotal {n old rest : ℕ}
    (hn : n = 124073915370809720957325799268448644847860351747171780 + old)
    (hrest : old = 73007990266957031066558221914382367605436786402 + rest) :
    n = 124073988378799987914356865826670559230227957183958182 + rest := by
  omega

/-- The checker numerator with eighty exact contributions separated. -/
theorem literal_total_eq_certified_add_afterThirteenthSecond :
    total checkerMidpointLower =
      124073988378799987914356865826670559230227957183958182 + blockSumAfterThirteenthSecond :=
  accumulate_thirteenth_second_subtotal literal_total_eq_certified_add_afterThirteenthFirst
    blockSumAfterThirteenthFirst_eq_add_blockSumAfterThirteenthSecond

private theorem after_thirteenth_second_strict_cutoff (r : ℕ) :
    73007990266957031066558221914382367605436786402 + r ≤
      13545237379072008958920176273019152139648252828219 ↔
    r ≤ 13472229388805051927853618051104769772042816041817 := by
  omega

private theorem after_thirteenth_second_unit_cutoff (r : ℕ) :
    73007990266957031066558221914382367605436786402 + r ≤
      37629683136556671744928010395551355152139648252828220 ↔
    r ≤ 37629610128566404787896943837329440769772042816041818 := by
  omega

/-- The original strict integer test in terms of the 11-pair sum. -/
theorem checker_test_iff_blockSumAfterThirteenthSecond_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterThirteenthSecond ≤ 13472229388805051927853618051104769772042816041817 :=
  checker_test_iff_blockSumAfterThirteenthFirst_le.trans
    ((congrArg (fun n : ℕ => n ≤ 13545237379072008958920176273019152139648252828219)
      blockSumAfterThirteenthFirst_eq_add_blockSumAfterThirteenthSecond).to_iff.trans
        (after_thirteenth_second_strict_cutoff blockSumAfterThirteenthSecond))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterThirteenthSecond_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterThirteenthSecond ≤ 37629610128566404787896943837329440769772042816041818 :=
  checker_unit_test_iff_blockSumAfterThirteenthFirst_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37629683136556671744928010395551355152139648252828220)
      blockSumAfterThirteenthFirst_eq_add_blockSumAfterThirteenthSecond).to_iff.trans
        (after_thirteenth_second_unit_cutoff blockSumAfterThirteenthSecond))

theorem rectangle_lt_of_blockSumAfterThirteenthSecond_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthSecond ≤ 13472229388805051927853618051104769772042816041817) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterThirteenthFirst_le χ hodd
    (checker_test_iff_blockSumAfterThirteenthFirst_le.mp (checker_test_iff_blockSumAfterThirteenthSecond_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterThirteenthSecond_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthSecond ≤ 37629610128566404787896943837329440769772042816041818) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterThirteenthFirst_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterThirteenthFirst_le.mp
      (checker_unit_test_iff_blockSumAfterThirteenthSecond_le.mpr hr))

private def thirteenthThirdPair : (ℕ × ℕ) × (ℕ × ℕ) := ((20236, 20275), (666, 853))

set_option maxRecDepth 32768 in
private theorem thirteenthThirdPair_mem : thirteenthThirdPair ∈ runPairsAfterThirteenthSecond := by
  decide +kernel

/-- The remaining lower pairs after extracting the thirteenth-to-third cross. -/
def runPairsAfterThirteenthThird : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterThirteenthSecond.erase thirteenthThirdPair

theorem runPairsAfterThirteenthThird_card : runPairsAfterThirteenthThird.card = 10 := by
  rw [runPairsAfterThirteenthThird, Finset.card_erase_of_mem thirteenthThirdPair_mem,
    runPairsAfterThirteenthSecond_card]

/-- Literal checker costs over the 10 pairs left by this erasure. -/
def blockSumAfterThirteenthThird : ℕ := ∑ p ∈ runPairsAfterThirteenthThird, runPairSubtotal p

theorem blockSumAfterThirteenthThird_eq_sum :
    blockSumAfterThirteenthThird = ∑ p ∈ runPairsAfterThirteenthThird,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The thirteenth-to-third cross subtotal is counted once in the split. -/
theorem blockSumAfterThirteenthSecond_eq_add_blockSumAfterThirteenthThird :
    blockSumAfterThirteenthSecond =
      123668040103776500744565290191189614357875750238 + blockSumAfterThirteenthThird :=
  bind_erased_subtotal blockSumAfterThirteenthSecond_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase thirteenthThirdPair_mem thirteenthWithThirdRetainedRunCross)
    blockSumAfterThirteenthThird_eq_sum

private theorem accumulate_thirteenth_third_subtotal {n old rest : ℕ}
    (hn : n = 124073988378799987914356865826670559230227957183958182 + old)
    (hrest : old = 123668040103776500744565290191189614357875750238 + rest) :
    n = 124074112046840091690857610391960750419842315059708420 + rest := by
  omega

/-- The checker numerator with eighty-one exact contributions separated. -/
theorem literal_total_eq_certified_add_afterThirteenthThird :
    total checkerMidpointLower =
      124074112046840091690857610391960750419842315059708420 + blockSumAfterThirteenthThird :=
  accumulate_thirteenth_third_subtotal literal_total_eq_certified_add_afterThirteenthSecond
    blockSumAfterThirteenthSecond_eq_add_blockSumAfterThirteenthThird

private theorem after_thirteenth_third_strict_cutoff (r : ℕ) :
    123668040103776500744565290191189614357875750238 + r ≤
      13472229388805051927853618051104769772042816041817 ↔
    r ≤ 13348561348701275427109052760913580157684940291579 := by
  omega

private theorem after_thirteenth_third_unit_cutoff (r : ℕ) :
    123668040103776500744565290191189614357875750238 + r ≤
      37629610128566404787896943837329440769772042816041818 ↔
    r ≤ 37629486460526301011396199272039249580157684940291580 := by
  omega

/-- The original strict integer test in terms of the 10-pair sum. -/
theorem checker_test_iff_blockSumAfterThirteenthThird_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterThirteenthThird ≤ 13348561348701275427109052760913580157684940291579 :=
  checker_test_iff_blockSumAfterThirteenthSecond_le.trans
    ((congrArg (fun n : ℕ => n ≤ 13472229388805051927853618051104769772042816041817)
      blockSumAfterThirteenthSecond_eq_add_blockSumAfterThirteenthThird).to_iff.trans
        (after_thirteenth_third_strict_cutoff blockSumAfterThirteenthThird))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterThirteenthThird_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterThirteenthThird ≤ 37629486460526301011396199272039249580157684940291580 :=
  checker_unit_test_iff_blockSumAfterThirteenthSecond_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37629610128566404787896943837329440769772042816041818)
      blockSumAfterThirteenthSecond_eq_add_blockSumAfterThirteenthThird).to_iff.trans
        (after_thirteenth_third_unit_cutoff blockSumAfterThirteenthThird))

theorem rectangle_lt_of_blockSumAfterThirteenthThird_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthThird ≤ 13348561348701275427109052760913580157684940291579) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterThirteenthSecond_le χ hodd
    (checker_test_iff_blockSumAfterThirteenthSecond_le.mp (checker_test_iff_blockSumAfterThirteenthThird_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterThirteenthThird_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthThird ≤ 37629486460526301011396199272039249580157684940291580) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterThirteenthSecond_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterThirteenthSecond_le.mp
      (checker_unit_test_iff_blockSumAfterThirteenthThird_le.mpr hr))

private def thirteenthFourthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((20236, 20275), (1177, 1294))

set_option maxRecDepth 32768 in
private theorem thirteenthFourthPair_mem : thirteenthFourthPair ∈ runPairsAfterThirteenthThird := by
  decide +kernel

/-- The remaining lower pairs after extracting the thirteenth-to-fourth cross. -/
def runPairsAfterThirteenthFourth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterThirteenthThird.erase thirteenthFourthPair

theorem runPairsAfterThirteenthFourth_card : runPairsAfterThirteenthFourth.card = 9 := by
  rw [runPairsAfterThirteenthFourth, Finset.card_erase_of_mem thirteenthFourthPair_mem,
    runPairsAfterThirteenthThird_card]

/-- Literal checker costs over the 9 pairs left by this erasure. -/
def blockSumAfterThirteenthFourth : ℕ := ∑ p ∈ runPairsAfterThirteenthFourth, runPairSubtotal p

theorem blockSumAfterThirteenthFourth_eq_sum :
    blockSumAfterThirteenthFourth = ∑ p ∈ runPairsAfterThirteenthFourth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The thirteenth-to-fourth cross subtotal is counted once in the split. -/
theorem blockSumAfterThirteenthThird_eq_add_blockSumAfterThirteenthFourth :
    blockSumAfterThirteenthThird =
      40307709659412134739461069967977709028580897848 + blockSumAfterThirteenthFourth :=
  bind_erased_subtotal blockSumAfterThirteenthThird_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase thirteenthFourthPair_mem thirteenthWithFourthRetainedRunCross)
    blockSumAfterThirteenthFourth_eq_sum

private theorem accumulate_thirteenth_fourth_subtotal {n old rest : ℕ}
    (hn : n = 124074112046840091690857610391960750419842315059708420 + old)
    (hrest : old = 40307709659412134739461069967977709028580897848 + rest) :
    n = 124074152354549751102992349853030718397551343640606268 + rest := by
  omega

/-- The checker numerator with eighty-two exact contributions separated. -/
theorem literal_total_eq_certified_add_afterThirteenthFourth :
    total checkerMidpointLower =
      124074152354549751102992349853030718397551343640606268 + blockSumAfterThirteenthFourth :=
  accumulate_thirteenth_fourth_subtotal literal_total_eq_certified_add_afterThirteenthThird
    blockSumAfterThirteenthThird_eq_add_blockSumAfterThirteenthFourth

private theorem after_thirteenth_fourth_strict_cutoff (r : ℕ) :
    40307709659412134739461069967977709028580897848 + r ≤
      13348561348701275427109052760913580157684940291579 ↔
    r ≤ 13308253639041863292369591690945602448656359393731 := by
  omega

private theorem after_thirteenth_fourth_unit_cutoff (r : ℕ) :
    40307709659412134739461069967977709028580897848 + r ≤
      37629486460526301011396199272039249580157684940291580 ↔
    r ≤ 37629446152816641599261459810969281602448656359393732 := by
  omega

/-- The original strict integer test in terms of the 9-pair sum. -/
theorem checker_test_iff_blockSumAfterThirteenthFourth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterThirteenthFourth ≤ 13308253639041863292369591690945602448656359393731 :=
  checker_test_iff_blockSumAfterThirteenthThird_le.trans
    ((congrArg (fun n : ℕ => n ≤ 13348561348701275427109052760913580157684940291579)
      blockSumAfterThirteenthThird_eq_add_blockSumAfterThirteenthFourth).to_iff.trans
        (after_thirteenth_fourth_strict_cutoff blockSumAfterThirteenthFourth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterThirteenthFourth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterThirteenthFourth ≤ 37629446152816641599261459810969281602448656359393732 :=
  checker_unit_test_iff_blockSumAfterThirteenthThird_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37629486460526301011396199272039249580157684940291580)
      blockSumAfterThirteenthThird_eq_add_blockSumAfterThirteenthFourth).to_iff.trans
        (after_thirteenth_fourth_unit_cutoff blockSumAfterThirteenthFourth))

theorem rectangle_lt_of_blockSumAfterThirteenthFourth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthFourth ≤ 13308253639041863292369591690945602448656359393731) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterThirteenthThird_le χ hodd
    (checker_test_iff_blockSumAfterThirteenthThird_le.mp (checker_test_iff_blockSumAfterThirteenthFourth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterThirteenthFourth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthFourth ≤ 37629446152816641599261459810969281602448656359393732) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterThirteenthThird_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterThirteenthThird_le.mp
      (checker_unit_test_iff_blockSumAfterThirteenthFourth_le.mpr hr))

private def thirteenthFifthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((20236, 20275), (1610, 1795))

set_option maxRecDepth 32768 in
private theorem thirteenthFifthPair_mem : thirteenthFifthPair ∈ runPairsAfterThirteenthFourth := by
  decide +kernel

/-- The remaining lower pairs after extracting the thirteenth-to-fifth cross. -/
def runPairsAfterThirteenthFifth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterThirteenthFourth.erase thirteenthFifthPair

theorem runPairsAfterThirteenthFifth_card : runPairsAfterThirteenthFifth.card = 8 := by
  rw [runPairsAfterThirteenthFifth, Finset.card_erase_of_mem thirteenthFifthPair_mem,
    runPairsAfterThirteenthFourth_card]

/-- Literal checker costs over the 8 pairs left by this erasure. -/
def blockSumAfterThirteenthFifth : ℕ := ∑ p ∈ runPairsAfterThirteenthFifth, runPairSubtotal p

theorem blockSumAfterThirteenthFifth_eq_sum :
    blockSumAfterThirteenthFifth = ∑ p ∈ runPairsAfterThirteenthFifth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The thirteenth-to-fifth cross subtotal is counted once in the split. -/
theorem blockSumAfterThirteenthFourth_eq_add_blockSumAfterThirteenthFifth :
    blockSumAfterThirteenthFourth =
      187930628412708292664735688771585353297840450790 + blockSumAfterThirteenthFifth :=
  bind_erased_subtotal blockSumAfterThirteenthFourth_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase thirteenthFifthPair_mem thirteenthWithFifthRetainedRunCross)
    blockSumAfterThirteenthFifth_eq_sum

private theorem accumulate_thirteenth_fifth_subtotal {n old rest : ℕ}
    (hn : n = 124074152354549751102992349853030718397551343640606268 + old)
    (hrest : old = 187930628412708292664735688771585353297840450790 + rest) :
    n = 124074340285178163811285014588719489982904641481057058 + rest := by
  omega

/-- The checker numerator with eighty-three exact contributions separated. -/
theorem literal_total_eq_certified_add_afterThirteenthFifth :
    total checkerMidpointLower =
      124074340285178163811285014588719489982904641481057058 + blockSumAfterThirteenthFifth :=
  accumulate_thirteenth_fifth_subtotal literal_total_eq_certified_add_afterThirteenthFourth
    blockSumAfterThirteenthFourth_eq_add_blockSumAfterThirteenthFifth

private theorem after_thirteenth_fifth_strict_cutoff (r : ℕ) :
    187930628412708292664735688771585353297840450790 + r ≤
      13308253639041863292369591690945602448656359393731 ↔
    r ≤ 13120323010629154999704856002174017095358518942941 := by
  omega

private theorem after_thirteenth_fifth_unit_cutoff (r : ℕ) :
    187930628412708292664735688771585353297840450790 + r ≤
      37629446152816641599261459810969281602448656359393732 ↔
    r ≤ 37629258222188228890968795075280510017095358518942942 := by
  omega

/-- The original strict integer test in terms of the 8-pair sum. -/
theorem checker_test_iff_blockSumAfterThirteenthFifth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterThirteenthFifth ≤ 13120323010629154999704856002174017095358518942941 :=
  checker_test_iff_blockSumAfterThirteenthFourth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 13308253639041863292369591690945602448656359393731)
      blockSumAfterThirteenthFourth_eq_add_blockSumAfterThirteenthFifth).to_iff.trans
        (after_thirteenth_fifth_strict_cutoff blockSumAfterThirteenthFifth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterThirteenthFifth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterThirteenthFifth ≤ 37629258222188228890968795075280510017095358518942942 :=
  checker_unit_test_iff_blockSumAfterThirteenthFourth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37629446152816641599261459810969281602448656359393732)
      blockSumAfterThirteenthFourth_eq_add_blockSumAfterThirteenthFifth).to_iff.trans
        (after_thirteenth_fifth_unit_cutoff blockSumAfterThirteenthFifth))

theorem rectangle_lt_of_blockSumAfterThirteenthFifth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthFifth ≤ 13120323010629154999704856002174017095358518942941) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterThirteenthFourth_le χ hodd
    (checker_test_iff_blockSumAfterThirteenthFourth_le.mp (checker_test_iff_blockSumAfterThirteenthFifth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterThirteenthFifth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthFifth ≤ 37629258222188228890968795075280510017095358518942942) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterThirteenthFourth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterThirteenthFourth_le.mp
      (checker_unit_test_iff_blockSumAfterThirteenthFifth_le.mpr hr))

private def thirteenthSixthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((20236, 20275), (2790, 2913))

set_option maxRecDepth 32768 in
private theorem thirteenthSixthPair_mem : thirteenthSixthPair ∈ runPairsAfterThirteenthFifth := by
  decide +kernel

/-- The remaining lower pairs after extracting the thirteenth-to-sixth cross. -/
def runPairsAfterThirteenthSixth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterThirteenthFifth.erase thirteenthSixthPair

theorem runPairsAfterThirteenthSixth_card : runPairsAfterThirteenthSixth.card = 7 := by
  rw [runPairsAfterThirteenthSixth, Finset.card_erase_of_mem thirteenthSixthPair_mem,
    runPairsAfterThirteenthFifth_card]

/-- Literal checker costs over the 7 pairs left by this erasure. -/
def blockSumAfterThirteenthSixth : ℕ := ∑ p ∈ runPairsAfterThirteenthSixth, runPairSubtotal p

theorem blockSumAfterThirteenthSixth_eq_sum :
    blockSumAfterThirteenthSixth = ∑ p ∈ runPairsAfterThirteenthSixth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The thirteenth-to-sixth cross subtotal is counted once in the split. -/
theorem blockSumAfterThirteenthFifth_eq_add_blockSumAfterThirteenthSixth :
    blockSumAfterThirteenthFifth =
      35208180090506299649275171644821476469799196048 + blockSumAfterThirteenthSixth :=
  bind_erased_subtotal blockSumAfterThirteenthFifth_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase thirteenthSixthPair_mem thirteenthWithSixthRetainedRunCross)
    blockSumAfterThirteenthSixth_eq_sum

private theorem accumulate_thirteenth_sixth_subtotal {n old rest : ℕ}
    (hn : n = 124074340285178163811285014588719489982904641481057058 + old)
    (hrest : old = 35208180090506299649275171644821476469799196048 + rest) :
    n = 124074375493358254317584663863891134804381111280253106 + rest := by
  omega

/-- The checker numerator with eighty-four exact contributions separated. -/
theorem literal_total_eq_certified_add_afterThirteenthSixth :
    total checkerMidpointLower =
      124074375493358254317584663863891134804381111280253106 + blockSumAfterThirteenthSixth :=
  accumulate_thirteenth_sixth_subtotal literal_total_eq_certified_add_afterThirteenthFifth
    blockSumAfterThirteenthFifth_eq_add_blockSumAfterThirteenthSixth

private theorem after_thirteenth_sixth_strict_cutoff (r : ℕ) :
    35208180090506299649275171644821476469799196048 + r ≤
      13120323010629154999704856002174017095358518942941 ↔
    r ≤ 13085114830538648700055580830529195618888719746893 := by
  omega

private theorem after_thirteenth_sixth_unit_cutoff (r : ℕ) :
    35208180090506299649275171644821476469799196048 + r ≤
      37629258222188228890968795075280510017095358518942942 ↔
    r ≤ 37629223014008138384669145800108865195618888719746894 := by
  omega

/-- The original strict integer test in terms of the 7-pair sum. -/
theorem checker_test_iff_blockSumAfterThirteenthSixth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterThirteenthSixth ≤ 13085114830538648700055580830529195618888719746893 :=
  checker_test_iff_blockSumAfterThirteenthFifth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 13120323010629154999704856002174017095358518942941)
      blockSumAfterThirteenthFifth_eq_add_blockSumAfterThirteenthSixth).to_iff.trans
        (after_thirteenth_sixth_strict_cutoff blockSumAfterThirteenthSixth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterThirteenthSixth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterThirteenthSixth ≤ 37629223014008138384669145800108865195618888719746894 :=
  checker_unit_test_iff_blockSumAfterThirteenthFifth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37629258222188228890968795075280510017095358518942942)
      blockSumAfterThirteenthFifth_eq_add_blockSumAfterThirteenthSixth).to_iff.trans
        (after_thirteenth_sixth_unit_cutoff blockSumAfterThirteenthSixth))

theorem rectangle_lt_of_blockSumAfterThirteenthSixth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthSixth ≤ 13085114830538648700055580830529195618888719746893) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterThirteenthFifth_le χ hodd
    (checker_test_iff_blockSumAfterThirteenthFifth_le.mp (checker_test_iff_blockSumAfterThirteenthSixth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterThirteenthSixth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthSixth ≤ 37629223014008138384669145800108865195618888719746894) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterThirteenthFifth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterThirteenthFifth_le.mp
      (checker_unit_test_iff_blockSumAfterThirteenthSixth_le.mpr hr))

private def thirteenthSeventhPair : (ℕ × ℕ) × (ℕ × ℕ) := ((20236, 20275), (4110, 4199))

set_option maxRecDepth 32768 in
private theorem thirteenthSeventhPair_mem : thirteenthSeventhPair ∈ runPairsAfterThirteenthSixth := by
  decide +kernel

/-- The remaining lower pairs after extracting the thirteenth-to-seventh cross. -/
def runPairsAfterThirteenthSeventh : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterThirteenthSixth.erase thirteenthSeventhPair

theorem runPairsAfterThirteenthSeventh_card : runPairsAfterThirteenthSeventh.card = 6 := by
  rw [runPairsAfterThirteenthSeventh, Finset.card_erase_of_mem thirteenthSeventhPair_mem,
    runPairsAfterThirteenthSixth_card]

/-- Literal checker costs over the 6 pairs left by this erasure. -/
def blockSumAfterThirteenthSeventh : ℕ := ∑ p ∈ runPairsAfterThirteenthSeventh, runPairSubtotal p

theorem blockSumAfterThirteenthSeventh_eq_sum :
    blockSumAfterThirteenthSeventh = ∑ p ∈ runPairsAfterThirteenthSeventh,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The thirteenth-to-seventh cross subtotal is counted once in the split. -/
theorem blockSumAfterThirteenthSixth_eq_add_blockSumAfterThirteenthSeventh :
    blockSumAfterThirteenthSixth =
      24431996716585847469523979934809736145164462274 + blockSumAfterThirteenthSeventh :=
  bind_erased_subtotal blockSumAfterThirteenthSixth_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase thirteenthSeventhPair_mem thirteenthWithSeventhRetainedRunCross)
    blockSumAfterThirteenthSeventh_eq_sum

private theorem accumulate_thirteenth_seventh_subtotal {n old rest : ℕ}
    (hn : n = 124074375493358254317584663863891134804381111280253106 + old)
    (hrest : old = 24431996716585847469523979934809736145164462274 + rest) :
    n = 124074399925354970903432133387871069614117256444715380 + rest := by
  omega

/-- The checker numerator with eighty-five exact contributions separated. -/
theorem literal_total_eq_certified_add_afterThirteenthSeventh :
    total checkerMidpointLower =
      124074399925354970903432133387871069614117256444715380 + blockSumAfterThirteenthSeventh :=
  accumulate_thirteenth_seventh_subtotal literal_total_eq_certified_add_afterThirteenthSixth
    blockSumAfterThirteenthSixth_eq_add_blockSumAfterThirteenthSeventh

private theorem after_thirteenth_seventh_strict_cutoff (r : ℕ) :
    24431996716585847469523979934809736145164462274 + r ≤
      13085114830538648700055580830529195618888719746893 ↔
    r ≤ 13060682833822062852586056850594385882743555284619 := by
  omega

private theorem after_thirteenth_seventh_unit_cutoff (r : ℕ) :
    24431996716585847469523979934809736145164462274 + r ≤
      37629223014008138384669145800108865195618888719746894 ↔
    r ≤ 37629198582011421798821676276128930385882743555284620 := by
  omega

/-- The original strict integer test in terms of the 6-pair sum. -/
theorem checker_test_iff_blockSumAfterThirteenthSeventh_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterThirteenthSeventh ≤ 13060682833822062852586056850594385882743555284619 :=
  checker_test_iff_blockSumAfterThirteenthSixth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 13085114830538648700055580830529195618888719746893)
      blockSumAfterThirteenthSixth_eq_add_blockSumAfterThirteenthSeventh).to_iff.trans
        (after_thirteenth_seventh_strict_cutoff blockSumAfterThirteenthSeventh))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterThirteenthSeventh_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterThirteenthSeventh ≤ 37629198582011421798821676276128930385882743555284620 :=
  checker_unit_test_iff_blockSumAfterThirteenthSixth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37629223014008138384669145800108865195618888719746894)
      blockSumAfterThirteenthSixth_eq_add_blockSumAfterThirteenthSeventh).to_iff.trans
        (after_thirteenth_seventh_unit_cutoff blockSumAfterThirteenthSeventh))

theorem rectangle_lt_of_blockSumAfterThirteenthSeventh_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthSeventh ≤ 13060682833822062852586056850594385882743555284619) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterThirteenthSixth_le χ hodd
    (checker_test_iff_blockSumAfterThirteenthSixth_le.mp (checker_test_iff_blockSumAfterThirteenthSeventh_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterThirteenthSeventh_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthSeventh ≤ 37629198582011421798821676276128930385882743555284620) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterThirteenthSixth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterThirteenthSixth_le.mp
      (checker_unit_test_iff_blockSumAfterThirteenthSeventh_le.mpr hr))

private def thirteenthEighthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((20236, 20275), (5271, 5331))

set_option maxRecDepth 32768 in
private theorem thirteenthEighthPair_mem : thirteenthEighthPair ∈ runPairsAfterThirteenthSeventh := by
  decide +kernel

/-- The remaining lower pairs after extracting the thirteenth-to-eighth cross. -/
def runPairsAfterThirteenthEighth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterThirteenthSeventh.erase thirteenthEighthPair

theorem runPairsAfterThirteenthEighth_card : runPairsAfterThirteenthEighth.card = 5 := by
  rw [runPairsAfterThirteenthEighth, Finset.card_erase_of_mem thirteenthEighthPair_mem,
    runPairsAfterThirteenthSeventh_card]

/-- Literal checker costs over the 5 pairs left by this erasure. -/
def blockSumAfterThirteenthEighth : ℕ := ∑ p ∈ runPairsAfterThirteenthEighth, runPairSubtotal p

theorem blockSumAfterThirteenthEighth_eq_sum :
    blockSumAfterThirteenthEighth = ∑ p ∈ runPairsAfterThirteenthEighth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The thirteenth-to-eighth cross subtotal is counted once in the split. -/
theorem blockSumAfterThirteenthSeventh_eq_add_blockSumAfterThirteenthEighth :
    blockSumAfterThirteenthSeventh =
      3890616638098419276154284460255516128174475824 + blockSumAfterThirteenthEighth :=
  bind_erased_subtotal blockSumAfterThirteenthSeventh_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase thirteenthEighthPair_mem thirteenthWithEighthRetainedRunCross)
    blockSumAfterThirteenthEighth_eq_sum

private theorem accumulate_thirteenth_eighth_subtotal {n old rest : ℕ}
    (hn : n = 124074399925354970903432133387871069614117256444715380 + old)
    (hrest : old = 3890616638098419276154284460255516128174475824 + rest) :
    n = 124074403815971609001851409542155529869633384619191204 + rest := by
  omega

/-- The checker numerator with eighty-six exact contributions separated. -/
theorem literal_total_eq_certified_add_afterThirteenthEighth :
    total checkerMidpointLower =
      124074403815971609001851409542155529869633384619191204 + blockSumAfterThirteenthEighth :=
  accumulate_thirteenth_eighth_subtotal literal_total_eq_certified_add_afterThirteenthSeventh
    blockSumAfterThirteenthSeventh_eq_add_blockSumAfterThirteenthEighth

private theorem after_thirteenth_eighth_strict_cutoff (r : ℕ) :
    3890616638098419276154284460255516128174475824 + r ≤
      13060682833822062852586056850594385882743555284619 ↔
    r ≤ 13056792217183964433309902566134130366615380808795 := by
  omega

private theorem after_thirteenth_eighth_unit_cutoff (r : ℕ) :
    3890616638098419276154284460255516128174475824 + r ≤
      37629198582011421798821676276128930385882743555284620 ↔
    r ≤ 37629194691394783700402400121844470130366615380808796 := by
  omega

/-- The original strict integer test in terms of the 5-pair sum. -/
theorem checker_test_iff_blockSumAfterThirteenthEighth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterThirteenthEighth ≤ 13056792217183964433309902566134130366615380808795 :=
  checker_test_iff_blockSumAfterThirteenthSeventh_le.trans
    ((congrArg (fun n : ℕ => n ≤ 13060682833822062852586056850594385882743555284619)
      blockSumAfterThirteenthSeventh_eq_add_blockSumAfterThirteenthEighth).to_iff.trans
        (after_thirteenth_eighth_strict_cutoff blockSumAfterThirteenthEighth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterThirteenthEighth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterThirteenthEighth ≤ 37629194691394783700402400121844470130366615380808796 :=
  checker_unit_test_iff_blockSumAfterThirteenthSeventh_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37629198582011421798821676276128930385882743555284620)
      blockSumAfterThirteenthSeventh_eq_add_blockSumAfterThirteenthEighth).to_iff.trans
        (after_thirteenth_eighth_unit_cutoff blockSumAfterThirteenthEighth))

theorem rectangle_lt_of_blockSumAfterThirteenthEighth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthEighth ≤ 13056792217183964433309902566134130366615380808795) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterThirteenthSeventh_le χ hodd
    (checker_test_iff_blockSumAfterThirteenthSeventh_le.mp (checker_test_iff_blockSumAfterThirteenthEighth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterThirteenthEighth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthEighth ≤ 37629194691394783700402400121844470130366615380808796) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterThirteenthSeventh_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterThirteenthSeventh_le.mp
      (checker_unit_test_iff_blockSumAfterThirteenthEighth_le.mpr hr))

private def thirteenthNinthPair : (ℕ × ℕ) × (ℕ × ℕ) := ((20236, 20275), (6208, 6270))

set_option maxRecDepth 32768 in
private theorem thirteenthNinthPair_mem : thirteenthNinthPair ∈ runPairsAfterThirteenthEighth := by
  decide +kernel

/-- The remaining lower pairs after extracting the thirteenth-to-ninth cross. -/
def runPairsAfterThirteenthNinth : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  runPairsAfterThirteenthEighth.erase thirteenthNinthPair

theorem runPairsAfterThirteenthNinth_card : runPairsAfterThirteenthNinth.card = 4 := by
  rw [runPairsAfterThirteenthNinth, Finset.card_erase_of_mem thirteenthNinthPair_mem,
    runPairsAfterThirteenthEighth_card]

/-- Literal checker costs over the 4 pairs left by this erasure. -/
def blockSumAfterThirteenthNinth : ℕ := ∑ p ∈ runPairsAfterThirteenthNinth, runPairSubtotal p

theorem blockSumAfterThirteenthNinth_eq_sum :
    blockSumAfterThirteenthNinth = ∑ p ∈ runPairsAfterThirteenthNinth,
      triangleBlock (price literalRawDeficit) sincEntry
        (retainedRunCells p.1) (retainedRunCells p.2) := rfl

/-- The thirteenth-to-ninth cross subtotal is counted once in the split. -/
theorem blockSumAfterThirteenthEighth_eq_add_blockSumAfterThirteenthNinth :
    blockSumAfterThirteenthEighth =
      13737729907818701183345314520917756875983278622 + blockSumAfterThirteenthNinth :=
  bind_erased_subtotal blockSumAfterThirteenthEighth_eq_sum
    (sum_runBlocks_eq_subtotal_add_sum_erase thirteenthNinthPair_mem thirteenthWithNinthRetainedRunCross)
    blockSumAfterThirteenthNinth_eq_sum

private theorem accumulate_thirteenth_ninth_subtotal {n old rest : ℕ}
    (hn : n = 124074403815971609001851409542155529869633384619191204 + old)
    (hrest : old = 13737729907818701183345314520917756875983278622 + rest) :
    n = 124074417553701516820552592887470050787390260602469826 + rest := by
  omega

/-- The checker numerator with eighty-seven exact contributions separated. -/
theorem literal_total_eq_certified_add_afterThirteenthNinth :
    total checkerMidpointLower =
      124074417553701516820552592887470050787390260602469826 + blockSumAfterThirteenthNinth :=
  accumulate_thirteenth_ninth_subtotal literal_total_eq_certified_add_afterThirteenthEighth
    blockSumAfterThirteenthEighth_eq_add_blockSumAfterThirteenthNinth

private theorem after_thirteenth_ninth_strict_cutoff (r : ℕ) :
    13737729907818701183345314520917756875983278622 + r ≤
      13056792217183964433309902566134130366615380808795 ↔
    r ≤ 13043054487276145732126557251613212609739397530173 := by
  omega

private theorem after_thirteenth_ninth_unit_cutoff (r : ℕ) :
    13737729907818701183345314520917756875983278622 + r ≤
      37629194691394783700402400121844470130366615380808796 ↔
    r ≤ 37629180953664875881701216776529949212609739397530174 := by
  omega

/-- The original strict integer test in terms of the 4-pair sum. -/
theorem checker_test_iff_blockSumAfterThirteenthNinth_le :
    total checkerMidpointLower * 62500 < 47961 * denominator ↔
      blockSumAfterThirteenthNinth ≤ 13043054487276145732126557251613212609739397530173 :=
  checker_test_iff_blockSumAfterThirteenthEighth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 13056792217183964433309902566134130366615380808795)
      blockSumAfterThirteenthEighth_eq_add_blockSumAfterThirteenthNinth).to_iff.trans
        (after_thirteenth_ninth_strict_cutoff blockSumAfterThirteenthNinth))

/-- The separate unit test for the original radius-one stage. -/
theorem checker_unit_test_iff_blockSumAfterThirteenthNinth_le :
    total checkerMidpointLower ≤ denominator ↔
      blockSumAfterThirteenthNinth ≤ 37629180953664875881701216776529949212609739397530174 :=
  checker_unit_test_iff_blockSumAfterThirteenthEighth_le.trans
    ((congrArg (fun n : ℕ => n ≤ 37629194691394783700402400121844470130366615380808796)
      blockSumAfterThirteenthEighth_eq_add_blockSumAfterThirteenthNinth).to_iff.trans
        (after_thirteenth_ninth_unit_cutoff blockSumAfterThirteenthNinth))

theorem rectangle_lt_of_blockSumAfterThirteenthNinth_le (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthNinth ≤ 13043054487276145732126557251613212609739397530173) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < (219 / 250 : ℝ) ^ 2 :=
  rectangle_lt_of_blockSumAfterThirteenthEighth_le χ hodd
    (checker_test_iff_blockSumAfterThirteenthEighth_le.mp (checker_test_iff_blockSumAfterThirteenthNinth_le.mpr hr))

theorem primitiveStageLower_of_blockSumAfterThirteenthNinth_le (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1)
    (hr : blockSumAfterThirteenthNinth ≤ 37629180953664875881701216776529949212609739397530174) :
    PrimitiveStageLower χ hp hn 0 :=
  primitiveStageLower_of_blockSumAfterThirteenthEighth_le χ hp hn hodd
    (checker_unit_test_iff_blockSumAfterThirteenthEighth_le.mp
      (checker_unit_test_iff_blockSumAfterThirteenthNinth_le.mpr hr))

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
