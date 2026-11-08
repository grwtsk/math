/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoLiteralHeadReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateBounds
import Mathlib.Tactic.NativeDecide

/-!
# Computed repository-bound radius-two literal-head LDL packet

Source baseline: `grwtsk/math@ce17d0c21026a26e4ed27012840b51cb7a73034f`.
The consumed radius-two entry, prime, gamma and pole files are unchanged on the
publication head except for additive lemmas in `WeilGammaData`.

This module removes the remaining external endpoint/source premise from
`WeilRadiusTwoLiteralHeadCertificate`:

* `bounds` is definitionally the repository's executable
  `headBoundsHull 40 (tables 40 2048)`;
* `sourceMargin = 1076433293 / 2^41` is checked against every complete row;
* a closed exact-rational LDL state is computed from that paid midpoint matrix;
* `native_decide` checks every positive pivot and the complete matrix identity.

The source-enclosure theorem is therefore inherited directly from
`headBoundsHull_sound`; no external floating interval engine is used by the
Lean statement.  The public theorem is only the literal 65-coordinate bordered
head floor `1/20`.  It does not supply the mode-64 high floor, residual or remote
payments, `StageLower 1`, a cofinal family, RH, or Dirichlet GRH.

The executable calculations below are proof candidates.  Parsing, elaboration,
fresh kernel replay and transitive axiom auditing have not been run in the
present environment.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
noncomputable section

open Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRepositoryHeadComputedLDL

open OddRootProjection OddSineForm OddBorderedExpansion
open RadiusTwoCandidateEntries RadiusTwoCandidateBounds RadiusTwoCandidateHead
open RadiusTwoPaidLowerBounds RadiusTwoLiteralHeadCertificate RadiusTwoLiteralHeadReturn
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteSignCertificates
open GRWTSK.LinearAlgebra.SchurObserver

abbrev Head := RadiusTwoCandidateEntries.Head

private abbrev Dim := 65

def dyadicBits : ℕ := 40

def seriesTerms : ℕ := 2048

/-- Exact maximum complete midpoint-radius row sum of the repository bounds. -/
def sourceMargin : ℚ := 1076433293 / (2 * (2 : ℚ) ^ dyadicBits)

def requestedFloor : ℚ := 1 / 20

/-- The actual repository intervals, not an independently encoded approximation. -/
def bounds : Head → Head → Bounds :=
  headBoundsHull dyadicBits (tables dyadicBits seriesTerms)

/-- Exact midpoint matrix after the complete source radius and requested floor. -/
def shiftedPaid : Matrix Head Head ℚ :=
  intervalPaid bounds sourceMargin - requestedFloor • 1

/-- Every interval encloses the unchanged literal source entry. -/
theorem bounds_sound (i j : Head) :
    Encloses (bounds i j) (RadiusTwoLiteralHeadCertificate.literalHead i j) := by
  change Encloses
    (headBoundsHull dyadicBits (tables dyadicBits seriesTerms) i j)
    (RadiusTwoLiteralHeadCertificate.literalHead i j)
  exact headBoundsHull_sound dyadicBits
    (tables_sound dyadicBits (K := seriesTerms) (by norm_num [seriesTerms])) i j

/-- Complete row-radius replay on the exact repository intervals. -/
set_option maxHeartbeats 0 in
theorem row_budget :
    ∀ i : Head, ∑ j, intervalRadii bounds i j ≤ sourceMargin := by
  native_decide

private def headNat : Head → ℕ
  | .inl i => i.val
  | .inr _ => 64

private def finToHead (i : Fin Dim) : Head :=
  if h : i.val < 64 then .inl ⟨i.val, h⟩ else .inr ()

private def paidArray : Array (Array ℚ) :=
  Array.ofFn fun i : Fin Dim =>
    Array.ofFn fun j : Fin Dim => shiftedPaid (finToHead i) (finToHead j)

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
    (fun total r => total +
      lowerEntry s i r * lowerEntry s j r * diagonalEntry s r) 0

private def ldlStep (s : LDLState) (k : ℕ) : LDLState :=
  let d := paidEntry k k - previousContribution s k k k
  let base := setDiagonal (setLower s k k 1) k d
  (List.range (64 - k)).foldl (fun state offset =>
    let i := k + 1 + offset
    let value :=
      (paidEntry i k - previousContribution state i k k) / d
    setLower state i k value) base

/-- Closed exact-rational LDL computation for the 65-coordinate paid matrix. -/
private def computedState : LDLState :=
  (List.range Dim).foldl ldlStep initialState

private def factorFrom (s : LDLState) (i j : Head) : ℚ :=
  lowerEntry s (headNat i) (headNat j)

private def pivotsFrom (s : LDLState) (i : Head) : ℚ :=
  diagonalEntry s (headNat i)

/-- The executable finite arithmetic statement checked below. -/
private def ComputedLDLValid : Prop :=
  (∀ i : Head, 0 < pivotsFrom computedState i) ∧
    ∀ i j : Head,
      shiftedPaid i j =
        (factorFrom computedState * diagonal (pivotsFrom computedState) *
          (factorFrom computedState).transpose) i j

set_option maxHeartbeats 0 in
private theorem computedLDLValid : ComputedLDLValid := by
  native_decide

/-- The exact computed unit-lower factor. -/
def factor : Matrix Head Head ℚ := factorFrom computedState

/-- The exact computed positive diagonal. -/
def pivots : Head → ℚ := pivotsFrom computedState

theorem pivots_positive (i : Head) : 0 < pivots i := by
  exact computedLDLValid.1 i

theorem shiftedPaid_ldl :
    shiftedPaid = factor * diagonal pivots * factor.transpose := by
  ext i j
  exact computedLDLValid.2 i j

private def shiftedPaidReal : Matrix Head Head ℝ :=
  shiftedPaid.map (Rat.castHom ℝ)

private def factorComplex : Matrix Head Head ℂ :=
  factor.map (Rat.castHom ℂ)

private theorem shiftedPaid_ldl_complex :
    shiftedPaidReal.map Complex.ofReal =
      factorComplex * diagonal (fun i => (pivots i : ℂ)) * factorComplexᴴ := by
  have hmap := congrArg
    (fun M : Matrix Head Head ℚ => M.map (Rat.castHom ℂ)) shiftedPaid_ldl
  have htranspose : factor.transpose.map (Rat.castHom ℂ) = factorComplexᴴ := by
    ext i j
    simp [factorComplex, Matrix.conjTranspose_apply]
  have hreal :
      shiftedPaidReal.map Complex.ofReal = shiftedPaid.map (Rat.castHom ℂ) := by
    ext i j
    simp [shiftedPaidReal]
  rw [hreal]
  rw [Matrix.map_mul, Matrix.map_mul] at hmap
  rw [htranspose] at hmap
  simpa only [Matrix.map_apply, Rat.coe_castHom, factorComplex] using hmap

private theorem shiftedPaid_nonnegative (v : Head → ℝ) :
    0 ≤ quadratic shiftedPaidReal v := by
  exact nonnegative_real_quadratic_of_ldl shiftedPaidReal factorComplex pivots
    (fun i => (pivots_positive i).le) shiftedPaid_ldl_complex v

/-- Concrete source-bound finite-head theorem on the literal bordered source. -/
theorem literal_head_ge_one_twentieth (v : Head → ℝ) :
    (1 / 20 : ℝ) * (∑ i, v i ^ 2) ≤
      quadratic RadiusTwoLiteralHeadCertificate.literalHead v := by
  let shiftedSource : Matrix Head Head ℝ :=
    RadiusTwoLiteralHeadCertificate.literalHead - (1 / 20 : ℝ) • 1
  let radii : Matrix Head Head ℝ :=
    (intervalRadii bounds).map (Rat.castHom ℝ)
  have hCast :
      shiftedPaidReal =
        (intervalCenters bounds).map (Rat.castHom ℝ) -
          (sourceMargin : ℝ) • 1 - (1 / 20 : ℝ) • 1 := by
    ext i j
    by_cases hij : i = j <;>
      simp [shiftedPaidReal, shiftedPaid, intervalPaid, requestedFloor, hij]
  have hShifted : 0 ≤ quadratic shiftedSource v := by
    refine quadratic_nonneg_of_minorant shiftedSource shiftedPaidReal radii
      (sourceMargin : ℝ) ?_ ?_ ?_ shiftedPaid_nonnegative v
    · intro i j
      rw [hCast]
      simp only [shiftedSource, Matrix.sub_apply, Matrix.smul_apply,
        Matrix.one_apply, smul_eq_mul]
      by_cases hij : i = j
      · subst j
        simp only [ite_true]
        obtain ⟨hLo, hHi⟩ := bounds_sound i i
        change
          |RadiusTwoLiteralHeadCertificate.literalHead i i -
              (intervalCenters bounds i i : ℝ)| ≤
            (intervalRadii bounds i i : ℝ)
        rw [abs_le]
        push_cast [intervalCenters, intervalRadii]
        exact ⟨by linarith only [hLo], by linarith only [hHi]⟩
      · simp only [hij, ite_false, mul_zero, sub_zero]
        obtain ⟨hLo, hHi⟩ := bounds_sound i j
        change
          |RadiusTwoLiteralHeadCertificate.literalHead i j -
              (intervalCenters bounds i j : ℝ)| ≤
            (intervalRadii bounds i j : ℝ)
        rw [abs_le]
        push_cast [intervalCenters, intervalRadii]
        exact ⟨by linarith only [hLo], by linarith only [hHi]⟩
    · intro i j
      change
        (headRadii dyadicBits (tables dyadicBits seriesTerms) i j : ℝ) =
          (headRadii dyadicBits (tables dyadicBits seriesTerms) j i : ℝ)
      exact congrArg (fun q : ℚ => (q : ℝ))
        (headRadii_symmetric dyadicBits (tables dyadicBits seriesTerms) i j)
    · intro i
      change ∑ j, (intervalRadii bounds i j : ℝ) ≤ (sourceMargin : ℝ)
      exact_mod_cast row_budget i
  have hMass : v ⬝ᵥ v = ∑ i, v i ^ 2 := by
    simp only [dotProduct, pow_two]
  have hExpand :
      quadratic shiftedSource v =
        quadratic RadiusTwoLiteralHeadCertificate.literalHead v -
          (1 / 20 : ℝ) * (∑ i, v i ^ 2) := by
    simp only [shiftedSource, quadratic, Matrix.sub_mulVec,
      Matrix.smul_mulVec, Matrix.one_mulVec, dotProduct_sub,
      dotProduct_smul, smul_eq_mul, hMass]
  rw [hExpand] at hShifted
  linarith

/-- Equivalent shifted form for downstream finite-head consumers. -/
theorem literal_head_shifted_nonnegative (v : Head → ℝ) :
    0 ≤ quadratic
      (RadiusTwoLiteralHeadCertificate.literalHead - (1 / 20 : ℝ) • 1) v := by
  have h := literal_head_ge_one_twentieth v
  have hMass : v ⬝ᵥ v = ∑ i, v i ^ 2 := by
    simp only [dotProduct, pow_two]
  simp only [quadratic, Matrix.sub_mulVec, Matrix.smul_mulVec,
    Matrix.one_mulVec, dotProduct_sub, dotProduct_smul,
    smul_eq_mul, hMass]
  linarith


/-- The concrete repository-bound head removes the external packet premise from
`RadiusTwoLiteralHeadReturn.paidLower_nonnegative_of_literalHead`.  The trial,
complete residual and high-complement obligations remain unchanged. -/
theorem paidLower_nonnegative_of_computedHead
    (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℝ)
    (htrial : ∀ v : Head → ℝ,
      quadratic RadiusTwoLiteralHeadCertificate.literalHead v ≤
        quadratic (trialUpper X) v)
    (hcost : ∀ v : Head → ℝ,
      quadratic (paidResidualCost bits t X) v ≤
        (1 / 100 : ℝ) * ∑ i, (v i) ^ 2)
    (v : Head → ℝ) :
    0 ≤ quadratic (paidLower bits t X) v := by
  have hhead := literal_head_ge_one_twentieth v
  have hcost' :
      quadratic (paidResidualCost bits t X) v / (1 / 5 : ℝ) ≤
        (1 / 20 : ℝ) * ∑ i, (v i) ^ 2 := by
    calc
      quadratic (paidResidualCost bits t X) v / (1 / 5 : ℝ) =
          5 * quadratic (paidResidualCost bits t X) v := by ring
      _ ≤ 5 * ((1 / 100 : ℝ) * ∑ i, (v i) ^ 2) := by
        exact mul_le_mul_of_nonneg_left (hcost v) (by norm_num)
      _ = (1 / 20 : ℝ) * ∑ i, (v i) ^ 2 := by ring
  rw [quadratic_paidLower_eq_trial_sub_cost]
  exact sub_nonneg.mpr (hcost'.trans (hhead.trans (htrial v)))

/-- Return the computed literal head through the existing whole-window radius-two
consumer.  This theorem still requires the exact trial comparison, the complete
`1/100` residual budget and the independent mode-64 high floor. -/
theorem stageLower_one_of_computedHead
    (bits : ℕ) {t : ScalarTables} (ht : t.Sound)
    (X : Matrix Trial Head ℝ)
    (hhead : ∀ (v : Head → ℝ) (i : Fin 64),
      X.mulVec v (.inl (Fin.castLE (by decide : 64 ≤ 512) i)) =
        v (.inl i))
    (hpole : ∀ v : Head → ℝ, X.mulVec v (.inr ()) = v (.inr ()))
    (hfloor : OddLiteralWindow.HighFloor 2 (-1 / 2) (1 / 5) 64)
    (htrial : ∀ v : Head → ℝ,
      quadratic RadiusTwoLiteralHeadCertificate.literalHead v ≤
        quadratic (trialUpper X) v)
    (hcost : ∀ v : Head → ℝ,
      quadratic (paidResidualCost bits t X) v ≤
        (1 / 100 : ℝ) * ∑ i, (v i) ^ 2) :
    OddLiteralCofinal.StageLower 1 := by
  apply stageLower_one_of_paidLower bits ht X hhead hpole hfloor
  intro v
  exact paidLower_nonnegative_of_computedHead bits t X htrial hcost v

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRepositoryHeadComputedLDL
