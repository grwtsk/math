# Complete source: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticMultiplicityBox

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2900466330bd9dc4213f1ed7ed0b8f88865cf4d3` · SHA-256 `10a00ebc50c60d2408d141b2ec65f3024226a39ae7b22ddcc6f838712d578d14`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #746. Parent: draft PR #741 at
`d7f4458890483ae15042b520098cea3213e893a5`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticParallelogram
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- One source occurrence before equal affine triples are grouped.  The four
coordinates are depth, active shift offset, positive separation, and base. -/
abbrev CoreGrowingShiftQuarticActiveCell :=
  Σ t : ℕ, Σ k : ℕ, Σ d : ℕ, ℕ

/-- One point of the fixed dyadic affine box, ordered as shift, separation,
and base. -/
abbrev CoreGrowingShiftQuarticBoxIndex := ℕ × ℕ × ℕ

/-- Exact finite source set underlying the active affine parallelogram packet. -/
def coreGrowingShiftQuarticActiveCells
    (j : ℕ) : Finset CoreGrowingShiftQuarticActiveCell :=
  (coreLongDeepDepths j).sigma fun t =>
    (Finset.range (harmonicShiftCount j t)).sigma fun k =>
      (mertensTwoPointQuarticParallelogramSeparationSet
        (harmonicShiftLower j t + k) (t + 1)).sigma fun d =>
          Finset.range (t + 1 - d)

/-- The affine triple carried by one active depth/shift occurrence. -/
def coreGrowingShiftQuarticActiveCellBoxIndex
    (j : ℕ) (x : CoreGrowingShiftQuarticActiveCell) :
    CoreGrowingShiftQuarticBoxIndex :=
  (harmonicShiftLower j x.1 + x.2.1,
    x.2.2.1, x.2.2.2)

/-- Value of one active affine occurrence. -/
def coreGrowingShiftQuarticActiveCellValue
    (j : ℕ) (x : CoreGrowingShiftQuarticActiveCell) : ℝ :=
  mertensTwoPointQuarticParallelogramCell
    (harmonicShiftLower j x.1 + x.2.1)
    x.2.2.1 x.2.2.2

/-- Fixed ambient dyadic box containing every active affine triple. -/
def coreGrowingShiftQuarticDyadicBox
    (j : ℕ) : Finset CoreGrowingShiftQuarticBoxIndex :=
  (Finset.range (2 ^ (j + 1))).product
    ((Finset.range (2 ^ (j + 1))).product
      (Finset.range (2 ^ (j + 1))))

/-- Number of depth/shift occurrences producing the same affine triple. -/
def coreGrowingShiftQuarticDepthMultiplicity
    (j : ℕ) (q : CoreGrowingShiftQuarticBoxIndex) : ℕ :=
  ((coreGrowingShiftQuarticActiveCells j).filter
    (fun x => coreGrowingShiftQuarticActiveCellBoxIndex j x = q)).card

/-- The active source written as one finite sum before grouping by affine
triple. -/
def coreGrowingShiftQuarticActiveCellEnergy
    (j : ℕ) : ℝ :=
  ∑ x ∈ coreGrowingShiftQuarticActiveCells j,
    coreGrowingShiftQuarticActiveCellValue j x

/-- Multiplicity-weighted full dyadic affine box. -/
def coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy
    (j : ℕ) : ℝ :=
  ∑ q ∈ coreGrowingShiftQuarticDyadicBox j,
    (coreGrowingShiftQuarticDepthMultiplicity j q : ℝ) *
      mertensTwoPointQuarticParallelogramCell q.1 q.2.1 q.2.2

/-- Every active occurrence maps into the fixed dyadic box. -/
theorem coreGrowingShiftQuarticActiveCellBoxIndex_mem
    {j : ℕ} {x : CoreGrowingShiftQuarticActiveCell}
    (hx : x ∈ coreGrowingShiftQuarticActiveCells j) :
    coreGrowingShiftQuarticActiveCellBoxIndex j x ∈
      coreGrowingShiftQuarticDyadicBox j := by
  rcases x with ⟨t, ⟨k, ⟨d, a⟩⟩⟩
  simp only [coreGrowingShiftQuarticActiveCells,
    Finset.mem_sigma] at hx
  rcases hx with ⟨ht, hk, hd, ha⟩
  have hkN : k < harmonicShiftCount j t :=
    Finset.mem_range.mp hk
  have hkUpper :
      harmonicShiftLower j t + k < harmonicShiftUpper j t := by
    unfold harmonicShiftCount at hkN
    omega
  have hhY :
      harmonicShiftLower j t + k < 2 ^ (j + 1) := by
    unfold harmonicShiftUpper at hkUpper
    omega
  have ht' := ht
  simp only [coreLongDeepDepths, Finset.mem_filter,
    Finset.mem_Ico] at ht'
  have htY : t + 1 ≤ 2 ^ (j + 1) := by omega
  simp only [mertensTwoPointQuarticParallelogramSeparationSet,
    Finset.mem_filter, Finset.mem_Ico] at hd
  have hdY : d < 2 ^ (j + 1) := by omega
  have haN : a < t + 1 - d := Finset.mem_range.mp ha
  have haY : a < 2 ^ (j + 1) := by omega
  simp [coreGrowingShiftQuarticActiveCellBoxIndex,
    coreGrowingShiftQuarticDyadicBox, hhY, hdY, haY]

/-- The nested active affine packet is literally the sum over the active-cell
source set. -/
theorem coreGrowingShiftQuarticParallelogramEnergy_eq_activeCells
    (j : ℕ) :
    coreGrowingShiftQuarticParallelogramEnergy j =
      coreGrowingShiftQuarticActiveCellEnergy j := by
  simp [coreGrowingShiftQuarticParallelogramEnergy,
    coreGrowingShiftQuarticParallelogramUpper,
    mertensTwoPointQuarticParallelogramSlice,
    coreGrowingShiftQuarticActiveCellEnergy,
    coreGrowingShiftQuarticActiveCells,
    coreGrowingShiftQuarticActiveCellValue,
    Finset.sum_sigma]

/-- On one fiber of the affine-coordinate map, the arithmetic cell value is
constant. -/
theorem coreGrowingShiftQuarticActiveCellValue_eq_boxValue
    {j : ℕ} {q : CoreGrowingShiftQuarticBoxIndex}
    {x : CoreGrowingShiftQuarticActiveCell}
    (hx : coreGrowingShiftQuarticActiveCellBoxIndex j x = q) :
    coreGrowingShiftQuarticActiveCellValue j x =
      mertensTwoPointQuarticParallelogramCell q.1 q.2.1 q.2.2 := by
  unfold coreGrowingShiftQuarticActiveCellValue
    coreGrowingShiftQuarticActiveCellBoxIndex at hx ⊢
  rw [← hx]

/-- Exact finite histogram identity: all repeated depth/shift occurrences are
grouped into their affine box coordinate with their literal multiplicity. -/
theorem coreGrowingShiftQuarticActiveCellEnergy_eq_multiplicityBox
    (j : ℕ) :
    coreGrowingShiftQuarticActiveCellEnergy j =
      coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy j := by
  classical
  have hmaps :
      ∀ x ∈ coreGrowingShiftQuarticActiveCells j,
        coreGrowingShiftQuarticActiveCellBoxIndex j x ∈
          coreGrowingShiftQuarticDyadicBox j := by
    intro x hx
    exact coreGrowingShiftQuarticActiveCellBoxIndex_mem hx
  calc
    coreGrowingShiftQuarticActiveCellEnergy j =
      ∑ q ∈ coreGrowingShiftQuarticDyadicBox j,
        ∑ x ∈ (coreGrowingShiftQuarticActiveCells j).filter
            (fun x => coreGrowingShiftQuarticActiveCellBoxIndex j x = q),
          coreGrowingShiftQuarticActiveCellValue j x := by
      unfold coreGrowingShiftQuarticActiveCellEnergy
      exact (Finset.sum_fiberwise_of_maps_to hmaps
        (fun x => coreGrowingShiftQuarticActiveCellValue j x)).symm
    _ = ∑ q ∈ coreGrowingShiftQuarticDyadicBox j,
        (coreGrowingShiftQuarticDepthMultiplicity j q : ℝ) *
          mertensTwoPointQuarticParallelogramCell q.1 q.2.1 q.2.2 := by
      apply Finset.sum_congr rfl
      intro q _hq
      calc
        (∑ x ∈ (coreGrowingShiftQuarticActiveCells j).filter
            (fun x => coreGrowingShiftQuarticActiveCellBoxIndex j x = q),
          coreGrowingShiftQuarticActiveCellValue j x) =
          ∑ _x ∈ (coreGrowingShiftQuarticActiveCells j).filter
              (fun x => coreGrowingShiftQuarticActiveCellBoxIndex j x = q),
            mertensTwoPointQuarticParallelogramCell q.1 q.2.1 q.2.2 := by
          apply Finset.sum_congr rfl
          intro x hx
          exact coreGrowingShiftQuarticActiveCellValue_eq_boxValue
            (Finset.mem_filter.mp hx).2
        _ = (coreGrowingShiftQuarticDepthMultiplicity j q : ℝ) *
            mertensTwoPointQuarticParallelogramCell q.1 q.2.1 q.2.2 := by
          simp [coreGrowingShiftQuarticDepthMultiplicity]
    _ = coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy j := by
      rfl

/-- Exact active-packet/full-box identity. -/
theorem coreGrowingShiftQuarticParallelogramEnergy_eq_multiplicityBox
    (j : ℕ) :
    coreGrowingShiftQuarticParallelogramEnergy j =
      coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy j := by
  rw [coreGrowingShiftQuarticParallelogramEnergy_eq_activeCells,
    coreGrowingShiftQuarticActiveCellEnergy_eq_multiplicityBox]

/-- Multiplicity is nonnegative after casting to the analytic scalar field. -/
theorem coreGrowingShiftQuarticDepthMultiplicity_nonneg
    (j : ℕ) (q : CoreGrowingShiftQuarticBoxIndex) :
    0 ≤ (coreGrowingShiftQuarticDepthMultiplicity j q : ℝ) := by
  positivity

/-- For a fixed affine triple, projection to depth is injective on the source
fiber: the shift equation determines the offset `k` uniquely. -/
theorem coreGrowingShiftQuarticDepthMultiplicity_le_depthCard
    (j : ℕ) (q : CoreGrowingShiftQuarticBoxIndex) :
    coreGrowingShiftQuarticDepthMultiplicity j q ≤
      (coreLongDeepDepths j).card := by
  classical
  let F := (coreGrowingShiftQuarticActiveCells j).filter
    (fun x => coreGrowingShiftQuarticActiveCellBoxIndex j x = q)
  change F.card ≤ (coreLongDeepDepths j).card
  refine Finset.card_le_card_of_injOn (fun x => x.1) ?_ ?_
  · intro x hx
    have hactive := (Finset.mem_filter.mp hx).1
    simp only [coreGrowingShiftQuarticActiveCells,
      Finset.mem_sigma] at hactive
    exact hactive.1
  · intro x hx y hy hdepth
    have hxq := (Finset.mem_filter.mp hx).2
    have hyq := (Finset.mem_filter.mp hy).2
    rcases x with ⟨tx, ⟨kx, ⟨dx, ax⟩⟩⟩
    rcases y with ⟨ty, ⟨ky, ⟨dy, ay⟩⟩⟩
    simp only at hdepth
    subst ty
    have hindices :
        (harmonicShiftLower j tx + kx, dx, ax) =
          (harmonicShiftLower j tx + ky, dy, ay) := by
      exact hxq.trans hyq.symm
    simp only [Prod.mk.injEq] at hindices
    rcases hindices with ⟨hh, hd, ha⟩
    have hk : kx = ky := by omega
    subst ky
    subst dy
    subst ay
    rfl

/-- Coarse deterministic multiplicity bound by the right dyadic scale. -/
theorem coreGrowingShiftQuarticDepthMultiplicity_le_rightScale
    (j : ℕ) (q : CoreGrowingShiftQuarticBoxIndex) :
    (coreGrowingShiftQuarticDepthMultiplicity j q : ℝ) ≤
      ((2 ^ (j + 1) : ℕ) : ℝ) := by
  have h₁ := coreGrowingShiftQuarticDepthMultiplicity_le_depthCard j q
  have h₂ := coreLongDeepDepths_card_le_rightScale j
  exact_mod_cast le_trans h₁ h₂

/-- Source-facing all-scale budget on the exact multiplicity-weighted box. -/
def SubpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2

/-- The multiplicity-weighted box budget is exactly the active affine
parallelogram budget. -/
theorem subpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget_iff_parallelogram :
    SubpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget ↔
      SubpolynomialCoreGrowingShiftQuarticParallelogramBudget := by
  constructor
  · intro hBox δ hδ
    obtain ⟨C, hC, hbound⟩ := hBox δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftQuarticParallelogramEnergy_eq_multiplicityBox]
    exact hbound j
  · intro hPara δ hδ
    obtain ⟨C, hC, hbound⟩ := hPara δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftQuarticParallelogramEnergy_eq_multiplicityBox]
    exact hbound j

/-- Centered squarefree collision-line compensation plus the exact
multiplicity-weighted box budget retain the conditional endpoint. -/
theorem riemannHypothesis_of_centeredCollision_and_multiplicityBox
    (hCentered :
      SubpolynomialCoreGrowingShiftQuarticCenteredSquarefreeCollisionLineCompensation)
    (hBox :
      SubpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_centeredCollision_and_parallelogram
    hCentered
    (subpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget_iff_parallelogram.mp
      hBox)

/-- Source profile for a theorem already stated on the exact weighted box. -/
structure MultiplicityWeightedParallelogramBoxSource where
  sourceStatement : Prop
  exactBoxRangeControl : Prop
  signedCellControl : Prop
  depthMultiplicityControl : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget
    (d : MultiplicityWeightedParallelogramBoxSource) : Type where
  toBox :
    d.sourceStatement →
      d.exactBoxRangeControl →
      d.signedCellControl →
      d.depthMultiplicityControl →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget

/-- Full-box `U^2` or Fourier-dispersion profile.  The weighted localization
field is the genuinely load-bearing comparison back to the RH-facing box. -/
structure FullBoxU2MultiplicityLocalizationSource where
  sourceStatement : Prop
  fullBoxU2Control : Prop
  weightedLocalization : Prop
  zeroShiftExcision : Prop
  zeroSeparationExcision : Prop
  repeatedMiddleExcision : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftQuarticMultiplicityWeightedBoxBudgetFromU2
    (d : FullBoxU2MultiplicityLocalizationSource) : Type where
  toBox :
    d.sourceStatement →
      d.fullBoxU2Control →
      d.weightedLocalization →
      d.zeroShiftExcision →
      d.zeroSeparationExcision →
      d.repeatedMiddleExcision →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticParallelogramEnergy_eq_multiplicityBox
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticDepthMultiplicity_le_depthCard
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticDepthMultiplicity_le_rightScale
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget_iff_parallelogram
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_centeredCollision_and_multiplicityBox
```
