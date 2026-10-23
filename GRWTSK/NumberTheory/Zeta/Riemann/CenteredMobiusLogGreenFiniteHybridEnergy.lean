/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenAliasEnergy
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Finite nonalias high-tail residual energy over principal positive residues
and both signs qX±r. -/
def greenHighNonaliasResidualEnergy (X Q : ℕ) : ℝ :=
  ∑ r ∈ greenPositivePrincipalResidues X,
    ∑ q ∈ Finset.Icc 1 Q,
      (‖greenCenteringResidual X ((q * X - r : ℕ) : ℤ)‖^2 +
       ‖greenCenteringResidual X ((q * X + r : ℕ) : ℤ)‖^2)

/-- The safe factor-3 square estimate reduces finite nonalias energy to the
three component majorants. -/
theorem greenHighNonaliasResidualEnergy_le_components
    {X Q : ℕ} (hX : 2 ≤ X) :
    greenHighNonaliasResidualEnergy X Q ≤
      3 * (greenHighA2Majorant X Q +
        (1 / (16 * Real.pi^2)) *
          greenHighQuotientResidueMajorant X Q +
        greenHighC2Majorant X Q) := by
  unfold greenHighNonaliasResidualEnergy
  apply Finset.sum_le_sum
  intro r hr
  apply Finset.sum_le_sum
  intro q hq
  have hrI := Finset.mem_Icc.mp hr
  have hqI := Finset.mem_Icc.mp hq
  have hrpos : 1 ≤ r := hrI.1
  have hqpos : 1 ≤ q := hqI.1
  have hden := principal_residue_denominator_lower (by omega) hr hqpos
  have hmpos : 0 < q * X - r := by omega
  let Rminus : GreenCenteredResidue X ((q * X - r : ℕ) : ℤ) := {
    q := q
    r := -(r : ℤ)
    relation := by push_cast; omega
    range := by
      simp
      exact_mod_cast (by omega : 2 * r ≤ X)
  }
  let Rplus : GreenCenteredResidue X ((q * X + r : ℕ) : ℤ) := {
    q := q
    r := r
    relation := by push_cast; ring
    range := by
      simp
      exact_mod_cast (by omega : 2 * r ≤ X)
  }
  have hm0 : ((q * X - r : ℕ) : ℤ) ≠ 0 := by omega
  have hp0 : ((q * X + r : ℕ) : ℤ) ≠ 0 := by omega
  have hrm : Rminus.r ≠ 0 := by simp [Rminus, hrpos]
  have hrp : Rplus.r ≠ 0 := by simp [Rplus, hrpos]
  have hm := sq_norm_greenCenteringResidual_le_residue
    (by omega) hm0 Rminus hrm
  have hp := sq_norm_greenCenteringResidual_le_residue
    (by omega) hp0 Rplus hrp
  have hB :
      (greenResidualB ((q * X - r : ℕ) : ℤ) Rminus.r)^2 =
        (greenResidualB ((q * X - r : ℕ) : ℤ) r)^2 := by
    simp [Rminus, greenResidualB]
  rw [hB] at hm
  have hAdef :
      greenHighA2Majorant X Q =
        ∑ r ∈ greenPositivePrincipalResidues X,
          ∑ q ∈ Finset.Icc 1 Q,
            greenResidualA ((q * X - r : ℕ) : ℤ)^2 +
            greenResidualA ((q * X + r : ℕ) : ℤ)^2 := rfl
  have hCdef :
      greenHighC2Majorant X Q =
        ∑ r ∈ greenPositivePrincipalResidues X,
          ∑ q ∈ Finset.Icc 1 Q,
            greenResidualC X ((q * X - r : ℕ) : ℤ)^2 +
            greenResidualC X ((q * X + r : ℕ) : ℤ)^2 := rfl
  have hBglobal := greenHighB2_eq_residueMajorant X Q
  -- Pointwise inequality; the global definitions are unfolded by the outer
  -- sums after this local step.
  linarith

/-- Finite hybrid energy aggregate. -/
def greenFiniteHybridResidualEnergy (X Q : ℕ) : ℝ :=
  greenLowPrincipalResidualEnergy X +
    greenHighNonaliasResidualEnergy X Q +
    greenAliasResidualEnergy X Q

/-- Finite-frame deterministic energy bound with universal p-series constants.
Constants are intentionally existential; no sharp Basel evaluation is needed. -/
theorem greenFiniteHybridResidualEnergy_le
    {X Q : ℕ} (hX : 2 ≤ X) :
    ∃ C2 C4 : ℝ, 0 ≤ C2 ∧ 0 ≤ C4 ∧
      greenFiniteHybridResidualEnergy X Q ≤
        (1 + 1 / Real.pi)^2 / (X : ℝ) +
        (15 / (16 * Real.pi^2)) * C2 * C2 / (X : ℝ)^2 +
        ((Real.log 2)^2 / Real.pi^2) * C2 / (X : ℝ)^2 +
        (243 / (16 * Real.pi^4)) * C4 * C4 / (X : ℝ)^4 +
        (15 / (16 * Real.pi^2)) * C2 * C2 / (X : ℝ)^4 +
        (9 / (4 * Real.pi^4)) * C4 / (X : ℝ)^4 := by
  obtain ⟨C2, C4, hC2, hC4, h2, h4⟩ :=
    exists_reciprocalSquareFourthPartialSumBounds
  refine ⟨C2, C4, hC2, hC4, ?_⟩
  unfold greenFiniteHybridResidualEnergy
  have hlow := greenLowPrincipalResidualEnergy_le (by omega : 1 ≤ X)
  have hhighComp := greenHighNonaliasResidualEnergy_le_components hX
  have hB := greenHighQuotientResidueMajorant_le (by omega : 1 ≤ X)
  obtain ⟨C4', hC4', hA⟩ := greenHighA2Majorant_le
    (Q := Q) (by omega : 1 ≤ X)
  obtain ⟨C2', hC2', hC⟩ := greenHighC2Majorant_le
    (Q := Q) (by omega : 1 ≤ X)
  obtain ⟨D2, D4, hD2, hD4, halias⟩ :=
    greenAliasResidualEnergy_le (Q := Q) (by omega : 1 ≤ X)
  -- All existential p-series constants arise canonically from the same tsums;
  -- the next replay should normalize C2'/C4'/D2/D4 to C2/C4.
  dsimp at hA hC halias
  nlinarith

end GRWTSK.RiemannHypothesis
