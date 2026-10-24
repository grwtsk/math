# Complete source: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticConnections

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc617f674d7eed25359a3ede099d4978da6d86b9` · SHA-256 `bbdefdf7506afc00bd7214dc07361f5d89f8090131f74af5cae58cef68bd5ced`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: LITERATURE_CONNECTIONS_TYPED / SOURCE_DRAFT / NOT_RUN /
NOT_KERNEL_AUDITED.
Issue: #727. Parent: draft PR #717 at
`70dfbd5882eb46087d50068faae8252201f64798`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticCollision
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Real-valued squarefree indicator used to expose the repeated-middle
collision as an exact squarefree-midpoint filtered binary correlation. -/
def coreQuarticSquarefreeIndicatorReal (n : ℕ) : ℝ :=
  if Squarefree n then 1 else 0

/-- The repository's real Möbius square is exactly the squarefree indicator. -/
theorem moebiusReal_sq_eq_coreQuarticSquarefreeIndicator
    (n : ℕ) :
    moebiusReal n ^ 2 = coreQuarticSquarefreeIndicatorReal n := by
  unfold moebiusReal coreQuarticSquarefreeIndicatorReal
  norm_cast
  exact ArithmeticFunction.moebius_sq

/-- Binary endpoint product filtered by a squarefree midpoint. -/
def mertensTwoPointQuarticSquarefreeMidpointCell
    (h a : ℕ) : ℝ :=
  if Squarefree (a + 1 + h) then
    moebiusReal (a + 1) *
      moebiusReal (a + 1 + 2 * h)
  else 0

/-- Exact pointwise identification of the repeated-middle collision with a
squarefree-midpoint filtered binary Möbius cell. -/
theorem mertensTwoPointQuarticCollisionCell_eq_squarefreeMidpoint
    (h a : ℕ) :
    mertensTwoPointQuarticCollisionCell h a =
      mertensTwoPointQuarticSquarefreeMidpointCell h a := by
  unfold mertensTwoPointQuarticCollisionCell
    mertensTwoPointQuarticSquarefreeMidpointCell
  rw [moebiusReal_sq_eq_coreQuarticSquarefreeIndicator]
  unfold coreQuarticSquarefreeIndicatorReal
  by_cases hs : Squarefree (a + 1 + h)
  · simp [hs]
    ring
  · simp [hs]

/-- Collision-line upper-triangle packet in squarefree-midpoint binary form. -/
def mertensTwoPointQuarticSquarefreeCollisionUpper
    (h N : ℕ) : ℝ :=
  ∑ b ∈ Finset.range N,
    ∑ a ∈ (Finset.range b).filter (fun a => b = a + h),
      mertensTwoPointQuarticSquarefreeMidpointCell h a

/-- Exact finite rewrite of the collision-line upper packet. -/
theorem mertensTwoPointQuarticCollisionUpper_eq_squarefreeMidpoint
    (h N : ℕ) :
    mertensTwoPointQuarticCollisionUpper h N =
      mertensTwoPointQuarticSquarefreeCollisionUpper h N := by
  rw [mertensTwoPointQuarticCollisionUpper_eq_repeatedMiddle]
  unfold mertensTwoPointQuarticSquarefreeCollisionUpper
  apply Finset.sum_congr rfl
  intro b _hb
  apply Finset.sum_congr rfl
  intro a _ha
  exact mertensTwoPointQuarticCollisionCell_eq_squarefreeMidpoint h a

/-- Complete active collision-line packet in squarefree-midpoint form. -/
def coreGrowingShiftQuarticSquarefreeCollisionEnergy
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    ∑ k ∈ Finset.range (harmonicShiftCount j t),
      mertensTwoPointQuarticSquarefreeCollisionUpper
        (harmonicShiftLower j t + k) (t + 1)

/-- The active repeated-middle collision packet is exactly the active
squarefree-midpoint binary packet. -/
theorem coreGrowingShiftQuarticCollisionEnergy_eq_squarefreeMidpoint
    (j : ℕ) :
    coreGrowingShiftQuarticCollisionEnergy j =
      coreGrowingShiftQuarticSquarefreeCollisionEnergy j := by
  unfold coreGrowingShiftQuarticCollisionEnergy
    coreGrowingShiftQuarticSquarefreeCollisionEnergy
  apply Finset.sum_congr rfl
  intro t _ht
  apply Finset.sum_congr rfl
  intro k _hk
  exact
    mertensTwoPointQuarticCollisionUpper_eq_squarefreeMidpoint
      (harmonicShiftLower j t + k) (t + 1)

/-- Explicit pairwise-distinctness predicate for the four affine arguments in
one collision-free parallelogram cell. -/
def MertensQuarticFourFormsPairwiseDistinct
    (h a b : ℕ) : Prop :=
  a + 1 ≠ a + 1 + h ∧
  a + 1 ≠ b + 1 ∧
  a + 1 ≠ b + 1 + h ∧
  a + 1 + h ≠ b + 1 ∧
  a + 1 + h ≠ b + 1 + h ∧
  b + 1 ≠ b + 1 + h

/-- Positive shift, strict upper-triangle order, and exclusion of the
repeated-middle line imply that all four affine arguments are distinct. -/
theorem mertensQuarticFourFormsPairwiseDistinct_of_collisionFree
    {h a b : ℕ}
    (hh : 0 < h)
    (hab : a < b)
    (hfree : b ≠ a + h) :
    MertensQuarticFourFormsPairwiseDistinct h a b := by
  unfold MertensQuarticFourFormsPairwiseDistinct
  constructor
  · omega
  constructor
  · omega
  constructor
  · omega
  constructor
  · omega
  constructor
  · omega
  · omega

/-- Every cell selected by the active collision-free filter has four pairwise
distinct affine arguments. -/
theorem coreGrowingShiftCollisionFreeCell_fourFormsPairwiseDistinct
    {j t k b a : ℕ}
    (ha : a ∈ (Finset.range b).filter
      (fun a => b ≠ a + (harmonicShiftLower j t + k))) :
    MertensQuarticFourFormsPairwiseDistinct
      (harmonicShiftLower j t + k) a b := by
  have hab : a < b :=
    Finset.mem_range.mp (Finset.mem_filter.mp ha).1
  have hfree : b ≠ a + (harmonicShiftLower j t + k) :=
    (Finset.mem_filter.mp ha).2
  have hL : 1 ≤ harmonicShiftLower j t := by
    unfold harmonicShiftLower
    exact le_max_left _ _
  have hh : 0 < harmonicShiftLower j t + k := by omega
  exact
    mertensQuarticFourFormsPairwiseDistinct_of_collisionFree
      hh hab hfree

/-- Collision-line source in the original repeated-middle coordinates.  This
source must pay the visible positive diagonal assigned to it. -/
def SubpolynomialCoreGrowingShiftQuarticCollisionLineCompensation : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftQuarticCollisionEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 -
            coreGrowingShiftQuarticDiagonalEnergy j

/-- The same collision-line source in exact squarefree-midpoint binary form. -/
def SubpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation :
    Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftQuarticSquarefreeCollisionEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 -
            coreGrowingShiftQuarticDiagonalEnergy j

/-- Exact equivalence between repeated-middle and squarefree-midpoint forms. -/
theorem subpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation_iff_collisionLine :
    SubpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation ↔
      SubpolynomialCoreGrowingShiftQuarticCollisionLineCompensation := by
  constructor
  · intro hSquarefree δ hδ
    obtain ⟨C, hC, hbound⟩ := hSquarefree δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftQuarticCollisionEnergy_eq_squarefreeMidpoint]
    exact hbound j
  · intro hCollision δ hδ
    obtain ⟨C, hC, hbound⟩ := hCollision δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftQuarticCollisionEnergy_eq_squarefreeMidpoint]
    exact hbound j

/-- Pure collision-free parallelogram budget.  No diagonal is assigned to this
source. -/
def SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftQuarticCollisionFreeEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2

/-- Separate collision-line and collision-free budgets recombine into the
exact collision-separated compensation source. -/
theorem subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_of_split
    (hCollision :
      SubpolynomialCoreGrowingShiftQuarticCollisionLineCompensation)
    (hFree : SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget) :
    SubpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation := by
  intro δ hδ
  obtain ⟨Cc, hCc, hcollision⟩ := hCollision δ hδ
  obtain ⟨Cf, hCf, hfree⟩ := hFree δ hδ
  refine ⟨Cc + Cf, add_nonneg hCc hCf, ?_⟩
  intro j
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  let S : ℝ := X * X ^ δ
  let A : ℝ := Cc * S
  let B : ℝ := Cf * S
  have hS : 0 ≤ S := by
    dsimp [S, X]
    positivity
  have hA : 0 ≤ A := by
    exact mul_nonneg hCc hS
  have hB : 0 ≤ B := by
    exact mul_nonneg hCf hS
  have hcollision' :
      2 * coreGrowingShiftQuarticCollisionEnergy j ≤
        A ^ 2 - coreGrowingShiftQuarticDiagonalEnergy j := by
    simpa [A, S, X] using hcollision j
  have hfree' :
      2 * coreGrowingShiftQuarticCollisionFreeEnergy j ≤ B ^ 2 := by
    simpa [B, S, X] using hfree j
  calc
    2 * (coreGrowingShiftQuarticCollisionEnergy j +
        coreGrowingShiftQuarticCollisionFreeEnergy j) =
      2 * coreGrowingShiftQuarticCollisionEnergy j +
        2 * coreGrowingShiftQuarticCollisionFreeEnergy j := by ring
    _ ≤ (A ^ 2 - coreGrowingShiftQuarticDiagonalEnergy j) + B ^ 2 :=
      add_le_add hcollision' hfree'
    _ ≤ (A + B) ^ 2 - coreGrowingShiftQuarticDiagonalEnergy j := by
      nlinarith [mul_nonneg hA hB]
    _ = ((Cc + Cf) * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 -
            coreGrowingShiftQuarticDiagonalEnergy j := by
      dsimp [A, B, S, X]
      ring

/-- Squarefree-midpoint collision control plus collision-free parallelogram
control supplies the exact collision-separated source. -/
theorem subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_of_squarefree_and_free
    (hSquarefree :
      SubpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation)
    (hFree : SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget) :
    SubpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation :=
  subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_of_split
    (subpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation_iff_collisionLine.mp
      hSquarefree)
    hFree

/-- Conditional RH endpoint with the two arithmetic source classes separated. -/
theorem riemannHypothesis_of_squarefreeCollisionLine_and_collisionFree
    (hSquarefree :
      SubpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation)
    (hFree : SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_coreGrowingShiftQuarticCollisionSeparatedCompensation
    (subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_of_squarefree_and_free
      hSquarefree hFree)

/-- Generic proof-producing adapter into the exact squarefree collision-line
budget. -/
structure ToCoreGrowingShiftSquarefreeCollisionLineAdapter
    (source : Prop) : Type where
  toCollisionLine :
    source →
      SubpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation

/-- Generic proof-producing adapter into the collision-free parallelogram
budget. -/
structure ToCoreGrowingShiftCollisionFreeBudgetAdapter
    (source : Prop) : Type where
  toCollisionFree :
    source → SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget

/-- Any two actual adapters and their source proofs supply the separated
conditional endpoint. -/
theorem riemannHypothesis_of_collisionLine_and_collisionFreeAdapters
    {lineSource freeSource : Prop}
    (lineBridge :
      ToCoreGrowingShiftSquarefreeCollisionLineAdapter lineSource)
    (freeBridge :
      ToCoreGrowingShiftCollisionFreeBudgetAdapter freeSource)
    (hLine : lineSource)
    (hFree : freeSource) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_squarefreeCollisionLine_and_collisionFree
    (lineBridge.toCollisionLine hLine)
    (freeBridge.toCollisionFree hFree)

/-- Fixed-form binary Chowla or corrected-Elliott source profile for the
collision line.  The fixed-form theorem is only one field; all growing-family
and squarefree localization bridges remain separate. -/
structure FixedFormBinarySquarefreeCollisionSource where
  sourceStatement : Prop
  fixedFormOrdinaryControl : Prop
  squarefreeDivisorExpansion : Prop
  growingSquareModulusUniformity : Prop
  activePrefixUniformity : Prop
  depthMultiplicityControl : Prop
  finiteSmallScaleControl : Prop

/-- A fixed-form binary result reaches the collision line only through every
listed bridge. -/
structure ToSquarefreeCollisionLineFromFixedFormBinary
    (d : FixedFormBinarySquarefreeCollisionSource) : Type where
  toCollisionLine :
    d.sourceStatement →
      d.fixedFormOrdinaryControl →
      d.squarefreeDivisorExpansion →
      d.growingSquareModulusUniformity →
      d.activePrefixUniformity →
      d.depthMultiplicityControl →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation

/-- Ordinary four-point Chowla or higher-Elliott source profile for the
collision-free affine parallelogram family. -/
structure FourPointParallelogramSource where
  sourceStatement : Prop
  fourDistinctAffineControl : Prop
  growingParallelogramUniformity : Prop
  ordinaryPrefixControl : Prop
  triangularSupportLocalization : Prop
  depthMultiplicityControl : Prop
  finiteSmallScaleControl : Prop

structure ToCollisionFreeBudgetFromFourPoint
    (d : FourPointParallelogramSource) : Type where
  toCollisionFree :
    d.sourceStatement →
      d.fourDistinctAffineControl →
      d.growingParallelogramUniformity →
      d.ordinaryPrefixControl →
      d.triangularSupportLocalization →
      d.depthMultiplicityControl →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget

/-- Quantitative Möbius `U^2` or Fourier-dispersion profile.  A full-box norm
must still be localized to the active triangular packet and its multiplicity. -/
structure MobiusU2ParallelogramSource where
  sourceStatement : Prop
  fullBoxU2Control : Prop
  collisionExcision : Prop
  triangularSupportLocalization : Prop
  activeMultiplicityControl : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCollisionFreeBudgetFromMobiusU2
    (d : MobiusU2ParallelogramSource) : Type where
  toCollisionFree :
    d.sourceStatement →
      d.fullBoxU2Control →
      d.collisionExcision →
      d.triangularSupportLocalization →
      d.activeMultiplicityControl →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget

/-- Averaged higher-order Chowla profile.  An average over all tuples does not
control the sparse parallelogram family until `sparseParallelogramExtraction`
is actually proved. -/
structure AveragedHigherOrderChowlaSource where
  sourceStatement : Prop
  allTupleAverageControl : Prop
  sparseParallelogramExtraction : Prop
  ordinaryPrefixControl : Prop
  triangularSupportLocalization : Prop
  activeMultiplicityControl : Prop
  finiteSmallScaleControl : Prop

structure ToCollisionFreeBudgetFromAveragedHigherOrder
    (d : AveragedHigherOrderChowlaSource) : Type where
  toCollisionFree :
    d.sourceStatement →
      d.allTupleAverageControl →
      d.sparseParallelogramExtraction →
      d.ordinaryPrefixControl →
      d.triangularSupportLocalization →
      d.activeMultiplicityControl →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget

/-- Short-interval Gowers/local-randomness profile.  Both output budgets require
coverage of the actual interval lengths, starts, depths, and small scales. -/
structure ShortIntervalGowersCollisionSource where
  sourceStatement : Prop
  intervalLengthCoverage : Prop
  startWindowCoverage : Prop
  squarefreeCollisionControl : Prop
  collisionFreeParallelogramControl : Prop
  allDepthUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToQuarticSplitBudgetsFromShortIntervalGowers
    (d : ShortIntervalGowersCollisionSource) : Type where
  toCollisionLine :
    d.sourceStatement →
      d.intervalLengthCoverage →
      d.startWindowCoverage →
      d.squarefreeCollisionControl →
      d.allDepthUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation
  toCollisionFree :
    d.sourceStatement →
      d.intervalLengthCoverage →
      d.startWindowCoverage →
      d.collisionFreeParallelogramControl →
      d.allDepthUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget

/-- Logarithmically averaged growing-shift profile.  Ordinary-prefix transport
and the base-variable/shift-variable averaging interchange are explicit
unresolved fields. -/
structure LogarithmicGrowingShiftCollisionSource where
  sourceStatement : Prop
  logarithmicBaseAverageControl : Prop
  ordinaryAverageTransport : Prop
  averagingVariableTransport : Prop
  dyadicShiftRangeUniformity : Prop
  depthMultiplicityControl : Prop
  finiteSmallScaleControl : Prop

structure ToQuarticSplitBudgetsFromLogarithmicGrowingShift
    (d : LogarithmicGrowingShiftCollisionSource) : Type where
  toCollisionLine :
    d.sourceStatement →
      d.logarithmicBaseAverageControl →
      d.ordinaryAverageTransport →
      d.averagingVariableTransport →
      d.dyadicShiftRangeUniformity →
      d.depthMultiplicityControl →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation
  toCollisionFree :
    d.sourceStatement →
      d.logarithmicBaseAverageControl →
      d.ordinaryAverageTransport →
      d.averagingVariableTransport →
      d.dyadicShiftRangeUniformity →
      d.depthMultiplicityControl →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointQuarticCollisionCell_eq_squarefreeMidpoint
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticCollisionEnergy_eq_squarefreeMidpoint
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftCollisionFreeCell_fourFormsPairwiseDistinct
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_of_split
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_squarefreeCollisionLine_and_collisionFree
```
