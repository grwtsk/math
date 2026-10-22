/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #733. Parent: draft PR #729 at
`e61ccef5a2cd0cc0dd4ab00d3eefa62bc4afde65`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticConnections
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The repeated-middle collision line after eliminating the redundant upper
index `b=a+h`.  The positive-shift hypothesis needed for the upper-triangle
identification is carried by the theorem below, not hidden in the definition. -/
def mertensTwoPointQuarticCollisionProgression
    (h N : ℕ) : ℝ :=
  ∑ a ∈ Finset.range (N - h),
    mertensTwoPointQuarticCollisionCell h a

/-- For a positive shift, the filtered upper-triangle collision line is
exactly one progression indexed by the left endpoint `a`. -/
theorem mertensTwoPointQuarticCollisionUpper_eq_progression
    {h N : ℕ}
    (hh : 0 < h) :
    mertensTwoPointQuarticCollisionUpper h N =
      mertensTwoPointQuarticCollisionProgression h N := by
  classical
  unfold mertensTwoPointQuarticCollisionUpper
    mertensTwoPointQuarticCollisionProgression
  rw [Finset.sum_sigma']
  apply Finset.sum_bij (fun p _hp => p.2)
  · intro p hp
    rcases p with ⟨b, a⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter] at hp ⊢
    rcases hp with ⟨hbN, hab, hba⟩
    omega
  · intro p₁ hp₁ p₂ hp₂ heq
    rcases p₁ with ⟨b₁, a₁⟩
    rcases p₂ with ⟨b₂, a₂⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter] at hp₁ hp₂
    simp only at heq
    rcases hp₁ with ⟨_hb₁N, _ha₁b₁, hb₁⟩
    rcases hp₂ with ⟨_hb₂N, _ha₂b₂, hb₂⟩
    have ha : a₁ = a₂ := heq
    subst a₂
    have hb : b₁ = b₂ := by omega
    subst b₂
    rfl
  · intro a ha
    simp only [Finset.mem_range] at ha
    refine ⟨⟨a + h, a⟩, ?_, rfl⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter]
    constructor
    · omega
    constructor
    · omega
    · rfl
  · intro p hp
    rcases p with ⟨b, a⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter] at hp
    rcases hp with ⟨_hbN, _hab, hba⟩
    change mertensTwoPointQuarticCell h a b =
      mertensTwoPointQuarticCollisionCell h a
    rw [hba]
    exact mertensTwoPointQuarticCell_eq_collisionCell h a

/-- The same collision cell written around its midpoint `m=a+1+h`. -/
def mertensTwoPointQuarticCenteredCollisionCell
    (h m : ℕ) : ℝ :=
  moebiusReal (m - h) *
    moebiusReal m ^ 2 *
      moebiusReal (m + h)

/-- Centered progression support.  The interval `Ico (h+1) (N+1)` is exactly
the image of `range (N-h)` under `a ↦ a+1+h`. -/
def mertensTwoPointQuarticCenteredCollision
    (h N : ℕ) : ℝ :=
  ∑ m ∈ Finset.Ico (h + 1) (N + 1),
    mertensTwoPointQuarticCenteredCollisionCell h m

/-- Exact change from the left-endpoint progression coordinate to the centered
midpoint coordinate. -/
theorem mertensTwoPointQuarticCollisionProgression_eq_centered
    (h N : ℕ) :
    mertensTwoPointQuarticCollisionProgression h N =
      mertensTwoPointQuarticCenteredCollision h N := by
  classical
  unfold mertensTwoPointQuarticCollisionProgression
    mertensTwoPointQuarticCenteredCollision
  apply Finset.sum_bij (fun a _ha => a + 1 + h)
  · intro a ha
    simp only [Finset.mem_range] at ha
    simp only [Finset.mem_Ico]
    omega
  · intro a₁ ha₁ a₂ ha₂ heq
    simp only [Finset.mem_range] at ha₁ ha₂
    omega
  · intro m hm
    simp only [Finset.mem_Ico] at hm
    refine ⟨m - h - 1, ?_, ?_⟩
    · simp only [Finset.mem_range]
      omega
    · omega
  · intro a ha
    simp only [Finset.mem_range] at ha
    unfold mertensTwoPointQuarticCollisionCell
      mertensTwoPointQuarticCenteredCollisionCell
    have hleft : a + 1 + h - h = a + 1 := by omega
    have hright : a + 1 + h + h = a + 1 + 2 * h := by omega
    rw [hleft, hright]
    ring

/-- Squarefree-midpoint form of one centered collision cell. -/
def mertensTwoPointQuarticCenteredSquarefreeCell
    (h m : ℕ) : ℝ :=
  if Squarefree m then
    moebiusReal (m - h) * moebiusReal (m + h)
  else 0

/-- Exact squarefree rewrite of the centered repeated-middle cell. -/
theorem mertensTwoPointQuarticCenteredCollisionCell_eq_squarefree
    (h m : ℕ) :
    mertensTwoPointQuarticCenteredCollisionCell h m =
      mertensTwoPointQuarticCenteredSquarefreeCell h m := by
  unfold mertensTwoPointQuarticCenteredCollisionCell
    mertensTwoPointQuarticCenteredSquarefreeCell
  rw [moebiusReal_sq_eq_coreQuarticSquarefreeIndicator]
  unfold coreQuarticSquarefreeIndicatorReal
  by_cases hs : Squarefree m
  · simp [hs]
    ring
  · simp [hs]

/-- Centered collision line after replacing the middle Möbius square by the
exact squarefree selector. -/
def mertensTwoPointQuarticCenteredSquarefreeCollision
    (h N : ℕ) : ℝ :=
  ∑ m ∈ Finset.Ico (h + 1) (N + 1),
    mertensTwoPointQuarticCenteredSquarefreeCell h m

/-- Exact finite equality between the centered repeated-middle and centered
squarefree-midpoint packets. -/
theorem mertensTwoPointQuarticCenteredCollision_eq_squarefree
    (h N : ℕ) :
    mertensTwoPointQuarticCenteredCollision h N =
      mertensTwoPointQuarticCenteredSquarefreeCollision h N := by
  unfold mertensTwoPointQuarticCenteredCollision
    mertensTwoPointQuarticCenteredSquarefreeCollision
  apply Finset.sum_congr rfl
  intro m _hm
  exact mertensTwoPointQuarticCenteredCollisionCell_eq_squarefree h m

/-- Complete active collision-line packet in centered squarefree coordinates. -/
def coreGrowingShiftQuarticCenteredSquarefreeCollisionEnergy
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    ∑ k ∈ Finset.range (harmonicShiftCount j t),
      mertensTwoPointQuarticCenteredSquarefreeCollision
        (harmonicShiftLower j t + k) (t + 1)

/-- Every active collision shift is positive. -/
theorem activeQuarticCollisionShift_pos
    (j t k : ℕ) :
    0 < harmonicShiftLower j t + k := by
  have hL : 1 ≤ harmonicShiftLower j t := by
    unfold harmonicShiftLower
    exact le_max_left _ _
  omega

/-- The complete active collision packet is exactly the centered squarefree
progression packet. -/
theorem coreGrowingShiftQuarticCollisionEnergy_eq_centeredSquarefree
    (j : ℕ) :
    coreGrowingShiftQuarticCollisionEnergy j =
      coreGrowingShiftQuarticCenteredSquarefreeCollisionEnergy j := by
  unfold coreGrowingShiftQuarticCollisionEnergy
    coreGrowingShiftQuarticCenteredSquarefreeCollisionEnergy
  apply Finset.sum_congr rfl
  intro t _ht
  apply Finset.sum_congr rfl
  intro k _hk
  let h : ℕ := harmonicShiftLower j t + k
  have hh : 0 < h := by
    dsimp [h]
    exact activeQuarticCollisionShift_pos j t k
  calc
    mertensTwoPointQuarticCollisionUpper h (t + 1) =
      mertensTwoPointQuarticCollisionProgression h (t + 1) :=
        mertensTwoPointQuarticCollisionUpper_eq_progression hh
    _ = mertensTwoPointQuarticCenteredCollision h (t + 1) :=
      mertensTwoPointQuarticCollisionProgression_eq_centered h (t + 1)
    _ = mertensTwoPointQuarticCenteredSquarefreeCollision h (t + 1) :=
      mertensTwoPointQuarticCenteredCollision_eq_squarefree h (t + 1)

/-- Source-facing collision-line compensation in the canonical centered
squarefree progression coordinates. -/
def SubpolynomialCoreGrowingShiftQuarticCenteredSquarefreeCollisionLineCompensation :
    Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftQuarticCenteredSquarefreeCollisionEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 -
            coreGrowingShiftQuarticDiagonalEnergy j

/-- The centered squarefree source is exactly the collision-line source from
#727, with no analytic strengthening or loss. -/
theorem subpolynomialCoreGrowingShiftQuarticCenteredSquarefreeCollisionLineCompensation_iff :
    SubpolynomialCoreGrowingShiftQuarticCenteredSquarefreeCollisionLineCompensation ↔
      SubpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation := by
  constructor
  · intro hCentered δ hδ
    obtain ⟨C, hC, hbound⟩ := hCentered δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftQuarticCollisionEnergy_eq_squarefreeMidpoint,
      coreGrowingShiftQuarticCollisionEnergy_eq_centeredSquarefree]
    exact hbound j
  · intro hSquarefree δ hδ
    obtain ⟨C, hC, hbound⟩ := hSquarefree δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftQuarticCollisionEnergy_eq_centeredSquarefree,
      coreGrowingShiftQuarticCollisionEnergy_eq_squarefreeMidpoint]
    exact hbound j

/-- Centered squarefree collision control and the inherited collision-free
parallelogram budget retain the conditional endpoint. -/
theorem riemannHypothesis_of_centeredSquarefreeCollision_and_collisionFree
    (hCentered :
      SubpolynomialCoreGrowingShiftQuarticCenteredSquarefreeCollisionLineCompensation)
    (hFree : SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_squarefreeCollisionLine_and_collisionFree
    (subpolynomialCoreGrowingShiftQuarticCenteredSquarefreeCollisionLineCompensation_iff.mp
      hCentered)
    hFree

/-- Proof-producing boundary for a theorem stated directly on centered
squarefree progressions. -/
structure CenteredSquarefreeCollisionSource where
  sourceStatement : Prop
  centeredRangeControl : Prop
  squarefreeMidpointControl : Prop
  growingRadiusUniformity : Prop
  activePrefixUniformity : Prop
  depthMultiplicityControl : Prop
  finiteSmallScaleControl : Prop

structure ToCenteredSquarefreeCollisionLineCompensation
    (d : CenteredSquarefreeCollisionSource) : Type where
  toCollisionLine :
    d.sourceStatement →
      d.centeredRangeControl →
      d.squarefreeMidpointControl →
      d.growingRadiusUniformity →
      d.activePrefixUniformity →
      d.depthMultiplicityControl →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticCenteredSquarefreeCollisionLineCompensation

/-- The zero-shift upper triangle is empty, while the direct progression would
restore the omitted diagonal.  This finite witness records why `0<h` is an
essential hypothesis of the progression identity. -/
theorem zeroShift_quarticCollisionSupport_hostileWitness :
    mertensTwoPointQuarticCollisionUpper 0 1 = 0 ∧
      mertensTwoPointQuarticCollisionProgression 0 1 =
        mertensTwoPointQuarticCollisionCell 0 0 := by
  constructor <;>
    simp [mertensTwoPointQuarticCollisionUpper,
      mertensTwoPointQuarticCollisionProgression]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointQuarticCollisionUpper_eq_progression
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointQuarticCollisionProgression_eq_centered
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticCollisionEnergy_eq_centeredSquarefree
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreGrowingShiftQuarticCenteredSquarefreeCollisionLineCompensation_iff
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_centeredSquarefreeCollision_and_collisionFree
