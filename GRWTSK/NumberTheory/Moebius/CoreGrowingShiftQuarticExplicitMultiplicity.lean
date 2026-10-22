/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #755. Parent: draft PR #748 at
`36cefe6a0e531c6220f6bf4b6061aff84ab5d57a`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticMultiplicityBox

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact depth support of one affine box coordinate before eliminating the
active-shift offset. -/
def coreGrowingShiftQuarticDepthSupport
    (j h d a : ℕ) : Finset ℕ :=
  (coreLongDeepDepths j).filter fun t =>
    (harmonicShiftLower j t ≤ h ∧
      h < harmonicShiftUpper j t) ∧
    (d ∈ mertensTwoPointQuarticParallelogramSeparationSet h (t + 1) ∧
      a < t + 1 - d)

/-- Lower endpoint of the explicit depth interval producing one affine box
coordinate. -/
def coreGrowingShiftQuarticExplicitDepthLower
    (j h d a : ℕ) : ℕ :=
  max (logarithmicShiftThreshold j)
    (max (a + d) (2 ^ j - h - 1))

/-- Exclusive upper endpoint of the explicit depth interval. -/
def coreGrowingShiftQuarticExplicitDepthUpper
    (j h : ℕ) : ℕ :=
  min
    (2 ^ (j + 1) - logarithmicShiftThreshold j - 1)
    (2 ^ (j + 1) - h - 1)

/-- Explicit finite depth support.  The excluded faces `h=0`, `d=0`, and
`d=h` have empty support. -/
def coreGrowingShiftQuarticExplicitDepthSupport
    (j h d a : ℕ) : Finset ℕ :=
  if 0 < h ∧ 0 < d ∧ d ≠ h then
    Finset.Ico
      (coreGrowingShiftQuarticExplicitDepthLower j h d a)
      (coreGrowingShiftQuarticExplicitDepthUpper j h)
  else ∅

/-- The genuine core depths themselves form one exact interval.  The two
smallest scales are empty on both sides. -/
theorem coreLongDeepDepths_eq_exactInterval
    (j : ℕ) :
    coreLongDeepDepths j =
      Finset.Ico
        (logarithmicShiftThreshold j)
        (2 ^ (j + 1) - logarithmicShiftThreshold j - 1) := by
  by_cases hj : 2 ≤ j
  · have hHX : logarithmicShiftThreshold j ≤ 2 ^ j := by
      unfold logarithmicShiftThreshold
      exact nat_add_two_le_two_pow_of_two_le hj
    have hHY :
        logarithmicShiftThreshold j ≤ 2 ^ (j + 1) - 1 := by
      rw [Nat.pow_succ]
      omega
    have hD :
        logarithmicShallowDepthCount j =
          logarithmicShiftThreshold j := by
      unfold logarithmicShallowDepthCount
      exact min_eq_left hHY
    ext t
    simp only [coreLongDeepDepths, hD,
      Finset.mem_filter, Finset.mem_Ico]
    constructor
    · rintro ⟨⟨hHt, htY⟩, hcount⟩
      refine ⟨hHt, ?_⟩
      by_cases hleft : t + 1 < 2 ^ j
      · rw [Nat.pow_succ]
        omega
      · have hright : 2 ^ j ≤ t + 1 := Nat.le_of_not_gt hleft
        rw [harmonicShiftCount_eq_rightDistance hright] at hcount
        omega
    · rintro ⟨hHt, htU⟩
      refine ⟨⟨hHt, ?_⟩, ?_⟩
      · omega
      · by_cases hleft : t + 1 < 2 ^ j
        · rw [harmonicShiftCount_eq_leftScale hleft]
          exact hHX
        · have hright : 2 ^ j ≤ t + 1 := Nat.le_of_not_gt hleft
          rw [harmonicShiftCount_eq_rightDistance hright]
          omega
  · have hsmall : j = 0 ∨ j = 1 := by omega
    rcases hsmall with rfl | rfl <;> native_decide

/-- Positive active shifts convert the max/subtraction support condition into
one ordinary interval condition on the depth. -/
theorem harmonicShift_active_iff_depth_interval
    {j t h : ℕ}
    (hh : 0 < h) :
    (harmonicShiftLower j t ≤ h ∧
      h < harmonicShiftUpper j t) ↔
      (2 ^ j - h - 1 ≤ t ∧
        t < 2 ^ (j + 1) - h - 1) := by
  unfold harmonicShiftLower harmonicShiftUpper
  rw [max_le_iff]
  omega

/-- Positive separation and triangular base support are exactly the lower
bound `a+d≤t`, together with exclusion of the repeated-middle diagonal. -/
theorem parallelogramSeparation_base_iff_depth_lower
    {h d a t : ℕ} :
    (d ∈ mertensTwoPointQuarticParallelogramSeparationSet h (t + 1) ∧
      a < t + 1 - d) ↔
      (0 < d ∧ d ≠ h ∧ a + d ≤ t) := by
  unfold mertensTwoPointQuarticParallelogramSeparationSet
  simp only [Finset.mem_filter, Finset.mem_Ico]
  omega

/-- The exact active depth support is one explicit interval. -/
theorem coreGrowingShiftQuarticDepthSupport_eq_explicit
    (j h d a : ℕ) :
    coreGrowingShiftQuarticDepthSupport j h d a =
      coreGrowingShiftQuarticExplicitDepthSupport j h d a := by
  classical
  by_cases hgood : 0 < h ∧ 0 < d ∧ d ≠ h
  · rcases hgood with ⟨hh, hd, hne⟩
    rw [coreGrowingShiftQuarticExplicitDepthSupport,
      if_pos ⟨hh, hd, hne⟩]
    ext t
    simp only [coreGrowingShiftQuarticDepthSupport,
      coreLongDeepDepths_eq_exactInterval,
      Finset.mem_filter, Finset.mem_Ico]
    rw [harmonicShift_active_iff_depth_interval hh,
      parallelogramSeparation_base_iff_depth_lower]
    unfold coreGrowingShiftQuarticExplicitDepthLower
      coreGrowingShiftQuarticExplicitDepthUpper
    simp only [Finset.mem_Ico, max_le_iff, lt_min_iff]
    omega
  · rw [coreGrowingShiftQuarticExplicitDepthSupport,
      if_neg hgood]
    ext t
    simp only [Finset.not_mem_empty, iff_false]
    intro ht
    simp only [coreGrowingShiftQuarticDepthSupport,
      Finset.mem_filter] at ht
    rcases ht with ⟨_htcore, hactive, hsep⟩
    rcases hactive with ⟨hlow, _hupp⟩
    have hL : 1 ≤ harmonicShiftLower j t := by
      unfold harmonicShiftLower
      exact le_max_left _ _
    have hh : 0 < h := by omega
    have hdinfo :=
      parallelogramSeparation_base_iff_depth_lower.mp hsep
    exact hgood ⟨hh, hdinfo.1, hdinfo.2.1⟩

/-- Projection from a literal source fiber to depth is a bijection onto the
exact depth support; the active shift equation determines the offset `k`. -/
theorem coreGrowingShiftQuarticDepthMultiplicity_eq_supportCard
    (j h d a : ℕ) :
    coreGrowingShiftQuarticDepthMultiplicity j (h, d, a) =
      (coreGrowingShiftQuarticDepthSupport j h d a).card := by
  classical
  unfold coreGrowingShiftQuarticDepthMultiplicity
  apply Finset.card_bij (fun x _hx => x.1)
  · intro x hx
    have hactive := (Finset.mem_filter.mp hx).1
    have hbox := (Finset.mem_filter.mp hx).2
    rcases x with ⟨t, ⟨k, ⟨d0, a0⟩⟩⟩
    simp only [coreGrowingShiftQuarticActiveCells,
      Finset.mem_sigma] at hactive
    rcases hactive with ⟨ht, hk, hdmem, hamem⟩
    simp only [coreGrowingShiftQuarticActiveCellBoxIndex,
      Prod.mk.injEq] at hbox
    rcases hbox with ⟨hh, hdeq, haeq⟩
    subst d0
    subst a0
    have hkN : k < harmonicShiftCount j t :=
      Finset.mem_range.mp hk
    have hrange :
        harmonicShiftLower j t ≤ h ∧
          h < harmonicShiftUpper j t := by
      unfold harmonicShiftCount at hkN
      omega
    rw [hh] at hdmem
    apply Finset.mem_filter.mpr
    exact ⟨ht, hrange, hdmem, Finset.mem_range.mp hamem⟩
  · intro x hx y hy hdepth
    have hxq := (Finset.mem_filter.mp hx).2
    have hyq := (Finset.mem_filter.mp hy).2
    rcases x with ⟨tx, ⟨kx, ⟨dx, ax⟩⟩⟩
    rcases y with ⟨ty, ⟨ky, ⟨dy, ay⟩⟩⟩
    change tx = ty at hdepth
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
  · intro t ht
    simp only [coreGrowingShiftQuarticDepthSupport,
      Finset.mem_filter] at ht
    rcases ht with ⟨htcore, hrange, hsep⟩
    rcases hrange with ⟨hlow, hupp⟩
    rcases hsep with ⟨hdmem, ha⟩
    let k : ℕ := h - harmonicShiftLower j t
    have hkEq : harmonicShiftLower j t + k = h := by
      dsimp [k]
      omega
    have hkCount : k < harmonicShiftCount j t := by
      unfold harmonicShiftCount
      dsimp [k]
      omega
    let x : CoreGrowingShiftQuarticActiveCell :=
      ⟨t, ⟨k, ⟨d, a⟩⟩⟩
    refine ⟨x, ?_, ?_⟩
    · apply Finset.mem_filter.mpr
      constructor
      · simp only [coreGrowingShiftQuarticActiveCells,
          Finset.mem_sigma]
        refine ⟨htcore, Finset.mem_range.mpr hkCount, ?_, ?_⟩
        · rw [hkEq]
          exact hdmem
        · exact Finset.mem_range.mpr ha
      · change (harmonicShiftLower j t + k, d, a) = (h, d, a)
        rw [hkEq]
    · rfl

/-- Literal piecewise interval-length formula for the depth multiplicity. -/
def coreGrowingShiftQuarticExplicitDepthMultiplicity
    (j h d a : ℕ) : ℕ :=
  if 0 < h ∧ 0 < d ∧ d ≠ h then
    coreGrowingShiftQuarticExplicitDepthUpper j h -
      coreGrowingShiftQuarticExplicitDepthLower j h d a
  else 0

/-- The fiber-cardinality multiplicity from #746 is exactly the explicit
piecewise interval length. -/
theorem coreGrowingShiftQuarticDepthMultiplicity_eq_explicit
    (j h d a : ℕ) :
    coreGrowingShiftQuarticDepthMultiplicity j (h, d, a) =
      coreGrowingShiftQuarticExplicitDepthMultiplicity j h d a := by
  rw [coreGrowingShiftQuarticDepthMultiplicity_eq_supportCard,
    coreGrowingShiftQuarticDepthSupport_eq_explicit]
  unfold coreGrowingShiftQuarticExplicitDepthSupport
    coreGrowingShiftQuarticExplicitDepthMultiplicity
  by_cases hgood : 0 < h ∧ 0 < d ∧ d ≠ h
  · simp [hgood]
  · simp [hgood]

/-- Zero shift carries no active multiplicity. -/
theorem coreGrowingShiftQuarticDepthMultiplicity_shift_zero
    (j d a : ℕ) :
    coreGrowingShiftQuarticDepthMultiplicity j (0, d, a) = 0 := by
  rw [coreGrowingShiftQuarticDepthMultiplicity_eq_explicit]
  simp [coreGrowingShiftQuarticExplicitDepthMultiplicity]

/-- Zero separation carries no active multiplicity. -/
theorem coreGrowingShiftQuarticDepthMultiplicity_separation_zero
    (j h a : ℕ) :
    coreGrowingShiftQuarticDepthMultiplicity j (h, 0, a) = 0 := by
  rw [coreGrowingShiftQuarticDepthMultiplicity_eq_explicit]
  simp [coreGrowingShiftQuarticExplicitDepthMultiplicity]

/-- The repeated-middle diagonal is absent from the collision-free box. -/
theorem coreGrowingShiftQuarticDepthMultiplicity_collisionDiagonal
    (j h a : ℕ) :
    coreGrowingShiftQuarticDepthMultiplicity j (h, h, a) = 0 := by
  rw [coreGrowingShiftQuarticDepthMultiplicity_eq_explicit]
  simp [coreGrowingShiftQuarticExplicitDepthMultiplicity]

/-- The interval multiplicity vanishes once its lower endpoint reaches its
exclusive upper endpoint. -/
theorem coreGrowingShiftQuarticExplicitDepthMultiplicity_eq_zero_of_upper_le_lower
    {j h d a : ℕ}
    (hUL :
      coreGrowingShiftQuarticExplicitDepthUpper j h ≤
        coreGrowingShiftQuarticExplicitDepthLower j h d a) :
    coreGrowingShiftQuarticExplicitDepthMultiplicity j h d a = 0 := by
  unfold coreGrowingShiftQuarticExplicitDepthMultiplicity
  split_ifs
  · exact Nat.sub_eq_zero_of_le hUL
  · rfl

/-- The fixed dyadic box with the explicit interval-length weight. -/
def coreGrowingShiftQuarticExplicitIntervalWeightedBoxEnergy
    (j : ℕ) : ℝ :=
  ∑ q ∈ coreGrowingShiftQuarticDyadicBox j,
    (coreGrowingShiftQuarticExplicitDepthMultiplicity
      j q.1 q.2.1 q.2.2 : ℝ) *
      mertensTwoPointQuarticParallelogramCell q.1 q.2.1 q.2.2

/-- Replacing the literal fiber cardinality by its exact interval-length
formula introduces no analytic loss. -/
theorem coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy_eq_explicitInterval
    (j : ℕ) :
    coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy j =
      coreGrowingShiftQuarticExplicitIntervalWeightedBoxEnergy j := by
  unfold coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy
    coreGrowingShiftQuarticExplicitIntervalWeightedBoxEnergy
  apply Finset.sum_congr rfl
  intro q _hq
  rw [coreGrowingShiftQuarticDepthMultiplicity_eq_explicit]

/-- Source-facing all-scale budget with the now-explicit interval weight. -/
def SubpolynomialCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudget :
    Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftQuarticExplicitIntervalWeightedBoxEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2

/-- Exact equivalence with the multiplicity-weighted source from #746. -/
theorem subpolynomialCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudget_iff_multiplicityBox :
    SubpolynomialCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudget ↔
      SubpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget := by
  constructor
  · intro hExplicit δ hδ
    obtain ⟨C, hC, hbound⟩ := hExplicit δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy_eq_explicitInterval]
    exact hbound j
  · intro hBox δ hδ
    obtain ⟨C, hC, hbound⟩ := hBox δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy_eq_explicitInterval]
    exact hbound j

/-- Centered squarefree collision control and the exact interval-weighted box
retain the conditional endpoint. -/
theorem riemannHypothesis_of_centeredCollision_and_explicitIntervalBox
    (hCentered :
      SubpolynomialCoreGrowingShiftQuarticCenteredSquarefreeCollisionLineCompensation)
    (hExplicit :
      SubpolynomialCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudget) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_centeredCollision_and_multiplicityBox
    hCentered
    (subpolynomialCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudget_iff_multiplicityBox.mp
      hExplicit)

/-- Source profile for a theorem already stated with the exact interval
multiplicity. -/
structure ExplicitIntervalWeightedParallelogramSource where
  sourceStatement : Prop
  intervalEndpointControl : Prop
  signedCellControl : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudget
    (d : ExplicitIntervalWeightedParallelogramSource) : Type where
  toExplicitBox :
    d.sourceStatement →
      d.intervalEndpointControl →
      d.signedCellControl →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudget

/-- Full-box `U^2` or Fourier source with the exact interval-weighted
localization retained as a separate theorem obligation. -/
structure FullBoxU2ExplicitIntervalLocalizationSource where
  sourceStatement : Prop
  fullBoxU2Control : Prop
  explicitIntervalWeightLocalization : Prop
  zeroShiftExcision : Prop
  zeroSeparationExcision : Prop
  repeatedMiddleExcision : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudgetFromU2
    (d : FullBoxU2ExplicitIntervalLocalizationSource) : Type where
  toExplicitBox :
    d.sourceStatement →
      d.fullBoxU2Control →
      d.explicitIntervalWeightLocalization →
      d.zeroShiftExcision →
      d.zeroSeparationExcision →
      d.repeatedMiddleExcision →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudget

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreLongDeepDepths_eq_exactInterval
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticDepthMultiplicity_eq_supportCard
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticDepthMultiplicity_eq_explicit
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy_eq_explicitInterval
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_centeredCollision_and_explicitIntervalBox
