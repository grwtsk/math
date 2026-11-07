/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionsOfAComplexVariable.ExteriorDiskCofinality

/-!
# Inversion, poles, and the failure of unrestricted directedness

The literal sphere map switches zero and infinity. Complex division by zero
is NEVER used to represent infinity. Inversion sends a radial exterior to a
small disk around zero; the translated inversion has a radial-exterior
preimage equal to an ordinary open disk around its pole, INCLUDING the pole.

Nondegenerate coefficient data also define the literal fractional-linear
map on OnePoint ℂ. The value at infinity and the finite-pole calculation are
explicit. These data are not identified with a projective quotient, and a
full PGL2 action/homeomorphism classification is outside this module.
The identity and inversion alone already refute directedness of all image
sets under reverse inclusion: their radius-two images are disjoint, whereas
every candidate image is nonempty.

Primary argument: positivity of R and ‖z‖ permits multiplication of the
reciprocal inequalities; the z=0 and infinity cases are separate. The general
pole decomposition is a field identity with both denominators nonzero.
No comparison of uncountably many paths or numerical rate assumption occurs.
Elaboration, compilation, kernel replay, axiom audit, independent review:
NOT_RUN at publication. No arithmetic positivity or RH/GRH conclusion.
-/

set_option autoImplicit false
noncomputable section
open Set

namespace GRWTSK.ComplexGeometry
open ExteriorDisk

/-- Sphere inversion, with its two exceptional values explicit. -/
def reciprocal (z : OnePoint ℂ) : OnePoint ℂ := by
  classical
  exact z.elim (OnePoint.some 0)
    (fun w => if w = 0 then OnePoint.infty else OnePoint.some w⁻¹)

@[simp] theorem reciprocal_infty : reciprocal OnePoint.infty = (0 : ℂ) := rfl
@[simp] theorem reciprocal_zero : reciprocal (0 : ℂ) = OnePoint.infty := by
  simp [reciprocal]

theorem reciprocal_coe_ne {z : ℂ} (hz : z ≠ 0) :
    reciprocal (z : OnePoint ℂ) = (z⁻¹ : ℂ) := by simp [reciprocal, hz]

theorem reciprocal_involutive : Function.Involutive reciprocal := by
  intro z
  induction z using OnePoint.rec with
  | infty => simp
  | coe z =>
    by_cases hz : z = 0
    · subst z
      simp
    · rw [reciprocal_coe_ne hz, reciprocal_coe_ne (inv_ne_zero hz), inv_inv]

/-- The finite pole is included because its sphere image is infinity. -/
theorem reciprocal_preimage_radial (R : ℝ) (hR : 0 < R) :
    reciprocal ⁻¹' (radial R hR).exterior =
      OnePoint.some '' Metric.ball (0 : ℂ) (1 / R) := by
  ext z
  induction z using OnePoint.rec with
  | infty => simp [reciprocal, radial, not_lt.mpr hR.le]
  | coe z =>
    by_cases hz : z = 0
    · subst z
      have hi : 0 < 1 / R := one_div_pos.mpr hR
      simp [reciprocal, Metric.mem_ball, dist_eq_norm, hi]
    · have hn : 0 < ‖z‖ := norm_pos_iff.mpr hz
      simp only [Set.mem_preimage, reciprocal_coe_ne hz, coe_mem_exterior,
        radial, sub_zero, Set.mem_image, OnePoint.some_eq_iff, exists_eq_right,
        Metric.mem_ball, dist_eq_norm]
      rw [norm_inv, inv_eq_one_div, lt_div_iff₀ hn, lt_div_iff₀ hR,
        mul_comm R ‖z‖]

theorem reciprocal_image_eq_preimage (S : Set (OnePoint ℂ)) :
    reciprocal '' S = reciprocal ⁻¹' S := by
  ext z
  constructor
  · rintro ⟨w, hw, rfl⟩
    change reciprocal (reciprocal w) ∈ S
    rwa [reciprocal_involutive w]
  · intro hz
    exact ⟨reciprocal z, hz, reciprocal_involutive z⟩

theorem reciprocal_image_radial (R : ℝ) (hR : 0 < R) :
    reciprocal '' (radial R hR).exterior =
      OnePoint.some '' Metric.ball (0 : ℂ) (1 / R) := by
  rw [reciprocal_image_eq_preimage, reciprocal_preimage_radial]

def poleInverse (p : ℂ) (z : OnePoint ℂ) : OnePoint ℂ :=
  reciprocal (OnePoint.map (fun w => w - p) z)

@[simp] theorem poleInverse_at_pole (p : ℂ) : poleInverse p (p : OnePoint ℂ) =
    OnePoint.infty := by simp [poleInverse]

