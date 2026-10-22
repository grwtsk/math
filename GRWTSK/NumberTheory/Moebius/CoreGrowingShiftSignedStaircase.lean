/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #824. Parent: draft PR #820 at
`fe225f62f5c46a2ad7fc65c8c1498c5ba3c41140`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftPrefixSquareEnergy
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticExplicitMultiplicity
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- One signed source occurrence before changing from depth/offset coordinates
to prefix/shift coordinates. -/
abbrev CoreGrowingShiftSignedActiveCell := Σ t : ℕ, ℕ

/-- One point of the injective signed staircase, ordered as prefix length then
ordinary Möbius shift. -/
abbrev CoreGrowingShiftSignedStaircaseIndex := Σ N : ℕ, ℕ

/-- Exact source set of genuine core depths and their active shift offsets. -/
def coreGrowingShiftSignedActiveCells
    (j : ℕ) : Finset CoreGrowingShiftSignedActiveCell :=
  (coreLongDeepDepths j).sigma fun t =>
    Finset.range (harmonicShiftCount j t)

/-- Prefix lengths retained by the genuine core. -/
def coreGrowingShiftSignedStaircasePrefixSet
    (j : ℕ) : Finset ℕ :=
  Finset.Ico
    (logarithmicShiftThreshold j + 1)
    (2 ^ (j + 1) - logarithmicShiftThreshold j)

/-- First ordinary shift retained at one prefix length. -/
def coreGrowingShiftSignedStaircaseLower
    (j N : ℕ) : ℕ :=
  max 1 (2 ^ j - N)

/-- Exclusive final ordinary shift retained at one prefix length. -/
def coreGrowingShiftSignedStaircaseUpper
    (j N : ℕ) : ℕ :=
  2 ^ (j + 1) - N

/-- Exact ordinary-shift interval at one prefix length. -/
def coreGrowingShiftSignedStaircaseShiftSet
    (j N : ℕ) : Finset ℕ :=
  Finset.Ico
    (coreGrowingShiftSignedStaircaseLower j N)
    (coreGrowingShiftSignedStaircaseUpper j N)

/-- Complete injective prefix/shift staircase. -/
def coreGrowingShiftSignedStaircaseIndices
    (j : ℕ) : Finset CoreGrowingShiftSignedStaircaseIndex :=
  (coreGrowingShiftSignedStaircasePrefixSet j).sigma fun N =>
    coreGrowingShiftSignedStaircaseShiftSet j N

/-- Coordinate map from a depth and active offset to ordinary prefix length
and ordinary shift. -/
def coreGrowingShiftSignedActiveCellToStaircase
    (j : ℕ) (x : CoreGrowingShiftSignedActiveCell) :
    CoreGrowingShiftSignedStaircaseIndex :=
  ⟨x.1 + 1, harmonicShiftLower j x.1 + x.2⟩

/-- The active lower shift at depth `t` is the staircase lower shift at prefix
length `t+1`. -/
theorem harmonicShiftLower_eq_signedStaircaseLower
    (j t : ℕ) :
    harmonicShiftLower j t =
      coreGrowingShiftSignedStaircaseLower j (t + 1) := by
  unfold harmonicShiftLower coreGrowingShiftSignedStaircaseLower
  have hsub : 2 ^ j - t - 1 = 2 ^ j - (t + 1) := by omega
  rw [hsub]

/-- The active upper shift at depth `t` is the staircase upper shift at prefix
length `t+1`. -/
theorem harmonicShiftUpper_eq_signedStaircaseUpper
    (j t : ℕ) :
    harmonicShiftUpper j t =
      coreGrowingShiftSignedStaircaseUpper j (t + 1) := by
  unfold harmonicShiftUpper coreGrowingShiftSignedStaircaseUpper
  omega

/-- Every active depth/offset cell maps into the exact signed staircase. -/
theorem coreGrowingShiftSignedActiveCellToStaircase_mem
    {j : ℕ} {x : CoreGrowingShiftSignedActiveCell}
    (hx : x ∈ coreGrowingShiftSignedActiveCells j) :
    coreGrowingShiftSignedActiveCellToStaircase j x ∈
      coreGrowingShiftSignedStaircaseIndices j := by
  rcases x with ⟨t, k⟩
  simp only [coreGrowingShiftSignedActiveCells,
    Finset.mem_sigma] at hx
  rcases hx with ⟨ht, hk⟩
  have ht' := ht
  rw [coreLongDeepDepths_eq_exactInterval] at ht'
  simp only [Finset.mem_Ico] at ht'
  have hkN : k < harmonicShiftCount j t :=
    Finset.mem_range.mp hk
  have hshift :
      harmonicShiftLower j t ≤ harmonicShiftLower j t + k ∧
      harmonicShiftLower j t + k < harmonicShiftUpper j t := by
    unfold harmonicShiftCount at hkN
    omega
  simp only [coreGrowingShiftSignedActiveCellToStaircase,
    coreGrowingShiftSignedStaircaseIndices, Finset.mem_sigma]
  constructor
  · simp only [coreGrowingShiftSignedStaircasePrefixSet,
      Finset.mem_Ico]
    omega
  · simp only [coreGrowingShiftSignedStaircaseShiftSet,
      Finset.mem_Ico]
    rw [← harmonicShiftLower_eq_signedStaircaseLower,
      ← harmonicShiftUpper_eq_signedStaircaseUpper]
    exact hshift

/-- The coordinate map is injective: the prefix length determines the depth,
and the shift then determines the active offset. -/
theorem coreGrowingShiftSignedActiveCellToStaircase_injective
    (j : ℕ) :
    Function.Injective (coreGrowingShiftSignedActiveCellToStaircase j) := by
  intro x y hxy
  rcases x with ⟨tx, kx⟩
  rcases y with ⟨ty, ky⟩
  simp only [coreGrowingShiftSignedActiveCellToStaircase,
    Sigma.mk.inj_iff] at hxy
  rcases hxy with ⟨ht, hh⟩
  have hdepth : tx = ty := by omega
  subst ty
  have hk : kx = ky := by omega
  subst ky
  rfl

/-- Every point of the explicit signed staircase comes from one active
source cell. -/
theorem coreGrowingShiftSignedActiveCellToStaircase_surjective
    {j : ℕ} {y : CoreGrowingShiftSignedStaircaseIndex}
    (hy : y ∈ coreGrowingShiftSignedStaircaseIndices j) :
    ∃ x ∈ coreGrowingShiftSignedActiveCells j,
      coreGrowingShiftSignedActiveCellToStaircase j x = y := by
  rcases y with ⟨N, h⟩
  simp only [coreGrowingShiftSignedStaircaseIndices,
    Finset.mem_sigma] at hy
  rcases hy with ⟨hN, hh⟩
  have hNI := hN
  simp only [coreGrowingShiftSignedStaircasePrefixSet,
    Finset.mem_Ico] at hNI
  have hhI := hh
  simp only [coreGrowingShiftSignedStaircaseShiftSet,
    Finset.mem_Ico] at hhI
  have hNpos : 0 < N := by
    have hHpos : 0 < logarithmicShiftThreshold j := by
      unfold logarithmicShiftThreshold
      omega
    omega
  let t : ℕ := N - 1
  let k : ℕ := h - coreGrowingShiftSignedStaircaseLower j N
  have htN : t + 1 = N := by
    dsimp [t]
    omega
  have htcore : t ∈ coreLongDeepDepths j := by
    rw [coreLongDeepDepths_eq_exactInterval]
    simp only [Finset.mem_Ico]
    dsimp [t]
    omega
  have hlower :
      harmonicShiftLower j t =
        coreGrowingShiftSignedStaircaseLower j N := by
    rw [harmonicShiftLower_eq_signedStaircaseLower, htN]
  have hupper :
      harmonicShiftUpper j t =
        coreGrowingShiftSignedStaircaseUpper j N := by
    rw [harmonicShiftUpper_eq_signedStaircaseUpper, htN]
  have hkCount : k < harmonicShiftCount j t := by
    unfold harmonicShiftCount
    dsimp [k]
    rw [hlower, hupper]
    omega
  let x : CoreGrowingShiftSignedActiveCell := ⟨t, k⟩
  refine ⟨x, ?_, ?_⟩
  · simp only [coreGrowingShiftSignedActiveCells,
      Finset.mem_sigma]
    exact ⟨htcore, Finset.mem_range.mpr hkCount⟩
  · apply Sigma.ext
    · exact htN
    · simp only [coreGrowingShiftSignedActiveCellToStaircase]
      rw [hlower]
      dsimp [k]
      omega

