/- 
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #827. Direct stacked parent: draft PR #821 at exact head
`cf7066cc4598960d97efd291980175d4c04dc663`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingCardinality

/-!
# Aggregate centered winding multiplicity over effective square moduli

For one modulus the exact number of nonzero winding classes is

`2 * floor(b / d^2)`.

This module sums that exact multiplicity over the effective square-modulus
support and proves an elementary linear endpoint bound.  The key finite
estimate is

`sum_{d>=1} 1/d^2 <= 2`

on every finite initial segment, obtained from

`1/d^2 <= 1/(d-1) - 1/d` for `d>=2`.

Thus the complete nonzero winding multiplicity costs only `O(b)`; no
logarithmic loss is created by this combinatorial aggregation layer.

No Möbius correlation estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact total number of nonzero winding candidates across the effective
square moduli at endpoint `b`. -/
def centeredNonzeroWindingEndpointMultiplicity
    (b : ℕ) : ℕ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      (centeredNonzeroWindingCandidateSet b d).card
    else 0

/-- Pointwise reciprocal-square comparison used by the finite telescope. -/
theorem reciprocalSquare_le_endpointDrop
    {d : ℕ} (hd : 2 ≤ d) :
    (((d : ℝ) ^ 2)⁻¹) ≤
      (((d - 1 : ℕ) : ℝ))⁻¹ - (d : ℝ)⁻¹ := by
  have hdR : (1 : ℝ) ≤ (d - 1 : ℕ) := by
    exact_mod_cast (by omega : 1 ≤ d - 1)
  have hdpos : (0 : ℝ) < d := by positivity
  have hdm1pos : (0 : ℝ) < (d - 1 : ℕ) := by positivity
  field_simp
  nlinarith

/-- Finite reciprocal-square mass on `[2,b)` is at most one. -/
theorem sum_reciprocalSquare_Ico_two_le_one
    (b : ℕ) :
    (∑ d ∈ Finset.Ico 2 b, (((d : ℝ) ^ 2)⁻¹)) ≤ 1 := by
  by_cases hb : b ≤ 2
  · have hempty : Finset.Ico 2 b = ∅ := by
      ext d
      simp
      omega
    simp [hempty]
  · have h2b : 2 ≤ b := by omega
    calc
      (∑ d ∈ Finset.Ico 2 b, (((d : ℝ) ^ 2)⁻¹)) ≤
          ∑ d ∈ Finset.Ico 2 b,
            ((((d - 1 : ℕ) : ℝ))⁻¹ - (d : ℝ)⁻¹) := by
        apply Finset.sum_le_sum
        intro d hd
        exact reciprocalSquare_le_endpointDrop
          (Finset.mem_Ico.mp hd).1
      _ = 1 - (((b - 1 : ℕ) : ℝ))⁻¹ := by
        rw [Finset.sum_Ico_eq_sum_range]
        have htel :=
          finiteWeightDropTelescope
            (fun t : ℕ => (((t + 1 : ℕ) : ℝ))⁻¹)
            (b - 2)
        simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm,
          Nat.add_sub_of_le h2b] using htel
      _ ≤ 1 := by
        have hnonneg :
            0 ≤ (((b - 1 : ℕ) : ℝ))⁻¹ := by positivity
        linarith

/-- Every finite reciprocal-square initial segment beginning at one has mass
at most two. -/
theorem sum_reciprocalSquare_Ico_one_le_two
    (b : ℕ) :
    (∑ d ∈ Finset.Ico 1 b, (((d : ℝ) ^ 2)⁻¹)) ≤ 2 := by
  by_cases hb : b ≤ 1
  · have hempty : Finset.Ico 1 b = ∅ := by
      ext d
      simp
      omega
    simp [hempty]
  · have hone : 1 ∈ Finset.Ico 1 b := by
      exact Finset.mem_Ico.mpr ⟨le_rfl, by omega⟩
    rw [Finset.sum_eq_sum_sdiff_singleton_add hone]
    have hsdiff :
        Finset.Ico 1 b \ {1} = Finset.Ico 2 b := by
      ext d
      simp
      omega
    rw [hsdiff]
    have htail := sum_reciprocalSquare_Ico_two_le_one b
    norm_num
    linarith

/-- Effective square-modulus reciprocal-square mass is at most two. -/
theorem effectiveSquareModulusReciprocalSquareMass_le_two
    (b : ℕ) :
    (∑ d ∈ effectiveEndpointSquareModulusSet b,
      (((d : ℝ) ^ 2)⁻¹)) ≤ 2 := by
  unfold effectiveEndpointSquareModulusSet
  apply le_trans ?_ (sum_reciprocalSquare_Ico_one_le_two b)
  rw [Finset.sum_filter]
  apply Finset.sum_le_sum
  intro d hd
  by_cases hsq : d * d < b
  · simp [hsq]
  · simp [hsq]
    positivity

/-- The integer winding radius is bounded by the corresponding real reciprocal
square contribution. -/
theorem centeredWindingRadius_cast_le
    (b d : ℕ) [NeZero d] :
    (centeredWindingRadius b d : ℝ) ≤
      (b : ℝ) * (((d : ℝ) ^ 2)⁻¹) := by
  unfold centeredWindingRadius
  have hdpos : 0 < d * d := by
    exact Nat.mul_pos (Nat.pos_of_ne_zero (NeZero.ne d))
      (Nat.pos_of_ne_zero (NeZero.ne d))
  have hfloor :
      b / (d * d) * (d * d) ≤ b :=
    Nat.div_mul_le_self b (d * d)
  have hcast :
      ((b / (d * d) : ℕ) : ℝ) * ((d * d : ℕ) : ℝ) ≤ (b : ℝ) := by
    exact_mod_cast hfloor
  have hqpos : (0 : ℝ) < ((d * d : ℕ) : ℝ) := by
    positivity
  rw [show (((d : ℝ) ^ 2)⁻¹) =
      (((d * d : ℕ) : ℝ))⁻¹ by push_cast; ring]
  rw [le_mul_inv_iff₀ hqpos]
  simpa [mul_comm] using hcast

/-- The exact total nonzero winding multiplicity over all effective square
moduli is at most `4*b`. -/
theorem centeredNonzeroWindingEndpointMultiplicity_le_four_mul
    (b : ℕ) :
    centeredNonzeroWindingEndpointMultiplicity b ≤ 4 * b := by
  unfold centeredNonzeroWindingEndpointMultiplicity
  have hreal :
      ((∑ d ∈ effectiveEndpointSquareModulusSet b,
        if hd : 0 < d then
          letI : NeZero d := ⟨ne_of_gt hd⟩
          (centeredNonzeroWindingCandidateSet b d).card
        else 0 : ℕ) : ℝ) ≤ 4 * (b : ℝ) := by
    calc
      ((∑ d ∈ effectiveEndpointSquareModulusSet b,
        if hd : 0 < d then
          letI : NeZero d := ⟨ne_of_gt hd⟩
          (centeredNonzeroWindingCandidateSet b d).card
        else 0 : ℕ) : ℝ) =
          ∑ d ∈ effectiveEndpointSquareModulusSet b,
            if hd : 0 < d then
              letI : NeZero d := ⟨ne_of_gt hd⟩
              (2 : ℝ) * centeredWindingRadius b d
            else 0 := by
        push_cast
        apply Finset.sum_congr rfl
        intro d hdmem
        have hdpos :
            0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hdmem).1).1
        simp only [dif_pos hdpos]
        letI : NeZero d := ⟨ne_of_gt hdpos⟩
        rw [card_centeredNonzeroWindingCandidateSet]
        norm_num
      _ ≤ ∑ d ∈ effectiveEndpointSquareModulusSet b,
          (2 : ℝ) * ((b : ℝ) * (((d : ℝ) ^ 2)⁻¹)) := by
        apply Finset.sum_le_sum
        intro d hdmem
        have hdpos :
            0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hdmem).1).1
        simp only [dif_pos hdpos]
        letI : NeZero d := ⟨ne_of_gt hdpos⟩
        exact mul_le_mul_of_nonneg_left
          (centeredWindingRadius_cast_le b d) (by norm_num)
      _ = (2 : ℝ) * (b : ℝ) *
          (∑ d ∈ effectiveEndpointSquareModulusSet b,
            (((d : ℝ) ^ 2)⁻¹)) := by
        rw [Finset.mul_sum]
        ring
      _ ≤ (2 : ℝ) * (b : ℝ) * 2 := by
        exact mul_le_mul_of_nonneg_left
          (effectiveSquareModulusReciprocalSquareMass_le_two b)
          (by positivity)
      _ = 4 * (b : ℝ) := by ring
  exact_mod_cast hreal

/-- Named disposition: square-modulus winding multiplicity creates no
logarithmic loss at the endpoint aggregation layer. -/
def CenteredWindingMultiplicityHasLinearEndpointCost : Prop :=
  ∀ b : ℕ,
    centeredNonzeroWindingEndpointMultiplicity b ≤ 4 * b

theorem centeredWindingMultiplicityHasLinearEndpointCost :
    CenteredWindingMultiplicityHasLinearEndpointCost :=
  centeredNonzeroWindingEndpointMultiplicity_le_four_mul

/-- Conservative source profile after the complete combinatorial winding
multiplicity has been paid. -/
structure RegularCenteredWindingAfterMultiplicitySourceData where
  theoremStatement : Prop
  exactCenteredCorrelationMatched : Prop
  exactWindingClassesMatched : Prop
  modulusAggregationMatched : Prop
  linearEndpointMultiplicityPaid : Prop
  noLogarithmicMultiplicityLossMatched : Prop
  bothEndpointParitiesMatched : Prop
  naturalScaleNormalizationMatched : Prop

def RegularCenteredWindingAfterMultiplicitySource
    (d : RegularCenteredWindingAfterMultiplicitySourceData) : Prop :=
  d.theoremStatement ∧
    d.exactCenteredCorrelationMatched ∧
    d.exactWindingClassesMatched ∧
    d.modulusAggregationMatched ∧
    d.linearEndpointMultiplicityPaid ∧
    d.noLogarithmicMultiplicityLossMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_reciprocalSquare_Ico_one_le_two
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.effectiveSquareModulusReciprocalSquareMass_le_two
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.centeredNonzeroWindingEndpointMultiplicity_le_four_mul
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.centeredWindingMultiplicityHasLinearEndpointCost
