/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #771. Parent: draft PR #769 at
`01e0f2bca0f7d3ba1b1a83de68b1c8e67cd7a0cb`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticEndpointPrefix
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- One endpoint-prefix occurrence before equal shift/endpoint pairs are
grouped.  The coordinates are depth, active shift offset, and endpoint. -/
abbrev CoreGrowingShiftQuarticEndpointActiveCell :=
  Σ t : ℕ, Σ k : ℕ, ℕ

/-- One point of the fixed dyadic endpoint box, ordered as shift and endpoint. -/
abbrev CoreGrowingShiftQuarticEndpointBoxIndex := ℕ × ℕ

/-- Exact finite source set underlying the signed endpoint-prefix packet. -/
def coreGrowingShiftQuarticEndpointActiveCells
    (j : ℕ) : Finset CoreGrowingShiftQuarticEndpointActiveCell :=
  (coreLongDeepDepths j).sigma fun t =>
    (Finset.range (harmonicShiftCount j t)).sigma fun _k =>
      Finset.range (t + 1)

/-- The shift/endpoint pair carried by one active source occurrence. -/
def coreGrowingShiftQuarticEndpointActiveCellBoxIndex
    (j : ℕ) (x : CoreGrowingShiftQuarticEndpointActiveCell) :
    CoreGrowingShiftQuarticEndpointBoxIndex :=
  (harmonicShiftLower j x.1 + x.2.1, x.2.2)

/-- Signed value of one active endpoint-prefix occurrence. -/
def coreGrowingShiftQuarticEndpointActiveCellValue
    (j : ℕ) (x : CoreGrowingShiftQuarticEndpointActiveCell) : ℝ :=
  mertensTwoPointPrefix
      (harmonicShiftLower j x.1 + x.2.1) x.2.2 *
    mertensTwoPointQuarticEndpointPair
      (harmonicShiftLower j x.1 + x.2.1) x.2.2

/-- Fixed ambient dyadic box containing every active shift/endpoint pair. -/
def coreGrowingShiftQuarticEndpointDyadicBox
    (j : ℕ) : Finset CoreGrowingShiftQuarticEndpointBoxIndex :=
  (Finset.range (2 ^ (j + 1))).product
    (Finset.range (2 ^ (j + 1)))

/-- Literal number of depths producing one active shift/endpoint pair. -/
def coreGrowingShiftQuarticEndpointDepthMultiplicity
    (j : ℕ) (q : CoreGrowingShiftQuarticEndpointBoxIndex) : ℕ :=
  ((coreGrowingShiftQuarticEndpointActiveCells j).filter
    (fun x =>
      coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x = q)).card

/-- The signed endpoint-prefix packet written over its dependent source set. -/
def coreGrowingShiftQuarticEndpointActiveCellEnergy
    (j : ℕ) : ℝ :=
  ∑ x ∈ coreGrowingShiftQuarticEndpointActiveCells j,
    coreGrowingShiftQuarticEndpointActiveCellValue j x

/-- Literal multiplicity-weighted dyadic endpoint box. -/
def coreGrowingShiftQuarticEndpointMultiplicityWeightedBoxEnergy
    (j : ℕ) : ℝ :=
  ∑ q ∈ coreGrowingShiftQuarticEndpointDyadicBox j,
    (coreGrowingShiftQuarticEndpointDepthMultiplicity j q : ℝ) *
      (mertensTwoPointPrefix q.1 q.2 *
        mertensTwoPointQuarticEndpointPair q.1 q.2)

/-- Every active endpoint-prefix occurrence maps into the fixed dyadic box. -/
theorem coreGrowingShiftQuarticEndpointActiveCellBoxIndex_mem
    {j : ℕ} {x : CoreGrowingShiftQuarticEndpointActiveCell}
    (hx : x ∈ coreGrowingShiftQuarticEndpointActiveCells j) :
    coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x ∈
      coreGrowingShiftQuarticEndpointDyadicBox j := by
  rcases x with ⟨t, ⟨k, b⟩⟩
  simp only [coreGrowingShiftQuarticEndpointActiveCells,
    Finset.mem_sigma] at hx
  rcases hx with ⟨ht, hk, hb⟩
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
  have hbY : b < 2 ^ (j + 1) := by
    have hbT : b < t + 1 := Finset.mem_range.mp hb
    omega
  simp [coreGrowingShiftQuarticEndpointActiveCellBoxIndex,
    coreGrowingShiftQuarticEndpointDyadicBox, hhY, hbY]

