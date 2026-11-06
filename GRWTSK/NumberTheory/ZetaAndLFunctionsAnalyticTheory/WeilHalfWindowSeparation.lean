/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilEndpointSignObstruction

/-!
# A literal trial complement for a paid half-window Schur certificate

Primary arithmetic object: Connes--Consani--Moscovici, *Zeta Spectral Triples*,
arXiv:2511.22755v1, (3.19)--(3.20), with BOTH poles and zero extension.
The programme's remaining cofinal and normalized-ground obligations are Connes,
arXiv:2602.04022v1, Section 6.6. They are NOT discharged here.

The companion analytical note and pure integer evaluator establish a FIXED-window
result at T=1/2, beta=1/10000, N=M=64, L=512, Y=0. All 64 odd directions are
retained. The even sign is tested on the literal orthogonal complement of the
four-mode trial from `EndpointSign.trialCoordinates`, NOT the endpoint kernel.
The returned whole-form complementary floor is beta and the independently
bounded full trial is below 1/200000. Thus the source ground state is simple and
even, with spacing greater than 19/200000. Its unshifted eigenvalue is not proved
positive. These statements are analytical/computational, not Lean theorems here.

The reduction uses the existing bounded-periodic comparison, full form-domain
Schur return, even whole-head endpoint allowance and odd output/derivative
allowance. Two sharper high estimates are justified in the note: on odd vectors,
||G_T|| <= pi/2+1-exp(-T); at T=1/2 the single prime operator has norm at most
log(2)/sqrt(2), since its input and output intervals are disjoint. The prime SIGNAL
mass in the remote bounds remains TWICE that value. No signed source term is lost.

The interval computation reuses the byte-pinned `weil_endpoint_sign.py`, adds a
convex-trapezoid two-sided evaluation of the infinite source series, charges
separate head and rectangular-residual errors, and tests outward LDL pivots.
A reported passing Boolean is not introduced as a Lean axiom or as a hypothesis
silently discharged by the existence of this file.

Formal scope: the actual finite trial-complement parametrization, its complete
kernel return, coefficient norm identity, scalar boundary domination, convexity
numerators and rational budget arithmetic. The full operator, trapezoid-integral
lemma, interval soundness, LDL verification and spectral theorem are not fully
formalized here. See `weil-half-window-separation.md` for the complete analytical
argument, exact executed constants and hostile checks.

The endpoint obstruction in #1685 is unchanged: its kernel is not this complement.
No fixed-support result is promoted to cofinal support control or to RH/GRH.
AI-assisted manual source drafting. Elaboration, fresh kernel checking, transitive
axiom auditing and independent mathematical review: NOT_RUN. Novelty UNASSESSED.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.HalfWindowSeparation

open EndpointSign

/-- The existing physical four-mode trial embedded in the actual 65-dimensional head. -/
def headTrial : Fin 65 → ℝ := fun i =>
  if h : i.val < 4 then trialCoordinates ⟨i.val, h⟩ else 0

theorem headTrial_zero : headTrial 0 = Real.sqrt 2 * (2801 / 5000) := by
  norm_num [headTrial, trialCoordinates]

theorem headTrial_zero_ne : headTrial 0 ≠ 0 := by
  rw [headTrial_zero]
  exact mul_ne_zero (ne_of_gt (Real.sqrt_pos.2 (by norm_num))) (by norm_num)

/-- No endpoint condition: solve the literal trial-orthogonality equation for x_0. -/
def complementCoordinates (y : Fin 64 → ℝ) : Fin 65 → ℝ :=
  Fin.cons (-(∑ j, headTrial j.succ * y j) / headTrial 0) y

theorem complement_zero (y : Fin 64 → ℝ) :
    complementCoordinates y 0 = -(∑ j, headTrial j.succ * y j) / headTrial 0 := rfl

theorem complement_succ (y : Fin 64 → ℝ) (j : Fin 64) :
    complementCoordinates y j.succ = y j := by
  simp [complementCoordinates]

theorem complement_orthogonal (y : Fin 64 → ℝ) :
    headTrial ⬝ᵥ complementCoordinates y = 0 := by
  unfold dotProduct
  rw [Fin.sum_univ_succ]
  simp only [complement_zero, complement_succ]
  field_simp [headTrial_zero_ne] <;> ring

theorem complement_injective : Function.Injective complementCoordinates := by
  intro y z h
  funext j
  have hh := congrFun h j.succ
  simpa only [complement_succ] using hh

/-- Every vector of the literal orthogonal complement is retained by the test. -/
theorem complement_complete (x : Fin 65 → ℝ) (hx : headTrial ⬝ᵥ x = 0) :
    ∃ y : Fin 64 → ℝ, complementCoordinates y = x := by
  refine ⟨fun j => x j.succ, ?_⟩
  funext i
  refine Fin.cases ?_ (fun j => ?_) i
  · rw [complement_zero]
    apply (div_eq_iff headTrial_zero_ne).2
    have hx' : headTrial 0 * x 0 + ∑ j : Fin 64, headTrial j.succ * x j.succ = 0 := by
      simpa only [dotProduct, Fin.sum_univ_succ] using hx
    nlinarith
  · exact complement_succ _ j

theorem complement_range_iff (x : Fin 65 → ℝ) :
    (∃ y : Fin 64 → ℝ, complementCoordinates y = x) ↔ headTrial ⬝ᵥ x = 0 := by
  constructor
  · rintro ⟨y, rfl⟩
    exact complement_orthogonal y
  · exact complement_complete x

/-- The Gram correction is retained; the complement coordinates are not orthonormal. -/
theorem complement_squared_norm (y : Fin 64 → ℝ) :
    (∑ i : Fin 65, complementCoordinates y i ^ 2) =
      ((∑ j : Fin 64, headTrial j.succ * y j) / headTrial 0) ^ 2 +
        ∑ j : Fin 64, y j ^ 2 := by
  rw [Fin.sum_univ_succ]
  simp only [complement_zero, complement_succ, div_pow, neg_sq]

/-- Scalar factor in the odd half-interval image-kernel domination. The analytic
return uses q=exp(-2 alpha T), u=exp(-2 alpha t), v=exp(-2 alpha s). -/
theorem odd_image_factor_bounds (q u v : ℝ)
    (hq0 : 0 ≤ q) (hq1 : q < 1) (hqu : q ≤ u) (hqv : q ≤ v)
    (hu : u ≤ 1) (hv : v ≤ 1) :
    0 ≤ (1 - u) * (1 - v) / (1 - q) ∧
      (1 - u) * (1 - v) / (1 - q) ≤ 1 := by
  have hden : 0 < 1 - q := by linarith
  constructor
  · exact div_nonneg (mul_nonneg (by linarith) (by linarith)) hden.le
  · apply (div_le_one hden).2
    have hmul := mul_le_mul_of_nonneg_left (show 1 - v ≤ 1 by linarith)
      (show 0 ≤ 1 - u by linarith)
    nlinarith

theorem boundary_convexity_numerator (a w : ℝ) (h : w ^ 2 ≤ 3 * a ^ 2) :
    0 ≤ 2 * (-w ^ 2 + 3 * a ^ 2) := by nlinarith

theorem squared_boundary_convexity_numerator (a w : ℝ)
    (h : w ^ 2 ≤ 3 * a ^ 2) :
    0 ≤ 4 * (-w ^ 2 + 5 * a ^ 2) := by nlinarith [sq_nonneg a]

/-- Exact rational buffers of the executed whole-odd-head allowance. -/
theorem actual_buffers :
    (1 - (64 : ℝ) / (512 + 1) = 449 / 513) ∧
      (1 - ((64 : ℝ) / (512 + 1)) ^ 2 = 259073 / 263169) := by norm_num

/-- The head observation and rectangular residual have DISTINCT certified errors.
This scalar accounting is not the assertion that any source sign test passes. -/
theorem separate_observation_prices
    (sourceUpper sourceSchur observedUpper finiteResidual observedResidual
      remote epsilonHead epsilonResidualSquared normSquared delta : ℝ)
    (hdelta : 0 ≤ delta)
    (hsource : delta * (sourceUpper - sourceSchur) ≤ finiteResidual + remote)
    (hhead : observedUpper - epsilonHead * normSquared ≤ sourceUpper)
    (hresidual : finiteResidual ≤ (101 / 100) * observedResidual +
      101 * epsilonResidualSquared * normSquared) :
    delta * (observedUpper - epsilonHead * normSquared - sourceSchur) ≤
      (101 / 100) * observedResidual + 101 * epsilonResidualSquared * normSquared + remote := by
  have hp := mul_nonneg hdelta (sub_nonneg.mpr hhead)
  nlinarith

theorem gap_value : (1 / 10000 : ℝ) - 1 / 200000 = 19 / 200000 := by norm_num

theorem gap_positive : (0 : ℝ) < 19 / 200000 := by norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.HalfWindowSeparation
