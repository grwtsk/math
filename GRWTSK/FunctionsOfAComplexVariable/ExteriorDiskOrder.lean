/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Topology.Compactification.OnePoint.Basic
import Mathlib.Topology.MetricSpace.Bounded
import Mathlib.Tactic

/-!
# Exterior disks: a geometric partial order

The carrier retains a complex center and a strictly positive real radius.
`A ≤ B` means that the closed disk of A is contained in the closed disk of B;
thus the corresponding OPEN exteriors on `OnePoint ℂ` refine in the opposite
set-inclusion direction. Infinity is included, never an informal norm value.

Primary argument: the triangle inequality gives sufficiency. For necessity,
use the point of the smaller disk farthest from the other center, constructed
by a positive real multiple of the center difference. Coincident centers are
handled by the positive real boundary point, not division by zero. The
coordinate test additionally retains the sign of the radius difference.

The consumer is `ExteriorDiskCofinality` and the affine transport module.
These are elementary geometry/order results, not arithmetic positivity.
The agreed mathematical derivation is in the source discussion; no worldwide
novelty or independent review is claimed. At source publication, elaboration,
compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
Mathlib source API inspected at d13f23b723b8a846827a245b89c10fc7d3f11612.
-/

set_option autoImplicit false
noncomputable section
open Set Metric

namespace GRWTSK.ComplexGeometry

/-- An exterior is the complement of this positive-radius closed disk. -/
structure ExteriorDisk where
  center : ℂ
  radius : ℝ
  radius_pos : 0 < radius

namespace ExteriorDisk

@[ext] theorem ext {A B : ExteriorDisk} (hc : A.center = B.center)
    (hr : A.radius = B.radius) : A = B := by
  cases A
  cases B
  cases hc
  cases hr
  rfl

instance : PartialOrder ExteriorDisk where
  le A B := ‖A.center - B.center‖ + A.radius ≤ B.radius
  le_refl A := by simp
  le_trans A B C hAB hBC := by
    have htri := norm_add_le (A.center - B.center) (B.center - C.center)
    have heq : (A.center - B.center) + (B.center - C.center) =
        A.center - C.center := by ring
    rw [heq] at htri
    linarith
  le_antisymm A B hAB hBA := by
    have hrev : ‖B.center - A.center‖ = ‖A.center - B.center‖ := norm_sub_rev _ _
    rw [hrev] at hBA
    have hn : ‖A.center - B.center‖ = 0 := by
      have := norm_nonneg (A.center - B.center)
      linarith
    have hc : A.center = B.center := sub_eq_zero.mp (norm_eq_zero.mp hn)
    apply ext hc
    rw [hn] at hAB hBA
    linarith

@[simp] theorem le_def (A B : ExteriorDisk) :
    A ≤ B ↔ ‖A.center - B.center‖ + A.radius ≤ B.radius := Iff.rfl

/-- The actual closed complex disk, not a new topological carrier. -/
def closedDisk (A : ExteriorDisk) : Set ℂ := {z | ‖z - A.center‖ ≤ A.radius}

@[simp] theorem mem_closedDisk (A : ExteriorDisk) (z : ℂ) :
    z ∈ A.closedDisk ↔ ‖z - A.center‖ ≤ A.radius := Iff.rfl

theorem closedDisk_eq_closedBall (A : ExteriorDisk) :
    A.closedDisk = Metric.closedBall A.center A.radius := by
  ext z
  simp only [mem_closedDisk, Metric.mem_closedBall, dist_eq_norm]

/-- Exact geometric interpretation of the algebraic comparison. -/
theorem closedDisk_subset_iff (A B : ExteriorDisk) :
    A.closedDisk ⊆ B.closedDisk ↔ A ≤ B := by
  constructor
  · intro h
    change ‖A.center - B.center‖ + A.radius ≤ B.radius
    by_cases hc : A.center = B.center
    · let z : ℂ := A.center + A.radius • (1 : ℂ)
      have hzA : ‖z - A.center‖ = A.radius := by
        simp [z, norm_smul, Real.norm_of_nonneg A.radius_pos.le]
      have hz : z ∈ A.closedDisk := by
        change ‖z - A.center‖ ≤ A.radius
        rw [hzA]
      have hzB := h hz
      change ‖z - B.center‖ ≤ B.radius at hzB
      rw [← hc, hzA] at hzB
      simpa [hc] using hzB
    · have hd : 0 < ‖A.center - B.center‖ :=
        norm_pos_iff.mpr (sub_ne_zero.mpr hc)
      let q : ℝ := A.radius / ‖A.center - B.center‖
      have hq : 0 ≤ q := div_nonneg A.radius_pos.le hd.le
      have hqd : q * ‖A.center - B.center‖ = A.radius :=
        div_mul_cancel₀ _ hd.ne'
      let z : ℂ := A.center + q • (A.center - B.center)
      have hzA : ‖z - A.center‖ = A.radius := by
        simp only [z, add_sub_cancel_left, norm_smul, Real.norm_of_nonneg hq]
        exact hqd
      have hzB : ‖z - B.center‖ = ‖A.center - B.center‖ + A.radius := by
        have heq : z - B.center = (1 + q) • (A.center - B.center) := by
          dsimp [z]
          rw [add_smul, one_smul]
          abel
        rw [heq, norm_smul, Real.norm_of_nonneg (by linarith : 0 ≤ 1 + q),
          add_mul, one_mul, hqd]
      have hz : z ∈ A.closedDisk := by
        change ‖z - A.center‖ ≤ A.radius
        rw [hzA]
      have hout := h hz
      change ‖z - B.center‖ ≤ B.radius at hout
      rwa [hzB] at hout
  · intro h z hz
    change ‖A.center - B.center‖ + A.radius ≤ B.radius at h
    change ‖z - A.center‖ ≤ A.radius at hz
    change ‖z - B.center‖ ≤ B.radius
    have htri := norm_add_le (z - A.center) (A.center - B.center)
    have heq : (z - A.center) + (A.center - B.center) = z - B.center := by ring
    rw [heq] at htri
    linarith

/-- The genuine open exterior in the one-point compactification of ℂ. -/
def exterior (A : ExteriorDisk) : Set (OnePoint ℂ) :=
  (OnePoint.some '' A.closedDisk)ᶜ

@[simp] theorem infty_mem_exterior (A : ExteriorDisk) :
    OnePoint.infty ∈ A.exterior := by
  simp [exterior]

@[simp] theorem coe_mem_exterior (A : ExteriorDisk) (z : ℂ) :
    (z : OnePoint ℂ) ∈ A.exterior ↔ A.radius < ‖z - A.center‖ := by
  simp [exterior, closedDisk]

theorem exterior_open (A : ExteriorDisk) : IsOpen A.exterior := by
  apply OnePoint.isOpen_compl_image_coe.mpr
  rw [closedDisk_eq_closedBall]
  exact ⟨isClosed_closedBall, isCompact_closedBall _ _⟩

/-- Reverse inclusion is exactly the center-radius order. -/
theorem exterior_subset_iff (A B : ExteriorDisk) :
    B.exterior ⊆ A.exterior ↔ A ≤ B := by
  rw [← closedDisk_subset_iff]
  constructor
  · intro h z hz
    by_contra hnot
    have hB : (z : OnePoint ℂ) ∈ B.exterior := by
      simpa [exterior] using hnot
    have hA : z ∉ A.closedDisk := by
      simpa [exterior] using h hB
    exact hA hz
  · intro h z hz
    change z ∉ OnePoint.some '' B.closedDisk at hz
    change z ∉ OnePoint.some '' A.closedDisk
    rintro ⟨w, hw, hwz⟩
    exact hz ⟨w, h hw, hwz⟩

theorem exterior_injective : Function.Injective exterior := by
  intro A B h
  apply le_antisymm
  · apply (exterior_subset_iff A B).mp
    exact h.symm.subset
  · apply (exterior_subset_iff B A).mp
    exact h.subset

/-- Squaring is legitimate only after retaining the nonnegative gap. -/
theorem le_iff_coordinates (A B : ExteriorDisk) :
    A ≤ B ↔ 0 ≤ B.radius - A.radius ∧
      (A.center.re - B.center.re) ^ 2 + (A.center.im - B.center.im) ^ 2 ≤
        (B.radius - A.radius) ^ 2 := by
  have hs : ‖A.center - B.center‖ ^ 2 =
      (A.center.re - B.center.re) ^ 2 + (A.center.im - B.center.im) ^ 2 := by
    rw [← Complex.normSq_eq_norm_sq]
    simp [Complex.normSq_apply, pow_two]
  have hn := norm_nonneg (A.center - B.center)
  rw [le_def, ← hs]
  constructor
  · intro h
    have hg : 0 ≤ B.radius - A.radius := by linarith
    have hp := mul_nonneg (show 0 ≤ B.radius - A.radius - ‖A.center - B.center‖ by
      linarith) (show 0 ≤ B.radius - A.radius + ‖A.center - B.center‖ by linarith)
    exact ⟨hg, by nlinarith⟩
  · rintro ⟨hg, hs⟩
    by_contra h
    have hlt : B.radius - A.radius < ‖A.center - B.center‖ := by linarith
    have hp : 0 < (‖A.center - B.center‖ - (B.radius - A.radius)) *
        (‖A.center - B.center‖ + (B.radius - A.radius)) :=
      mul_pos (by linarith) (by linarith)
    nlinarith

end ExteriorDisk

/-- Exact rational input data; no rational representation of an arbitrary complex point is asserted. -/
structure RationalExteriorDisk where
  re : ℚ
  im : ℚ
  radius : ℚ
  radius_pos : 0 < radius

namespace RationalExteriorDisk

def toExteriorDisk (A : RationalExteriorDisk) : ExteriorDisk where
  center := ⟨(A.re : ℝ), (A.im : ℝ)⟩
  radius := A.radius
  radius_pos := by exact_mod_cast A.radius_pos

/-- A finite exact rational comparison, including the sign guard. -/
def Fits (A B : RationalExteriorDisk) : Prop :=
  0 ≤ B.radius - A.radius ∧
    (A.re - B.re) ^ 2 + (A.im - B.im) ^ 2 ≤ (B.radius - A.radius) ^ 2

instance (A B : RationalExteriorDisk) : Decidable (Fits A B) := by
  unfold Fits
  infer_instance

theorem fits_iff (A B : RationalExteriorDisk) :
    Fits A B ↔ A.toExteriorDisk ≤ B.toExteriorDisk := by
  rw [ExteriorDisk.le_iff_coordinates]
  change (0 ≤ B.radius - A.radius ∧
    (A.re - B.re) ^ 2 + (A.im - B.im) ^ 2 ≤ (B.radius - A.radius) ^ 2) ↔
      (0 ≤ (B.radius : ℝ) - (A.radius : ℝ) ∧
        ((A.re : ℝ) - (B.re : ℝ)) ^ 2 + ((A.im : ℝ) - (B.im : ℝ)) ^ 2 ≤
          ((B.radius : ℝ) - (A.radius : ℝ)) ^ 2)
  constructor <;> intro h <;> exact_mod_cast h

end RationalExteriorDisk
end GRWTSK.ComplexGeometry