/-- The inherited nested endpoint-prefix packet is literally the active-cell
source sum. -/
theorem coreGrowingShiftQuarticEndpointPrefixEnergy_eq_activeCells
    (j : ℕ) :
    coreGrowingShiftQuarticEndpointPrefixEnergy j =
      coreGrowingShiftQuarticEndpointActiveCellEnergy j := by
  simp [coreGrowingShiftQuarticEndpointPrefixEnergy,
    mertensTwoPointQuarticEndpointPrefix,
    coreGrowingShiftQuarticEndpointActiveCellEnergy,
    coreGrowingShiftQuarticEndpointActiveCells,
    coreGrowingShiftQuarticEndpointActiveCellValue,
    Finset.sum_sigma]

/-- On one affine fiber, the signed endpoint-prefix value is constant. -/
theorem coreGrowingShiftQuarticEndpointActiveCellValue_eq_boxValue
    {j : ℕ} {q : CoreGrowingShiftQuarticEndpointBoxIndex}
    {x : CoreGrowingShiftQuarticEndpointActiveCell}
    (hx :
      coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x = q) :
    coreGrowingShiftQuarticEndpointActiveCellValue j x =
      mertensTwoPointPrefix q.1 q.2 *
        mertensTwoPointQuarticEndpointPair q.1 q.2 := by
  unfold coreGrowingShiftQuarticEndpointActiveCellValue
    coreGrowingShiftQuarticEndpointActiveCellBoxIndex at hx ⊢
  rw [← hx]

/-- Exact finite histogram identity grouping equal shift/endpoint pairs with
their literal depth multiplicity. -/
theorem coreGrowingShiftQuarticEndpointActiveCellEnergy_eq_multiplicityBox
    (j : ℕ) :
    coreGrowingShiftQuarticEndpointActiveCellEnergy j =
      coreGrowingShiftQuarticEndpointMultiplicityWeightedBoxEnergy j := by
  classical
  have hmaps :
      ∀ x ∈ coreGrowingShiftQuarticEndpointActiveCells j,
        coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x ∈
          coreGrowingShiftQuarticEndpointDyadicBox j := by
    intro x hx
    exact coreGrowingShiftQuarticEndpointActiveCellBoxIndex_mem hx
  calc
    coreGrowingShiftQuarticEndpointActiveCellEnergy j =
      ∑ q ∈ coreGrowingShiftQuarticEndpointDyadicBox j,
        ∑ x ∈ (coreGrowingShiftQuarticEndpointActiveCells j).filter
            (fun x =>
              coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x = q),
          coreGrowingShiftQuarticEndpointActiveCellValue j x := by
      unfold coreGrowingShiftQuarticEndpointActiveCellEnergy
      exact (Finset.sum_fiberwise_of_maps_to hmaps
        (fun x =>
          coreGrowingShiftQuarticEndpointActiveCellValue j x)).symm
    _ = ∑ q ∈ coreGrowingShiftQuarticEndpointDyadicBox j,
        (coreGrowingShiftQuarticEndpointDepthMultiplicity j q : ℝ) *
          (mertensTwoPointPrefix q.1 q.2 *
            mertensTwoPointQuarticEndpointPair q.1 q.2) := by
      apply Finset.sum_congr rfl
      intro q _hq
      calc
        (∑ x ∈ (coreGrowingShiftQuarticEndpointActiveCells j).filter
            (fun x =>
              coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x = q),
          coreGrowingShiftQuarticEndpointActiveCellValue j x) =
          ∑ _x ∈ (coreGrowingShiftQuarticEndpointActiveCells j).filter
              (fun x =>
                coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x = q),
            (mertensTwoPointPrefix q.1 q.2 *
              mertensTwoPointQuarticEndpointPair q.1 q.2) := by
          apply Finset.sum_congr rfl
          intro x hx
          exact
            coreGrowingShiftQuarticEndpointActiveCellValue_eq_boxValue
              (Finset.mem_filter.mp hx).2
        _ = (coreGrowingShiftQuarticEndpointDepthMultiplicity j q : ℝ) *
            (mertensTwoPointPrefix q.1 q.2 *
              mertensTwoPointQuarticEndpointPair q.1 q.2) := by
          simp [coreGrowingShiftQuarticEndpointDepthMultiplicity]
    _ = coreGrowingShiftQuarticEndpointMultiplicityWeightedBoxEnergy j := by
      rfl

/-- Exact endpoint-prefix/multiplicity-box identity. -/
theorem coreGrowingShiftQuarticEndpointPrefixEnergy_eq_multiplicityBox
    (j : ℕ) :
    coreGrowingShiftQuarticEndpointPrefixEnergy j =
      coreGrowingShiftQuarticEndpointMultiplicityWeightedBoxEnergy j := by
  rw [coreGrowingShiftQuarticEndpointPrefixEnergy_eq_activeCells,
    coreGrowingShiftQuarticEndpointActiveCellEnergy_eq_multiplicityBox]

