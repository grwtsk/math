/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib inner-product facts retain upstream authorship and licenses. -/
import GRWTSK.OperatorTheory.ArithmeticCyclicVacuumComplement

set_option autoImplicit false
noncomputable section

/-!
# Quantified overlap between changing vacuum complements

A vector orthogonal to nu has omega-overlap at most norm(omega-nu)*norm(x).
Subtracting its omega component gives an actual old-complement vector.
For unit omega the exact retained norm and its overlap-loss estimate are
derived. No closeness of physical vacua, gap or continuum model is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.VacuumComplementOverlap

variable (N : ℕ) [NeZero N]

def removeVacuum (ω x : EuclideanSpace ℂ (ZMod N)) := x - (inner ℂ ω x) • ω

theorem overlap_le_vacuum_change (ω ν x : EuclideanSpace ℂ (ZMod N))
    (hx : inner ℂ ν x = 0) : ‖inner ℂ ω x‖ ≤ ‖ω - ν‖ * ‖x‖ := by
  have he : inner ℂ ω x = inner ℂ (ω - ν) x := by simp [inner_sub_left, hx]
  rw [he]
  exact norm_inner_le_norm _ _

theorem removeVacuum_orthogonal (ω x : EuclideanSpace ℂ (ZMod N))
    (hω : ‖ω‖ = 1) : inner ℂ ω (removeVacuum N ω x) = 0 := by
  have hs : inner ℂ ω ω = 1 := by simp [inner_self_eq_norm_sq_to_K, hω]
  simp [removeVacuum, inner_sub_right, inner_smul_right, hs]

theorem removeVacuum_norm_sq (ω x : EuclideanSpace ℂ (ZMod N))
    (hω : ‖ω‖ = 1) :
    ‖removeVacuum N ω x‖ ^ 2 = ‖x‖ ^ 2 - ‖inner ℂ ω x‖ ^ 2 := by
  have ho : inner ℂ ((inner ℂ ω x) • ω) (removeVacuum N ω x) = 0 := by
    rw [inner_smul_left, removeVacuum_orthogonal N ω x hω, mul_zero]
  have hn := norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero
    ((inner ℂ ω x) • ω) (removeVacuum N ω x) ho
  have he : (inner ℂ ω x) • ω + removeVacuum N ω x = x := by
    unfold removeVacuum
    abel
  rw [he, norm_smul, hω, mul_one] at hn
  linarith

theorem retained_norm_lower_of_vacuum_change (ω ν x : EuclideanSpace ℂ (ZMod N))
    (hω : ‖ω‖ = 1) (hx : inner ℂ ν x = 0) (η : ℝ) (hη : 0 ≤ η)
    (hchange : ‖ω - ν‖ ≤ η) :
    (1 - η ^ 2) * ‖x‖ ^ 2 ≤ ‖removeVacuum N ω x‖ ^ 2 := by
  have hb : ‖inner ℂ ω x‖ ≤ η * ‖x‖ :=
    (overlap_le_vacuum_change N ω ν x hx).trans
      (mul_le_mul_of_nonneg_right hchange (norm_nonneg x))
  have hs := mul_nonneg (sub_nonneg.mpr hb)
    (add_nonneg (mul_nonneg hη (norm_nonneg x)) (norm_nonneg (inner ℂ ω x)))
  rw [removeVacuum_norm_sq N ω x hω]
  nlinarith

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.VacuumComplementOverlap