theorem poleInverse_preimage_radial (p : ℂ) (R : ℝ) (hR : 0 < R) :
    poleInverse p ⁻¹' (radial R hR).exterior =
      OnePoint.some '' Metric.ball p (1 / R) := by
  change OnePoint.map (fun w : ℂ => w - p) ⁻¹'
    (reciprocal ⁻¹' (radial R hR).exterior) = _
  rw [reciprocal_preimage_radial]
  ext z
  induction z using OnePoint.rec with
  | infty => simp
  | coe z => simp [Metric.mem_ball, dist_eq_norm]

/-- The two opposed image neighborhoods are actually disjoint. -/
theorem radial_two_disjoint_inverted :
    Disjoint (radial 2 (by norm_num)).exterior
      (reciprocal '' (radial 2 (by norm_num)).exterior) := by
  rw [reciprocal_image_radial]
  apply Set.disjoint_left.mpr
  intro z hz hi
  obtain ⟨w, hw, rfl⟩ := hi
  have hlarge : (2 : ℝ) < ‖w‖ := by simpa [radial] using hz
  have hsmall : ‖w‖ < (1 / 2 : ℝ) := by
    simpa [Metric.mem_ball, dist_eq_norm] using hw
  linarith

theorem no_nonempty_common_refinement {U : Set (OnePoint ℂ)} (hU : U.Nonempty)
    (h₁ : U ⊆ (radial 2 (by norm_num)).exterior)
    (h₂ : U ⊆ reciprocal '' (radial 2 (by norm_num)).exterior) : False := by
  obtain ⟨z, hz⟩ := hU
  exact Set.disjoint_left.mp radial_two_disjoint_inverted (h₁ hz) (h₂ hz)

/-- Nondegenerate coefficient presentations; scalar-equivalent matrices remain distinct data. -/
structure MobiusData where
  a : ℂ
  b : ℂ
  c : ℂ
  d : ℂ
  det_ne_zero : a * d - b * c ≠ 0

namespace MobiusData

/-- The actual sphere-valued fractional-linear formula, not totalized complex division at a pole. -/
def sphereMap (M : MobiusData) (z : OnePoint ℂ) : OnePoint ℂ := by
  classical
  exact z.elim
    (if M.c = 0 then OnePoint.infty else OnePoint.some (M.a / M.c))
    (fun w => if M.c * w + M.d = 0 then OnePoint.infty
      else OnePoint.some ((M.a * w + M.b) / (M.c * w + M.d)))

theorem infinity_of_c_zero (M : MobiusData) (hc : M.c = 0) :
    M.sphereMap OnePoint.infty = OnePoint.infty := by simp [sphereMap, hc]

theorem infinity_of_c_ne_zero (M : MobiusData) (hc : M.c ≠ 0) :
    M.sphereMap OnePoint.infty = (M.a / M.c : ℂ) := by simp [sphereMap, hc]

theorem denominator_at_pole (M : MobiusData) (hc : M.c ≠ 0) :
    M.c * (-M.d / M.c) + M.d = 0 := by field_simp [hc] <;> ring

theorem numerator_at_pole_ne_zero (M : MobiusData) (hc : M.c ≠ 0) :
    M.a * (-M.d / M.c) + M.b ≠ 0 := by
  intro h
  have hid : (M.a * (-M.d / M.c) + M.b) * M.c = -(M.a * M.d - M.b * M.c) := by
    field_simp [hc] <;> ring
  have hn : -(M.a * M.d - M.b * M.c) = 0 := by rw [← hid, h, zero_mul]
  exact M.det_ne_zero (neg_eq_zero.mp hn)

theorem value_at_pole (M : MobiusData) (hc : M.c ≠ 0) :
    M.sphereMap (-M.d / M.c : ℂ) = OnePoint.infty := by
  simp [sphereMap, M.denominator_at_pole hc]

/-- The simple-pole decomposition retains both necessary nonzero denominators. -/
theorem pole_decomposition (M : MobiusData) (hc : M.c ≠ 0) (z : ℂ)
    (hz : M.c * z + M.d ≠ 0) :
    (M.a * z + M.b) / (M.c * z + M.d) =
      M.a / M.c - (M.a * M.d - M.b * M.c) / (M.c ^ 2 * (z - (-M.d / M.c))) := by
  have hden : M.c ^ 2 * (z - (-M.d / M.c)) = M.c * (M.c * z + M.d) := by
    field_simp [hc] <;> ring
  rw [hden]
  field_simp [hc, hz] <;> ring

def identity : MobiusData := ⟨1, 0, 0, 1, by norm_num⟩
def inversion : MobiusData := ⟨0, 1, 1, 0, by norm_num⟩

@[simp] theorem identity_sphereMap : identity.sphereMap = id := by
  funext z
  induction z using OnePoint.rec with
  | infty => simp [identity, sphereMap]
  | coe z => simp [identity, sphereMap]

@[simp] theorem inversion_sphereMap : inversion.sphereMap = reciprocal := by
  funext z
  induction z using OnePoint.rec with
  | infty => simp [inversion, sphereMap, reciprocal]
  | coe z => simp [inversion, sphereMap, reciprocal, one_div]

/-- The unrestricted original family has no common refinement even for these two members. -/
theorem no_common_image_refinement :
    ¬ ∃ (M : MobiusData) (r : ℝ) (hr : 0 < r),
      M.sphereMap '' (radial r hr).exterior ⊆
        identity.sphereMap '' (radial 2 (by norm_num)).exterior ∧
      M.sphereMap '' (radial r hr).exterior ⊆
        inversion.sphereMap '' (radial 2 (by norm_num)).exterior := by
  rintro ⟨M, r, hr, h₁, h₂⟩
  have hne : (M.sphereMap '' (radial r hr).exterior).Nonempty :=
    ⟨M.sphereMap OnePoint.infty,
      ⟨OnePoint.infty, (radial r hr).infty_mem_exterior, rfl⟩⟩
  apply no_nonempty_common_refinement hne
  · simpa only [identity_sphereMap, Set.image_id] using h₁
  · simpa only [inversion_sphereMap] using h₂

end MobiusData
end GRWTSK.ComplexGeometry