/-- Signed value of one source cell before reindexing. -/
def coreGrowingShiftSignedActiveCellValue
    (j : ℕ) (x : CoreGrowingShiftSignedActiveCell) : ℝ :=
  mertensTwoPointPrefix
      (harmonicShiftLower j x.1 + x.2) (x.1 + 1) *
    coreGrowingShiftFirstDifferenceWeight j x.1 x.2

/-- Complete source-cell sum before the coordinate change. -/
def coreGrowingShiftSignedActiveCellEnergy
    (j : ℕ) : ℝ :=
  ∑ x ∈ coreGrowingShiftSignedActiveCells j,
    coreGrowingShiftSignedActiveCellValue j x

/-- Weight on the signed staircase written by recovering the unique source
cell. -/
def coreGrowingShiftSignedStaircaseInheritedWeight
    (j N h : ℕ) : ℝ :=
  coreGrowingShiftFirstDifferenceWeight j (N - 1)
    (h - coreGrowingShiftSignedStaircaseLower j N)

/-- Signed staircase cell with the inherited source weight. -/
def coreGrowingShiftSignedStaircaseInheritedCell
    (j N h : ℕ) : ℝ :=
  mertensTwoPointPrefix h N *
    coreGrowingShiftSignedStaircaseInheritedWeight j N h

/-- Signed staircase sum before exposing the reciprocal coefficient in closed
form. -/
def coreGrowingShiftSignedStaircaseInheritedPacket
    (j : ℕ) : ℝ :=
  ∑ y ∈ coreGrowingShiftSignedStaircaseIndices j,
    coreGrowingShiftSignedStaircaseInheritedCell j y.1 y.2

/-- One source-cell value is exactly the inherited staircase value at its
image. -/
theorem coreGrowingShiftSignedActiveCellValue_eq_inherited
    (j : ℕ) (x : CoreGrowingShiftSignedActiveCell) :
    coreGrowingShiftSignedActiveCellValue j x =
      coreGrowingShiftSignedStaircaseInheritedCell j
        (coreGrowingShiftSignedActiveCellToStaircase j x).1
        (coreGrowingShiftSignedActiveCellToStaircase j x).2 := by
  rcases x with ⟨t, k⟩
  have ht : t + 1 - 1 = t := by omega
  have hlower := harmonicShiftLower_eq_signedStaircaseLower j t
  have hk :
      harmonicShiftLower j t + k -
          coreGrowingShiftSignedStaircaseLower j (t + 1) = k := by
    rw [← hlower]
    omega
  unfold coreGrowingShiftSignedActiveCellValue
    coreGrowingShiftSignedStaircaseInheritedCell
    coreGrowingShiftSignedStaircaseInheritedWeight
    coreGrowingShiftSignedActiveCellToStaircase
  simp only
  rw [ht, hk]

/-- The inherited weighted-prefix packet is literally the active-cell sum. -/
theorem coreGrowingShiftWeightedPrefixPacket_eq_activeCells
    (j : ℕ) :
    coreGrowingShiftWeightedPrefixPacket j =
      coreGrowingShiftSignedActiveCellEnergy j := by
  simp [coreGrowingShiftWeightedPrefixPacket,
    coreGrowingShiftWeightedPrefixDepth,
    coreGrowingShiftSignedActiveCellEnergy,
    coreGrowingShiftSignedActiveCells,
    coreGrowingShiftSignedActiveCellValue,
    Finset.sum_sigma]

/-- Exact injective reindexing from depth/offset cells to the signed
prefix/shift staircase. -/
theorem coreGrowingShiftSignedActiveCellEnergy_eq_inheritedStaircase
    (j : ℕ) :
    coreGrowingShiftSignedActiveCellEnergy j =
      coreGrowingShiftSignedStaircaseInheritedPacket j := by
  classical
  unfold coreGrowingShiftSignedActiveCellEnergy
    coreGrowingShiftSignedStaircaseInheritedPacket
  apply Finset.sum_bij
    (fun x _hx => coreGrowingShiftSignedActiveCellToStaircase j x)
  · intro x hx
    exact coreGrowingShiftSignedActiveCellToStaircase_mem hx
  · intro x hx y hy hxy
    exact coreGrowingShiftSignedActiveCellToStaircase_injective j hxy
  · intro y hy
    obtain ⟨x, hx, hxy⟩ :=
      coreGrowingShiftSignedActiveCellToStaircase_surjective hy
    exact ⟨x, hx, hxy⟩
  · intro x hx
    exact coreGrowingShiftSignedActiveCellValue_eq_inherited j x

/-- Clamped shift coordinate: the logarithmic anchor repeats the coefficient
at `lower+H-1`, while the tail uses the literal ordinary shift. -/
def coreGrowingShiftSignedStaircaseClampedShift
    (j N h : ℕ) : ℕ :=
  max h
    (coreGrowingShiftSignedStaircaseLower j N +
      logarithmicShiftThreshold j - 1)

/-- Closed reciprocal first-difference coefficient on the signed staircase. -/
def coreGrowingShiftSignedStaircaseWeight
    (j N h : ℕ) : ℝ :=
  (((N + coreGrowingShiftSignedStaircaseClampedShift j N h : ℕ) : ℝ))⁻¹ -
    (((N + coreGrowingShiftSignedStaircaseClampedShift j N h + 1 : ℕ) : ℝ))⁻¹

/-- On the exact staircase, the inherited anchor/tail coefficient is the
first reciprocal difference at the clamped ordinary shift. -/
theorem coreGrowingShiftSignedStaircaseInheritedWeight_eq_explicit
    {j N h : ℕ}
    (hN : N ∈ coreGrowingShiftSignedStaircasePrefixSet j)
    (hh : h ∈ coreGrowingShiftSignedStaircaseShiftSet j N) :
    coreGrowingShiftSignedStaircaseInheritedWeight j N h =
      coreGrowingShiftSignedStaircaseWeight j N h := by
  have hNI := hN
  simp only [coreGrowingShiftSignedStaircasePrefixSet,
    Finset.mem_Ico] at hNI
  have hhI := hh
  simp only [coreGrowingShiftSignedStaircaseShiftSet,
    Finset.mem_Ico] at hhI
  have hNpos : 0 < N := by
    have hHpos : 0 < logarithmicShiftThreshold j := by
      unfold logarithmicShiftThreshold
      omega
    omega
  have htN : N - 1 + 1 = N := by omega
  have hlower :
      harmonicShiftLower j (N - 1) =
        coreGrowingShiftSignedStaircaseLower j N := by
    rw [harmonicShiftLower_eq_signedStaircaseLower, htN]
  have hkrestore :
      coreGrowingShiftSignedStaircaseLower j N +
          (h - coreGrowingShiftSignedStaircaseLower j N) = h := by
    omega
  have hHpos : 0 < logarithmicShiftThreshold j := by
    unfold logarithmicShiftThreshold
    omega
  unfold coreGrowingShiftSignedStaircaseInheritedWeight
    coreGrowingShiftFirstDifferenceWeight
  by_cases hkH :
      h - coreGrowingShiftSignedStaircaseLower j N <
        logarithmicShiftThreshold j
  · rw [if_pos hkH]
    have hclamp :
        coreGrowingShiftSignedStaircaseClampedShift j N h =
          coreGrowingShiftSignedStaircaseLower j N +
            logarithmicShiftThreshold j - 1 := by
      unfold coreGrowingShiftSignedStaircaseClampedShift
      apply max_eq_right
      omega
    unfold coreGrowingShiftSignedStaircaseWeight
      harmonicShiftFirstDifference harmonicShiftReciprocal
    rw [hclamp, hlower]
    have hden₀ :
        N - 1 + 1 +
            (coreGrowingShiftSignedStaircaseLower j N +
              (logarithmicShiftThreshold j - 1)) =
          N +
            (coreGrowingShiftSignedStaircaseLower j N +
              logarithmicShiftThreshold j - 1) := by omega
    have hden₁ :
        N - 1 + 1 +
            (coreGrowingShiftSignedStaircaseLower j N +
              ((logarithmicShiftThreshold j - 1) + 1)) =
          N +
            (coreGrowingShiftSignedStaircaseLower j N +
              logarithmicShiftThreshold j - 1) + 1 := by omega
    rw [hden₀, hden₁]
  · rw [if_neg hkH]
    have hkge :
        logarithmicShiftThreshold j ≤
          h - coreGrowingShiftSignedStaircaseLower j N :=
      Nat.le_of_not_gt hkH
    have hclamp :
        coreGrowingShiftSignedStaircaseClampedShift j N h = h := by
      unfold coreGrowingShiftSignedStaircaseClampedShift
      apply max_eq_left
      omega
    unfold coreGrowingShiftSignedStaircaseWeight
      harmonicShiftFirstDifference harmonicShiftReciprocal
    rw [hclamp, hlower]
    have hden₀ :
        N - 1 + 1 +
            (coreGrowingShiftSignedStaircaseLower j N +
              (h - coreGrowingShiftSignedStaircaseLower j N)) =
          N + h := by omega
    have hden₁ :
        N - 1 + 1 +
            (coreGrowingShiftSignedStaircaseLower j N +
              ((h - coreGrowingShiftSignedStaircaseLower j N) + 1)) =
          N + h + 1 := by omega
    rw [hden₀, hden₁]

/-- Canonical signed cell in explicit staircase coordinates. -/
def coreGrowingShiftSignedStaircaseCell
    (j N h : ℕ) : ℝ :=
  mertensTwoPointPrefix h N *
    coreGrowingShiftSignedStaircaseWeight j N h

/-- Canonical signed pre-Cauchy staircase observable.  All cross-shift and
cross-prefix signs remain inside the finite sum. -/
def coreGrowingShiftSignedStaircasePacket
    (j : ℕ) : ℝ :=
  ∑ y ∈ coreGrowingShiftSignedStaircaseIndices j,
    coreGrowingShiftSignedStaircaseCell j y.1 y.2

/-- Exposing the clamped reciprocal coefficient changes no arithmetic data. -/
theorem coreGrowingShiftSignedStaircaseInheritedPacket_eq_explicit
    (j : ℕ) :
    coreGrowingShiftSignedStaircaseInheritedPacket j =
      coreGrowingShiftSignedStaircasePacket j := by
  unfold coreGrowingShiftSignedStaircaseInheritedPacket
    coreGrowingShiftSignedStaircasePacket
    coreGrowingShiftSignedStaircaseInheritedCell
    coreGrowingShiftSignedStaircaseCell
  apply Finset.sum_congr rfl
  intro y hy
  rcases y with ⟨N, h⟩
  simp only [coreGrowingShiftSignedStaircaseIndices,
    Finset.mem_sigma] at hy
  rw [coreGrowingShiftSignedStaircaseInheritedWeight_eq_explicit
    hy.1 hy.2]

/-- Exact packet-level return to the signed pre-Cauchy staircase. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_signedStaircase
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedStaircasePacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_weightedPrefix,
    coreGrowingShiftWeightedPrefixPacket_eq_activeCells,
    coreGrowingShiftSignedActiveCellEnergy_eq_inheritedStaircase,
    coreGrowingShiftSignedStaircaseInheritedPacket_eq_explicit]

/-- Source-facing condition on the exact signed staircase.  The outer factor
two is retained so the normalization is literally the RH-facing packet. -/
def SubpolynomialCoreGrowingShiftSignedStaircasePacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedStaircasePacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the canonical signed growing-shift supplier. -/
theorem subpolynomialCoreGrowingShiftSignedStaircasePacket_iff_firstDifference :
    SubpolynomialCoreGrowingShiftSignedStaircasePacket ↔
      SubpolynomialCoreGrowingShiftFirstDifferencePacket := by
  constructor
  · intro hStair δ hδ
    obtain ⟨C, hC, hbound⟩ := hStair δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_signedStaircase]
    exact hbound j
  · intro hPacket δ hδ
    obtain ⟨C, hC, hbound⟩ := hPacket δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftFirstDifferencePacket_eq_two_mul_signedStaircase]
    exact hbound j

/-- Conditional RH endpoint stated on the exact signed staircase. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedStaircasePacket
    (hStair : SubpolynomialCoreGrowingShiftSignedStaircasePacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftFirstDifferencePacket
    (subpolynomialCoreGrowingShiftSignedStaircasePacket_iff_firstDifference.mp
      hStair)

/-- Source profile for a theorem already stated on the exact signed
prefix/shift staircase. -/
structure SignedGrowingShiftStaircaseSource where
  sourceStatement : Prop
  exactStaircaseSupport : Prop
  clampedReciprocalWeightControl : Prop
  signedBilinearControl : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftSignedStaircasePacket
    (d : SignedGrowingShiftStaircaseSource) : Type where
  toStaircase :
    d.sourceStatement →
      d.exactStaircaseSupport →
      d.clampedReciprocalWeightControl →
      d.signedBilinearControl →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedStaircasePacket

/-- Fourier or dispersion profile.  The transform must preserve the exact
staircase, the low-anchor clamp, and the signed all-scale normalization. -/
structure SignedGrowingShiftStaircaseDispersionSource where
  sourceStatement : Prop
  exactFiniteTransform : Prop
  staircaseSupportPreservation : Prop
  clampedWeightPreservation : Prop
  crossShiftCancellation : Prop
  crossPrefixCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftSignedStaircasePacketFromDispersion
    (d : SignedGrowingShiftStaircaseDispersionSource) : Type where
  toStaircase :
    d.sourceStatement →
      d.exactFiniteTransform →
      d.staircaseSupportPreservation →
      d.clampedWeightPreservation →
      d.crossShiftCancellation →
      d.crossPrefixCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedStaircasePacket

/-- Finite hostile witness: the signed staircase may cancel exactly while its
termwise absolute mass is positive. -/
theorem signedGrowingShiftStaircaseCancellation_hostileWitness :
    ((1 : ℝ) + (-1 : ℝ)) = 0 ∧
      |(1 : ℝ)| + |(-1 : ℝ)| = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedActiveCellToStaircase_mem
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedActiveCellEnergy_eq_inheritedStaircase
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedStaircaseInheritedWeight_eq_explicit
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftFirstDifferencePacket_eq_two_mul_signedStaircase
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedStaircasePacket
