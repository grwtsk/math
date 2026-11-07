/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionsOfAComplexVariable.ExteriorDiskCofinality
import Mathlib.Order.Antisymmetrization

/-!
# Affine transport and the presentation preorder

The map z ↦ a*z+b, a≠0, sends the disk (c,r) to (a*c+b, ‖a‖*r).
The norm identity proves both the actual sphere-set image and an order
isomorphism with its explicitly constructed inverse. This is the affine
infinity-fixing sector, NOT the real upper-half-plane action in MoebiusAction.
No new complex PGL2 carrier or homeomorphism classification is assumed.

The source presentation (a,b,r) retains more information than its image disk.
Its pulled-back relation is a preorder. Mutual comparison equals equality of
target disks; the existing Antisymmetrization API provides the partial-order
quotient. Scale 1 and scale -1 give an explicit nonantisymmetry witness.

A single doubling rule generates the dyadic cofinal orbit. This is an infinite
family specified by one generator, not a finite cofinal set. The algebraic
inverse and the actual image calculation are complementary checks of the
same affine geometry, not independent mathematical review.

Compilation, elaboration, fresh kernel checking and transitive axiom audit:
NOT_RUN at publication. No arithmetic source sign or RH/GRH claim is made.
-/

set_option autoImplicit false
noncomputable section
open Set

namespace GRWTSK.ComplexGeometry
open ExteriorDisk

/-- Exact effect of an affine map on the geometric disk data. -/
def affineImage (a b : ℂ) (ha : a ≠ 0) (A : ExteriorDisk) : ExteriorDisk where
  center := a * A.center + b
  radius := ‖a‖ * A.radius
  radius_pos := mul_pos (norm_pos_iff.mpr ha) A.radius_pos

theorem norm_affine_difference (a b z c : ℂ) :
    ‖(a * z + b) - (a * c + b)‖ = ‖a‖ * ‖z - c‖ := by
  rw [show (a * z + b) - (a * c + b) = a * (z - c) by ring, norm_mul]

theorem affineImage_le_iff (a b : ℂ) (ha : a ≠ 0) (A B : ExteriorDisk) :
    affineImage a b ha A ≤ affineImage a b ha B ↔ A ≤ B := by
  change ‖(a * A.center + b) - (a * B.center + b)‖ + ‖a‖ * A.radius ≤
    ‖a‖ * B.radius ↔ ‖A.center - B.center‖ + A.radius ≤ B.radius
  rw [norm_affine_difference, ← mul_add]
  exact mul_le_mul_left (norm_pos_iff.mpr ha)

/-- Affine maps act by order automorphisms, with no chosen escape direction. -/
def affineOrderIso (a b : ℂ) (ha : a ≠ 0) : ExteriorDisk ≃o ExteriorDisk where
  toFun := affineImage a b ha
  invFun := affineImage a⁻¹ (-a⁻¹ * b) (inv_ne_zero ha)
  left_inv A := by
    apply ExteriorDisk.ext
    · change a⁻¹ * (a * A.center + b) + (-a⁻¹ * b) = A.center
      field_simp [ha] <;> ring
    · change ‖a⁻¹‖ * (‖a‖ * A.radius) = A.radius
      rw [norm_inv, ← mul_assoc, inv_mul_cancel₀ (norm_ne_zero_iff.mpr ha), one_mul]
  right_inv A := by
    apply ExteriorDisk.ext
    · change a * (a⁻¹ * A.center + (-a⁻¹ * b)) + b = A.center
      field_simp [ha] <;> ring
    · change ‖a‖ * (‖a⁻¹‖ * A.radius) = A.radius
      rw [norm_inv, ← mul_assoc, mul_inv_cancel₀ (norm_ne_zero_iff.mpr ha), one_mul]
  map_rel_iff' := by
    intro A B
    exact affineImage_le_iff a b ha A B

/-- Pointwise membership for the actual map on `OnePoint ℂ`. -/
theorem affine_mem_exterior_iff (a b : ℂ) (ha : a ≠ 0) (A : ExteriorDisk)
    (z : OnePoint ℂ) :
    OnePoint.map (fun w => a * w + b) z ∈ (affineImage a b ha A).exterior ↔
      z ∈ A.exterior := by
  induction z using OnePoint.rec with
  | infty => simp
  | coe z =>
    simp only [OnePoint.map_some, ExteriorDisk.coe_mem_exterior]
    change ‖a‖ * A.radius < ‖(a * z + b) - (a * A.center + b)‖ ↔
      A.radius < ‖z - A.center‖
    rw [norm_affine_difference]
    exact mul_lt_mul_left (norm_pos_iff.mpr ha)

/-- A set-image equality, not merely an inclusion or a claimed action law. -/
theorem affine_exterior_image (a b : ℂ) (ha : a ≠ 0) (A : ExteriorDisk) :
    OnePoint.map (fun w => a * w + b) '' A.exterior =
      (affineImage a b ha A).exterior := by
  apply Set.Subset.antisymm
  · rintro z ⟨w, hw, rfl⟩
    exact (affine_mem_exterior_iff a b ha A w).mpr hw
  · intro z hz
    induction z using OnePoint.rec with
    | infty => exact ⟨OnePoint.infty, A.infty_mem_exterior, rfl⟩
    | coe z =>
      let w : ℂ := (z - b) / a
      have hwz : a * w + b = z := by
        dsimp [w]
        field_simp [ha] <;> ring
      refine ⟨(w : OnePoint ℂ), ?_, ?_⟩
      · apply (affine_mem_exterior_iff a b ha A w).mp
        simpa only [OnePoint.map_some, hwz] using hz
      · simpa only [OnePoint.map_some, hwz]

