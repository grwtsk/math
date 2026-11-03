/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFixedConductorHodgePort
import Mathlib.Tactic

/-!
# Full positive residue energy iff EVERY actual Dirichlet character energy

The exact original-source Parseval theorem gives the sum over all characters,
including the principal and imprimitive characters, as the fixed totient
multiple of positive unit-residue energy. The earlier Hodge port proves only
one direction for EACH character and keeps its metric/error estimate explicit.

This module closes the reverse direction: at FIXED q, every character's
all-positive-rate dyadic energy bounds can be combined by a FINITE sum of
character-dependent constants to bound the complete residue-positive form.
There is no factor growing with the physical horizon and no claimed bound
uniform in the conductor q.

A hostile construction shows `PositiveSectorComparison` alone is free: take
zero metric and put the ENTIRE original source energy into its signed defect.
The metric estimate is then automatic, while the reconstruction-error estimate
is exactly the old unresolved original source bound. Consequently neither
rational Hodge/smoothness nor the mere existence of the comparison record
proves RH/GRH. A genuine independent bound on the coherent source and defect
is still required.

No original Mobius coefficient, nonunit stratum, signed cross term or cutoff
is replaced. These are Lean SOURCE PROOF CANDIDATES, NOT native acceptance.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.FixedConductorHodgeAllRateEquivalence

open GRWTSK.NumberTheory.Moebius.FixedConductorHodgePort
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.DirichletResidueParseval
open GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential

variable (q : ℕ) [NeZero q]

/-- Exactly the full character-square energy of the ORIGINAL Mobius source,
with the actual phi(q) factor retained on the positive residue side. -/
def fullPositiveResidueEnergy (T : ℝ) : ℝ :=
  (q.totient : ℝ) * unitResiduePositiveEnergy q T

/-- This equality is the existing exact original causal Parseval specialized
to the single positive-sector observable; it is not an analytic estimate. -/
theorem fullPositiveResidueEnergy_eq_character_sum (T : ℝ) :
    fullPositiveResidueEnergy q T =
      ∑ χ : DirichletCharacter ℂ q,
        familyFiniteResponseEnergy (dirichletCharacterCoefficients χ) T := by
  exact (all_character_energy_parseval q T).symm

/-- SOURCE SUFFICIENCY: nonnegative original character energies are individually
controlled by the full positive form at a fixed q. The principal character
is included, not silently projected into the Hodge Laplacian kernel. -/
theorem every_character_allGrid_of_complete
    (h : AllGridUpper (fullPositiveResidueEnergy q) (Real.log 2)) :
    ∀ χ : DirichletCharacter ℂ q,
      AllGridUpper
        (fun T => familyFiniteResponseEnergy (dirichletCharacterCoefficients χ) T)
        (Real.log 2) := by
  intro χ ε hε
  obtain ⟨C, hC, hbound⟩ := h ε hε
  refine ⟨C, hC, ?_⟩
  intro j
  have hlog : 0 ≤ Real.log (2 : ℝ) :=
    (Real.log_pos (by norm_num : (1 : ℝ) < 2)).le
  have hT : 0 ≤ time (Real.log 2) j := time_nonnegative hlog j
  exact (each_character_energy_le_positive_residue q χ _ hT).trans (hbound j)

/-- NECESSITY: the family is FINITE at fixed q. Its complete set of
characterwise constants can be added. No uniform-in-conductor constant,
probabilistic independence or synthetic character is required. -/
theorem complete_allGrid_of_every_character
    (h : ∀ χ : DirichletCharacter ℂ q,
      AllGridUpper
        (fun T => familyFiniteResponseEnergy (dirichletCharacterCoefficients χ) T)
        (Real.log 2)) :
    AllGridUpper (fullPositiveResidueEnergy q) (Real.log 2) := by
  classical
  intro ε hε
  let C (χ : DirichletCharacter ℂ q) : ℝ :=
    Classical.choose (h χ ε hε)
  have hC (χ : DirichletCharacter ℂ q) : 0 ≤ C χ :=
    (Classical.choose_spec (h χ ε hε)).1
  have hbound (χ : DirichletCharacter ℂ q) (j : ℕ) :
      familyFiniteResponseEnergy (dirichletCharacterCoefficients χ)
          (time (Real.log 2) j) ≤
        C χ * Real.exp (ε * time (Real.log 2) j) :=
    (Classical.choose_spec (h χ ε hε)).2 j
  refine ⟨∑ χ : DirichletCharacter ℂ q, C χ, ?_, ?_⟩
  · exact Finset.sum_nonneg (fun χ _ => hC χ)
  · intro j
    calc
      fullPositiveResidueEnergy q (time (Real.log 2) j) =
          ∑ χ : DirichletCharacter ℂ q,
            familyFiniteResponseEnergy (dirichletCharacterCoefficients χ)
              (time (Real.log 2) j) :=
        fullPositiveResidueEnergy_eq_character_sum q _
      _ ≤ ∑ χ : DirichletCharacter ℂ q,
          C χ * Real.exp (ε * time (Real.log 2) j) := by
        exact Finset.sum_le_sum (fun χ _ => hbound χ j)
      _ = (∑ χ : DirichletCharacter ℂ q, C χ) *
          Real.exp (ε * time (Real.log 2) j) := by
        rw [Finset.sum_mul]

/-- EXACT CHARACTER/HODGE-ENERGY CRITERION. This is a new converse to the
prior each-character transfer, not an unconditional source estimate. -/
theorem fullPositiveResidue_allGrid_iff_every_character :
    AllGridUpper (fullPositiveResidueEnergy q) (Real.log 2) ↔
      ∀ χ : DirichletCharacter ℂ q,
        AllGridUpper
          (fun T => familyFiniteResponseEnergy (dirichletCharacterCoefficients χ) T)
          (Real.log 2) := by
  exact ⟨every_character_allGrid_of_complete q,
    complete_allGrid_of_every_character q⟩

/-- The existing conditional Hodge transfer now has a COMPLETE positive
character-family conclusion, including the principal channel. All the
original metric and signed defect hypotheses remain plainly exposed. -/
theorem PositiveSectorComparison.complete_allGrid
    (P : PositiveSectorComparison q)
    (hmetric : AllGridUpper P.metricEnergy (Real.log 2))
    (herror : AllGridUpper P.reconstructionAllowance (Real.log 2)) :
    AllGridUpper (fullPositiveResidueEnergy q) (Real.log 2) := by
  exact (fullPositiveResidue_allGrid_iff_every_character q).2
    (positive_q_family_of_hodge_comparison q P hmetric herror)

/-- A comparison structure by itself can encode the ENTIRE arithmetic task
inside the error term. Its existence gives no free source estimate. -/
def zeroMetricAllError : PositiveSectorComparison q where
  metricEnergy := fun _ => 0
  signedReconstructionDefect := unitResiduePositiveEnergy q
  reconstructionAllowance := unitResiduePositiveEnergy q
  detectorCost := 0
  detectorCost_nonneg := le_rfl
  original_signed_return := by
    intro T hT
    simp
  signed_defect_upper := by
    intro T hT
    exact le_rfl

/-- The metric estimate for this deliberately vacuous Hodge representation
requires ZERO arithmetic information. -/
theorem zeroMetricAllError_metric_is_allGrid :
    AllGridUpper (zeroMetricAllError q).metricEnergy (Real.log 2) := by
  intro ε hε
  refine ⟨0, le_rfl, ?_⟩
  intro j
  simp [zeroMetricAllError]

/-- Its missing defect bound is EXACTLY the original arithmetic estimate.
No representation theorem has lowered the difficulty of the source. -/
theorem zeroMetricAllError_defect_allGrid_iff_source :
    AllGridUpper (zeroMetricAllError q).reconstructionAllowance (Real.log 2) ↔
      AllGridUpper (unitResiduePositiveEnergy q) (Real.log 2) := Iff.rfl

/-- Even at the original source, every principal-or-nonprincipal character's
physical response energy is bounded by the WHOLE exact positive form. -/
theorem character_energy_le_fullPositive (χ : DirichletCharacter ℂ q)
    (T : ℝ) (hT : 0 ≤ T) :
    familyFiniteResponseEnergy (dirichletCharacterCoefficients χ) T ≤
      fullPositiveResidueEnergy q T :=
  each_character_energy_le_positive_residue q χ T hT

end GRWTSK.NumberTheory.Moebius.FixedConductorHodgeAllRateEquivalence
