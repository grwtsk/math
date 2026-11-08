/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSchurPaidReconstruction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRepositoryHeadComputedLDL
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPaidLowerBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRemoteProjection
import Mathlib.Tactic.NativeDecide

/-!
# Source-bound paid sign for the rank-four radius-two reconstruction

Source baseline: current `grwtsk/math/main` at publication time. The exact
rational reconstruction is defined in the preceding module and preserves every
retained coordinate. This file computes every interval from the maintained
source definitions:

* `tables 40 2048` for the literal gamma, prime and pole rectangle;
* `boundaryBounds 40 n 2048` and `primeSignalBounds 40 n` for the complete
  projected remote allowance;
* `paidEntryBounds` and `symmetricBounds` for the existing Schur-paid lower
  matrix.

The midpoint matrix pays a complete rational row-radius allowance `1/25`.
A closed exact-rational LDL calculation checks every pivot and every entry.
The source-return theorem then proves nonnegativity of the EXISTING
`RadiusTwoStageReturn.paidLower` for this reconstruction.

The reconstruction was proposed numerically, but no floating number is a proof
premise. The source calculations, row budget, LDL identity and pivot signs are
closed propositions intended for `native_decide`.

The independent full high-complement theorem

`OddLiteralWindow.HighFloor 2 (-1/2) (1/5) 64`

is not asserted here. It remains the sole premise of the final `StageLower 1`
splice in this module. No later cofinal stage, RH, or Dirichlet GRH is claimed.

AI-assisted source drafting. Lean elaboration, fresh kernel replay, transitive
axiom auditing and independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
noncomputable section

open Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSchurPaidCertificate

open OddRootProjection OddSineForm OddBorderedExpansion
open OddBoundarySignalBounds LowSchur OddRemoteAllowanceMatrix
open RadiusTwoCandidateEntries RadiusTwoCandidateBounds
open RadiusTwoPaidLowerBounds RadiusTwoRemoteProjection RadiusTwoRemoteScalars
open RadiusTwoStageReturn RadiusTwoTrialProjection
open RadiusTwoSchurPaidReconstruction
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteSignCertificates
open GRWTSK.LinearAlgebra.SchurObserver

abbrev Head := RadiusTwoCandidateEntries.Head
abbrev Trial := RadiusTwoCandidateEntries.Trial
private abbrev Dim : ℕ := 65

def observationBits : ℕ := 40
def seriesTerms : ℕ := 2048

private def scalarTables : ScalarTables :=
  tables observationBits seriesTerms

private theorem scalarTables_sound : scalarTables.Sound :=
  tables_sound observationBits (by norm_num [seriesTerms])

private def boundary (n : ℕ) : Bounds :=
  boundaryBounds observationBits n seriesTerms

private def prime (n : ℕ) : Bounds :=
  primeSignalBounds observationBits n

private theorem boundary_sound (n : ℕ) :
    Encloses (boundary n) (boundarySignal 2 n) :=
  boundaryBounds_sound observationBits n (by norm_num [seriesTerms])

private theorem prime_sound (n : ℕ) :
    Encloses (prime n) (primeSignal 2 (n : ℝ)) :=
  primeSignalBounds_sound observationBits n

private def projectedTables : ProjectedTables :=
  projectedTablesFrom observationBits reconstructionQ boundary prime

private theorem projectedTables_sound :
    projectedTables.Sound reconstruction := by
  change (projectedTablesFrom observationBits reconstructionQ boundary prime).Sound
    (reconstructionQ.map (Rat.castHom ℝ))
  exact projectedTablesFrom_sound observationBits reconstructionQ
    (fun n _ _ => boundary_sound n)
    (fun n _ _ => prime_sound n)

private def remoteBounds (i j : Head) : Bounds :=
  completeRemoteEntryBounds observationBits projectedTables i j

private theorem remoteBounds_sound (i j : Head) :
    Encloses (remoteBounds i j)
      (congruence reconstruction
        (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) i j) :=
  completeRemoteEntryBounds_sound observationBits projectedTables_sound i j

private def rawBounds (i j : Head) : Bounds :=
  paidEntryBounds observationBits scalarTables reconstructionQ remoteBounds i j

private theorem rawBounds_sound (i j : Head) :
    Encloses (rawBounds i j)
      (splitPaidLower observationBits scalarTables reconstructionQ i j) :=
  paidEntryBounds_sound observationBits scalarTables_sound reconstructionQ
    remoteBounds_sound i j

/-- Symmetric outward bounds of the exact paid lower matrix. -/
def bounds (i j : Head) : Bounds :=
  symmetricBounds rawBounds i j

theorem bounds_symmetric (i j : Head) :
    bounds i j = bounds j i :=
  symmetricBounds_symm rawBounds i j

theorem bounds_sound (i j : Head) :
    Encloses (bounds i j)
      (((1 / 2 : ℝ) •
        (splitPaidLower observationBits scalarTables reconstructionQ +
          (splitPaidLower observationBits scalarTables reconstructionQ).transpose)) i j) :=
  symmetricBounds_sound rawBounds_sound i j

/-- Complete outward payment for the generated source intervals. -/
def sourceMargin : ℚ := 1 / 25

def paid : Matrix Head Head ℚ :=
  intervalPaid bounds sourceMargin

set_option maxHeartbeats 0 in
theorem row_budget :
    ∀ i : Head, ∑ j, intervalRadii bounds i j ≤ sourceMargin := by
  native_decide

/-! ## Closed exact-rational LDL -/

private def headNat : Head → ℕ
  | .inl i => i.val
  | .inr _ => 64

private def finToHead (i : Fin Dim) : Head :=
  if h : i.val < 64 then .inl ⟨i.val, h⟩ else .inr ()

private def paidArray : Array (Array ℚ) :=
  Array.ofFn fun i : Fin Dim =>
    Array.ofFn fun j : Fin Dim => paid (finToHead i) (finToHead j)

private def paidEntry (i j : ℕ) : ℚ :=
  (paidArray.getD i #[]).getD j 0

private structure LDLState where
  lower : Array (Array ℚ)
  diag : Array ℚ

private def initialState : LDLState where
  lower := Array.replicate Dim (Array.replicate Dim 0)
  diag := Array.replicate Dim 0

private def lowerEntry (s : LDLState) (i j : ℕ) : ℚ :=
  (s.lower.getD i #[]).getD j 0

private def diagonalEntry (s : LDLState) (i : ℕ) : ℚ :=
  s.diag.getD i 0

private def setLower (s : LDLState) (i j : ℕ) (x : ℚ) : LDLState :=
  let row := s.lower.getD i (Array.replicate Dim 0)
  { s with lower := s.lower.set! i (row.set! j x) }

private def setDiagonal (s : LDLState) (i : ℕ) (x : ℚ) : LDLState :=
  { s with diag := s.diag.set! i x }

private def previousContribution (s : LDLState) (i j k : ℕ) : ℚ :=
  (List.range k).foldl
    (fun total r =>
      total + lowerEntry s i r * lowerEntry s j r * diagonalEntry s r) 0

private def ldlStep (s : LDLState) (k : ℕ) : LDLState :=
  let d := paidEntry k k - previousContribution s k k k
  let base := setDiagonal (setLower s k k 1) k d
  (List.range (64 - k)).foldl (fun state offset =>
    let i := k + 1 + offset
    let value := (paidEntry i k - previousContribution state i k k) / d
    setLower state i k value) base

private def computedState : LDLState :=
  (List.range Dim).foldl ldlStep initialState

private def factorFrom (s : LDLState) (i j : Head) : ℚ :=
  lowerEntry s (headNat i) (headNat j)

private def pivotsFrom (s : LDLState) (i : Head) : ℚ :=
  diagonalEntry s (headNat i)

private def ComputedLDLValid : Prop :=
  (∀ i : Head, 0 < pivotsFrom computedState i) ∧
    ∀ i j : Head,
      paid i j =
        (factorFrom computedState * diagonal (pivotsFrom computedState) *
          (factorFrom computedState).transpose) i j

set_option maxHeartbeats 0 in
private theorem computedLDLValid : ComputedLDLValid := by
  native_decide

def factor : Matrix Head Head ℚ :=
  factorFrom computedState

def pivots : Head → ℚ :=
  pivotsFrom computedState

theorem pivots_positive (i : Head) : 0 < pivots i :=
  computedLDLValid.1 i

theorem paid_ldl :
    paid = factor * diagonal pivots * factor.transpose := by
  ext i j
  exact computedLDLValid.2 i j

private def paidReal : Matrix Head Head ℝ :=
  paid.map (Rat.castHom ℝ)

private def factorComplex : Matrix Head Head ℂ :=
  factor.map (Rat.castHom ℂ)

private theorem paid_ldl_complex :
    paidReal.map Complex.ofReal =
      factorComplex * diagonal (fun i => (pivots i : ℂ)) * factorComplexᴴ := by
  have hmap := congrArg
    (fun M : Matrix Head Head ℚ => M.map (Rat.castHom ℂ)) paid_ldl
  have htranspose :
      factor.transpose.map (Rat.castHom ℂ) = factorComplexᴴ := by
    ext i j
    simp [factorComplex, Matrix.conjTranspose_apply]
  have hreal :
      paidReal.map Complex.ofReal = paid.map (Rat.castHom ℂ) := by
    ext i j
    simp [paidReal]
  rw [hreal]
  rw [Matrix.map_mul, Matrix.map_mul] at hmap
  rw [htranspose] at hmap
  simpa only [Matrix.map_apply, Rat.coe_castHom, factorComplex] using hmap

private theorem paid_nonnegative (v : Head → ℝ) :
    0 ≤ quadratic paidReal v := by
  exact nonnegative_real_quadratic_of_ldl paidReal factorComplex pivots
    (fun i => (pivots_positive i).le) paid_ldl_complex v

/-- The exact repository source paid lower is nonnegative. -/
theorem paidLower_nonnegative (v : Head → ℝ) :
    0 ≤ quadratic (paidLower observationBits scalarTables reconstruction) v := by
  let A : Matrix Head Head ℝ :=
    (1 / 2 : ℝ) •
      (splitPaidLower observationBits scalarTables reconstructionQ +
        (splitPaidLower observationBits scalarTables reconstructionQ).transpose)
  let radii : Matrix Head Head ℝ :=
    (intervalRadii bounds).map (Rat.castHom ℝ)
  have hCast :
      paidReal =
        (intervalCenters bounds).map (Rat.castHom ℝ) -
          (sourceMargin : ℝ) • 1 := by
    ext i j
    by_cases hij : i = j <;>
      simp [paidReal, paid, intervalPaid, hij]
  have hA : 0 ≤ quadratic A v := by
    refine quadratic_nonneg_of_minorant A paidReal radii
      (sourceMargin : ℝ) ?_ ?_ ?_ paid_nonnegative v
    · intro i j
      rw [hCast]
      simp only [A, Matrix.sub_apply, sub_sub_sub_cancel_right]
      obtain ⟨hLo, hHi⟩ := bounds_sound i j
      change
        |A i j - (intervalCenters bounds i j : ℝ)| ≤
          (intervalRadii bounds i j : ℝ)
      rw [abs_le]
      push_cast [intervalCenters, intervalRadii]
      exact ⟨by linarith only [hLo], by linarith only [hHi]⟩
    · intro i j
      change (intervalRadii bounds i j : ℝ) =
        (intervalRadii bounds j i : ℝ)
      unfold intervalRadii
      rw [bounds_symmetric i j]
    · intro i
      change ∑ j, (intervalRadii bounds i j : ℝ) ≤
        (sourceMargin : ℝ)
      exact_mod_cast row_budget i
  rw [quadratic_symmetrized,
    quadratic_splitPaidLower observationBits scalarTables reconstructionQ v
      (reconstruction_match v)] at hA
  exact hA

/-- The finite reconstruction and complete paid lower are now closed. The only
remaining premise in this radius-two stage splice is the independent literal
mode-64 high floor. -/
theorem stageLower_one
    (hfloor : OddLiteralWindow.HighFloor 2 (-1 / 2) (1 / 5) 64) :
    OddLiteralCofinal.StageLower 1 := by
  exact stageLower_one_of_paidLower observationBits scalarTables_sound
    reconstruction reconstruction_head reconstruction_pole hfloor
    paidLower_nonnegative

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSchurPaidCertificate
