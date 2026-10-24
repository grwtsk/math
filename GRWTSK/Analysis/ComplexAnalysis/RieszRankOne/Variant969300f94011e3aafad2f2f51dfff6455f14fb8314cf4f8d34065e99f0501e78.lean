module

public meta import Surface.Core.Classification
public import Surface.Core.RieszCircle
public import Mathlib.Analysis.InnerProductSpace.LinearMap

/-!
# A worked Riesz projection: the rank-one case

This file closes `ResolventCircle.IsProjection` for one explicit bounded
operator.  Let `x` be a unit vector and let

```text
Pₓ(v) = ⟨x, v⟩ x.
```

Mathlib's `InnerProductSpace.rankOne ℂ x x` is this orthogonal rank-one
projection.  Its eigenvalues are contained in `{0, 1}`.  A positively oriented
circle centered at `1` with radius `0 < r < 1` therefore isolates the
`1`-eigenspace.

The proof is deliberately explicit rather than an appeal to a not-yet-packaged
general Riesz-projection theorem:

1. for any idempotent `P` and `z ≠ 0, 1`, compute
   `(z I - P)⁻¹ = z⁻¹ (I - P) + (z - 1)⁻¹ P`;
2. integrate both scalar coefficients around `C(1, r)`;
3. the `z⁻¹` term is holomorphic inside that circle and integrates to zero;
4. the `(z - 1)⁻¹` term has normalized integral one;
5. hence the contour candidate is exactly `P`, so it is idempotent.

The intermediate theorem is slightly stronger than the advertised example: it
works for every bounded idempotent on a complete complex normed space.  The
final theorem instantiates it with the concrete rank-one orthogonal projector.
-/

public section

noncomputable section

open Complex Set InnerProductSpace
open scoped Interval Ring

namespace Surface.Core.RieszRankOne

open Surface.Core.RieszCircle

/-! ## The algebraic resolvent of an idempotent -/

universe u v

section Algebraic

variable {K : Type u} {A : Type v}
variable [Field K] [Ring A] [Algebra K A]

/-- The proposed inverse of `z • 1 - P` when `P² = P`. -/
@[expose, surface_novel]
def idempotentResolventFormula (P : A) (z : K) : A :=
  z⁻¹ • (1 - P) + (z - 1)⁻¹ • P

@[surface_adapter]
theorem algebraMap_sub_idempotent (P : A) (z : K) :
    algebraMap K A z - P = z • (1 - P) + (z - 1) • P := by
  simp only [Algebra.smul_def, map_sub, map_one]
  noncomm_ring

@[surface_novel]
theorem algebraMap_sub_idempotent_mul_formula
    (P : A) (z : K) (hP : IsIdempotentElem P)
    (hz0 : z ≠ 0) (hz1 : z ≠ 1) :
    (algebraMap K A z - P) * idempotentResolventFormula P z = 1 := by
  rw [algebraMap_sub_idempotent]
  simp only [idempotentResolventFormula, mul_add, add_mul, smul_mul_assoc,
    mul_smul_comm]
  rw [show (1 - P) * (1 - P) = 1 - P by
      calc
        (1 - P) * (1 - P) = 1 - P - P + P * P := by noncomm_ring
        _ = 1 - P := by rw [hP.eq]; abel,
    show (1 - P) * P = 0 by rw [sub_mul, one_mul, hP.eq, sub_self],
    show P * (1 - P) = 0 by rw [mul_sub, mul_one, hP.eq, sub_self],
    hP.eq]
  have hzsub : z - 1 ≠ 0 := sub_ne_zero.mpr hz1
  simp [smul_smul, hz0, hzsub]

@[surface_novel]
theorem formula_mul_algebraMap_sub_idempotent
    (P : A) (z : K) (hP : IsIdempotentElem P)
    (hz0 : z ≠ 0) (hz1 : z ≠ 1) :
    idempotentResolventFormula P z * (algebraMap K A z - P) = 1 := by
  rw [algebraMap_sub_idempotent]
  simp only [idempotentResolventFormula, mul_add, add_mul, smul_mul_assoc,
    mul_smul_comm]
  rw [show (1 - P) * (1 - P) = 1 - P by
      calc
        (1 - P) * (1 - P) = 1 - P - P + P * P := by noncomm_ring
        _ = 1 - P := by rw [hP.eq]; abel,
    show (1 - P) * P = 0 by rw [sub_mul, one_mul, hP.eq, sub_self],
    show P * (1 - P) = 0 by rw [mul_sub, mul_one, hP.eq, sub_self],
    hP.eq]
  have hzsub : z - 1 ≠ 0 := sub_ne_zero.mpr hz1
  simp [smul_smul, hz0, hzsub]

/-- Every scalar other than `0` and `1` lies in an idempotent's resolvent set. -/
@[surface_novel, surface_published]
theorem idempotent_mem_resolventSet
    (P : A) (z : K) (hP : IsIdempotentElem P)
    (hz0 : z ≠ 0) (hz1 : z ≠ 1) :
    z ∈ resolventSet K P := by
  apply spectrum.mem_resolventSet_of_left_right_inverse
      (b := idempotentResolventFormula P z)
      (c := idempotentResolventFormula P z)
  · exact algebraMap_sub_idempotent_mul_formula P z hP hz0 hz1
  · exact formula_mul_algebraMap_sub_idempotent P z hP hz0 hz1

/-- Exact resolvent formula for an idempotent away from its two possible poles. -/
@[surface_novel, surface_published]
theorem resolvent_idempotent_eq_formula
    (P : A) (z : K) (hP : IsIdempotentElem P)
    (hz0 : z ≠ 0) (hz1 : z ≠ 1) :
    resolvent P z = idempotentResolventFormula P z := by
  have hz := idempotent_mem_resolventSet P z hP hz0 hz1
  have hright := algebraMap_sub_idempotent_mul_formula P z hP hz0 hz1
  rw [spectrum.resolvent_eq hz]
  exact hz.unit.inv_eq_of_mul_eq_one_right hright

end Algebraic

/-! ## The isolating circle -/

variable {H : Type*} [NormedAddCommGroup H] [NormedSpace ℂ H]

@[surface_adapter]
theorem mem_sphere_one_ne_zero {z : ℂ} {r : ℝ}
    (hz : z ∈ Metric.sphere (1 : ℂ) r) (hr1 : r < 1) : z ≠ 0 := by
  intro hz0
  subst z
  have h1r : (1 : ℝ) = r := by simpa [Metric.mem_sphere] using hz
  linarith

@[surface_adapter]
theorem mem_sphere_one_ne_one {z : ℂ} {r : ℝ}
    (hz : z ∈ Metric.sphere (1 : ℂ) r) (hr : 0 < r) : z ≠ 1 := by
  intro hz1
  subst z
  have h0r : (0 : ℝ) = r := by simpa [Metric.mem_sphere] using hz
  linarith

/-- The circle `C(1,r)`, `0 < r < 1`, certified to avoid an idempotent's spectrum. -/
@[expose, surface_novel, surface_published]
def idempotentResolventCircle
    (P : H →L[ℂ] H) (hP : IsIdempotentElem P) (r : ℝ)
    (hr : 0 < r) (hr1 : r < 1) : ResolventCircle P where
  center := 1
  radius := r
  radius_pos := hr
  contour_resolvent := by
    intro z hz
    exact idempotent_mem_resolventSet P z hP
      (mem_sphere_one_ne_zero hz hr1) (mem_sphere_one_ne_one hz hr)

/-! ## Evaluation of the contour integral -/

section Complete

variable [CompleteSpace H]

/-- The pole at `0` is outside `C(1,r)` when `r < 1`, so its integral vanishes. -/
@[surface_novel, surface_published]
theorem circleIntegral_inv_center_one_eq_zero {r : ℝ}
    (hr : 0 < r) (hr1 : r < 1) :
    (∮ z in C((1 : ℂ), r), z⁻¹) = 0 := by
  have hnz : ∀ z ∈ Metric.closedBall (1 : ℂ) r, z ≠ 0 := by
    intro z hz hz0
    subst z
    have h1r : (1 : ℝ) ≤ r := by simpa using hz
    exact (not_le_of_gt hr1) h1r
  have hc : ContinuousOn (fun z : ℂ ↦ z⁻¹) (Metric.closedBall (1 : ℂ) r) :=
    continuousOn_id.inv₀ hnz
  have hd : ∀ z ∈ Metric.ball (1 : ℂ) r \ (∅ : Set ℂ),
      DifferentiableAt ℂ (fun z : ℂ ↦ z⁻¹) z := by
    intro z hz
    exact differentiableAt_inv (hnz z (Metric.ball_subset_closedBall hz.1))
  exact Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable
    hr.le Set.countable_empty hc hd

@[surface_adapter]
theorem normalizedCircleIntegral_inv_smul_eq_zero
    (v : H) {r : ℝ} (hr : 0 < r) (hr1 : r < 1) :
    normalizedCircleIntegral (fun z : ℂ ↦ z⁻¹ • v) 1 r = 0 := by
  unfold normalizedCircleIntegral
  rw [circleIntegral.integral_smul_const,
    circleIntegral_inv_center_one_eq_zero hr hr1, zero_smul, smul_zero]

@[surface_adapter]
theorem normalizedCircleIntegral_sub_one_inv_smul_eq
    (v : H) {r : ℝ} (hr : 0 < r) :
    normalizedCircleIntegral (fun z : ℂ ↦ (z - 1)⁻¹ • v) 1 r = v := by
  unfold normalizedCircleIntegral
  rw [circleIntegral.integral_smul_const,
    circleIntegral.integral_sub_center_inv (1 : ℂ) hr.ne']
  rw [inv_smul_smul₀]
  simp [Real.pi_ne_zero, I_ne_zero]

/--
The normalized resolvent integral around `C(1,r)` is exactly the idempotent
whose `1`-eigenspace the circle isolates.
-/
@[surface_novel, surface_published]
theorem circleRieszCandidate_idempotent_eq
    (P : H →L[ℂ] H) (hP : IsIdempotentElem P) {r : ℝ}
    (hr : 0 < r) (hr1 : r < 1) :
    circleRieszCandidate P 1 r = P := by
  have hzero : CircleIntegrable (fun z : ℂ ↦ z⁻¹ • (1 - P)) 1 r := by
    apply ContinuousOn.circleIntegrable hr.le
    have hinv : ContinuousOn (fun z : ℂ ↦ z⁻¹) (Metric.sphere 1 r) :=
      continuousOn_id.inv₀ (fun z hz ↦ mem_sphere_one_ne_zero hz hr1)
    exact hinv.smul continuousOn_const
  have hone : CircleIntegrable (fun z : ℂ ↦ (z - 1)⁻¹ • P) 1 r := by
    apply ContinuousOn.circleIntegrable hr.le
    have hinv : ContinuousOn (fun z : ℂ ↦ (z - 1)⁻¹) (Metric.sphere 1 r) :=
      (continuousOn_id.sub continuousOn_const).inv₀
        (fun z hz ↦ sub_ne_zero.mpr (mem_sphere_one_ne_one hz hr))
    exact hinv.smul continuousOn_const
  have hcongr :
      normalizedCircleIntegral (resolvent P) 1 r =
        normalizedCircleIntegral (idempotentResolventFormula P) 1 r := by
    unfold normalizedCircleIntegral
    congr 1
    apply circleIntegral.integral_congr hr.le
    intro z hz
    exact resolvent_idempotent_eq_formula P z hP
      (mem_sphere_one_ne_zero hz hr1) (mem_sphere_one_ne_one hz hr)
  rw [circleRieszCandidate, hcongr]
  change normalizedCircleIntegral
    (fun z : ℂ ↦ z⁻¹ • (1 - P) + (z - 1)⁻¹ • P) 1 r = P
  rw [normalizedCircleIntegral_add hzero hone,
    normalizedCircleIntegral_inv_smul_eq_zero (1 - P) hr hr1,
    normalizedCircleIntegral_sub_one_inv_smul_eq P hr, zero_add]

@[surface_novel, surface_published]
theorem idempotentResolventCircle_candidate_eq
    (P : H →L[ℂ] H) (hP : IsIdempotentElem P) {r : ℝ}
    (hr : 0 < r) (hr1 : r < 1) :
    (idempotentResolventCircle P hP r hr hr1).candidate = P :=
  circleRieszCandidate_idempotent_eq P hP hr hr1

/-- A fully inhabited `IsProjection` proof for the explicit isolating circle. -/
@[surface_novel, surface_published]
theorem idempotentResolventCircle_isProjection
    (P : H →L[ℂ] H) (hP : IsIdempotentElem P) {r : ℝ}
    (hr : 0 < r) (hr1 : r < 1) :
    (idempotentResolventCircle P hP r hr hr1).IsProjection := by
  unfold ResolventCircle.IsProjection
  rw [idempotentResolventCircle_candidate_eq P hP hr hr1]
  exact hP

end Complete

/-! ## The promised specific operator -/

section RankOne

variable {F : Type*} [NormedAddCommGroup F] [InnerProductSpace ℂ F]

/-- `Pₓ(v) = ⟨x,v⟩x`, represented by mathlib's bounded rank-one operator. -/
@[expose, surface_adapter]
def rankOneProjection (x : F) : F →L[ℂ] F :=
  rankOne ℂ x x

@[surface_adapter, surface_published]
theorem rankOneProjection_isIdempotent (x : F) (hx : ‖x‖ = 1) :
    IsIdempotentElem (rankOneProjection x) :=
  InnerProductSpace.isIdempotentElem_rankOne_self hx

variable [CompleteSpace F]

/--
For a unit vector `x`, the Riesz candidate on every circle `C(1,r)` with
`0 < r < 1` is exactly the orthogonal projection onto `span{x}`.
-/
@[surface_novel, surface_published]
theorem rankOneResolventCircle_candidate_eq
    (x : F) (hx : ‖x‖ = 1) {r : ℝ} (hr : 0 < r) (hr1 : r < 1) :
    (idempotentResolventCircle (rankOneProjection x)
      (rankOneProjection_isIdempotent x hx) r hr hr1).candidate =
        rankOneProjection x :=
  idempotentResolventCircle_candidate_eq
    (rankOneProjection x) (rankOneProjection_isIdempotent x hx) hr hr1

/--
The formal `is_projection` result for the concrete rank-one operator.  No
project-local assumption, placeholder proof, or general Riesz theorem is used.
-/
@[surface_novel, surface_published]
theorem rankOneResolventCircle_isProjection
    (x : F) (hx : ‖x‖ = 1) {r : ℝ} (hr : 0 < r) (hr1 : r < 1) :
    (idempotentResolventCircle (rankOneProjection x)
      (rankOneProjection_isIdempotent x hx) r hr hr1).IsProjection :=
  idempotentResolventCircle_isProjection
    (rankOneProjection x) (rankOneProjection_isIdempotent x hx) hr hr1

end RankOne

end Surface.Core.RieszRankOne
