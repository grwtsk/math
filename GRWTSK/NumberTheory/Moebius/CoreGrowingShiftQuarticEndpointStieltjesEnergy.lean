/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #783. Parent: draft PR #778 at
`0be8520468ce1270ab96c98fd29afbd5985ad3b2`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticEndpointIntervalBox

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Real-valued form of the exact endpoint-depth multiplicity from #771. -/
def coreGrowingShiftQuarticEndpointExplicitDepthWeight
    (j h b : ℕ) : ℝ :=
  (coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity j h b : ℝ)

/-- First drop of the endpoint-depth multiplicity in the endpoint coordinate. -/
def coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop
    (j h b : ℕ) : ℝ :=
  coreGrowingShiftQuarticEndpointExplicitDepthWeight j h b -
    coreGrowingShiftQuarticEndpointExplicitDepthWeight j h (b + 1)

/-- Increasing the endpoint can only shrink the exact supported-depth
interval. -/
theorem coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity_antitone
    (j h b : ℕ) :
    coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity j h (b + 1) ≤
      coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity j h b := by
  unfold coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity
  by_cases hh : 0 < h
  · rw [if_pos hh, if_pos hh]
    apply Nat.sub_le_sub_left
    unfold coreGrowingShiftQuarticEndpointExplicitDepthLower
    apply max_le
    · exact le_max_left _ _
    · apply max_le
      · exact le_trans (Nat.le_succ b)
          (le_trans (le_max_left _ _) (le_max_right _ _))
      · exact le_trans (le_max_right _ _)
          (le_max_right _ _)
  · rw [if_neg hh, if_neg hh]

/-- The first-drop weight is nonnegative. -/
theorem coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_nonneg
    (j h b : ℕ) :
    0 ≤ coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop j h b := by
  unfold coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop
    coreGrowingShiftQuarticEndpointExplicitDepthWeight
  apply sub_nonneg.mpr
  exact_mod_cast
    coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity_antitone j h b

/-- At the right dyadic endpoint the supported-depth interval is empty. -/
theorem coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity_at_rightScale
    (j h : ℕ) :
    coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity
      j h (2 ^ (j + 1)) = 0 := by
  apply
    coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity_eq_zero_of_upper_le_lower
  have hU :
      coreGrowingShiftQuarticEndpointExplicitDepthUpper j h ≤
        2 ^ (j + 1) := by
    unfold coreGrowingShiftQuarticEndpointExplicitDepthUpper
    exact le_trans (min_le_left _ _) (Nat.sub_le _ _)
  have hL :
      2 ^ (j + 1) ≤
        coreGrowingShiftQuarticEndpointExplicitDepthLower
          j h (2 ^ (j + 1)) := by
    unfold coreGrowingShiftQuarticEndpointExplicitDepthLower
    exact le_trans (le_max_left _ _)
      (le_max_right _ _)
  exact le_trans hU hL

/-- Real endpoint weight also vanishes at the right dyadic endpoint. -/
theorem coreGrowingShiftQuarticEndpointExplicitDepthWeight_at_rightScale
    (j h : ℕ) :
    coreGrowingShiftQuarticEndpointExplicitDepthWeight
      j h (2 ^ (j + 1)) = 0 := by
  unfold coreGrowingShiftQuarticEndpointExplicitDepthWeight
  rw [coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity_at_rightScale]
  norm_num

/-- Diagonal value carried by one active endpoint source occurrence. -/
def coreGrowingShiftQuarticEndpointActiveCellDiagonalValue
    (j : ℕ) (x : CoreGrowingShiftQuarticEndpointActiveCell) : ℝ :=
  mertensTwoPointQuarticEndpointPair
    (harmonicShiftLower j x.1 + x.2.1) x.2.2 ^ 2

/-- The active quartic diagonal flattened to the endpoint source cells from
#771. -/
def coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy
    (j : ℕ) : ℝ :=
  ∑ x ∈ coreGrowingShiftQuarticEndpointActiveCells j,
    coreGrowingShiftQuarticEndpointActiveCellDiagonalValue j x

