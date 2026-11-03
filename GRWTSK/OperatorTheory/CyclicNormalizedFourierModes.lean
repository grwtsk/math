/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicPotentialFourierEntry
import Mathlib.Analysis.Fourier.ZMod

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Complete finite Fourier orthogonality and exact square-root normalization.
No physical continuum embedding or uniform potential tail is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicNormalizedFourierModes
open CyclicPotentialFourierEntry ZMod AddChar
variable (N : ℕ) [NeZero N]

theorem rawFourierMode_inner (k l : ZMod N) :
    inner ℂ (rawFourierMode N k) (rawFourierMode N l) =
      if l=k then (N : ℂ) else 0 := by
  rw [PiLp.inner_apply]
  have he : (∑ j : ZMod N, inner ℂ (rawFourierMode N k j) (rawFourierMode N l j)) =
      ∑ j : ZMod N, stdAddChar ((l-k)*j) := by
    apply Finset.sum_congr rfl
    intro j _
    change star (stdAddChar (k*j))*stdAddChar (l*j) = _
    exact fourier_phase_product N k l j
  rw [he]
  by_cases h : l=k
  · simp [h, AddChar.map_zero_eq_one, nsmul_eq_mul]
  · have hn : l-k ≠ 0 := sub_ne_zero.mpr h
    simpa [h] using AddChar.sum_eq_zero_of_ne_one (ZMod.isPrimitive_stdAddChar N hn)

def normalizedFourierMode (k : ZMod N) : EuclideanSpace ℂ (ZMod N) :=
  ((Real.sqrt (N : ℝ) : ℂ)⁻¹) • rawFourierMode N k

lemma normalization_square :
    (Real.sqrt (N : ℝ) : ℂ)⁻¹ * (Real.sqrt (N : ℝ) : ℂ)⁻¹ = (N : ℂ)⁻¹ := by
  have hs : (Real.sqrt (N : ℝ) : ℂ)^2=(N : ℂ) := by
    exact_mod_cast Real.sq_sqrt (Nat.cast_nonneg N)
  rw [← mul_inv, ← pow_two, hs]

theorem normalizedFourierMode_inner (k l : ZMod N) :
    inner ℂ (normalizedFourierMode N k) (normalizedFourierMode N l) =
      if l=k then 1 else 0 := by
  unfold normalizedFourierMode
  rw [inner_smul_left, inner_smul_right]
  simp only [map_inv₀, starRingEnd_apply, Complex.star_def, Complex.conj_ofReal]
  rw [← mul_assoc, normalization_square, rawFourierMode_inner]
  split_ifs <;> simp [NeZero.ne (N : ℂ)]

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicNormalizedFourierModes
