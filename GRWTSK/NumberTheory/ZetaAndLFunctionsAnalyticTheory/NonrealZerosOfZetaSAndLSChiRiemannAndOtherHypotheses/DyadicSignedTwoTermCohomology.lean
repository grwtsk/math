/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.CommutativeAlgebra.DyadicPadicDelta
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicPadicResidueTower
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Finite two-term 2-adic cohomology of the ACTUAL signed dyadic incidence

The cochain differential is the existing complete signed
Möbius off-diagonal incidence at geometric cutoff N=2^j, in
the GENUINE complete coefficient ring PadicInt 2 with its
previously constructed delta/Frobenius structure.

C⁰_j = (Fin(2^j) → Z₂), C¹_j = (Fin(2^j) → Z₂), and
C²_j = 0. The actual finite source matrix defines
d_j : C⁰_j →ₗ[Z₂] C¹_j.

Thus H⁰_j = ker(d_j) and H¹_j = C¹_j / range(d_j).
These are honest two-term cohomology MODULES with the
differential-composition condition, but they are NOT
Bhatt-Scholze prismatic cohomology of an arithmetic scheme.

The exact source entry has a rank-one signed response
minus its complete diagonal correction. This exposes a
coherent central direction and the vertical squareful
fiber without dropping original unsifted indices.
The completed p=2 Frobenius fixes the source matrix,
but that does not prove target cohomology vanishes.
-/

namespace GRWTSK.NumberTheory.Moebius.DyadicSignedTwoTermCohomology

open GRWTSK.NumberTheory.Moebius.DyadicPadicIntCompletion
open GRWTSK.NumberTheory.Moebius.DyadicPadicResidueTower
open GRWTSK.NumberTheory.Moebius.DyadicTwoDeltaCochain
open GRWTSK.NumberTheory.Moebius.DyadicModTwoPairLift
open GRWTSK.NumberTheory.Moebius.DyadicPadicDelta
open GRWTSK.Algebra.FinitePrismaticSurfaceModel.DividedFrobeniusCochain

private instance : Fact (Nat.Prime (2 : ℕ)) := ⟨by norm_num⟩

abbrev Cochains (j : ℕ) := DyadicIndex j → Coeff

/-- The ACTUAL signed incidence is linear in the input cochain. -/
def sourceDifferential (j : ℕ) : Cochains j →ₗ[Coeff] Cochains j where
  toFun x m := finiteCoboundary (padicIncidence j) x m
  map_add' := by
    intro x y
    funext m
    simp [finiteCoboundary, mul_add, Finset.sum_add_distrib]
  map_smul' := by
    intro a x
    funext m
    change (∑ n : DyadicIndex j,
      padicIncidence j m n * (a * x n)) =
      a * (∑ n : DyadicIndex j, padicIncidence j m n * x n)
    calc
      _ = ∑ n : DyadicIndex j,
          a * (padicIncidence j m n * x n) := by
            apply Finset.sum_congr rfl
            intro n _
            ring
      _ = _ := by rw [Finset.mul_sum]

/-- Explicit zero next differential; there are no asserted higher
prismatic cochains in this bounded source model. -/
def nextDifferential (j : ℕ) : Cochains j →ₗ[Coeff] Cochains j := 0

theorem differential_comp_next (j : ℕ) :
    (nextDifferential j).comp (sourceDifferential j) = 0 := by
  simp [nextDifferential]

/-- Degree-zero cohomology of the literal two-term complex. -/
abbrev H0 (j : ℕ) : Submodule Coeff (Cochains j) :=
  (sourceDifferential j).ker

/-- Degree-one cohomology is the actual cokernel, not an
abstractly asserted vanishing prismatic group. -/
abbrev H1 (j : ℕ) : Type :=
  Cochains j ⧸ (sourceDifferential j).range

/-- The actual source coefficient at a finite dyadic index. -/
def sourceCoefficient (j : ℕ) (m : DyadicIndex j) : Coeff :=
  padicMu (m.val + 1)

/-- The source's signed coherent coordinate. -/
def sourceMoment (j : ℕ) (x : Cochains j) : Coeff :=
  ∑ n : DyadicIndex j, sourceCoefficient j n * x n

/-- Unweighted original signed matrix = rank-one coherent part
minus exact diagonal. No squarefree/prime-power term is omitted. -/
theorem sourceDifferential_rankOne (j : ℕ)
    (x : Cochains j) (m : DyadicIndex j) :
    (sourceDifferential j x) m =
      sourceCoefficient j m * sourceMoment j x -
        (sourceCoefficient j m) ^ 2 * x m := by
  classical
  have hentry : ∀ n : DyadicIndex j,
      padicIncidence j m n =
        if m = n then 0 else
          sourceCoefficient j m * sourceCoefficient j n := by
    intro n
    by_cases h : m = n
    · simp [padicIncidence, signedIncidence, h]
    · simp [padicIncidence, signedIncidence, sourceCoefficient, padicMu, h]
      push_cast
      ring
  change (∑ n : DyadicIndex j, padicIncidence j m n * x n) =
    sourceCoefficient j m *
      (∑ n : DyadicIndex j, sourceCoefficient j n * x n) -
        (sourceCoefficient j m) ^ 2 * x m
  simp_rw [hentry]
  simp only [ite_mul, zero_mul]
  calc
    (∑ n : DyadicIndex j,
      if m = n then (0 : Coeff) else
        (sourceCoefficient j m * sourceCoefficient j n) * x n) =
      (∑ n : DyadicIndex j,
        (sourceCoefficient j m * sourceCoefficient j n) * x n) -
      (∑ n : DyadicIndex j,
        if m = n then
          (sourceCoefficient j m * sourceCoefficient j n) * x n else 0) := by
        rw [← Finset.sum_sub_distrib]
        apply Finset.sum_congr rfl
        intro n _
        by_cases h : m = n <;> simp [h]
    _ = _ := by
      simp only [Finset.sum_ite_eq', Finset.mem_univ, ite_true]
      simp_rw [mul_assoc]
      rw [← Finset.mul_sum]
      ring

/-- Degree-zero cocycles are precisely the zero-output states of
the source-specific signed incidence operator. -/
theorem mem_H0_iff (j : ℕ) (x : Cochains j) :
    x ∈ H0 j ↔ ∀ m : DyadicIndex j,
      (sourceDifferential j x) m = 0 := by
  rw [LinearMap.mem_ker]
  exact ⟨fun h m => congrFun h m, fun h => funext h⟩

/-- An actual zero Möbius column (e.g. a squareful integer)
creates a distinct degree-zero source cocycle. The source
index and sign-zero fact are explicit hypotheses. -/
def coordinate (j : ℕ) (n : DyadicIndex j) : Cochains j :=
  fun m => if m = n then 1 else 0

theorem squareful_coordinate_in_H0 (j : ℕ)
    (n : DyadicIndex j)
    (hzero : signedMu (n.val + 1) = 0) :
    coordinate j n ∈ H0 j := by
  rw [mem_H0_iff]
  intro m
  have hcol : padicIncidence j m n = 0 := by
    by_cases h : m = n
    · simp [padicIncidence, signedIncidence, h]
    · simp [padicIncidence, signedIncidence, h, hzero]
  change (∑ k : DyadicIndex j,
      padicIncidence j m k *
        (if k = n then (1 : Coeff) else 0)) = 0
  simp only [mul_ite, mul_one, mul_zero, Finset.sum_ite_eq',
    Finset.mem_univ, ite_true]
  exact hcol

/-- An exact squareful source-zero column gives a NONZERO
degree-zero cohomology class. Thus a blanket vanishing
assertion for these finite source cochains would be false.
The actual arithmetic label is retained as n.val+1. -/
theorem squareful_nonzero_cocycle (j : ℕ)
    (n : DyadicIndex j)
    (hzero : signedMu (n.val + 1) = 0) :
    ∃ x : Cochains j, x ≠ 0 ∧ x ∈ H0 j := by
  refine ⟨coordinate j n, ?_, squareful_coordinate_in_H0 j n hzero⟩
  intro hz
  have hself := congrFun hz n
  simp [coordinate] at hself

/-- Genuine complete 2-adic Frobenius, previously constructed from
the δ-laws, commutes with this ACTUAL source matrix. This is
not a cohomological vanishing theorem. -/
theorem sourceDifferential_frobenius (j : ℕ)
    (x : Cochains j) (m : DyadicIndex j) :
    completedTwoDelta.frobeniusLift ((sourceDifferential j x) m) =
      (sourceDifferential j
        (fun n => completedTwoDelta.frobeniusLift (x n))) m := by
  exact padic_signedCoboundary_frobenius j x m

end GRWTSK.NumberTheory.Moebius.DyadicSignedTwoTermCohomology
