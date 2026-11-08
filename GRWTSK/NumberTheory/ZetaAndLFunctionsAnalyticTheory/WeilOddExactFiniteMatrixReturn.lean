/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBorderedFiniteReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWeightedLowSourceReturn
import Mathlib.Tactic

/-!
# Exact finite zeta Weil quadratic and its paid weighted low reference

## The actual source and an existing, stronger comparison

The original source is \`OddRootProjection.zetaSineMatrix T M\`,
defined entrywise by the LITERAL zero-extended sine gamma integral,
the complete von Mangoldt prime-power inventory
\`LowSchur.activePrimePowers T\`, and BOTH exponential pole
orientations. Its physical shift is \`- beta • 1\`.
The trial is the ACTUAL \`OddSineForm.finiteSine T x\` on
the physical Lebesgue \`L²(dt)\` carrier.

The upstream \`OddBorderedFiniteReturn\` already proves that the
shifted finite bordered energy of this trial equals the quadratic
of the original shifted bordered source matrix. The source
\`OddSchurAccounting.borderedSourceMatrix_quadratic\` returns that
quadratic to the ORIGINAL \`zetaSineMatrix - beta • 1\` plus the
EXACT scalar square \`(a + 2 poleFunctional x)^2 / 2\`.
On the analytic side,
\`OddLiteralWindow.shiftedOddBorderedEnergy_eq_weil_add_square\`
returns the same scalar square but uses the literal sinh integral.
\`OddWeightedLowSourceReturn.finiteSine_poleMoment_eq_poleFunctional\`
identifies those two moments.

Subtract the IDENTICAL positive scalar square, for any scalar port
(e.g. \`a=0\`). No unknown positivity or transfer is introduced.
This yields the EXACT source return, for every T>0, beta, M and x:

  shiftedOddWeilEnergy T beta (finiteSine T x)
    = quadratic (zetaSineMatrix T M - beta • 1) x.

This is an equality of the actual signed source quadratic, not just
a diagonal comparison, positivity analogy, finite sampled surrogate,
or a newly named Weil target. In particular the negative rank-one
sinh pole and its original coefficient -2 are *still present*.

## Consumption: transfer the existing weighted lower source

The preceding file \`WeilOddWeightedLowSourceReturn\` derives a
frequency-dependent diagonal-minus-rank-one lower comparison
\`finiteWeightedLowHead - 2 poleFunctional² <= shiftedOddWeilEnergy\`
on literal finite sine trials. Via the equality above, it now
bounds the ACTUAL finite \`zetaSineMatrix - beta • 1\` quadratic
on its EXACT coordinates. The source weights are
    w_i = gammaConstant 1 0 - beta - primeMass T - 4
          + periodicMultiplier 0 (frequency T (i+1)).
No arithmetic source term or parity is replaced.

We also provide a direct *sufficient* scalar certificate on this
reference: if all w_i>0 and
    2 * sum_i sinhMomentRow_i² / w_i <= 1,
then the entire finite source matrix is positive semidefinite.
Indeed, finite weighted Cauchy--Schwarz gives
    (sum_i sinhMomentRow_i*x_i)²
      <= (sum_i sinhMomentRow_i²/w_i) * (sum_i w_i*x_i²).
The condition does NOT hold automatically: for instance the
coarse full prime-mass and boundary allowance can give a
negative low weight near T=2. Failure of the sufficient condition
is NOT a negative eigenvalue of the original matrix.

## First unsupported implication after this return

Finite source matrix positivity is NOT the full Weil-domain sign.
It does not pay the mixed low/high residual, infinite remote
allowance, domain closure, cofinal uniform stage signs, completed
zeta zero criterion, or independent primitive Dirichlet sectors.
Those remain separate obligations supplied, when they can be
proved, through OddLiteralWindow's existing full Schur return.
No RH or Dirichlet GRH claim is made.

Primary analytic normalization: Connes--Consani--Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1, (3.19)--(3.20).
This source composes the pre-existing exact literal bordered
finite projection with the pre-existing exact pole return. Its
finite rank-one reference criterion is standard Cauchy--Schwarz.
Mathematical novelty relative to prior literature UNASSESSED.
AI-assisted drafting; no Lean elaboration, fresh kernel,
transitive axiom audit or independent mathematical review RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddExactFiniteMatrixReturn

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineForm
open GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralWindow
open GRWTSK.NumberTheory.WeilQuadraticForm.OddBorderedFiniteReturn
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSchurAccounting
open GRWTSK.NumberTheory.WeilQuadraticForm.OddWeightedLowSourceReturn
open GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinalMassFloor
open GRWTSK.NumberTheory.WeilQuadraticForm.OddModeDependentTail
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- Exact equality of the original finite sine matrix quadratic and
the original supported odd Weil form, including its signed zeta pole.
The proof subtracts the same literal bordered pole square on BOTH
sides of the existing finite compression identity. -/
theorem finiteSine_weil_eq_shifted_zetaSineMatrix {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ) (x : Fin M → ℝ) :
    shiftedOddWeilEnergy T beta (finiteSine T x) =
      quadratic (zetaSineMatrix T M - beta • 1) x := by
  have hborder :=
    shiftedOddBorderedEnergy_finiteSine_eq_quadratic T hT beta x 0
  rw [shiftedOddBorderedEnergy_eq_weil_add_square,
      borderedSourceMatrix_quadratic] at hborder
  have hpole := finiteSine_poleMoment_eq_poleFunctional T hT x
  change shiftedOddWeilEnergy T beta (finiteSine T x) +
      (0 + 2 * oddPoleMoment (finiteSine T x)) ^ 2 / 2 =
    quadratic (zetaSineMatrix T M - beta • 1) x +
      (0 + 2 * poleFunctional T M x) ^ 2 / 2 at hborder
  rw [hpole] at hborder
  exact add_right_cancel hborder

/-- The original weighted low reference now bounds the ORIGINAL
zetaSineMatrix, rather than only an unevaluated finite trial. -/
theorem weightedLowReference_le_actual_zetaMatrix {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ) (x : Fin M → ℝ) :
    finiteWeightedLowHead T beta x -
        2 * (poleFunctional T M x) ^ 2 ≤
      quadratic (zetaSineMatrix T M - beta • 1) x := by
  rw [← finiteSine_weil_eq_shifted_zetaSineMatrix T hT beta x]
  exact finiteSine_signed_weightedLow_reference T hT beta x

/-- Positivity of the ORIGINAL source finite compression is equivalent
to positivity on every trial in its identical finite sine carrier.
The equivalence is NOT whole-domain positivity. -/
theorem zetaSineMatrix_nonneg_iff_finiteSine {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ) :
    (∀ x : Fin M → ℝ,
      0 ≤ quadratic (zetaSineMatrix T M - beta • 1) x) ↔
    (∀ x : Fin M → ℝ,
      0 ≤ shiftedOddWeilEnergy T beta (finiteSine T x)) := by
  constructor
  · intro h x
    rw [finiteSine_weil_eq_shifted_zetaSineMatrix T hT beta x]
    exact h x
  · intro h x
    rw [← finiteSine_weil_eq_shifted_zetaSineMatrix T hT beta x]
    exact h x

/-- The source-defined finite diagonal weighted head is exactly the
finite sum over its original sine coordinates. There is no
positivity assumption in this identity. -/
theorem finiteWeightedLowHead_eq_fin_sum {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ) (x : Fin M → ℝ) :
    finiteWeightedLowHead T beta x =
      ∑ i : Fin M, modeWeight T beta (primeMass T) 4 (i.val + 1) * (x i) ^ 2 := by
  unfold finiteWeightedLowHead
  rw [← Fin.sum_univ_eq_sum_range
    (fun i : Fin M =>
      modeWeight T beta (primeMass T) 4 (1 + i.val) *
        (sineCoefficient T (finiteSine T x) (1 + i.val)) ^ 2)]
  apply Finset.sum_congr rfl
  intro i _
  rw [show 1 + i.val = i.val + 1 by omega,
      finiteSine_sineCoefficient_eq_coordinate T hT x i]

/-- A concrete rank-one sufficient condition on the actual weighted
reference. The hypothesis is a checkable finite numerical inequality
using the exact source weights and pole coefficients, not a free
matrix-sign field. It may fail at low modes. -/
theorem weightedLowReference_nonneg_of_polePrice {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ)
    (hweight : ∀ i : Fin M,
      0 < modeWeight T beta (primeMass T) 4 (i.val + 1))
    (hprice :
      2 * (∑ i : Fin M,
        (sinhMomentRow T M i)^2 /
          modeWeight T beta (primeMass T) 4 (i.val + 1)) ≤ 1)
    (x : Fin M → ℝ) :
    0 ≤ finiteWeightedLowHead T beta x -
      2 * (poleFunctional T M x)^2 := by
  let w : Fin M → ℝ :=
    fun i => modeWeight T beta (primeMass T) 4 (i.val + 1)
  let s : Fin M → ℝ := sinhMomentRow T M
  have hw (i : Fin M) : 0 < w i := hweight i
  have hmass : 0 ≤ ∑ i : Fin M, w i * (x i)^2 :=
    Finset.sum_nonneg (fun i _ => mul_nonneg (hw i).le (sq_nonneg _))
  have hcs :
      (∑ i : Fin M, s i * x i)^2 ≤
      (∑ i : Fin M, (s i)^2 / w i) *
      (∑ i : Fin M, w i * (x i)^2) := by
    apply Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul Finset.univ
    · intro i _
      exact div_nonneg (sq_nonneg _) (hw i).le
    · intro i _
      exact mul_nonneg (hw i).le (sq_nonneg _)
    · intro i _
      apply le_of_eq
      field_simp [(hw i).ne']
      ring
  have hpaid :
      (2 * (∑ i : Fin M, (s i)^2 / w i)) *
        (∑ i : Fin M, w i * (x i)^2) ≤
      1 * (∑ i : Fin M, w i * (x i)^2) :=
    mul_le_mul_of_nonneg_right (by simpa only [s,w] using hprice) hmass
  rw [finiteWeightedLowHead_eq_fin_sum T hT beta x, poleFunctional_apply]
  change 0 ≤ (∑ i : Fin M, w i * (x i)^2) -
    2 * (∑ i : Fin M, s i * x i)^2
  nlinarith only [hcs, hpaid]

/-- The rank-one sufficient numerical inequality is propagated to
the genuine original zeta finite sine matrix (NOT its infinite
high complement). It requires the actual finite budget to pass. -/
theorem zetaSineMatrix_nonneg_of_weighted_polePrice {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ)
    (hweight : ∀ i : Fin M,
      0 < modeWeight T beta (primeMass T) 4 (i.val + 1))
    (hprice :
      2 * (∑ i : Fin M,
        (sinhMomentRow T M i)^2 /
          modeWeight T beta (primeMass T) 4 (i.val + 1)) ≤ 1)
    (x : Fin M → ℝ) :
    0 ≤ quadratic (zetaSineMatrix T M - beta • 1) x := by
  have hreference := weightedLowReference_nonneg_of_polePrice
    T hT beta hweight hprice x
  exact hreference.trans (weightedLowReference_le_actual_zetaMatrix T hT beta x)

/-- An actual negative finite source quadratic is a negative literal
supported finite-sine Weil test. This does NOT independently identify
zero divisors of the completed zeta function. -/
theorem negative_literal_finiteSine_of_negative_matrix {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ) (x : Fin M → ℝ)
    (hnegative : quadratic (zetaSineMatrix T M - beta • 1) x < 0) :
    shiftedOddWeilEnergy T beta (finiteSine T x) < 0 := by
  rw [finiteSine_weil_eq_shifted_zetaSineMatrix T hT beta x]
  exact hnegative

end GRWTSK.NumberTheory.WeilQuadraticForm.OddExactFiniteMatrixReturn
