/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CofinalTwoUnitNumericalReflectionGap
import Mathlib

/-!
# Effective-rate bridge for cofinal two-unit numerical certificates

This file does not construct an unconditional numerical zero inventory.
It proves the exact finite arithmetic rate needed to turn a proportional
on-line credit into the strict two-unit gap, identifies the equivalent
absolute one-unit residual formulation, and gives a density-one hostile
model at the sharp threshold.

The resulting cofinal propositions are RH-equivalent because the imported
source already proves that a genuine cofinal strict two-unit gap is
RH-equivalent. No current fixed-ratio or density-only theorem inhabits the
new cofinal supplier.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CofinalTwoUnitEffectiveRateBridge

open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open CofinalTwoUnitNumericalReflectionGap
open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget

/-- A scaled relative deficit becomes a strict two-unit gap only when its
absolute allowance is smaller than two units. -/
theorem strict_two_unit_of_scaled_deficit
    (total credit q loss : ℕ)
    (hloss : loss ≤ q)
    (hratio : (q - loss) * total ≤ q * credit)
    (habsolute : loss * total < 2 * q) :
    total < credit + 2 := by
  by_contra hgap
  have htotal : credit + 2 ≤ total := Nat.le_of_not_gt hgap
  have hlower0 : q * (credit + 2) ≤ q * total :=
    Nat.mul_le_mul_left q htotal
  have hlower : q * credit + 2 * q ≤ q * total := by
    simpa [Nat.mul_add, Nat.mul_comm, Nat.mul_left_comm, Nat.mul_assoc] using hlower0
  have hdecomp :
      q * total = (q - loss) * total + loss * total := by
    calc
      q * total = ((q - loss) + loss) * total := by
        rw [Nat.sub_add_cancel hloss]
      _ = (q - loss) * total + loss * total := by
        exact Nat.add_mul (q - loss) loss total
  have hupper : q * total ≤ q * credit + loss * total := by
    rw [hdecomp]
    exact Nat.add_le_add_right hratio (loss * total)
  have hcombined :
      q * credit + 2 * q ≤ q * credit + loss * total :=
    hlower.trans hupper
  have htwo : 2 * q ≤ loss * total :=
    (add_le_add_iff_left (q * credit)).mp hcombined
  exact (not_lt_of_ge htwo) habsolute

/-- The optimized `269/400` line-credit ratio reaches the strict gap only
under the matching absolute threshold `131 * total < 800`. -/
theorem optimized_ratio_strict_gap
    (total credit : ℕ)
    (hratio : 269 * total ≤ 400 * credit)
    (habsolute : 131 * total < 800) :
    total < credit + 2 := by
  omega

/-- The absolute threshold for the current optimized ratio is exactly the
small-count range already exposed by the numerical gate. -/
theorem optimized_absolute_threshold_iff (total : ℕ) :
    131 * total < 800 ↔ total ≤ 6 := by
  omega

/-- Cofinal strict control can be stated without separate lower-credit and
upper-count variables: at most one multiplicity unit is uncredited. -/
def CofinalAbsoluteOneUnitResidual : Prop :=
  ∀ B : ℕ, ∃ H : ℕ, B ≤ H ∧
    ∃ known : Finset ZeroPoint,
      known ⊆ positiveHeightHead (H : ℝ) ∧
      (∀ z ∈ known, z.1.re = 1 / 2) ∧
      positiveHeightCount (H : ℝ) ≤ mass known multiplicity + 1

/-- The absolute one-unit formulation supplies the original strict gap. -/
theorem cofinal_two_unit_gap_of_absolute_one_unit
    (h : CofinalAbsoluteOneUnitResidual) :
    CofinalCertifiedTwoUnitGap := by
  intro B
  obtain ⟨H, hBH, known, hsubset, honline, habsolute⟩ := h B
  refine ⟨H, hBH, known, mass known multiplicity,
    positiveHeightCount (H : ℝ), hsubset, honline, le_rfl, le_rfl, ?_⟩
  omega

/-- Every original strict-gap certificate has at most one uncredited unit. -/
theorem absolute_one_unit_of_cofinal_two_unit_gap
    (h : CofinalCertifiedTwoUnitGap) :
    CofinalAbsoluteOneUnitResidual := by
  intro B
  obtain ⟨H, hBH, known, credit, upper, hsubset, honline,
    hcredit, hupper, hstrict⟩ := h B
  refine ⟨H, hBH, known, hsubset, honline, ?_⟩
  omega

/-- The two certificate formulations are exactly equivalent. -/
theorem absolute_one_unit_iff_cofinal_two_unit_gap :
    CofinalAbsoluteOneUnitResidual ↔ CofinalCertifiedTwoUnitGap :=
  ⟨cofinal_two_unit_gap_of_absolute_one_unit,
   absolute_one_unit_of_cofinal_two_unit_gap⟩

/-- Consequently the absolute residual formulation is RH-equivalent. -/
theorem absolute_one_unit_iff_riemannHypothesis :
    CofinalAbsoluteOneUnitResidual ↔ _root_.RiemannHypothesis := by
  rw [absolute_one_unit_iff_cofinal_two_unit_gap,
    cofinal_two_unit_gap_iff_riemannHypothesis]

