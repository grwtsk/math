/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoDyadicReplay
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoHighFloorReduction

/-!
# A single source-preserving radius-two packet consumer

Reuse the dyadic reconstruction, the canonical gamma/prime/pole tables,
paid interval matrix, signed projected remote allowance, and existing LDL
checker. Head matching is proved by `extendMiddle_preservesHead`; it is
not another numerical assumption. Symmetry and entry enclosure are derived
from the existing paid-entry theorems. The remaining inputs are the actual
remote comparison, rational row/minorant checks, and the independent high
floor. The second consumer derives that smaller floor from the existing
far-tail theorem and its fully paid middle comparison.

No concrete packet or paid-middle sign is constructed here. Neither the
65-coordinate head certificate nor a smaller remote error replaces them.
This module discharges composition obligations, not the arithmetic signs.
Source baseline c5648c5a280d1cbdf4f98b594a450aaa5e4969c9.
AI-assisted manual source. Elaboration, kernel replay, transitive axiom
audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCertificatePacket

open RadiusTwoCandidateEntries RadiusTwoCandidateBounds RadiusTwoDyadicReplay
open RadiusTwoPaidLowerBounds RadiusTwoTrialProjection OddLiteralWindow
open OddResidualSourceComparison OddResidualMajorant OddSineForm
open OddRemoteAllowanceMatrix
open OddHighComplement (shiftedOddCoreEnergy)
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL

structure Data where
  bits : ℕ
  gammaTerms : ℕ
  coefficientBits : ℕ
  targetBits : ℕ
  middle : Matrix (Fin 448) Head ℤ
  remote : Head → Head → Bounds
  sourceMargin : ℚ
  comparisonMargin : ℚ
  target : Matrix Head Head ℤ
  factor : Matrix Head Head ℤ
  pivots : Head → ℤ

def Data.reconstruction (p : Data) : Matrix Trial Head ℚ :=
  (extendMiddle p.coefficientBits p.middle).map (dyadic p.coefficientBits)

def Data.scalars (p : Data) : ScalarTables := tables p.bits p.gammaTerms

def Data.bounds (p : Data) : Head → Head → Bounds :=
  symmetricBounds (paidEntryBounds p.bits p.scalars p.reconstruction p.remote)

/-- These are exact source/acceptance comparisons, not a lower sign field. -/
structure Accepted (p : Data) : Prop where
  gammaTerms_ge : 1024 ≤ p.gammaTerms
  remote_sound : ∀ i j, Encloses (p.remote i j)
    (congruence (p.reconstruction.map (Rat.castHom ℝ))
      (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) i j)
  row_budget : ∀ i, ∑ j, intervalRadii p.bounds i j ≤ p.sourceMargin
  ldl : check p.target p.factor p.pivots = true
  minorant : checkMinorant (intervalPaid p.bounds p.sourceMargin)
    (targetValue p.targetBits p.target) p.comparisonMargin = true

theorem Data.head_matches (p : Data) (v : Head → ℝ) (i : Head) :
    (p.reconstruction.map (Rat.castHom ℝ)).mulVec v (headSlot i) = v i :=
  extendMiddle_preservesHead p.coefficientBits p.middle v i

/-- All entry and reconstruction implications are discharged by existing theorems. -/
theorem stageLower_one (p : Data) (ha : Accepted p)
    (hfloor : HighFloor 2 (-1 / 2) (1 / 5) 64) : OddLiteralCofinal.StageLower 1 := by
  have ht : p.scalars.Sound := tables_sound p.bits ha.gammaTerms_ge
  apply stageLower_one_of_intervalLDL p.bits p.targetBits ht p.reconstruction
    p.head_matches hfloor p.bounds
    (symmetricBounds_symm _) ?_ p.sourceMargin p.comparisonMargin
    p.target p.factor p.pivots ha.row_budget ha.ldl ha.minorant
  intro i j
  exact symmetricBounds_sound
    (paidEntryBounds_sound p.bits ht p.reconstruction ha.remote_sound) i j

/-- The middle comparison, not the positive finite head, supplies the mode-64 floor. -/
theorem stageLower_one_of_paidMiddle (p : Data) (ha : Accepted p)
    {M L J : ℕ} (hM : 344064 ≤ M) (hL : M ≤ L) (hJ : L ≤ J)
    (s : ℝ) (hs : 0 < s)
    (trial : (Fin 344064 → ℝ) → ℕ → ℝ)
    (hmatch : ∀ u (i : Fin 344064), trial u (i.val + 1) = u i)
    (hpaid : ∀ u : Fin 344064 → ℝ, (∀ i, i.val < 64 → u i = 0) →
      ((∑ n ∈ Finset.range (L - 344064),
        (literalAugmentedRow M 2 (trial u) 0 (-3 / 10) (344065 + n)) ^ 2) +
        completeRemoteAllowance M L J 2 (trial u) 0 s) / (1 / 5) ≤
      shiftedOddCoreEnergy 2 (-3 / 10)
        (finiteSine 2 (fun i : Fin M => trial u (i.val + 1)))) :
    OddLiteralCofinal.StageLower 1 :=
  stageLower_one p ha
    (RadiusTwoHighFloorReduction.highFloor_two_of_paidMiddle hM hL hJ s hs trial hmatch hpaid)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCertificatePacket
