/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Source base: grwtsk/math@38386e882fce3d36db35ff86a8389d8feba980ea.
Canonical workflow source: grwtsk/noeaaeue@
0ca03a08fe714c95e7a52466fa3bb1a2f8b1c753.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWeightedLowSourceReturn
import Mathlib.Tactic

/-!
# Sharp finite rank-one test for the weighted odd low-sine reference

## Exact consumer and source boundary

`OddWeightedLowSourceReturn.finiteSine_signed_weightedLow_reference`
already returns the ORIGINAL shifted odd zeta Weil value on a literal finite
sine synthesis from the signed lower reference

  sum_i w_i x_i^2 - 2 (sum_i s_i x_i)^2,

where

  w_i = modeWeight T beta (primeMass T) 4 (i+1)

keeps the source gamma multiplier, complete prime-mass charge and odd boundary
loss, while

  s_i = OddSchurAccounting.sinhMomentRow T M i

is the exact negative-pole row.  The preceding module exposed positivity of
this reference as an abstract premise, although its header identified the
finite weighted rank-one scalar test.  This increment proves that test and
returns it directly to the source theorem.

For strictly positive weights define

  price(T,beta,M) = 2 * sum_i s_i^2 / w_i.

Finite weighted Cauchy--Schwarz gives

  (sum_i s_i x_i)^2
    <= (sum_i w_i x_i^2) * (sum_i s_i^2 / w_i).

Therefore `price <= 1` is sufficient for nonnegativity.  It is also necessary
for nonnegativity of this finite REFERENCE: test the response vector
`x_i = s_i / w_i`.  At `price = 1` that response has reference value zero.
Thus the scalar threshold is sharp for the displayed diagonal-minus-rank-one
form, without assuming an inverse, fitting a positive surrogate, or changing
the arithmetic source.

## Consuming use and hostile boundary

The final theorem combines the sharp finite criterion with the existing
source-return inequality, eliminating the free `hreference` premise for any
fixed finite sine class whose actual weights and pole price have been proved.
It does not pay the low/high mixed Schur residual, prove positivity on arbitrary
supported tests, construct the radius-two mode-64 core floor, produce a
cofinal `StageLower` family, or prove RH or Dirichlet GRH.

Strict positivity of every retained weight is substantive.  If a weight is
zero, the response denominator is undefined; if a weight is negative, the
weighted diagonal is not a positive reference and the Cauchy argument has the
wrong sign.  These failures do not prove a negative value of the original
Weil form, because the source theorem supplies only a lower comparison.
The empty finite head is covered vacuously and has price zero.

Primary source normalization: Connes--Consani--Moscovici, *Zeta Spectral
Triples*, arXiv:2511.22755v1, equations (3.19)--(3.20), through the unchanged
local declarations in WeilOddWeightedLowSourceReturn, WeilOddModeDependentTail,
WeilOddSchurAccounting and WeilOddPoleMoment.  The finite weighted
Cauchy--Schwarz and rank-one threshold are standard; theorem-level novelty is
unassessed.  AI-assisted manual source drafting.  No formal or independent
analytical verification is claimed by this file header.
-/

set_option autoImplicit false
noncomputable section

open Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddWeightedLowRankOneCriterion

open OddWeightedLowSourceReturn OddModeDependentTail OddSchurAccounting
open OddRootProjection OddSineForm OddLiteralWindow LowSchur

/-- The exact retained source weight on one finite odd sine coordinate. -/
def sourceLowWeight {M : ℕ} (T beta : ℝ) (i : Fin M) : ℝ :=
  modeWeight T beta (primeMass T) 4 (1 + i.val)

/-- The exact source row of the negative odd zeta pole. -/
def sourcePoleRow {M : ℕ} (T : ℝ) (i : Fin M) : ℝ :=
  sinhMomentRow T M i

/-- The sharp scalar price of the negative rank-one pole against the
positive diagonal reference.  Positivity of the weights is a theorem premise,
not part of this definition. -/
def weightedPolePrice {M : ℕ} (T beta : ℝ) : ℝ :=
  2 * ∑ i : Fin M, (sourcePoleRow T i)^2 / sourceLowWeight T beta i

/-- The extremizing response of the diagonal reference to the exact pole row. -/
def weightedPoleResponse {M : ℕ} (T beta : ℝ) (i : Fin M) : ℝ :=
  sourcePoleRow T i / sourceLowWeight T beta i

/-- The source-coordinate definition of the weighted finite head reduces to
its literal diagonal quadratic form. -/
theorem finiteWeightedLowHead_eq_coordinate_sum {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ) (x : Fin M → ℝ) :
    finiteWeightedLowHead T beta x =
      ∑ i : Fin M, sourceLowWeight T beta i * (x i)^2 := by
  unfold finiteWeightedLowHead
  rw [← Fin.sum_univ_eq_sum_range]
  apply Finset.sum_congr rfl
  intro i _
  rw [finiteSine_sineCoefficient_eq_coordinate T hT x i]
  rfl

/-- The existing finite Schur pole functional is the finite sum against the
same literal source pole row. -/
theorem poleFunctional_eq_sum_sourcePoleRow {M : ℕ}
    (T : ℝ) (x : Fin M → ℝ) :
    poleFunctional T M x = ∑ i : Fin M, sourcePoleRow T i * x i := by
  rw [poleFunctional_apply]
  unfold Matrix.dotProduct sourcePoleRow
  rfl

/-- Finite weighted Cauchy--Schwarz with no lower bound on the smallest
weight beyond strict positivity. -/
private theorem weighted_cauchy_fin {M : ℕ}
    (w s x : Fin M → ℝ) (hw : ∀ i, 0 < w i) :
    (∑ i : Fin M, s i * x i)^2 ≤
      (∑ i : Fin M, w i * (x i)^2) *
        (∑ i : Fin M, (s i)^2 / w i) := by
  let u : Fin M → ℝ := fun i => Real.sqrt (w i) * x i
  let v : Fin M → ℝ := fun i => s i / Real.sqrt (w i)
  have hmul (i : Fin M) : u i * v i = s i * x i := by
    have hsqrt : Real.sqrt (w i) ≠ 0 := ne_of_gt (Real.sqrt_pos.2 (hw i))
    dsimp [u, v]
    field_simp [hsqrt]
    ring
  have hu (i : Fin M) : (u i)^2 = w i * (x i)^2 := by
    dsimp [u]
    rw [mul_pow, Real.sq_sqrt (hw i).le]
  have hv (i : Fin M) : (v i)^2 = (s i)^2 / w i := by
    dsimp [v]
    rw [div_pow, Real.sq_sqrt (hw i).le]
  have hleft :
      (∑ i ∈ Finset.univ, u i * v i) =
        ∑ i ∈ Finset.univ, s i * x i := by
    apply Finset.sum_congr rfl
    intro i _
    exact hmul i
  have henergy :
      (∑ i ∈ Finset.univ, (u i)^2) =
        ∑ i ∈ Finset.univ, w i * (x i)^2 := by
    apply Finset.sum_congr rfl
    intro i _
    exact hu i
  have hpole :
      (∑ i ∈ Finset.univ, (v i)^2) =
        ∑ i ∈ Finset.univ, (s i)^2 / w i := by
    apply Finset.sum_congr rfl
    intro i _
    exact hv i
  have hcs := Finset.sum_mul_sq_le_sq_mul_sq (Finset.univ) u v
  rw [hleft, henergy, hpole] at hcs
  simpa using hcs

/-- The scalar pole-price threshold gives nonnegativity of the complete
finite diagonal-minus-rank-one reference. -/
theorem weightedLow_reference_nonneg_of_price {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ)
    (hweight : ∀ i : Fin M, 0 < sourceLowWeight T beta i)
    (hprice : weightedPolePrice T beta ≤ 1)
    (x : Fin M → ℝ) :
    0 ≤ finiteWeightedLowHead T beta x -
      2 * (poleFunctional T M x)^2 := by
  let E : ℝ := ∑ i : Fin M, sourceLowWeight T beta i * (x i)^2
  let S : ℝ := ∑ i : Fin M,
    (sourcePoleRow T i)^2 / sourceLowWeight T beta i
  let Y : ℝ := ∑ i : Fin M, sourcePoleRow T i * x i
  have hE : 0 ≤ E := by
    dsimp [E]
    exact Finset.sum_nonneg (fun i _ =>
      mul_nonneg (hweight i).le (sq_nonneg (x i)))
  have hcs : Y^2 ≤ E * S := by
    dsimp [Y, E, S]
    exact weighted_cauchy_fin
      (sourceLowWeight T beta) (sourcePoleRow T) x hweight
  have hprice' : 2 * S ≤ 1 := by
    simpa [weightedPolePrice, S] using hprice
  have hscale := mul_le_mul_of_nonneg_left hprice' hE
  have hpaid : 2 * Y^2 ≤ E := by
    nlinarith [hcs, hscale]
  rw [finiteWeightedLowHead_eq_coordinate_sum T hT beta x,
    poleFunctional_eq_sum_sourcePoleRow T x]
  change 0 ≤ E - 2 * Y^2
  exact sub_nonneg.mpr hpaid

/-- The response vector evaluates the finite reference at the exact scalar
rank-one threshold.  This is the hostile equality direction of the test. -/
theorem weightedLow_reference_at_response {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ)
    (hweight : ∀ i : Fin M, 0 < sourceLowWeight T beta i) :
    finiteWeightedLowHead T beta (weightedPoleResponse T beta) -
        2 * (poleFunctional T M (weightedPoleResponse T beta))^2 =
      (∑ i : Fin M,
        (sourcePoleRow T i)^2 / sourceLowWeight T beta i) -
      2 * (∑ i : Fin M,
        (sourcePoleRow T i)^2 / sourceLowWeight T beta i)^2 := by
  rw [finiteWeightedLowHead_eq_coordinate_sum T hT beta,
    poleFunctional_eq_sum_sourcePoleRow T]
  have henergy :
      (∑ i : Fin M, sourceLowWeight T beta i *
        (weightedPoleResponse T beta i)^2) =
      ∑ i : Fin M,
        (sourcePoleRow T i)^2 / sourceLowWeight T beta i := by
    apply Finset.sum_congr rfl
    intro i _
    unfold weightedPoleResponse
    field_simp [(hweight i).ne']
    ring
  have hpole :
      (∑ i : Fin M, sourcePoleRow T i * weightedPoleResponse T beta i) =
      ∑ i : Fin M,
        (sourcePoleRow T i)^2 / sourceLowWeight T beta i := by
    apply Finset.sum_congr rfl
    intro i _
    unfold weightedPoleResponse
    field_simp [(hweight i).ne']
    ring
  rw [henergy, hpole]

/-- Sharp finite criterion: under strictly positive source weights, the
weighted reference is nonnegative in every retained coordinate if and only if
the exact pole price is at most one. -/
theorem weightedLow_reference_nonnegative_iff_price {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ)
    (hweight : ∀ i : Fin M, 0 < sourceLowWeight T beta i) :
    (∀ x : Fin M → ℝ,
      0 ≤ finiteWeightedLowHead T beta x -
        2 * (poleFunctional T M x)^2) ↔
      weightedPolePrice T beta ≤ 1 := by
  constructor
  · intro hall
    have href := hall (weightedPoleResponse T beta)
    rw [weightedLow_reference_at_response T hT beta hweight] at href
    let S : ℝ := ∑ i : Fin M,
      (sourcePoleRow T i)^2 / sourceLowWeight T beta i
    change 0 ≤ S - 2 * S^2 at href
    have hS : 0 ≤ S := by
      dsimp [S]
      exact Finset.sum_nonneg (fun i _ =>
        div_nonneg (sq_nonneg (sourcePoleRow T i)) (hweight i).le)
    unfold weightedPolePrice
    change 2 * S ≤ 1
    by_cases hzero : S = 0
    · rw [hzero]
      norm_num
    · have hSpos : 0 < S := lt_of_le_of_ne hS (Ne.symm hzero)
      nlinarith
  · intro hprice x
    exact weightedLow_reference_nonneg_of_price
      T hT beta hweight hprice x

/-- At the exact threshold, the source response is a null direction of the
finite lower reference.  No strict source positivity may be inferred from a
non-strict scalar certificate. -/
theorem weightedLow_reference_response_null_of_price_eq_one {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ)
    (hweight : ∀ i : Fin M, 0 < sourceLowWeight T beta i)
    (hprice : weightedPolePrice T beta = 1) :
    finiteWeightedLowHead T beta (weightedPoleResponse T beta) -
      2 * (poleFunctional T M (weightedPoleResponse T beta))^2 = 0 := by
  rw [weightedLow_reference_at_response T hT beta hweight]
  unfold weightedPolePrice at hprice
  nlinarith

/-- Direct source consumer: a proved positive-weight pole-price bound supplies
nonnegativity of the ORIGINAL shifted odd Weil value on the literal finite
sine class, with no separate universal-reference premise. -/
theorem finiteSine_nonneg_of_weightedPolePrice {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ)
    (hweight : ∀ i : Fin M, 0 < sourceLowWeight T beta i)
    (hprice : weightedPolePrice T beta ≤ 1)
    (x : Fin M → ℝ) :
    0 ≤ shiftedOddWeilEnergy T beta (finiteSine T x) :=
  (weightedLow_reference_nonneg_of_price
      T hT beta hweight hprice x).trans
    (finiteSine_signed_weightedLow_reference T hT beta x)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddWeightedLowRankOneCriterion
