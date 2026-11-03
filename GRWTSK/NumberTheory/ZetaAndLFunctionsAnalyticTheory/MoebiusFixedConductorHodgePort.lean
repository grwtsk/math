/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletResidueParseval
import GRWTSK.SequencesSeriesSummability.ConvergenceAndDivergenceOfInfiniteLimitingProcesses.ArithmeticGridSubexponential
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.RadicalLogEntropy
import Mathlib.Tactic

/-!
# A fixed-conductor positive Hodge-port boundary for the ACTUAL twisted Möbius source

The input is the ORIGINAL complex family response, with true DirichletCharacter
values and all nonunit zeros, and the finite Parseval theorem from
MoebiusDirichletResidueParseval. The character index q is FIXED before the
all-positive-rate time estimate. The factor phi(q) may depend on q but cannot
depend on time j. No uniform-in-q hybrid bound is inferred.

The positive residue energy still contains the original signed Möbius sum
INSIDE each complex modulus square. It is not a positive count of source atoms.
An unconstructed smooth rational Hodge realization would need to prove the
real-sector-to-THIS-residue-energy comparison with every signed/metric defect.
The comparison structure below is a conditional quantitative port, not an
assertion that arbitrary rational Hodge classes supply it.

No implication from this source to DirichletGRH is claimed: the true
characterwise analytic inverse-L/Laplace return, primitive/conductor
normalization and functional equation remain separate obligations. In
particular this file does not import an unavailable Surface.Core adapter.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open UniqueFactorizationMonoid

namespace GRWTSK.NumberTheory.Moebius.FixedConductorHodgePort

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.DirichletResidueOrthogonality
open GRWTSK.NumberTheory.Moebius.DirichletResidueParseval
open GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential
open GRWTSK.NumberTheory.Primes.RadicalLogEntropy

variable (q : ℕ) [NeZero q]

/-- The actual unit-residue Hilbert energy of the original signed source.
No unit support is added artificially: nonunit classes are omitted because
all genuine Dirichlet characters annihilate them. -/
def unitResiduePositiveEnergy (T : ℝ) : ℝ :=
  ∑ a : ZMod q, if IsUnit a then originalResidueEnergy q a T else 0

/-- The original source-energy integral, and not an arbitrary positive mass,
is pointwise nonnegative on nonnegative physical-time horizons. -/
theorem unitResiduePositiveEnergy_nonneg {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ unitResiduePositiveEnergy q T := by
  classical
  unfold unitResiduePositiveEnergy
  apply Finset.sum_nonneg
  intro a _
  by_cases ha : IsUnit a
  · simp only [if_pos ha]
    unfold originalResidueEnergy
    exact intervalIntegral.integral_nonneg hT
      (fun u _ => sq_nonneg (‖originalResidueWave q a T u‖))
  · simp [ha]

/-- One individual character is dominated by the complete nonnegative
character sum, followed by EXACT original-source finite Parseval. The
character may be principal or imprimitive; these are not discarded. -/
theorem each_character_energy_le_positive_residue
    (χ : DirichletCharacter ℂ q) (T : ℝ) (hT : 0 ≤ T) :
    familyFiniteResponseEnergy (dirichletCharacterCoefficients χ) T ≤
      (q.totient : ℝ) * unitResiduePositiveEnergy q T := by
  classical
  calc
    familyFiniteResponseEnergy (dirichletCharacterCoefficients χ) T =
        ∑ ψ : DirichletCharacter ℂ q,
          if ψ = χ then
            familyFiniteResponseEnergy (dirichletCharacterCoefficients ψ) T
          else 0 := by simp
    _ ≤ ∑ ψ : DirichletCharacter ℂ q,
          familyFiniteResponseEnergy (dirichletCharacterCoefficients ψ) T := by
      apply Finset.sum_le_sum
      intro ψ _
      by_cases h : ψ = χ
      · simp [h]
      · simpa [h] using
          (familyFiniteResponseEnergy_nonneg
            (dirichletCharacterCoefficients ψ) hT)
    _ = (q.totient : ℝ) * unitResiduePositiveEnergy q T := by
      exact all_character_energy_parseval q T

/-- A positive residue sum bounded at every dyadic exponential rate
supplies the SAME bound to EACH original character-twisted response.
The multiplier phi(q) is a fixed real constant, not phi(exp T). -/
theorem each_character_allGrid_of_positive_residue
    (χ : DirichletCharacter ℂ q)
    (hsource : AllGridUpper (unitResiduePositiveEnergy q) (Real.log 2)) :
    AllGridUpper
      (fun T => familyFiniteResponseEnergy (dirichletCharacterCoefficients χ) T)
      (Real.log 2) := by
  intro ε hε
  obtain ⟨C, hC, hbound⟩ := hsource ε hε
  refine ⟨(q.totient : ℝ) * C,
    mul_nonneg (Nat.cast_nonneg _) hC, ?_⟩
  intro j
  have hlog : 0 ≤ Real.log (2 : ℝ) :=
    (Real.log_pos (by norm_num : (1 : ℝ) < 2)).le
  have hT : 0 ≤ time (Real.log 2) j := time_nonnegative hlog j
  calc
    familyFiniteResponseEnergy (dirichletCharacterCoefficients χ)
        (time (Real.log 2) j) ≤
      (q.totient : ℝ) * unitResiduePositiveEnergy q (time (Real.log 2) j) :=
        each_character_energy_le_positive_residue q χ _ hT
    _ ≤ (q.totient : ℝ) *
        (C * Real.exp (ε * time (Real.log 2) j)) :=
      mul_le_mul_of_nonneg_left (hbound j) (Nat.cast_nonneg _)
    _ = ((q.totient : ℝ) * C) *
        Real.exp (ε * time (Real.log 2) j) := by ring

/-- A Hodge-facing comparison must be proved from an ACTUAL rational/complex
scalar extension, harmonic projection and coherent residue detector.
This structure is a conditional interface, not an automatically provided map
from the algebraic cycle-class theorem. The residual is paid separately. -/
structure PositiveSectorComparison where
  metricEnergy : ℝ → ℝ
  signedReconstructionDefect : ℝ → ℝ
  reconstructionAllowance : ℝ → ℝ
  detectorCost : ℝ
  detectorCost_nonneg : 0 ≤ detectorCost
  /-- This signed equality must be derived from the actual Hodge detector,
  including all offdiagonal interactions; it is NOT supplied automatically. -/
  original_signed_return : ∀ T : ℝ, 0 ≤ T →
    unitResiduePositiveEnergy q T =
      detectorCost * metricEnergy T + signedReconstructionDefect T
  /-- The signed residual is separately upper-bounded; no silent zeroing. -/
  signed_defect_upper : ∀ T : ℝ, 0 ≤ T →
    signedReconstructionDefect T ≤ reconstructionAllowance T

/-- An exact signed return plus a genuine error allowance furnishes the
only inequality the positive-sector transfer may consume. -/
theorem PositiveSectorComparison.source_upper
    (P : PositiveSectorComparison q) (T : ℝ) (hT : 0 ≤ T) :
    unitResiduePositiveEnergy q T ≤
      P.detectorCost * P.metricEnergy T + P.reconstructionAllowance T := by
  rw [P.original_signed_return T hT]
  exact add_le_add_left (P.signed_defect_upper T hT) _

/-- All-positive-rate Hodge-sector control PLUS a controlled reconstruction
allowance transfers to each original Dirichlet twist at FIXED q.
No smoothness or algebraicity assertion constructs the hypotheses. -/
theorem PositiveSectorComparison.character_allGrid
    (P : PositiveSectorComparison q)
    (hmetric : AllGridUpper P.metricEnergy (Real.log 2))
    (herror : AllGridUpper P.reconstructionAllowance (Real.log 2))
    (χ : DirichletCharacter ℂ q) :
    AllGridUpper
      (fun T => familyFiniteResponseEnergy (dirichletCharacterCoefficients χ) T)
      (Real.log 2) := by
  apply each_character_allGrid_of_positive_residue q χ
  intro ε hε
  obtain ⟨C, hC, hCbound⟩ := hmetric ε hε
  obtain ⟨D, hD, hDbound⟩ := herror ε hε
  refine ⟨P.detectorCost * C + D,
    add_nonneg (mul_nonneg P.detectorCost_nonneg hC) hD, ?_⟩
  intro j
  have hlog : 0 ≤ Real.log (2 : ℝ) :=
    (Real.log_pos (by norm_num : (1 : ℝ) < 2)).le
  have hT : 0 ≤ time (Real.log 2) j := time_nonnegative hlog j
  calc
    unitResiduePositiveEnergy q (time (Real.log 2) j) ≤
      P.detectorCost * P.metricEnergy (time (Real.log 2) j) +
      P.reconstructionAllowance (time (Real.log 2) j) :=
        P.source_upper _ hT
    _ ≤ P.detectorCost *
        (C * Real.exp (ε * time (Real.log 2) j)) +
        D * Real.exp (ε * time (Real.log 2) j) := by
      exact add_le_add
        (mul_le_mul_of_nonneg_left (hCbound j) P.detectorCost_nonneg)
        (hDbound j)
    _ = (P.detectorCost * C + D) *
        Real.exp (ε * time (Real.log 2) j) := by ring

/-- The other supplied arithmetic route: the ENTIRE distinct-prime
conductor contribution is exactly log(radical q), with the original
prime set and no entropy-based cancellation claim. -/
def conductorRadicalLog (q : ℕ) : ℝ :=
  ∑ p ∈ q.primeFactors, Real.log (p : ℝ)

theorem conductorRadicalLog_eq_radical (q : ℕ) :
    conductorRadicalLog q = Real.log ((radical q : ℕ) : ℝ) := by
  exact sum_log_primeFactors q

/-- For a FIXED modulus, its radical-log conductor charge is a constant
in physical time and thus costs no positive exponential rate. This is
NOT uniform in q, and supplies no signed arithmetic cancellation. -/
theorem conductorRadicalLog_allGrid (q : ℕ) :
    AllGridUpper (fun _ : ℝ => conductorRadicalLog q) (Real.log 2) := by
  intro ε hε
  let C : ℝ := max 0 (conductorRadicalLog q)
  refine ⟨C, le_max_left _ _, ?_⟩
  intro j
  have hlog : 0 ≤ Real.log (2 : ℝ) :=
    (Real.log_pos (by norm_num : (1 : ℝ) < 2)).le
  have ht : 0 ≤ time (Real.log 2) j := time_nonnegative hlog j
  have he : 1 ≤ Real.exp (ε * time (Real.log 2) j) :=
    Real.one_le_exp_iff.mpr (mul_nonneg hε.le ht)
  calc
    conductorRadicalLog q ≤ C := le_max_right _ _
    _ ≤ C * Real.exp (ε * time (Real.log 2) j) :=
      le_mul_of_one_le_right (le_max_left _ _) he

/-- The source remains indexed by the ORIGINAL modulus and character,
not a changed or unrecorded field/conductor. Both true premises are exposed. -/
theorem positive_q_family_of_hodge_comparison
    (P : PositiveSectorComparison q)
    (hmetric : AllGridUpper P.metricEnergy (Real.log 2))
    (herror : AllGridUpper P.reconstructionAllowance (Real.log 2)) :
    ∀ χ : DirichletCharacter ℂ q,
      AllGridUpper
        (fun T => familyFiniteResponseEnergy
          (dirichletCharacterCoefficients χ) T) (Real.log 2) := by
  intro χ
  exact P.character_allGrid hmetric herror χ

end GRWTSK.NumberTheory.Moebius.FixedConductorHodgePort
