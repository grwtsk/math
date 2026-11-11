/-
Copyright (c) 2026 grwtsk contributors. MIT.

Source: ZCERT-1, sections 6 and 8, research repository commit
b8c773f7847126518bcc20f3e37d1223af889cf4.
Consumer: Program 6 source-exact finite zero-divisor certificates.
Coordination: grwtsk/math#1806; research repository issue #48.

FORMAL_SOURCE_CANDIDATE. Elaboration, fresh kernel replay, transitive
axiom audit, and independent analytical review: NOT_RUN.
-/

import Mathlib.Analysis.Complex.Basic
import Mathlib.Data.Matrix.Notation
import Mathlib.Tactic

/-!
# Hermite moment identities and error-safe negative certificates

MSC2020: 15A63, 15A18; arithmetic consumer 11M26, 11M41.

The quadratic form below uses a transpose, not a conjugate transpose.
The finite moment identity is proved without a reality or simplicity
assumption on the nodes. Natural multiplicities can be cast to the real
weights; repeated nodes are permitted. The implication from a negative
value to a nonreal node needs nonnegative weights but not conjugate pairing.

The full Hermite converse and inertia formula, interpolation at distinct
nodes, analytic contour identities, and arithmetic source identification
are NOT established here. No matrix positivity is assumed for an arithmetic
family. These are source proof candidates, not an execution receipt.
-/

noncomputable section

open scoped BigOperators

namespace GRWTSK.HermiteMomentCertificates

variable {ι α : Type*} [Fintype ι] [Fintype α]

/-- The literal real quadratic value; no symmetry is required to define it. -/
def quadraticValue (M : Matrix ι ι ℝ) (v : ι → ℝ) : ℝ :=
  ∑ i, ∑ j, v i * M i j * v j

/-- Nonnegativity of the quadratic form. For symmetric real matrices this
is the usual positive-semidefinite condition. -/
def Nonnegative (M : Matrix ι ι ℝ) : Prop :=
  ∀ v : ι → ℝ, 0 ≤ quadraticValue M v

/-- An entrywise error budget evaluated on one vector. -/
def errorBudget (E : Matrix ι ι ℝ) (v : ι → ℝ) : ℝ :=
  ∑ i, ∑ j, E i j * |v i * v j|

/-- An entrywise enclosure yields an upper bound on the exact quadratic value. -/
theorem quadraticValue_le_add_errorBudget
    (H M E : Matrix ι ι ℝ) (v : ι → ℝ)
    (herror : ∀ i j, |H i j - M i j| ≤ E i j) :
    quadraticValue H v ≤ quadraticValue M v + errorBudget E v := by
  classical
  have hentry (i j : ι) :
      v i * H i j * v j ≤
        v i * M i j * v j + E i j * |v i * v j| := by
    have hbound : v i * (H i j - M i j) * v j ≤
        E i j * |v i * v j| := by
      calc
        v i * (H i j - M i j) * v j
            ≤ |v i * (H i j - M i j) * v j| := le_abs_self _
        _ = |H i j - M i j| * |v i * v j| := by
          simp only [abs_mul]
          ring
        _ ≤ E i j * |v i * v j| :=
          mul_le_mul_of_nonneg_right (herror i j) (abs_nonneg _)
    nlinarith
  unfold quadraticValue errorBudget
  calc
    (∑ i, ∑ j, v i * H i j * v j)
        ≤ ∑ i, ∑ j, (v i * M i j * v j + E i j * |v i * v j|) := by
          exact Finset.sum_le_sum fun i _ => Finset.sum_le_sum fun j _ => hentry i j
    _ = _ := by simp only [Finset.sum_add_distrib]

/-- The same data give a two-sided enclosure, not just a midpoint estimate. -/
theorem abs_quadraticValue_sub_le_errorBudget
    (H M E : Matrix ι ι ℝ) (v : ι → ℝ)
    (herror : ∀ i j, |H i j - M i j| ≤ E i j) :
    |quadraticValue H v - quadraticValue M v| ≤ errorBudget E v := by
  have hupper := quadraticValue_le_add_errorBudget H M E v herror
  have hlower := quadraticValue_le_add_errorBudget M H E v
    (fun i j => by simpa only [abs_sub_comm] using herror i j)
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- A strictly negative upper enclosure certifies a negative exact value. -/
theorem negative_of_errorBudget
    (H M E : Matrix ι ι ℝ) (v : ι → ℝ)
    (herror : ∀ i j, |H i j - M i j| ≤ E i j)
    (hmargin : quadraticValue M v + errorBudget E v < 0) :
    quadraticValue H v < 0 :=
  lt_of_le_of_lt (quadraticValue_le_add_errorBudget H M E v herror) hmargin

/-- Consequently the exact form is not nonnegative. -/
theorem not_nonnegative_of_errorBudget
    (H M E : Matrix ι ι ℝ) (v : ι → ℝ)
    (herror : ∀ i j, |H i j - M i j| ≤ E i j)
    (hmargin : quadraticValue M v + errorBudget E v < 0) :
    ¬ Nonnegative H := by
  intro h
  exact (not_lt_of_ge (h v)) (negative_of_errorBudget H M E v herror hmargin)

/-- The real part of a complete weighted power sum. -/
def moment (nodes : α → ℂ) (weight : α → ℝ) (k : ℕ) : ℝ :=
  ∑ a, weight a * (nodes a ^ k).re

/-- The finite real Hankel matrix of the specified power sums. For a
conjugation-invariant weighted divisor the underlying complex sums are real. -/
def hermiteMatrix (nodes : α → ℂ) (weight : α → ℝ) (n : ℕ) :
    Matrix (Fin n) (Fin n) ℝ :=
  fun i j => moment nodes weight (i.val + j.val)

theorem hermiteMatrix_symmetric (nodes : α → ℂ) (weight : α → ℝ)
    (n : ℕ) (i j : Fin n) :
    hermiteMatrix nodes weight n i j = hermiteMatrix nodes weight n j i := by
  simp only [hermiteMatrix, Nat.add_comm]

/-- Real and imaginary parts of a real-coefficient polynomial evaluation. -/
def realEvaluation {n : ℕ} (z : ℂ) (v : Fin n → ℝ) : ℝ :=
  ∑ i, v i * (z ^ i.val).re

def imagEvaluation {n : ℕ} (z : ℂ) (v : Fin n → ℝ) : ℝ :=
  ∑ i, v i * (z ^ i.val).im

/-- Real part of an ordinary square, not an absolute square. -/
theorem evaluation_square {n : ℕ} (z : ℂ) (v : Fin n → ℝ) :
    realEvaluation z v ^ 2 - imagEvaluation z v ^ 2 =
      ∑ i, ∑ j, v i * (z ^ (i.val + j.val)).re * v j := by
  classical
  unfold realEvaluation imagEvaluation
  simp_rw [pow_two, Finset.sum_mul, Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  rw [pow_add, Complex.mul_re]
  ring

/-- Exact finite moment identity, valid also for repeated and nonreal nodes. -/
theorem hermite_quadratic_identity
    (nodes : α → ℂ) (weight : α → ℝ) {n : ℕ} (v : Fin n → ℝ) :
    quadraticValue (hermiteMatrix nodes weight n) v =
      ∑ a, weight a *
        (realEvaluation (nodes a) v ^ 2 - imagEvaluation (nodes a) v ^ 2) := by
  classical
  unfold quadraticValue hermiteMatrix moment
  simp_rw [Finset.mul_sum, Finset.sum_mul]
  calc
    (∑ i, ∑ j, ∑ a, v i * (weight a * (nodes a ^ (i.val + j.val)).re) * v j)
        = ∑ i, ∑ a, ∑ j, v i * (weight a * (nodes a ^ (i.val + j.val)).re) * v j := by
          apply Finset.sum_congr rfl
          intro i _
          exact Finset.sum_comm
    _ = ∑ a, ∑ i, ∑ j,
        v i * (weight a * (nodes a ^ (i.val + j.val)).re) * v j :=
          Finset.sum_comm
    _ = ∑ a, weight a *
        (realEvaluation (nodes a) v ^ 2 - imagEvaluation (nodes a) v ^ 2) := by
          apply Finset.sum_congr rfl
          intro a _
          rw [evaluation_square]
          simp only [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro i _
          apply Finset.sum_congr rfl
          intro j _
          ring

theorem imagEvaluation_eq_zero_of_real {n : ℕ} (z : ℂ)
    (hz : z.im = 0) (v : Fin n → ℝ) : imagEvaluation z v = 0 := by
  have hcast : (z.re : ℂ) = z := by
    apply Complex.ext
    · rfl
    · simpa using hz.symm
  rw [← hcast]
  simp [imagEvaluation]

/-- The forward Hermite implication needs neither distinctness nor simplicity. -/
theorem hermite_nonnegative_of_real
    (nodes : α → ℂ) (weight : α → ℝ) (n : ℕ)
    (hweight : ∀ a, 0 ≤ weight a) (hreal : ∀ a, (nodes a).im = 0) :
    Nonnegative (hermiteMatrix nodes weight n) := by
  intro v
  rw [hermite_quadratic_identity]
  apply Finset.sum_nonneg
  intro a _
  rw [imagEvaluation_eq_zero_of_real (nodes a) (hreal a) v]
  simpa only [zero_pow (by decide : 2 ≠ 0), sub_zero] using
    mul_nonneg (hweight a) (sq_nonneg (realEvaluation (nodes a) v))

/-- A negative exact moment value forces at least one nonreal node. -/
theorem exists_nonreal_of_negative
    (nodes : α → ℂ) (weight : α → ℝ) {n : ℕ} (v : Fin n → ℝ)
    (hweight : ∀ a, 0 ≤ weight a)
    (hnegative : quadraticValue (hermiteMatrix nodes weight n) v < 0) :
    ∃ a, (nodes a).im ≠ 0 := by
  classical
  by_contra h
  have hreal : ∀ a, (nodes a).im = 0 := by
    intro a
    by_contra ha
    exact h ⟨a, ha⟩
  exact (not_lt_of_ge (hermite_nonnegative_of_real nodes weight n hweight hreal v)) hnegative

/-- Source-exact matrix identity is a premise, never inferred from close samples. -/
theorem exists_nonreal_of_enclosed_moments
    (nodes : α → ℂ) (weight : α → ℝ) {n : ℕ}
    (M E : Matrix (Fin n) (Fin n) ℝ) (v : Fin n → ℝ)
    (hweight : ∀ a, 0 ≤ weight a)
    (herror : ∀ i j, |hermiteMatrix nodes weight n i j - M i j| ≤ E i j)
    (hmargin : quadraticValue M v + errorBudget E v < 0) :
    ∃ a, (nodes a).im ≠ 0 :=
  exists_nonreal_of_negative nodes weight v hweight
    (negative_of_errorBudget _ M E v herror hmargin)

/-- The literal two-node moment matrix for a conjugate pair a ± i*b. -/
def pairMatrix (a b : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  !![2, 2 * a; 2 * a, 2 * (a ^ 2 - b ^ 2)]

/-- Explicit nodes for the two-point control; this is not an arithmetic zero search. -/
def pairNodes (a b : ℝ) : Fin 2 → ℂ :=
  ![(a : ℂ) + (b : ℂ) * Complex.I, (a : ℂ) - (b : ℂ) * Complex.I]

/-- The control matrix really is assembled from its literal complex nodes. -/
theorem hermiteMatrix_pairNodes (a b : ℝ) :
    hermiteMatrix (pairNodes a b) (fun _ => 1) 2 = pairMatrix a b := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [hermiteMatrix, moment, pairNodes, pairMatrix, Fin.sum_univ_two,
      pow_two, Complex.mul_re, Complex.mul_im] <;> ring

/-- The negative direction has scale b², even arbitrarily close to the real axis. -/
theorem pairMatrix_value (a b : ℝ) :
    quadraticValue (pairMatrix a b) ![-a, 1] = -2 * b ^ 2 := by
  simp [quadraticValue, pairMatrix, Fin.sum_univ_two] <;> ring

theorem pairMatrix_negative (a b : ℝ) (hb : b ≠ 0) :
    quadraticValue (pairMatrix a b) ![-a, 1] < 0 := by
  rw [pairMatrix_value]
  have hb2 : 0 < b ^ 2 := sq_pos_of_ne_zero hb
  nlinarith

/-- This two-point case includes the singular repeated-real limit b = 0. -/
theorem pairMatrix_nonnegative_iff (a b : ℝ) :
    Nonnegative (pairMatrix a b) ↔ b = 0 := by
  constructor
  · intro h
    by_contra hb
    exact (not_lt_of_ge (h ![-a, 1])) (pairMatrix_negative a b hb)
  · intro hb
    subst b
    intro v
    have hvalue : quadraticValue (pairMatrix a 0) v =
        2 * (v 0 + a * v 1) ^ 2 := by
      simp [quadraticValue, pairMatrix, Fin.sum_univ_two] <;> ring
    rw [hvalue]
    positivity

end GRWTSK.HermiteMomentCertificates