theorem affineImage_cofinal (a b : ℂ) (ha : a ≠ 0)
    {S : Set ExteriorDisk} (hS : IsCofinal S) :
    IsCofinal (affineImage a b ha '' S) :=
  (affineOrderIso a b ha).map_isCofinal hS

/-- The quantitative target-infinity test includes the translation price. -/
theorem affine_radial_escape_iff (a b : ℂ) (ha : a ≠ 0)
    (r R : ℝ) (hr : 0 < r) (hR : 0 < R) :
    (affineImage a b ha (radial r hr)).exterior ⊆ (radial R hR).exterior ↔
      R + ‖b‖ ≤ ‖a‖ * r := by
  rw [ExteriorDisk.exterior_subset_iff, ExteriorDisk.radial_le_iff]
  simp only [ExteriorDisk.escapeRadius, affineImage, radial, mul_zero, zero_add]
  constructor <;> intro h <;> linarith

/-- Presentation data are intentionally not identified with their geometric output. -/
structure AffinePresentation where
  scale : ℂ
  shift : ℂ
  domainRadius : ℝ
  scale_ne_zero : scale ≠ 0
  radius_pos : 0 < domainRadius

namespace AffinePresentation

def target (P : AffinePresentation) : ExteriorDisk :=
  affineImage P.scale P.shift P.scale_ne_zero (radial P.domainRadius P.radius_pos)

instance : Preorder AffinePresentation where
  le P Q := P.target ≤ Q.target
  le_refl P := le_rfl
  le_trans _ _ _ hPQ hQR := hPQ.trans hQR

theorem mutual_iff_target_eq (P Q : AffinePresentation) :
    (P ≤ Q ∧ Q ≤ P) ↔ P.target = Q.target := by
  change (P.target ≤ Q.target ∧ Q.target ≤ P.target) ↔ P.target = Q.target
  constructor
  · exact fun h => le_antisymm h.1 h.2
  · intro h
    rw [h]
    exact ⟨le_rfl, le_rfl⟩

/-- Existing generic antisymmetrization, not an asserted antisymmetry instance on presentations. -/
abbrev Geometry := Antisymmetrization AffinePresentation (· ≤ ·)

theorem antisymmRel_iff_target_eq (P Q : AffinePresentation) :
    AntisymmRel (· ≤ ·) P Q ↔ P.target = Q.target := mutual_iff_target_eq P Q

theorem target_surjective : Function.Surjective target := by
  intro A
  let P : AffinePresentation := ⟨1, A.center, A.radius, one_ne_zero, A.radius_pos⟩
  refine ⟨P, ?_⟩
  apply ExteriorDisk.ext <;> simp [P, target, affineImage, radial]

/-- The identity and a half-turn have the same output, but different source data. -/
theorem exists_distinct_mutually_le :
    ∃ P Q : AffinePresentation, P ≠ Q ∧ P ≤ Q ∧ Q ≤ P := by
  let P : AffinePresentation := ⟨1, 0, 1, one_ne_zero, zero_lt_one⟩
  let Q : AffinePresentation := ⟨-1, 0, 1, by norm_num, zero_lt_one⟩
  have ht : P.target = Q.target := by
    apply ExteriorDisk.ext <;> norm_num [P, Q, target, affineImage, radial]
  refine ⟨P, Q, ?_, le_of_eq ht, le_of_eq ht.symm⟩
  intro h
  have hs := congrArg AffinePresentation.scale h
  norm_num [P, Q] at hs

end AffinePresentation

/-- One fixed generator, acting on all disks. -/
def doubleDisk (A : ExteriorDisk) : ExteriorDisk := affineImage 2 0 (by norm_num) A

/-- The infinite orbit generated recursively by that single rule. -/
def doublingOrbit : ℕ → ExteriorDisk
  | 0 => radial 1 zero_lt_one
  | n + 1 => doubleDisk (doublingOrbit n)

theorem doubleDisk_dyadic (n : ℕ) : doubleDisk (dyadicDisk n) = dyadicDisk (n + 1) := by
  apply ExteriorDisk.ext <;>
    norm_num [doubleDisk, affineImage, dyadicDisk, radial, pow_succ, mul_comm]

theorem doublingOrbit_eq_dyadic (n : ℕ) : doublingOrbit n = dyadicDisk n := by
  induction n with
  | zero => apply ExteriorDisk.ext <;> norm_num [doublingOrbit, dyadicDisk, radial]
  | succ n ih =>
    change doubleDisk (doublingOrbit n) = dyadicDisk (n + 1)
    rw [ih, doubleDisk_dyadic]

theorem doublingOrbit_cofinal : IsCofinal (Set.range doublingOrbit) := by
  have h : doublingOrbit = dyadicDisk := funext doublingOrbit_eq_dyadic
  rw [h]
  exact dyadicDisk_cofinal

end GRWTSK.ComplexGeometry
