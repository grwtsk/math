/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionalAnalysis.EnergySchur
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralCofinal

/-!
# Shifted energy Schur bounds return to the literal odd Weil source

Every input hypothesis below is the existing literal odd finite-gamma-energy
hypothesis. The physical mass shift is encoded by the original negative beta;
no auxiliary pole coordinate is assigned a new mass and no prime is omitted.

The Riesz consumer requires equality for EVERY original admissible input,
not equality only on a finite trial subspace. Constructing that decomposition
for the source remains a separate obligation. The all-scale sign is also an
explicit hypothesis, never deduced from finite certificate soundness.

The covering-window return keeps the accuracy index distinct from the radius.
In particular radius(j)>=j and defect 2^(-j) imply the existing StageLower j
by using radius(j+1), then weakening its defect. No nested retained bases and
no density assertion about a larger unspecified Weil test space are used.

The original terminal RH criterion remains in its isolated environment.
No new RH predicate, GRH transfer, root import or dependency pin is introduced.
Source-proof candidate: elaboration, exact types, fresh kernel replay,
transitive axiom audit and independent analytical review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open Module MeasureTheory Set
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinal.ShiftedSchur

open LowSchur OddRootProjection OddSineForm OddHighComplement OddLiteralWindow OddWrapEnergy
open GRWTSK.FunctionalAnalysis

/-- The unchanged literal source domain, with independently specified radius
and physical lower-defect allowance. This is not a truncated test family. -/
def WindowLower (T epsilon : ℝ) : Prop :=
  ∀ ⦃f : ℝ → ℝ⦄, MemLp f 2 volume → Measurable f → Function.Odd f →
    (∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) →
    IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0) →
    0 ≤ shiftedOddWeilEnergy T (-epsilon) f

/-- Increasing the allowed defect weakens the lower bound, in physical mass. -/
theorem windowLower_mono_defect {T epsilon eta : ℝ} (he : epsilon ≤ eta)
    (h : WindowLower T epsilon) : WindowLower T eta := by
  intro f hf hm ho hs henergy
  have hq := h hf hm ho hs henergy
  have hmass : 0 ≤ ∫ t : ℝ, ‖f t‖ ^ 2 :=
    integral_nonneg (fun t => sq_nonneg ‖f t‖)
  have hmul := mul_le_mul_of_nonneg_right he hmass
  rw [shiftedOddWeilEnergy_eq_unshifted_sub_mass] at hq ⊢
  nlinarith

/-- A certified larger window restricts to the original canonical stage. -/
theorem stageLower_of_covering_window {j : ℕ} {U : ℝ}
    (hU : (j : ℝ) + 1 ≤ U)
    (h : WindowLower U ((1 / 2 : ℝ) ^ j)) : StageLower j := by
  intro f hf hm ho hs henergy
  have hsU : ∀ᵐ t : ℝ, t ∉ Icc (-U) U → f t = 0 := by
    filter_upwards [hs] with t ht hnot
    apply ht
    intro hin
    exact hnot ⟨(neg_le_neg hU).trans hin.1, hin.2.trans hU⟩
  have hq := h hf hm ho hsU henergy
  rw [← shiftedOddWeilEnergy_eq_of_le (-((1 / 2 : ℝ) ^ j)) hs hU] at hq
  exact hq

/-- No choice of an unbounded list substitutes for these successful bounds. -/
theorem all_stageLower_of_covering_windows
    (h : ∀ j : ℕ, ∃ U : ℝ, (j : ℝ) + 1 ≤ U ∧
      WindowLower U ((1 / 2 : ℝ) ^ j)) : ∀ j : ℕ, StageLower j := by
  intro j
  obtain ⟨U, hU, hq⟩ := h j
  exact stageLower_of_covering_window hU hq

/-- This accepts exactly the proposed radius(j)>=j schedule, without
incorrectly assigning the radius's dyadic exponent to its certificate. -/
theorem all_stageLower_of_radius_ge_index (radius : ℕ → ℝ)
    (hradius : ∀ j : ℕ, (j : ℝ) ≤ radius j)
    (h : ∀ j : ℕ, WindowLower (radius j) ((1 / 2 : ℝ) ^ j)) :
    ∀ j : ℕ, StageLower j := by
  intro j
  have hU : (j : ℝ) + 1 ≤ radius (j + 1) := by
    simpa using hradius (j + 1)
  have he : (1 / 2 : ℝ) ^ (j + 1) ≤ (1 / 2 : ℝ) ^ j := by
    rw [pow_succ]
    nlinarith [pow_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 2) j]
  exact stageLower_of_covering_window hU (windowLower_mono_defect he (h (j + 1)))

/-- Return to the same unshifted source, using the existing cofinal theorem. -/
theorem unshifted_nonnegative_of_covering_windows
    (h : ∀ j : ℕ, ∃ U : ℝ, (j : ℝ) + 1 ≤ U ∧
      WindowLower U ((1 / 2 : ℝ) ^ j))
    {T : ℝ} {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hm : Measurable f) (ho : Function.Odd f)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T 0 f :=
  nonnegative_of_stageLower (all_stageLower_of_covering_windows h)
    hf hm ho hs henergy

section EnergyRealization

variable {E V : Type*}
  [NormedAddCommGroup E] [InnerProductSpace ℝ E] [CompleteSpace E]
  [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]

/-- Source-specific return: the realization must cover every physical input
in the original domain. A model's positivity alone does not supply `hsource`. -/
theorem windowLower_of_energySchur (T epsilon : ℝ)
    (C : V →L⋆[ℝ] StrongDual ℝ E) (d : V → ℝ)
    (hsource : ∀ (f : ℝ → ℝ),
      MemLp f 2 volume → Measurable f → Function.Odd f →
      (∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) →
      IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0) →
      ∃ (w : E) (v : V),
        shiftedOddWeilEnergy T (-epsilon) f = EnergySchur.energy C d w v)
    (hschur : ∀ v, 0 ≤ EnergySchur.schur C d v) : WindowLower T epsilon := by
  intro f hf hm ho hs henergy
  obtain ⟨w, v, hid⟩ := hsource f hf hm ho hs henergy
  rw [hid]
  exact (EnergySchur.nonnegative_iff C d).mpr hschur w v

/-- The energy-dual residual certificate feeds the original literal source.
No raw trial sign, sampled residual, or model/source analogy replaces a premise. -/
theorem windowLower_of_energyResidual (T epsilon : ℝ)
    (C : V →L⋆[ℝ] StrongDual ℝ E) (d : V → ℝ) (X : V →L[ℝ] E)
    (lower budget : V → ℝ)
    (hsource : ∀ (f : ℝ → ℝ),
      MemLp f 2 volume → Measurable f → Function.Odd f →
      (∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) →
      IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0) →
      ∃ (w : E) (v : V),
        shiftedOddWeilEnergy T (-epsilon) f = EnergySchur.energy C d w v)
    (htrial : ∀ v, lower v ≤ EnergySchur.trial C d X v)
    (hresidual : ∀ v, ‖EnergySchur.residual C X v‖ ^ 2 ≤ budget v)
    (hpaid : ∀ v, budget v ≤ lower v) : WindowLower T epsilon :=
  windowLower_of_energySchur T epsilon C d hsource
    (EnergySchur.schur_nonneg_of_trial C d X lower budget htrial hresidual hpaid)

end EnergyRealization

end GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinal.ShiftedSchur
