/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #793. Parent: draft PR #788 at
`0a193d650cb412f7b433a0a23552dc09060e9de6`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticEndpointStieltjesEnergy

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Left endpoint of the active first-drop interval for one shift. -/
def coreGrowingShiftQuarticEndpointStaircaseLower
    (j h : ℕ) : ℕ :=
  max (logarithmicShiftThreshold j) (2 ^ j - h - 1)

/-- Exclusive right endpoint of the active first-drop interval. -/
def coreGrowingShiftQuarticEndpointStaircaseUpper
    (j h : ℕ) : ℕ :=
  min
    (2 ^ (j + 1) - logarithmicShiftThreshold j - 1)
    (2 ^ (j + 1) - h - 1)

/-- Exact endpoint support of the first-drop measure.  Zero shift is excluded
by the original active harmonic-shift range. -/
def coreGrowingShiftQuarticEndpointStaircaseSupport
    (j h : ℕ) : Finset ℕ :=
  if 0 < h then
    Finset.Ico
      (coreGrowingShiftQuarticEndpointStaircaseLower j h)
      (coreGrowingShiftQuarticEndpointStaircaseUpper j h)
  else ∅

/-- The endpoint-dependent lower bound from #771 is the maximum of the fixed
staircase lower endpoint and the endpoint coordinate. -/
theorem coreGrowingShiftQuarticEndpointExplicitDepthLower_eq_max_staircaseLower
    (j h b : ℕ) :
    coreGrowingShiftQuarticEndpointExplicitDepthLower j h b =
      max (coreGrowingShiftQuarticEndpointStaircaseLower j h) b := by
  unfold coreGrowingShiftQuarticEndpointExplicitDepthLower
    coreGrowingShiftQuarticEndpointStaircaseLower
  simp [max_assoc, max_comm, max_left_comm]

/-- Generic integer fact behind the first-drop computation.  The function
`b ↦ U - max L b` loses exactly one on `[L,U)` and is constant elsewhere. -/
private theorem cast_sub_max_succ_eq_indicator
    (L U b : ℕ) :
    (((U - max L b : ℕ) : ℝ) -
      (((U - max L (b + 1) : ℕ) : ℝ))) =
        if b ∈ Finset.Ico L U then 1 else 0 := by
  by_cases hLb : L ≤ b
  · by_cases hbU : b < U
    · have hmem : b ∈ Finset.Ico L U :=
        Finset.mem_Ico.mpr ⟨hLb, hbU⟩
      rw [if_pos hmem,
        max_eq_right hLb,
        max_eq_right (le_trans hLb (Nat.le_succ b))]
      have hNat : U - b = U - (b + 1) + 1 := by omega
      rw [hNat]
      norm_num
    · have hnot : b ∉ Finset.Ico L U := by
        simp [Finset.mem_Ico, hLb, hbU]
      have hUb : U ≤ b := Nat.le_of_not_gt hbU
      rw [if_neg hnot,
        max_eq_right hLb,
        max_eq_right (le_trans hLb (Nat.le_succ b)),
        Nat.sub_eq_zero_of_le hUb,
        Nat.sub_eq_zero_of_le (le_trans hUb (Nat.le_succ b))]
      norm_num
  · have hbL : b < L := Nat.lt_of_not_ge hLb
    have hb1L : b + 1 ≤ L := by omega
    have hnot : b ∉ Finset.Ico L U := by
      simp [Finset.mem_Ico, hLb]
    rw [if_neg hnot,
      max_eq_left (Nat.le_of_lt hbL),
      max_eq_left hb1L]
    norm_num

/-- The first drop of the exact endpoint-depth multiplicity is literally the
indicator of one integer interval.  In particular, the Stieltjes measure has
no fractional weights. -/
theorem coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_eq_indicator
    (j h b : ℕ) :
    coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop j h b =
      if b ∈ coreGrowingShiftQuarticEndpointStaircaseSupport j h then
        1
      else 0 := by
  unfold coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop
    coreGrowingShiftQuarticEndpointExplicitDepthWeight
    coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity
  by_cases hh : 0 < h
  · rw [if_pos hh, if_pos hh,
      coreGrowingShiftQuarticEndpointExplicitDepthLower_eq_max_staircaseLower,
      coreGrowingShiftQuarticEndpointExplicitDepthLower_eq_max_staircaseLower]
    simpa [coreGrowingShiftQuarticEndpointStaircaseSupport, hh,
      coreGrowingShiftQuarticEndpointStaircaseUpper] using
      cast_sub_max_succ_eq_indicator
        (coreGrowingShiftQuarticEndpointStaircaseLower j h)
        (coreGrowingShiftQuarticEndpointStaircaseUpper j h) b
  · rw [if_neg hh, if_neg hh]
    simp [coreGrowingShiftQuarticEndpointStaircaseSupport, hh]

/-- Explicit membership conditions for the active staircase. -/
theorem mem_coreGrowingShiftQuarticEndpointStaircaseSupport_iff
    {j h b : ℕ} :
    b ∈ coreGrowingShiftQuarticEndpointStaircaseSupport j h ↔
      0 < h ∧
        coreGrowingShiftQuarticEndpointStaircaseLower j h ≤ b ∧
        b < coreGrowingShiftQuarticEndpointStaircaseUpper j h := by
  by_cases hh : 0 < h
  · simp [coreGrowingShiftQuarticEndpointStaircaseSupport, hh,
      Finset.mem_Ico]
  · simp [coreGrowingShiftQuarticEndpointStaircaseSupport, hh]

/-- Every first-drop coefficient is exactly zero or one. -/
theorem coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_eq_zero_or_one
    (j h b : ℕ) :
    coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop j h b = 0 ∨
      coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop j h b = 1 := by
  rw [coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_eq_indicator]
  by_cases hb :
      b ∈ coreGrowingShiftQuarticEndpointStaircaseSupport j h
  · simp [hb]
  · simp [hb]

/-- Hence every first-drop coefficient is bounded by one. -/
theorem coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_le_one
    (j h b : ℕ) :
    coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop j h b ≤ 1 := by
  rcases
      coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_eq_zero_or_one
        j h b with hzero | hone
  · rw [hzero]
    norm_num
  · rw [hone]

/-- The staircase support lies inside the ambient right dyadic endpoint. -/
theorem coreGrowingShiftQuarticEndpointStaircaseSupport_subset_range
    (j h : ℕ) :
    coreGrowingShiftQuarticEndpointStaircaseSupport j h ⊆
      Finset.range (2 ^ (j + 1)) := by
  intro b hb
  by_cases hh : 0 < h
  · have hbI :
        coreGrowingShiftQuarticEndpointStaircaseLower j h ≤ b ∧
          b < coreGrowingShiftQuarticEndpointStaircaseUpper j h := by
      simpa [coreGrowingShiftQuarticEndpointStaircaseSupport, hh,
        Finset.mem_Ico] using hb
    have hUpper :
        coreGrowingShiftQuarticEndpointStaircaseUpper j h ≤
          2 ^ (j + 1) := by
      unfold coreGrowingShiftQuarticEndpointStaircaseUpper
      have hmin := min_le_left
        (2 ^ (j + 1) - logarithmicShiftThreshold j - 1)
        (2 ^ (j + 1) - h - 1)
      omega
    exact Finset.mem_range.mpr (lt_of_lt_of_le hbI.2 hUpper)
  · simp [coreGrowingShiftQuarticEndpointStaircaseSupport, hh] at hb

/-- Unweighted binary-prefix square energy on the exact active staircase. -/
def coreGrowingShiftQuarticEndpointStaircaseSquareEnergy
    (j : ℕ) : ℝ :=
  ∑ h ∈ Finset.range (2 ^ (j + 1)),
    ∑ b ∈ coreGrowingShiftQuarticEndpointStaircaseSupport j h,
      mertensTwoPointPrefix h (b + 1) ^ 2

/-- The positive Stieltjes square energy is exactly counting measure on the
active staircase. -/
theorem coreGrowingShiftQuarticEndpointStieltjesSquareEnergy_eq_staircase
    (j : ℕ) :
    coreGrowingShiftQuarticEndpointStieltjesSquareEnergy j =
      coreGrowingShiftQuarticEndpointStaircaseSquareEnergy j := by
  classical
  unfold coreGrowingShiftQuarticEndpointStieltjesSquareEnergy
    coreGrowingShiftQuarticEndpointStaircaseSquareEnergy
  apply Finset.sum_congr rfl
  intro h _hh
  let Y : ℕ := 2 ^ (j + 1)
  let S : Finset ℕ :=
    coreGrowingShiftQuarticEndpointStaircaseSupport j h
  have hsubset : S ⊆ Finset.range Y := by
    dsimp [S, Y]
    exact coreGrowingShiftQuarticEndpointStaircaseSupport_subset_range j h
  have hfilter :
      (Finset.range Y).filter (fun b => b ∈ S) = S := by
    ext b
    simp only [Finset.mem_filter]
    constructor
    · intro hb
      exact hb.2
    · intro hb
      exact ⟨hsubset hb, hb⟩
  change
    (∑ b ∈ Finset.range Y,
      coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop j h b *
        mertensTwoPointPrefix h (b + 1) ^ 2) =
      ∑ b ∈ S, mertensTwoPointPrefix h (b + 1) ^ 2
  rw [← hfilter, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro b _hb
  rw [coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_eq_indicator]
  change
    (if b ∈ S then 1 else 0) *
        mertensTwoPointPrefix h (b + 1) ^ 2 =
      if b ∈ S then mertensTwoPointPrefix h (b + 1) ^ 2 else 0
  by_cases hbS : b ∈ S <;> simp [hbS]

/-- The staircase square energy is the active binary-prefix square energy in
an explicit two-dimensional support coordinate. -/
theorem coreGrowingShiftBinaryPrefixSquareEnergy_eq_endpointStaircase
    (j : ℕ) :
    coreGrowingShiftBinaryPrefixSquareEnergy j =
      coreGrowingShiftQuarticEndpointStaircaseSquareEnergy j := by
  rw [coreGrowingShiftBinaryPrefixSquareEnergy_eq_endpointStieltjes,
    coreGrowingShiftQuarticEndpointStieltjesSquareEnergy_eq_staircase]

/-- Source-facing natural-scale bound on the unweighted active staircase. -/
def SubpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      coreGrowingShiftQuarticEndpointStaircaseSquareEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2

/-- Exact equivalence with the Stieltjes square-energy source. -/
theorem subpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy_iff_stieltjes :
    SubpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy ↔
      SubpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy := by
  constructor
  · intro hStair δ hδ
    obtain ⟨C, hC, hbound⟩ := hStair δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftQuarticEndpointStieltjesSquareEnergy_eq_staircase]
    exact hbound j
  · intro hStieltjes δ hδ
    obtain ⟨C, hC, hbound⟩ := hStieltjes δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftQuarticEndpointStieltjesSquareEnergy_eq_staircase]
    exact hbound j

/-- Exact equivalence with the inherited active binary-prefix square energy. -/
theorem subpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy_iff_prefixSquareEnergy :
    SubpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy ↔
      SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy :=
  subpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy_iff_stieltjes.trans
    subpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy_iff_prefixSquareEnergy

/-- Conditional RH endpoint stated on the unweighted active staircase mean
square. -/
theorem riemannHypothesis_of_coreGrowingShiftQuarticEndpointStaircaseSquareEnergy
    (hStair :
      SubpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_coreGrowingShiftQuarticEndpointStieltjesSquareEnergy
    (subpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy_iff_stieltjes.mp
      hStair)

/-- Source profile for a theorem already stated on the exact active
staircase. -/
structure EndpointStaircasePrefixSquareSource where
  sourceStatement : Prop
  exactStaircaseSupport : Prop
  prefixSquareControl : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy
    (d : EndpointStaircasePrefixSquareSource) : Type where
  toStaircase :
    d.sourceStatement →
      d.exactStaircaseSupport →
      d.prefixSquareControl →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy

/-- Profile for a larger dyadic prefix-square theorem.  Localization to the
exact staircase remains a separate load-bearing theorem. -/
structure DyadicPrefixSquareToEndpointStaircaseSource where
  sourceStatement : Prop
  dyadicPrefixSquareControl : Prop
  staircaseLocalization : Prop
  activeShiftRangeControl : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftQuarticEndpointStaircaseSquareEnergyFromDyadic
    (d : DyadicPrefixSquareToEndpointStaircaseSource) : Type where
  toStaircase :
    d.sourceStatement →
      d.dyadicPrefixSquareControl →
      d.staircaseLocalization →
      d.activeShiftRangeControl →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_eq_indicator
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticEndpointStieltjesSquareEnergy_eq_staircase
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftBinaryPrefixSquareEnergy_eq_endpointStaircase
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_coreGrowingShiftQuarticEndpointStaircaseSquareEnergy
