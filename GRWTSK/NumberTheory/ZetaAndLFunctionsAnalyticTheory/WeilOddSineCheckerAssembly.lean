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

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