/-- A proof-relevant cofinal rate supplier. The ratio may improve with the
height, but its residual fraction must beat `2 / total` on the same exact
zero inventory. -/
def CofinalScaledDeficitWitness : Prop :=
  ∀ B : ℕ, ∃ H : ℕ, B ≤ H ∧
    ∃ (known : Finset ZeroPoint) (q loss : ℕ),
      known ⊆ positiveHeightHead (H : ℝ) ∧
      (∀ z ∈ known, z.1.re = 1 / 2) ∧
      loss ≤ q ∧
      (q - loss) * positiveHeightCount (H : ℝ) ≤
        q * mass known multiplicity ∧
      loss * positiveHeightCount (H : ℝ) < 2 * q

/-- The effective scaled rate constructs the original cofinal witness. -/
theorem cofinal_two_unit_gap_of_scaled_deficit
    (h : CofinalScaledDeficitWitness) :
    CofinalCertifiedTwoUnitGap := by
  intro B
  obtain ⟨H, hBH, known, q, loss, hsubset, honline,
    hloss, hratio, habsolute⟩ := h B
  have hstrict :
      positiveHeightCount (H : ℝ) < mass known multiplicity + 2 :=
    strict_two_unit_of_scaled_deficit
      (positiveHeightCount (H : ℝ)) (mass known multiplicity)
      q loss hloss hratio habsolute
  exact ⟨H, hBH, known, mass known multiplicity,
    positiveHeightCount (H : ℝ), hsubset, honline, le_rfl, le_rfl,
    hstrict⟩

/-- Under RH the complete head gives the ideal scaled certificate with zero
loss. This is noncomputable and is not a numerical enumeration algorithm. -/
theorem scaled_deficit_of_riemannHypothesis
    (h : _root_.RiemannHypothesis) :
    CofinalScaledDeficitWitness := by
  intro B
  refine ⟨B, le_rfl, positiveHeightHead (B : ℝ), 1, 0,
    Finset.Subset.rfl, ?_, by omega, ?_, by omega⟩
  · intro z hz
    exact h z.1 z.2.1 z.2.2.1 z.2.2.2
  · simp [positiveHeightCount]

/-- The effective-rate certificate is another exact RH-equivalent target;
no unconditional constructor is supplied. -/
theorem scaled_deficit_iff_riemannHypothesis :
    CofinalScaledDeficitWitness ↔ _root_.RiemannHypothesis :=
  ⟨fun h => riemannHypothesis_of_cofinal_two_unit_gap
      (cofinal_two_unit_gap_of_scaled_deficit h),
   scaled_deficit_of_riemannHypothesis⟩

/-- Synthetic count model: for every requested relative accuracy `1/q`, two
exceptional simple labels remain compatible once the total count reaches the
same absolute scale. This is not a model of actual zeta zeros. -/
theorem density_one_pair_model
    (q k : ℕ) (hq : 1 ≤ q) (hk : q - 1 ≤ k) :
    (q - 1) * (2 * (k + 1)) ≤ q * (2 * k) ∧
    2 * (k + 1) = 2 * k + 2 ∧
    ¬ 1 * (2 * (k + 1)) < 2 * q ∧
    ¬ 2 * (k + 1) < 2 * k + 2 := by
  have hscaled : 2 * (q - 1) ≤ 2 * k :=
    Nat.mul_le_mul_left 2 hk
  have hratio : (q - 1) * (2 * (k + 1)) ≤ q * (2 * k) := by
    calc
      (q - 1) * (2 * (k + 1)) =
          (q - 1) * (2 * k) + 2 * (q - 1) := by ring
      _ ≤ (q - 1) * (2 * k) + 2 * k :=
        Nat.add_le_add_left hscaled ((q - 1) * (2 * k))
      _ = ((q - 1) + 1) * (2 * k) := by ring
      _ = q * (2 * k) := by rw [Nat.sub_add_cancel hq]
  have htotal : 2 * (k + 1) = 2 * k + 2 := by ring
  have hqk : q ≤ k + 1 := by omega
  have habsolute : 2 * q ≤ 1 * (2 * (k + 1)) := by
    simpa [Nat.mul_comm, Nat.mul_left_comm, Nat.mul_assoc] using
      Nat.mul_le_mul_left 2 hqk
  exact ⟨hratio, htotal, not_lt_of_ge habsolute, by omega⟩

/-- In particular, any fixed or merely asymptotic relative-density theorem
can leave one reflected simple pair forever unless it supplies the same-window
absolute rate `loss * total < 2 * q`. -/
theorem relative_density_alone_not_strict
    (q : ℕ) (hq : 1 ≤ q) :
    ∃ total credit : ℕ,
      (q - 1) * total ≤ q * credit ∧
      total = credit + 2 ∧
      ¬ total < credit + 2 := by
  refine ⟨2 * q, 2 * (q - 1), ?_, ?_, ?_⟩
  · ring_nf
  · have hqsplit : q = (q - 1) + 1 := (Nat.sub_add_cancel hq).symm
    calc
      2 * q = 2 * ((q - 1) + 1) := by rw [hqsplit]
      _ = 2 * (q - 1) + 2 := by ring
  · intro hlt
    have heq : 2 * q = 2 * (q - 1) + 2 := by
      have hqsplit : q = (q - 1) + 1 := (Nat.sub_add_cancel hq).symm
      calc
        2 * q = 2 * ((q - 1) + 1) := by rw [hqsplit]
        _ = 2 * (q - 1) + 2 := by ring
    exact (not_lt_of_ge (Nat.le_of_eq heq.symm)) hlt

end GRWTSK.RiemannHypothesis.CofinalTwoUnitEffectiveRateBridge
