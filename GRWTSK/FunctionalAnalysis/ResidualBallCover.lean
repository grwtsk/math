/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionalAnalysis.TwoSidedResidualInverse
import Mathlib.Topology.Compactness.Compact

/-!
# Parameter balls for two-sided residual certificates

MSC2020: 47A10, 65J10. RP-OC-04, math issue #1800.
The variation hypothesis controls the exact full-space operator at EVERY point
of a closed ball. Center sampling alone does not establish this hypothesis.
All approximations and preconditioners live in one complete normed ring; a
finite compression is not silently treated as the full operator.

The inverse estimates use the previously published Neumann construction.
Compactness only extracts a finite subcover from an ALREADY supplied open
cover of valid cells. It supplies neither those cells nor their arithmetic
bounds. No normality, self-adjointness or commutativity is assumed.

Source candidate: elaboration, kernel replay, axiom audit and review NOT_RUN.
See adjacent declaration-local provenance. No new arithmetic result claimed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.FunctionalAnalysis.ResidualBallCover

open GRWTSK.FunctionalAnalysis.TwoSidedResidual

variable {X A : Type*} [PseudoMetricSpace X] [NormedRing A] [CompleteSpace A]

/-- Numerical head data plus a true operator-variation bound on a whole ball.
The scalar error includes the full-space center approximation error. -/
structure ResidualBall (a : X → A) where
  center : X
  radius : ℝ
  radius_pos : 0 < radius
  approximation : A
  preconditioner : A
  error : ℝ
  error_nonneg : 0 ≤ error
  slope : ℝ
  slope_nonneg : 0 ≤ slope
  center_error : ‖a center - approximation‖ ≤ error
  variation : ∀ x ∈ Metric.closedBall center radius,
    ‖a x - a center‖ ≤ slope * dist x center
  left_margin : ‖1 - preconditioner * approximation‖ +
    ‖preconditioner‖ * (error + slope * radius) < 1
  right_margin : ‖1 - approximation * preconditioner‖ +
    (error + slope * radius) * ‖preconditioner‖ < 1

variable {a : X → A}

/-- The complete approximation/parameter error, not merely the center error. -/
def ResidualBall.totalError (C : ResidualBall a) : ℝ := C.error + C.slope * C.radius

/-- A common inverse bound throughout this cell, when the ring norm has norm-one identity. -/
def ResidualBall.inverseBound (C : ResidualBall a) : ℝ :=
  ‖C.preconditioner‖ /
    (1 - (‖1 - C.preconditioner * C.approximation‖ +
      ‖C.preconditioner‖ * C.totalError))

/-- Triangle inequality transports a center enclosure to every point of the ball. -/
theorem ResidualBall.error_bound (C : ResidualBall a) {x : X}
    (hx : x ∈ Metric.closedBall C.center C.radius) :
    ‖a x - C.approximation‖ ≤ C.totalError := by
  calc
    ‖a x - C.approximation‖ =
        ‖(a x - a C.center) + (a C.center - C.approximation)‖ := by
      rw [sub_add_sub_cancel]
    _ ≤ ‖a x - a C.center‖ + ‖a C.center - C.approximation‖ := norm_add_le _ _
    _ ≤ C.slope * dist x C.center + C.error :=
      add_le_add (C.variation x hx) C.center_error
    _ ≤ C.slope * C.radius + C.error :=
      add_le_add_right
        (mul_le_mul_of_nonneg_left (Metric.mem_closedBall.mp hx) C.slope_nonneg) _
    _ = C.totalError := add_comm _ _

/-- The same proposed inverse certifies every point, with both residuals retained. -/
theorem ResidualBall.isUnit (C : ResidualBall a) {x : X}
    (hx : x ∈ Metric.closedBall C.center C.radius) : IsUnit (a x) :=
  isUnit_of_approximation (C.error_bound hx) C.left_margin C.right_margin

theorem ResidualBall.inverseBound_nonneg (C : ResidualBall a) :
    0 ≤ C.inverseBound :=
  div_nonneg (norm_nonneg _) (sub_pos.mpr C.left_margin).le

/-- An actual two-sided inverse and a cell-uniform quantitative bound. -/
theorem ResidualBall.exists_inverse_bound [NormOneClass A]
    (C : ResidualBall a) {x : X}
    (hx : x ∈ Metric.closedBall C.center C.radius) :
    ∃ b : A, a x * b = 1 ∧ b * a x = 1 ∧ ‖b‖ ≤ C.inverseBound :=
  exists_inverse_bound_of_approximation (C.error_bound hx) C.left_margin C.right_margin

/-- A second full-space approximation stays invertible only if its extra error
fits into BOTH remaining margins. This is a local exclusion/stability theorem. -/
theorem ResidualBall.isUnit_of_perturbation (C : ResidualBall a) {x : X}
    (hx : x ∈ Metric.closedBall C.center C.radius) {b : A} {δ : ℝ}
    (herr : ‖b - a x‖ ≤ δ)
    (hl : ‖1 - C.preconditioner * C.approximation‖ +
      ‖C.preconditioner‖ * (C.totalError + δ) < 1)
    (hr : ‖1 - C.approximation * C.preconditioner‖ +
      (C.totalError + δ) * ‖C.preconditioner‖ < 1) : IsUnit b := by
  have hfull : ‖b - C.approximation‖ ≤ C.totalError + δ := by
    calc
      ‖b - C.approximation‖ = ‖(b - a x) + (a x - C.approximation)‖ := by
        rw [sub_add_sub_cancel]
      _ ≤ ‖b - a x‖ + ‖a x - C.approximation‖ := norm_add_le _ _
      _ ≤ δ + C.totalError := add_le_add herr (C.error_bound hx)
      _ = C.totalError + δ := add_comm _ _
  exact isUnit_of_approximation hfull hl hr

/-- A finite certificate family covers a continuum only through this explicit coverage premise. -/
theorem isUnit_on_finite_cover (cells : Finset (ResidualBall a)) (S : Set X)
    (hcover : ∀ x ∈ S, ∃ C ∈ cells, x ∈ Metric.closedBall C.center C.radius) :
    ∀ x ∈ S, IsUnit (a x) := by
  intro x hx
  obtain ⟨C, _, hC⟩ := hcover x hx
  exact C.isUnit hC

/-- A finite cover gives a common (deliberately coarse) inverse bound.
The sum avoids a nonempty-cover assumption; empty domains are allowed. -/
theorem inverse_bound_on_finite_cover [NormOneClass A]
    (cells : Finset (ResidualBall a)) (S : Set X)
    (hcover : ∀ x ∈ S, ∃ C ∈ cells, x ∈ Metric.closedBall C.center C.radius) :
    ∀ x ∈ S, ∃ b : A, a x * b = 1 ∧ b * a x = 1 ∧
      ‖b‖ ≤ ∑ C ∈ cells, C.inverseBound := by
  intro x hx
  obtain ⟨C, hmem, hC⟩ := hcover x hx
  obtain ⟨b, hab, hba, hb⟩ := C.exists_inverse_bound hC
  exact ⟨b, hab, hba, hb.trans
    (Finset.single_le_sum (fun D _ => D.inverseBound_nonneg) hmem)⟩

/-- Compactness reduces a supplied open cover of valid residual balls to finitely
many closed-ball certificates. It does not prove that such a cover exists. -/
theorem exists_finite_closed_cover {ι : Type*} (C : ι → ResidualBall a)
    {S : Set X} (hS : IsCompact S)
    (hcover : ∀ x ∈ S, ∃ i, x ∈ Metric.ball (C i).center (C i).radius) :
    ∃ t : Finset ι, ∀ x ∈ S, ∃ i ∈ t,
      x ∈ Metric.closedBall (C i).center (C i).radius := by
  obtain ⟨t, ht⟩ := hS.elim_finite_subcover
    (fun i => Metric.ball (C i).center (C i).radius) (fun _ => Metric.isOpen_ball)
    (by
      intro x hx
      obtain ⟨i, hi⟩ := hcover x hx
      exact Set.mem_iUnion.mpr ⟨i, hi⟩)
  refine ⟨t, ?_⟩
  intro x hx
  obtain ⟨i, hi, hxi⟩ := Set.mem_iUnion₂.mp (ht hx)
  exact ⟨i, hi, Metric.mem_closedBall.mpr (Metric.mem_ball.mp hxi).le⟩

/-- The inverse-difference identity retains multiplication order in a nonnormal setting. -/
theorem inverse_sub_identity {u v p q : A} (hup : u * p = 1) (hqv : q * v = 1) :
    u - v = u * (q - p) * v := by
  symm
  calc
    u * (q - p) * v = u * (q * v) - (u * p) * v := by noncomm_ring
    _ = u - v := by rw [hqv, hup, mul_one, one_mul]

/-- Operator-norm convergence controls inverse differences once actual inverse
bounds are supplied. Eigenvalue agreement alone is not a hypothesis here. -/
theorem norm_inverse_sub_le {u v p q : A} (hup : u * p = 1) (hqv : q * v = 1) :
    ‖u - v‖ ≤ ‖u‖ * ‖p - q‖ * ‖v‖ := by
  calc
    ‖u - v‖ = ‖u * (q - p) * v‖ := congrArg norm (inverse_sub_identity hup hqv)
    _ ≤ ‖u * (q - p)‖ * ‖v‖ := norm_mul_le _ _
    _ ≤ (‖u‖ * ‖q - p‖) * ‖v‖ :=
      mul_le_mul_of_nonneg_right (norm_mul_le _ _) (norm_nonneg _)
    _ = ‖u‖ * ‖p - q‖ * ‖v‖ := by rw [norm_sub_rev q p]

end GRWTSK.FunctionalAnalysis.ResidualBallCover
