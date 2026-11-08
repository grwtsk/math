/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCollarProfileObstruction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRankOneSaturation
import Mathlib.Tactic

/-!
# Fixed-degree theta-response optimization

For the FULL CCM source (arXiv:2511.22755v1, (3.19)--(3.20)), put
`X = exp (2*T)`, `y = -2*phi'`, `z_j = y^(2*j)/(4*pi^2)^j`, and
`V_r = span {z_0,...,z_r}`. The whole-line sinh moment is normalized to 1/2.
For `f = 1_[-T,T] h`, `h in V_r`, define the actual rank-one trial deficit
`d_T(h) = 1/2 - (2*ell_T(f) - a_T(f,f))`, where `a_T = Q_T + 2*ell_T^2`.

The analytical argument establishes, for EVERY FIXED r, as X tends to infinity:
* The complete exterior-form matrix in a jet/Laguerre frame is
  `(A_X^2/X) * ((log X)/(2*pi) * I + O_r(1))`,
  `A_X = 16*pi^3 * X^(13/4) * exp(-pi*X)`.
* Its exact affine minimum is asymptotic to
  `(16*pi^3)^2 * (r!)^2/(2*pi^(2*r+1)) *
     X^(11/2-2*r) * log X * exp(-2*pi*X)`.
* A finite polynomial jet solve, followed by the exact whole-line moment
  normalization, constructs an asymptotically minimizing response. Its profile
  is `(r!)/pi^r * L_r(2*pi*v)`. No Weil inverse is used to construct it.
* A rescaled Stieltjes boundary map is injective on each fixed polynomial
  space. It gives a complete residual lower bound UNIFORM over that space.
  Consequently the crude norm/coercive-floor rank-one certificate fails for
  EVERY whole-moment-normalized trial in any FIXED V_r, even when its
  coefficients depend arbitrarily on T. Increasing degree with T is not covered.
* If the actual full odd core B_T is independently positive and coercive,
  the improved trial gives an upper bound on the rank-one margin and a LOWER
  bound on the old trial's weighted inverse residual, not a passing upper bound.

This is not a positive full low-Schur sign, a cofinal gap, a genuine-ground
comparison, or RH/GRH closure. The existing half-window result and the endpoint
and physical-collar obstructions retain their original scopes and statuses.
The supplied actual finite-prolate comparison remains a separate unpublished
analysis; these theta responses are not the actual finite-prolate family.

ONLY finite scalar algebra, the first two profile optimizations, a literal
source-polynomial moment normalizer, and an existing inverse-energy consumer
are formalized below. Theta series, Laguerre integrals/orthogonality, all-degree
jet asymptotics, operator domains, complete residual limits, and spectral
claims are ANALYTICAL results, not Lean theorems in this file.
No interval/diagnostic Boolean or unresolved arithmetic sign is an axiom.

Sources: the existing CollarProfile and RankOneSaturation modules; the supplied
weighted-residual note; CCM v1; Connes arXiv:2602.04022v1 Section 6.6; DLMF
18.5.12 and Table 18.3.1. No upstream implementation is copied.
Baseline math 7f689b80ed63d035bde0a8a9d08f7726cd9e41e8; Lean v4.34.1;
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. AI-assisted manual source.
Elaboration, fresh kernel checking, transitive axiom audit and independent
analytical review: NOT_RUN. Novelty: UNASSESSED. No root imports or pins change.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ThetaResponseOptimization

open CollarProfile

/-- Actual finite Laguerre coefficient expression, reusing the existing profile.
The integral/optimality theorem for all degrees is analytical, not asserted here. -/
def optimizedProfile (r : ℕ) (p v : ℝ) : ℝ :=
  (r.factorial : ℝ) / p ^ r * laguerreAtNegative r (-2 * p * v)

theorem optimizedProfile_zero (p v : ℝ) : optimizedProfile 0 p v = 1 := by
  simp [optimizedProfile, laguerreAtNegative_zero]

theorem optimizedProfile_one {p : ℝ} (hp : p ≠ 0) (v : ℝ) :
    optimizedProfile 1 p v = 1 / p - 2 * v := by
  simp only [optimizedProfile, Nat.factorial_one, Nat.cast_one, pow_one,
    laguerreAtNegative_one]
  field_simp [hp]
  <;> ring

theorem optimizedProfile_two {p : ℝ} (hp : p ≠ 0) (v : ℝ) :
    optimizedProfile 2 p v = 2 / p ^ 2 - 8 * v / p + 4 * v ^ 2 := by
  norm_num [optimizedProfile, laguerreAtNegative, Finset.sum_range_succ]
  field_simp [hp]
  <;> ring

/-- Exact polynomial moment expression for `integral exp(-2*p*v)*(a-2*v)^2`.
Its integral identification is proved in the analytical note. -/
def linearProfileEnergy (p a : ℝ) : ℝ :=
  a ^ 2 / (2 * p) - a / p ^ 2 + 1 / p ^ 3

theorem linear_energy_completion {p : ℝ} (hp : p ≠ 0) (a : ℝ) :
    linearProfileEnergy p a =
      (a - 1 / p) ^ 2 / (2 * p) + 1 / (2 * p ^ 3) := by
  unfold linearProfileEnergy
  field_simp [hp]
  <;> ring

theorem linear_energy_minimum {p : ℝ} (hp : 0 < p) (a : ℝ) :
    1 / (2 * p ^ 3) ≤ linearProfileEnergy p a := by
  rw [linear_energy_completion (ne_of_gt hp)]
  have h : 0 ≤ (a - 1 / p) ^ 2 / (2 * p) := by positivity
  linarith

theorem linear_energy_at_optimizer {p : ℝ} (hp : p ≠ 0) :
    linearProfileEnergy p (1 / p) = 1 / (2 * p ^ 3) := by
  rw [linear_energy_completion hp]
  simp

/-- The endpoint-zero linear profile has TWICE the optimal exterior energy. -/
theorem linear_endpoint_cost {p : ℝ} (hp : p ≠ 0) :
    linearProfileEnergy p 0 = 2 * linearProfileEnergy p (1 / p) := by
  rw [linear_energy_at_optimizer hp]
  unfold linearProfileEnergy
  field_simp [hp]
  <;> ring

/-- Exact weighted moments of `a+b*v+4*v^2`, including every cross term. -/
def quadraticProfileEnergy (p a b : ℝ) : ℝ :=
  a ^ 2 / (2 * p) + a * b / (2 * p ^ 2) + (b ^ 2 + 8 * a) / (4 * p ^ 3) +
    3 * b / p ^ 4 + 12 / p ^ 5

theorem quadratic_energy_completion {p : ℝ} (hp : p ≠ 0) (a b : ℝ) :
    quadraticProfileEnergy p a b = 2 / p ^ 5 +
      ((a + b / (2 * p) + 2 / p ^ 2) ^ 2 +
        (b / (2 * p) + 4 / p ^ 2) ^ 2) / (2 * p) := by
  unfold quadraticProfileEnergy
  field_simp [hp]
  <;> ring

theorem quadratic_energy_minimum {p : ℝ} (hp : 0 < p) (a b : ℝ) :
    2 / p ^ 5 ≤ quadraticProfileEnergy p a b := by
  rw [quadratic_energy_completion (ne_of_gt hp)]
  have h : 0 ≤ ((a + b / (2 * p) + 2 / p ^ 2) ^ 2 +
      (b / (2 * p) + 4 / p ^ 2) ^ 2) / (2 * p) := by positivity
  linarith

theorem quadratic_energy_at_optimizer {p : ℝ} (hp : p ≠ 0) :
    quadraticProfileEnergy p (2 / p ^ 2) (-8 / p) = 2 / p ^ 5 := by
  unfold quadraticProfileEnergy
  field_simp [hp]
  <;> ring

/-- A double zero at the exterior endpoint costs SIX times the optimum. -/
theorem quadratic_endpoint_cost {p : ℝ} (hp : p ≠ 0) :
    quadraticProfileEnergy p 0 0 =
      6 * quadraticProfileEnergy p (2 / p ^ 2) (-8 / p) := by
  rw [quadratic_energy_at_optimizer hp]
  unfold quadraticProfileEnergy
  field_simp [hp]
  <;> ring

/-- The positive moment-normalization numerator for the literal two-mode jet.
The variables are `p = pi`, `w = p*X`. This reuses the source polynomials. -/
def firstMomentNumerator (w : ℝ) : ℝ :=
  thetaNextSlope w + 2 * thetaNext w - (2 * thetaBase w + thetaBaseSlope w) / 16

theorem firstMomentNumerator_polynomial (w : ℝ) :
    firstMomentNumerator w =
      2 * w ^ 4 - 37 / 2 * w ^ 3 + 129 / 4 * w ^ 2 + 123 / 8 * w - 315 / 16 := by
  unfold firstMomentNumerator thetaNextSlope thetaNext thetaBase thetaBaseSlope
  ring

theorem firstMomentNumerator_shift (v : ℝ) :
    firstMomentNumerator (v + 8) =
      2 * v ^ 4 + 91 / 2 * v ^ 3 + 1425 / 4 * v ^ 2 + 8603 / 8 * v + 14197 / 16 := by
  rw [firstMomentNumerator_polynomial]
  ring

theorem firstMomentNumerator_pos {w : ℝ} (hw : 8 ≤ w) :
    0 < firstMomentNumerator w := by
  have hv : 0 ≤ w - 8 := sub_nonneg.mpr hw
  have heq : w = (w - 8) + 8 := by ring
  rw [heq, firstMomentNumerator_shift]
  positivity

/-- Coefficients of `y` and `y''/(4*pi^2)` in the unnormalized first jet. -/
def firstCoefficient (p X : ℝ) : ℝ :=
  p ^ 2 * jetFirst (p * X) (X ^ 2 / p) (-2 * X ^ 2 / p)

def secondCoefficient (p X : ℝ) : ℝ :=
  p ^ 4 * jetSecond (p * X) (X ^ 2 / p) (-2 * X ^ 2 / p)

/-- Twice the WHOLE-LINE sinh moment, not the truncated moment. -/
def firstMomentNormalizer (p X : ℝ) : ℝ :=
  p * X ^ 2 * firstMomentNumerator (p * X) / thetaWronskian (p * X)

theorem first_moment_identity {p X : ℝ} (hp : p ≠ 0)
    (hw : thetaWronskian (p * X) ≠ 0) :
    firstCoefficient p X + secondCoefficient p X / (16 * p ^ 2) =
      firstMomentNormalizer p X := by
  unfold firstCoefficient secondCoefficient firstMomentNormalizer
    jetFirst jetSecond firstMomentNumerator
  field_simp [hp, hw]
  <;> ring

theorem firstMomentNormalizer_pos {p X : ℝ} (hp : 0 < p)
    (hX : 0 < X) (hw : 8 ≤ p * X) : 0 < firstMomentNormalizer p X := by
  unfold firstMomentNormalizer
  exact div_pos (mul_pos (mul_pos hp (pow_pos hX 2))
    (firstMomentNumerator_pos hw)) (wronskian_pos hw)

/-- Exact moment normalization for the constructed two-mode response; no
unknown inverse, limiting moment, or central zeta value is used. -/
theorem first_normalized_moment {p X : ℝ} (hp : 0 < p)
    (hX : 0 < X) (hw : 8 ≤ p * X) :
    firstCoefficient p X / firstMomentNormalizer p X +
      (secondCoefficient p X / firstMomentNormalizer p X) / (16 * p ^ 2) = 1 := by
  have hpi := ne_of_gt hp
  have hm := ne_of_gt (firstMomentNormalizer_pos hp hX hw)
  have hi := first_moment_identity hpi (ne_of_gt (wronskian_pos hw))
  calc
    _ = (firstCoefficient p X + secondCoefficient p X / (16 * p ^ 2)) /
        firstMomentNormalizer p X := by field_simp [hpi, hm]; ring
    _ = 1 := by rw [hi]; exact div_self hm

/-- Exact cancellation of the exterior odd pole against the moment deficit.
The source return `Q_T(f)=Q(d)` is analytical, not supplied by this scalar lemma. -/
theorem deficit_eq_exterior_core (insideMoment exteriorMoment exteriorCore : ℝ)
    (hm : insideMoment + exteriorMoment = (1 / 2 : ℝ)) :
    (1 / 2 : ℝ) - (2 * insideMoment -
      ((exteriorCore - 2 * exteriorMoment ^ 2) + 2 * insideMoment ^ 2)) =
        exteriorCore := by
  rw [RankOneSaturation.variational_deficit]
  have h : insideMoment - 1 / 2 = -exteriorMoment := by linarith
  rw [h]
  ring

/-- First and second optimized deficit ratios relative to the uncorrected profile. -/
theorem first_deficit_ratio {p : ℝ} (hp : p ≠ 0) :
    (1 / (2 * p ^ 3)) / (1 / (2 * p)) = 1 / p ^ 2 := by
  field_simp [hp]
  <;> ring

theorem second_deficit_ratio {p : ℝ} (hp : p ≠ 0) :
    (2 / p ^ 5) / (1 / (2 * p)) = 4 / p ^ 4 := by
  field_simp [hp]
  <;> ring

section ExistingInverseEnergyConsumer
variable {V : Type*} [AddCommGroup V] [Module ℝ V]

/-- A better trial gives a LOWER bound for the old weighted residual. Reuses
completion of the square; it does not certify an inverse-energy upper bound. -/
theorem old_weighted_residual_lower
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v) (hnonneg : ∀ v, 0 ≤ a v v)
    (x old improved : V) (hsolve : ∀ v, a x v = ell v) :
    (2 * ell improved - a improved improved) - (2 * ell old - a old old) ≤
      a (x - old) (x - old) := by
  have ho := GRWTSK.LinearAlgebra.SchurResidual.inverse_energy_defect
    a ell hsym x old hsolve
  have hi := GRWTSK.LinearAlgebra.SchurResidual.inverse_energy_defect
    a ell hsym x improved hsolve
  have hn := hnonneg (x - improved)
  linarith

end ExistingInverseEnergyConsumer

end GRWTSK.NumberTheory.WeilQuadraticForm.ThetaResponseOptimization