/-- Exact depth support of one shift/endpoint pair before eliminating the
active shift offset. -/
def coreGrowingShiftQuarticEndpointDepthSupport
    (j h b : ℕ) : Finset ℕ :=
  (coreLongDeepDepths j).filter fun t =>
    (harmonicShiftLower j t ≤ h ∧
      h < harmonicShiftUpper j t) ∧
    b < t + 1

/-- Lower endpoint of the explicit depth interval producing `(h,b)`. -/
def coreGrowingShiftQuarticEndpointExplicitDepthLower
    (j h b : ℕ) : ℕ :=
  max (logarithmicShiftThreshold j)
    (max b (2 ^ j - h - 1))

/-- Exclusive upper endpoint of the explicit endpoint-depth interval. -/
def coreGrowingShiftQuarticEndpointExplicitDepthUpper
    (j h : ℕ) : ℕ :=
  min
    (2 ^ (j + 1) - logarithmicShiftThreshold j - 1)
    (2 ^ (j + 1) - h - 1)

/-- Explicit endpoint-depth support; zero shift is outside the active family. -/
def coreGrowingShiftQuarticEndpointExplicitDepthSupport
    (j h b : ℕ) : Finset ℕ :=
  if 0 < h then
    Finset.Ico
      (coreGrowingShiftQuarticEndpointExplicitDepthLower j h b)
      (coreGrowingShiftQuarticEndpointExplicitDepthUpper j h)
  else ∅

/-- The active support of one shift/endpoint pair is one explicit interval. -/
theorem coreGrowingShiftQuarticEndpointDepthSupport_eq_explicit
    (j h b : ℕ) :
    coreGrowingShiftQuarticEndpointDepthSupport j h b =
      coreGrowingShiftQuarticEndpointExplicitDepthSupport j h b := by
  classical
  by_cases hh : 0 < h
  · rw [coreGrowingShiftQuarticEndpointExplicitDepthSupport,
      if_pos hh]
    ext t
    simp only [coreGrowingShiftQuarticEndpointDepthSupport,
      coreLongDeepDepths_eq_exactInterval,
      Finset.mem_filter, Finset.mem_Ico]
    rw [harmonicShift_active_iff_depth_interval hh]
    unfold coreGrowingShiftQuarticEndpointExplicitDepthLower
      coreGrowingShiftQuarticEndpointExplicitDepthUpper
    simp only [Finset.mem_Ico, max_le_iff, lt_min_iff]
    omega
  · rw [coreGrowingShiftQuarticEndpointExplicitDepthSupport,
      if_neg hh]
    ext t
    simp only [Finset.not_mem_empty, iff_false]
    intro ht
    simp only [coreGrowingShiftQuarticEndpointDepthSupport,
      Finset.mem_filter] at ht
    have hL : 1 ≤ harmonicShiftLower j t := by
      unfold harmonicShiftLower
      exact le_max_left _ _
    omega

/-- Projection from a literal endpoint source fiber to depth is a bijection
onto the exact depth support; the active shift equation determines `k`. -/
theorem coreGrowingShiftQuarticEndpointDepthMultiplicity_eq_supportCard
    (j h b : ℕ) :
    coreGrowingShiftQuarticEndpointDepthMultiplicity j (h, b) =
      (coreGrowingShiftQuarticEndpointDepthSupport j h b).card := by
  classical
  unfold coreGrowingShiftQuarticEndpointDepthMultiplicity
  apply Finset.card_bij (fun x _hx => x.1)
  · intro x hx
    have hactive := (Finset.mem_filter.mp hx).1
    have hbox := (Finset.mem_filter.mp hx).2
    rcases x with ⟨t, ⟨k, b0⟩⟩
    simp only [coreGrowingShiftQuarticEndpointActiveCells,
      Finset.mem_sigma] at hactive
    rcases hactive with ⟨ht, hk, hb0⟩
    simp only [coreGrowingShiftQuarticEndpointActiveCellBoxIndex,
      Prod.mk.injEq] at hbox
    rcases hbox with ⟨hheq, hbeq⟩
    subst b0
    have hkN : k < harmonicShiftCount j t :=
      Finset.mem_range.mp hk
    have hupper :
        harmonicShiftLower j t + k < harmonicShiftUpper j t := by
      unfold harmonicShiftCount at hkN
      omega
    have hrange :
        harmonicShiftLower j t ≤ h ∧
          h < harmonicShiftUpper j t := by
      constructor <;> omega
    apply Finset.mem_filter.mpr
    exact ⟨ht, hrange, Finset.mem_range.mp hb0⟩
  · intro x hx y hy hdepth
    have hxq := (Finset.mem_filter.mp hx).2
    have hyq := (Finset.mem_filter.mp hy).2
    rcases x with ⟨tx, ⟨kx, bx⟩⟩
    rcases y with ⟨ty, ⟨ky, by0⟩⟩
    change tx = ty at hdepth
    subst ty
    have hindices :
        (harmonicShiftLower j tx + kx, bx) =
          (harmonicShiftLower j tx + ky, by0) := by
      exact hxq.trans hyq.symm
    simp only [Prod.mk.injEq] at hindices
    rcases hindices with ⟨hhk, hhb⟩
    have hk : kx = ky := by omega
    subst ky
    subst by0
    rfl
  · intro t ht
    simp only [coreGrowingShiftQuarticEndpointDepthSupport,
      Finset.mem_filter] at ht
    rcases ht with ⟨htcore, hrange, hb⟩
    rcases hrange with ⟨hlow, hupp⟩
    let k : ℕ := h - harmonicShiftLower j t
    have hkEq : harmonicShiftLower j t + k = h := by
      dsimp [k]
      omega
    have hkCount : k < harmonicShiftCount j t := by
      unfold harmonicShiftCount
      dsimp [k]
      omega
    let x : CoreGrowingShiftQuarticEndpointActiveCell :=
      ⟨t, ⟨k, b⟩⟩
    refine ⟨x, ?_, ?_⟩
    · apply Finset.mem_filter.mpr
      constructor
      · simp only [coreGrowingShiftQuarticEndpointActiveCells,
          Finset.mem_sigma]
        exact ⟨htcore, Finset.mem_range.mpr hkCount,
          Finset.mem_range.mpr hb⟩
      · change (harmonicShiftLower j t + k, b) = (h, b)
        rw [hkEq]
    · rfl

/-- Literal piecewise interval-length formula for endpoint depth multiplicity. -/
def coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity
    (j h b : ℕ) : ℕ :=
  if 0 < h then
    coreGrowingShiftQuarticEndpointExplicitDepthUpper j h -
      coreGrowingShiftQuarticEndpointExplicitDepthLower j h b
  else 0

/-- The literal source-fiber multiplicity is exactly the explicit interval
length. -/
theorem coreGrowingShiftQuarticEndpointDepthMultiplicity_eq_explicit
    (j h b : ℕ) :
    coreGrowingShiftQuarticEndpointDepthMultiplicity j (h, b) =
      coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity j h b := by
  rw [coreGrowingShiftQuarticEndpointDepthMultiplicity_eq_supportCard,
    coreGrowingShiftQuarticEndpointDepthSupport_eq_explicit]
  unfold coreGrowingShiftQuarticEndpointExplicitDepthSupport
    coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity
  by_cases hh : 0 < h
  · simp [hh]
  · simp [hh]

/-- Zero shift has no active endpoint multiplicity. -/
theorem coreGrowingShiftQuarticEndpointDepthMultiplicity_shift_zero
    (j b : ℕ) :
    coreGrowingShiftQuarticEndpointDepthMultiplicity j (0, b) = 0 := by
  rw [coreGrowingShiftQuarticEndpointDepthMultiplicity_eq_explicit]
  simp [coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity]

/-- The explicit multiplicity vanishes once its lower endpoint reaches its
exclusive upper endpoint. -/
theorem coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity_eq_zero_of_upper_le_lower
    {j h b : ℕ}
    (hUL :
      coreGrowingShiftQuarticEndpointExplicitDepthUpper j h ≤
        coreGrowingShiftQuarticEndpointExplicitDepthLower j h b) :
    coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity j h b = 0 := by
  unfold coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity
  split_ifs
  · exact Nat.sub_eq_zero_of_le hUL
  · rfl

/-- Fixed dyadic endpoint box with the exact interval-length multiplicity. -/
def coreGrowingShiftQuarticEndpointExplicitIntervalWeightedBoxEnergy
    (j : ℕ) : ℝ :=
  ∑ q ∈ coreGrowingShiftQuarticEndpointDyadicBox j,
    (coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity
      j q.1 q.2 : ℝ) *
      (mertensTwoPointPrefix q.1 q.2 *
        mertensTwoPointQuarticEndpointPair q.1 q.2)

/-- Replacing literal fiber cardinality by its explicit interval formula
introduces no analytic loss. -/
theorem coreGrowingShiftQuarticEndpointMultiplicityWeightedBoxEnergy_eq_explicitInterval
    (j : ℕ) :
    coreGrowingShiftQuarticEndpointMultiplicityWeightedBoxEnergy j =
      coreGrowingShiftQuarticEndpointExplicitIntervalWeightedBoxEnergy j := by
  unfold coreGrowingShiftQuarticEndpointMultiplicityWeightedBoxEnergy
    coreGrowingShiftQuarticEndpointExplicitIntervalWeightedBoxEnergy
  apply Finset.sum_congr rfl
  intro q _hq
  rw [coreGrowingShiftQuarticEndpointDepthMultiplicity_eq_explicit]

/-- Exact endpoint-prefix/explicit-interval-box identity. -/
theorem coreGrowingShiftQuarticEndpointPrefixEnergy_eq_explicitIntervalBox
    (j : ℕ) :
    coreGrowingShiftQuarticEndpointPrefixEnergy j =
      coreGrowingShiftQuarticEndpointExplicitIntervalWeightedBoxEnergy j := by
  rw [coreGrowingShiftQuarticEndpointPrefixEnergy_eq_multiplicityBox,
    coreGrowingShiftQuarticEndpointMultiplicityWeightedBoxEnergy_eq_explicitInterval]

/-- Canonical compensation statement on the exact interval-weighted endpoint
box, with the positive quartic diagonal retained visibly. -/
def SubpolynomialCoreGrowingShiftQuarticEndpointExplicitIntervalCompensation :
    Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftQuarticEndpointExplicitIntervalWeightedBoxEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 -
            coreGrowingShiftQuarticDiagonalEnergy j

/-- The explicit interval-weighted endpoint source is exactly the canonical
signed endpoint-prefix compensation source. -/
theorem subpolynomialCoreGrowingShiftQuarticEndpointExplicitIntervalCompensation_iff_endpointPrefix :
    SubpolynomialCoreGrowingShiftQuarticEndpointExplicitIntervalCompensation ↔
      SubpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation := by
  constructor
  · intro hExplicit δ hδ
    obtain ⟨C, hC, hbound⟩ := hExplicit δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftQuarticEndpointPrefixEnergy_eq_explicitIntervalBox]
    exact hbound j
  · intro hEndpoint δ hδ
    obtain ⟨C, hC, hbound⟩ := hEndpoint δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftQuarticEndpointPrefixEnergy_eq_explicitIntervalBox]
    exact hbound j

/-- Conditional RH endpoint from the exact interval-weighted endpoint box. -/
theorem riemannHypothesis_of_coreGrowingShiftQuarticEndpointExplicitIntervalCompensation
    (hExplicit :
      SubpolynomialCoreGrowingShiftQuarticEndpointExplicitIntervalCompensation) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_coreGrowingShiftQuarticEndpointPrefixCompensation
    (subpolynomialCoreGrowingShiftQuarticEndpointExplicitIntervalCompensation_iff_endpointPrefix.mp
      hExplicit)

/-- Source profile for a theorem already stated on the exact signed
interval-weighted endpoint box. -/
structure EndpointExplicitIntervalWeightedBoxSource where
  sourceStatement : Prop
  intervalEndpointControl : Prop
  signedPrefixEndpointControl : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftQuarticEndpointExplicitIntervalCompensation
    (d : EndpointExplicitIntervalWeightedBoxSource) : Type where
  toExplicitEndpoint :
    d.sourceStatement →
      d.intervalEndpointControl →
      d.signedPrefixEndpointControl →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticEndpointExplicitIntervalCompensation

/-- Carleson, martingale, or summation-by-parts profile retaining the exact
interval weight and endpoint sign as separate load-bearing obligations. -/
structure EndpointExplicitIntervalCarlesonSource where
  sourceStatement : Prop
  summationByPartsIdentity : Prop
  intervalWeightCarlesonControl : Prop
  prefixEnergyControl : Prop
  endpointIncrementControl : Prop
  endpointSignPreservation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftQuarticEndpointExplicitIntervalCompensationFromCarleson
    (d : EndpointExplicitIntervalCarlesonSource) : Type where
  toExplicitEndpoint :
    d.sourceStatement →
      d.summationByPartsIdentity →
      d.intervalWeightCarlesonControl →
      d.prefixEnergyControl →
      d.endpointIncrementControl →
      d.endpointSignPreservation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticEndpointExplicitIntervalCompensation

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticEndpointPrefixEnergy_eq_multiplicityBox
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticEndpointDepthSupport_eq_explicit
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticEndpointDepthMultiplicity_eq_explicit
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticEndpointPrefixEnergy_eq_explicitIntervalBox
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_coreGrowingShiftQuarticEndpointExplicitIntervalCompensation