/-- Literal multiplicity-weighted diagonal on the dyadic endpoint box. -/
def coreGrowingShiftQuarticEndpointMultiplicityWeightedDiagonalBoxEnergy
    (j : ℕ) : ℝ :=
  ∑ q ∈ coreGrowingShiftQuarticEndpointDyadicBox j,
    (coreGrowingShiftQuarticEndpointDepthMultiplicity j q : ℝ) *
      mertensTwoPointQuarticEndpointPair q.1 q.2 ^ 2

/-- Explicit interval-weighted diagonal on the same endpoint box. -/
def coreGrowingShiftQuarticEndpointExplicitIntervalDiagonalEnergy
    (j : ℕ) : ℝ :=
  ∑ q ∈ coreGrowingShiftQuarticEndpointDyadicBox j,
    coreGrowingShiftQuarticEndpointExplicitDepthWeight j q.1 q.2 *
      mertensTwoPointQuarticEndpointPair q.1 q.2 ^ 2

/-- The inherited active quartic diagonal is literally the diagonal sum over
the endpoint source cells. -/
theorem coreGrowingShiftQuarticDiagonalEnergy_eq_endpointActiveCells
    (j : ℕ) :
    coreGrowingShiftQuarticDiagonalEnergy j =
      coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy j := by
  unfold coreGrowingShiftQuarticDiagonalEnergy
    coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy
    coreGrowingShiftQuarticEndpointActiveCells
  simp only [Finset.sum_sigma]
  apply Finset.sum_congr rfl
  intro t _ht
  apply Finset.sum_congr rfl
  intro k _hk
  unfold mertensTwoPointQuarticDiagonal
  apply Finset.sum_congr rfl
  intro b _hb
  rw [mertensTwoPointQuarticCell_diagonal_eq_sq]
  rfl

/-- Grouping the diagonal endpoint cells by `(h,b)` introduces their literal
depth multiplicity. -/
theorem coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy_eq_multiplicityBox
    (j : ℕ) :
    coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy j =
      coreGrowingShiftQuarticEndpointMultiplicityWeightedDiagonalBoxEnergy j := by
  classical
  have hmaps :
      ∀ x ∈ coreGrowingShiftQuarticEndpointActiveCells j,
        coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x ∈
          coreGrowingShiftQuarticEndpointDyadicBox j := by
    intro x hx
    exact coreGrowingShiftQuarticEndpointActiveCellBoxIndex_mem hx
  calc
    coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy j =
      ∑ q ∈ coreGrowingShiftQuarticEndpointDyadicBox j,
        ∑ x ∈ (coreGrowingShiftQuarticEndpointActiveCells j).filter
            (fun x =>
              coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x = q),
          coreGrowingShiftQuarticEndpointActiveCellDiagonalValue j x := by
      unfold coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy
      exact (Finset.sum_fiberwise_of_maps_to hmaps
        (fun x =>
          coreGrowingShiftQuarticEndpointActiveCellDiagonalValue j x)).symm
    _ = ∑ q ∈ coreGrowingShiftQuarticEndpointDyadicBox j,
        (coreGrowingShiftQuarticEndpointDepthMultiplicity j q : ℝ) *
          mertensTwoPointQuarticEndpointPair q.1 q.2 ^ 2 := by
      apply Finset.sum_congr rfl
      intro q _hq
      calc
        (∑ x ∈ (coreGrowingShiftQuarticEndpointActiveCells j).filter
            (fun x =>
              coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x = q),
          coreGrowingShiftQuarticEndpointActiveCellDiagonalValue j x) =
          ∑ _x ∈ (coreGrowingShiftQuarticEndpointActiveCells j).filter
              (fun x =>
                coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x = q),
            mertensTwoPointQuarticEndpointPair q.1 q.2 ^ 2 := by
          apply Finset.sum_congr rfl
          intro x hx
          unfold coreGrowingShiftQuarticEndpointActiveCellDiagonalValue
            coreGrowingShiftQuarticEndpointActiveCellBoxIndex at hx ⊢
          rw [← (Finset.mem_filter.mp hx).2]
        _ = (coreGrowingShiftQuarticEndpointDepthMultiplicity j q : ℝ) *
            mertensTwoPointQuarticEndpointPair q.1 q.2 ^ 2 := by
          simp [coreGrowingShiftQuarticEndpointDepthMultiplicity]
    _ = coreGrowingShiftQuarticEndpointMultiplicityWeightedDiagonalBoxEnergy j := by
      rfl

