# Complete source: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticParallelogram

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d48c06b81e46edcaacc587e62a67694762b20499` · SHA-256 `c821a72519e947c1ee82c383aebfda3c7d40d52f2a0ec800222ba675afae81d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #739. Parent: draft PR #736 at
`68a887d1698b3e3160187a9e76420a0fd129a8f3`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftCenteredCollision
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- One affine Möbius parallelogram cell with positive side lengths `h` and
`d`.  The four arguments are `a+1`, `a+1+h`, `a+1+d`, and `a+1+d+h`. -/
def mertensTwoPointQuarticParallelogramCell
    (h d a : ℕ) : ℝ :=
  moebiusReal (a + 1) *
    moebiusReal (a + 1 + h) *
      moebiusReal (a + 1 + d) *
        moebiusReal (a + 1 + d + h)

/-- The original quartic cell at upper index `a+d` is exactly the affine
parallelogram cell. -/
theorem mertensTwoPointQuarticCell_eq_parallelogram
    (h d a : ℕ) :
    mertensTwoPointQuarticCell h a (a + d) =
      mertensTwoPointQuarticParallelogramCell h d a := by
  have hthird : a + d + 1 = a + 1 + d := by omega
  have hfourth : a + d + 1 + h = a + 1 + d + h := by omega
  unfold mertensTwoPointQuarticCell
    mertensTwoPointQuarticParallelogramCell
  rw [hthird, hfourth]
  ring

/-- The positive separation coordinates retained in the collision-free upper
triangle.  The value `d=h` is excluded because it is the repeated-middle
collision line. -/
def mertensTwoPointQuarticParallelogramSeparationSet
    (h N : ℕ) : Finset ℕ :=
  (Finset.Ico 1 N).filter (fun d => d ≠ h)

/-- One fixed-separation affine parallelogram prefix. -/
def mertensTwoPointQuarticParallelogramSlice
    (h N d : ℕ) : ℝ :=
  ∑ a ∈ Finset.range (N - d),
    mertensTwoPointQuarticParallelogramCell h d a

/-- Complete collision-free upper triangle in affine separation coordinates. -/
def mertensTwoPointQuarticParallelogramUpper
    (h N : ℕ) : ℝ :=
  ∑ d ∈ mertensTwoPointQuarticParallelogramSeparationSet h N,
    mertensTwoPointQuarticParallelogramSlice h N d

/-- Exact finite reindexing `d=b-a` of the collision-free upper triangle. -/
theorem mertensTwoPointQuarticCollisionFreeUpper_eq_parallelogram
    (h N : ℕ) :
    mertensTwoPointQuarticCollisionFreeUpper h N =
      mertensTwoPointQuarticParallelogramUpper h N := by
  classical
  unfold mertensTwoPointQuarticCollisionFreeUpper
    mertensTwoPointQuarticParallelogramUpper
    mertensTwoPointQuarticParallelogramSlice
    mertensTwoPointQuarticParallelogramSeparationSet
  rw [Finset.sum_sigma', Finset.sum_sigma']
  apply Finset.sum_bij
    (fun p _hp => ⟨p.1 - p.2, p.2⟩)
  · intro p hp
    rcases p with ⟨b, a⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter, Finset.mem_Ico] at hp ⊢
    rcases hp with ⟨hbN, hab, hfree⟩
    constructor
    · constructor <;> omega
    constructor
    · omega
    · omega
  · intro p₁ hp₁ p₂ hp₂ heq
    rcases p₁ with ⟨b₁, a₁⟩
    rcases p₂ with ⟨b₂, a₂⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter] at hp₁ hp₂
    simp only [Sigma.mk.inj_iff] at heq
    rcases heq with ⟨hd, ha⟩
    subst a₂
    have hb : b₁ = b₂ := by omega
    subst b₂
    rfl
  · intro p hp
    rcases p with ⟨d, a⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter, Finset.mem_Ico] at hp
    rcases hp with ⟨⟨hdpos, hdN⟩, hdne, haN⟩
    refine ⟨⟨a + d, a⟩, ?_, ?_⟩
    · simp only [Finset.mem_sigma, Finset.mem_range,
        Finset.mem_filter]
      constructor
      · omega
      constructor
      · omega
      · omega
    · simp only [Sigma.mk.inj_iff]
      constructor <;> omega
  · intro p hp
    rcases p with ⟨b, a⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter] at hp
    rcases hp with ⟨_hbN, hab, _hfree⟩
    have hb : b = a + (b - a) := by omega
    rw [hb]
    exact mertensTwoPointQuarticCell_eq_parallelogram
      h (b - a) a

/-- The excluded separation diagonal `d=h` is exactly the repeated-middle
collision cell. -/
theorem mertensTwoPointQuarticParallelogramCell_eq_collisionCell
    (h a : ℕ) :
    mertensTwoPointQuarticParallelogramCell h h a =
      mertensTwoPointQuarticCollisionCell h a := by
  unfold mertensTwoPointQuarticParallelogramCell
    mertensTwoPointQuarticCollisionCell
  have hlast : a + 1 + h + h = a + 1 + 2 * h := by omega
  rw [hlast]
  ring

/-- Complete active collision-free packet in affine parallelogram coordinates. -/
def coreGrowingShiftQuarticParallelogramEnergy
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    ∑ k ∈ Finset.range (harmonicShiftCount j t),
      mertensTwoPointQuarticParallelogramUpper
        (harmonicShiftLower j t + k) (t + 1)

/-- The active collision-free packet is exactly its affine parallelogram
reindexing. -/
theorem coreGrowingShiftQuarticCollisionFreeEnergy_eq_parallelogram
    (j : ℕ) :
    coreGrowingShiftQuarticCollisionFreeEnergy j =
      coreGrowingShiftQuarticParallelogramEnergy j := by
  unfold coreGrowingShiftQuarticCollisionFreeEnergy
    coreGrowingShiftQuarticParallelogramEnergy
  apply Finset.sum_congr rfl
  intro t _ht
  apply Finset.sum_congr rfl
  intro k _hk
  exact
    mertensTwoPointQuarticCollisionFreeUpper_eq_parallelogram
      (harmonicShiftLower j t + k) (t + 1)

/-- Source-facing budget on the exact growing affine parallelogram family. -/
def SubpolynomialCoreGrowingShiftQuarticParallelogramBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftQuarticParallelogramEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2

/-- The affine parallelogram budget is exactly the inherited collision-free
budget; the reindexing introduces no analytic loss. -/
theorem subpolynomialCoreGrowingShiftQuarticParallelogramBudget_iff_collisionFree :
    SubpolynomialCoreGrowingShiftQuarticParallelogramBudget ↔
      SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget := by
  constructor
  · intro hPara δ hδ
    obtain ⟨C, hC, hbound⟩ := hPara δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftQuarticCollisionFreeEnergy_eq_parallelogram]
    exact hbound j
  · intro hFree δ hδ
    obtain ⟨C, hC, hbound⟩ := hFree δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftQuarticCollisionFreeEnergy_eq_parallelogram]
    exact hbound j

/-- Centered squarefree collision-line compensation and the exact affine
parallelogram budget retain the conditional endpoint. -/
theorem riemannHypothesis_of_centeredCollision_and_parallelogram
    (hCentered :
      SubpolynomialCoreGrowingShiftQuarticCenteredSquarefreeCollisionLineCompensation)
    (hPara : SubpolynomialCoreGrowingShiftQuarticParallelogramBudget) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_centeredSquarefreeCollision_and_collisionFree
    hCentered
    (subpolynomialCoreGrowingShiftQuarticParallelogramBudget_iff_collisionFree.mp
      hPara)

/-- Source profile for a theorem already stated on the exact growing affine
parallelogram family. -/
structure GrowingAffineParallelogramSource where
  sourceStatement : Prop
  positiveShiftControl : Prop
  positiveSeparationControl : Prop
  collisionDiagonalExcision : Prop
  ordinaryPrefixControl : Prop
  triangularSupportControl : Prop
  activeMultiplicityControl : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftQuarticParallelogramBudget
    (d : GrowingAffineParallelogramSource) : Type where
  toParallelogram :
    d.sourceStatement →
      d.positiveShiftControl →
      d.positiveSeparationControl →
      d.collisionDiagonalExcision →
      d.ordinaryPrefixControl →
      d.triangularSupportControl →
      d.activeMultiplicityControl →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticParallelogramBudget

/-- Full-box quantitative `U^2` or Fourier-dispersion profile.  A box norm
reaches the active packet only after localization, collision excision, and
multiplicity transport. -/
structure FullBoxU2ToActiveParallelogramSource where
  sourceStatement : Prop
  fullBoxU2Control : Prop
  triangularSupportLocalization : Prop
  zeroSeparationExcision : Prop
  repeatedMiddleExcision : Prop
  activeMultiplicityControl : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftQuarticParallelogramBudgetFromU2
    (d : FullBoxU2ToActiveParallelogramSource) : Type where
  toParallelogram :
    d.sourceStatement →
      d.fullBoxU2Control →
      d.triangularSupportLocalization →
      d.zeroSeparationExcision →
      d.repeatedMiddleExcision →
      d.activeMultiplicityControl →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticParallelogramBudget

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointQuarticCollisionFreeUpper_eq_parallelogram
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointQuarticParallelogramCell_eq_collisionCell
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticCollisionFreeEnergy_eq_parallelogram
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreGrowingShiftQuarticParallelogramBudget_iff_collisionFree
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_centeredCollision_and_parallelogram
```