/-- Replacing literal diagonal multiplicity by the exact interval formula is
lossless. -/
theorem coreGrowingShiftQuarticEndpointMultiplicityWeightedDiagonalBoxEnergy_eq_explicitInterval
    (j : ℕ) :
    coreGrowingShiftQuarticEndpointMultiplicityWeightedDiagonalBoxEnergy j =
      coreGrowingShiftQuarticEndpointExplicitIntervalDiagonalEnergy j := by
  unfold coreGrowingShiftQuarticEndpointMultiplicityWeightedDiagonalBoxEnergy
    coreGrowingShiftQuarticEndpointExplicitIntervalDiagonalEnergy
    coreGrowingShiftQuarticEndpointExplicitDepthWeight
  apply Finset.sum_congr rfl
  intro q _hq
  rw [coreGrowingShiftQuarticEndpointDepthMultiplicity_eq_explicit]

/-- Exact diagonal transposition to the explicit interval-weighted endpoint
box. -/
theorem coreGrowingShiftQuarticDiagonalEnergy_eq_endpointExplicitInterval
    (j : ℕ) :
    coreGrowingShiftQuarticDiagonalEnergy j =
      coreGrowingShiftQuarticEndpointExplicitIntervalDiagonalEnergy j := by
  rw [coreGrowingShiftQuarticDiagonalEnergy_eq_endpointActiveCells,
    coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy_eq_multiplicityBox,
    coreGrowingShiftQuarticEndpointMultiplicityWeightedDiagonalBoxEnergy_eq_explicitInterval]

/-- Generic finite summation by parts for a forward difference. -/
private theorem finite_weighted_forward_difference
    (w S : ℕ → ℝ) (N : ℕ)
    (hS0 : S 0 = 0) :
    (∑ b ∈ Finset.range N,
      w b * (S (b + 1) - S b)) =
      (∑ b ∈ Finset.range N,
        (w b - w (b + 1)) * S (b + 1)) +
        w N * S N := by
  induction N with
  | zero => simp [hS0]
  | succ N ih =>
      rw [Finset.sum_range_succ, Finset.sum_range_succ, ih]
      ring

/-- Generic weighted square-increment identity.  The endpoint-product sum and
its visible diagonal become a square function against the first drop of the
weight. -/
private theorem finite_weighted_prefix_square_telescope
    (c w : ℕ → ℝ) (N : ℕ)
    (hwN : w N = 0) :
    (∑ b ∈ Finset.range N, w b * c b ^ 2) +
        2 * (∑ b ∈ Finset.range N,
          w b * ((∑ a ∈ Finset.range b, c a) * c b)) =
      ∑ b ∈ Finset.range N,
        (w b - w (b + 1)) *
          (∑ a ∈ Finset.range (b + 1), c a) ^ 2 := by
  have hforward := finite_weighted_forward_difference
    w (fun b => (∑ a ∈ Finset.range b, c a) ^ 2) N (by simp)
  rw [hwN, zero_mul, add_zero] at hforward
  calc
    (∑ b ∈ Finset.range N, w b * c b ^ 2) +
        2 * (∑ b ∈ Finset.range N,
          w b * ((∑ a ∈ Finset.range b, c a) * c b)) =
      ∑ b ∈ Finset.range N,
        w b *
          (((∑ a ∈ Finset.range (b + 1), c a) ^ 2) -
            ((∑ a ∈ Finset.range b, c a) ^ 2)) := by
      rw [Finset.mul_sum, ← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro b _hb
      rw [Finset.sum_range_succ]
      ring
    _ = ∑ b ∈ Finset.range N,
        (w b - w (b + 1)) *
          (∑ a ∈ Finset.range (b + 1), c a) ^ 2 := hforward

/-- For one fixed shift, the explicit interval-weighted endpoint packet plus
its diagonal is exactly a nonnegative Stieltjes square function. -/
theorem endpointExplicitInterval_diagonal_add_two_endpoint_eq_stieltjes
    (j h : ℕ) :
    (∑ b ∈ Finset.range (2 ^ (j + 1)),
      coreGrowingShiftQuarticEndpointExplicitDepthWeight j h b *
        mertensTwoPointQuarticEndpointPair h b ^ 2) +
      2 * (∑ b ∈ Finset.range (2 ^ (j + 1)),
        coreGrowingShiftQuarticEndpointExplicitDepthWeight j h b *
          (mertensTwoPointPrefix h b *
            mertensTwoPointQuarticEndpointPair h b)) =
    ∑ b ∈ Finset.range (2 ^ (j + 1)),
      coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop j h b *
        mertensTwoPointPrefix h (b + 1) ^ 2 := by
  simpa [coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop,
    mertensTwoPointPrefix,
    mertensTwoPointQuarticEndpointPair] using
    finite_weighted_prefix_square_telescope
      (fun b => mertensTwoPointQuarticEndpointPair h b)
      (fun b => coreGrowingShiftQuarticEndpointExplicitDepthWeight j h b)
      (2 ^ (j + 1))
      (coreGrowingShiftQuarticEndpointExplicitDepthWeight_at_rightScale j h)

/-- Positive square function against the first drop of the exact endpoint
depth multiplicity. -/
def coreGrowingShiftQuarticEndpointStieltjesSquareEnergy
    (j : ℕ) : ℝ :=
  ∑ h ∈ Finset.range (2 ^ (j + 1)),
    ∑ b ∈ Finset.range (2 ^ (j + 1)),
      coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop j h b *
        mertensTwoPointPrefix h (b + 1) ^ 2

/-- The Stieltjes square energy is nonnegative. -/
theorem coreGrowingShiftQuarticEndpointStieltjesSquareEnergy_nonneg
    (j : ℕ) :
    0 ≤ coreGrowingShiftQuarticEndpointStieltjesSquareEnergy j := by
  unfold coreGrowingShiftQuarticEndpointStieltjesSquareEnergy
  apply Finset.sum_nonneg
  intro h _hh
  apply Finset.sum_nonneg
  intro b _hb
  exact mul_nonneg
    (coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_nonneg j h b)
    (sq_nonneg _)

/-- The visible quartic diagonal and signed endpoint packet combine exactly to
the positive Stieltjes square energy. -/
theorem coreGrowingShiftQuarticDiagonal_add_two_endpointExplicitInterval_eq_stieltjes
    (j : ℕ) :
    coreGrowingShiftQuarticDiagonalEnergy j +
        2 * coreGrowingShiftQuarticEndpointExplicitIntervalWeightedBoxEnergy j =
      coreGrowingShiftQuarticEndpointStieltjesSquareEnergy j := by
  rw [coreGrowingShiftQuarticDiagonalEnergy_eq_endpointExplicitInterval]
  unfold coreGrowingShiftQuarticEndpointExplicitIntervalDiagonalEnergy
    coreGrowingShiftQuarticEndpointExplicitIntervalWeightedBoxEnergy
    coreGrowingShiftQuarticEndpointDyadicBox
    coreGrowingShiftQuarticEndpointStieltjesSquareEnergy
  rw [Finset.sum_product, Finset.sum_product]
  rw [Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro h _hh
  exact endpointExplicitInterval_diagonal_add_two_endpoint_eq_stieltjes j h

/-- The Stieltjes square energy is another exact coordinate presentation of
the active binary-prefix square energy. -/
theorem coreGrowingShiftBinaryPrefixSquareEnergy_eq_endpointStieltjes
    (j : ℕ) :
    coreGrowingShiftBinaryPrefixSquareEnergy j =
      coreGrowingShiftQuarticEndpointStieltjesSquareEnergy j := by
  rw [coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_endpointPrefix,
    coreGrowingShiftQuarticEndpointPrefixEnergy_eq_explicitIntervalBox,
    coreGrowingShiftQuarticDiagonal_add_two_endpointExplicitInterval_eq_stieltjes]

/-- Source-facing natural-scale bound on the exact positive Stieltjes square
energy. -/
def SubpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      coreGrowingShiftQuarticEndpointStieltjesSquareEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2

/-- Exact equivalence between the positive Stieltjes source and the prior
signed endpoint compensation with visible diagonal. -/
theorem subpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy_iff_explicitCompensation :
    SubpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy ↔
      SubpolynomialCoreGrowingShiftQuarticEndpointExplicitIntervalCompensation := by
  constructor
  · intro hStieltjes δ hδ
    obtain ⟨C, hC, hbound⟩ := hStieltjes δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    have h := hbound j
    rw [← coreGrowingShiftQuarticDiagonal_add_two_endpointExplicitInterval_eq_stieltjes] at h
    linarith
  · intro hExplicit δ hδ
    obtain ⟨C, hC, hbound⟩ := hExplicit δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    have h := hbound j
    rw [← coreGrowingShiftQuarticDiagonal_add_two_endpointExplicitInterval_eq_stieltjes]
    linarith

/-- Exact equivalence with the inherited active binary-prefix square-energy
source. -/
theorem subpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy_iff_prefixSquareEnergy :
    SubpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy ↔
      SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy := by
  constructor
  · intro hStieltjes δ hδ
    obtain ⟨C, hC, hbound⟩ := hStieltjes δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftBinaryPrefixSquareEnergy_eq_endpointStieltjes]
    exact hbound j
  · intro hPrefix δ hδ
    obtain ⟨C, hC, hbound⟩ := hPrefix δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftBinaryPrefixSquareEnergy_eq_endpointStieltjes]
    exact hbound j

/-- Conditional RH endpoint stated on the positive Stieltjes square energy. -/
theorem riemannHypothesis_of_coreGrowingShiftQuarticEndpointStieltjesSquareEnergy
    (hStieltjes :
      SubpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_coreGrowingShiftPrefixSquareEnergy
    (subpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy_iff_prefixSquareEnergy.mp
      hStieltjes)

/-- Source profile for a theorem stated directly on the exact nonnegative
first-drop square measure. -/
structure EndpointStieltjesSquareEnergySource where
  sourceStatement : Prop
  exactDropMeasureControl : Prop
  prefixSquareControl : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy
    (d : EndpointStieltjesSquareEnergySource) : Type where
  toStieltjes :
    d.sourceStatement →
      d.exactDropMeasureControl →
      d.prefixSquareControl →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy

/-- Carleson, martingale, or square-function profile.  Any named theorem must
still prove localization to this exact first-drop measure. -/
structure EndpointStieltjesCarlesonSource where
  sourceStatement : Prop
  squareFunctionControl : Prop
  exactDropMeasureLocalization : Prop
  activeShiftRangeControl : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftQuarticEndpointStieltjesSquareEnergyFromCarleson
    (d : EndpointStieltjesCarlesonSource) : Type where
  toStieltjes :
    d.sourceStatement →
      d.squareFunctionControl →
      d.exactDropMeasureLocalization →
      d.activeShiftRangeControl →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_nonneg
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticDiagonalEnergy_eq_endpointExplicitInterval
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.endpointExplicitInterval_diagonal_add_two_endpoint_eq_stieltjes
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftBinaryPrefixSquareEnergy_eq_endpointStieltjes
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_coreGrowingShiftQuarticEndpointStieltjesSquareEnergy
