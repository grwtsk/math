/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddGammaOutput
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineParseval

/-!
# Remove the finite head in the literal sine coordinates

The zero-extended source sines have unit diagonal inner product and
zero off-diagonal inner product. Subtracting their finite reconstruction
removes exactly the selected coefficients of any square-integrable
output and preserves all higher coefficients. The construction also
preserves oddness and window support almost everywhere.

This realizes the projection used to apply the residual norm estimate
to a concrete output. Independent analytical review remains pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddSineHeadRemoval

open OddRootProjection OddSineForm OddSineParseval OddShiftEnergy OddGammaOutput

theorem sineCoefficient_finiteSine {M : ℕ} (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ)
    {m : ℕ} (hm : 0 < m) :
    sineCoefficient T (finiteSine T x) m =
      ∑ i : Fin M, if m = i.val + 1 then x i else 0 := by
  have hint (i : Fin M) :
      Integrable (fun t : ℝ => x i *
        (zeroExtendedSine T m t * zeroExtendedSine T (i.val + 1) t)) := by
    simpa only [add_zero] using (integrable_sine_product T 0 m (i.val + 1)).const_mul (x i)
  unfold sineCoefficient
  calc
    _ = ∫ t : ℝ, ∑ i : Fin M, x i *
        (zeroExtendedSine T m t * zeroExtendedSine T (i.val + 1) t) := by
      apply integral_congr_ae
      filter_upwards [] with t
      unfold finiteSine
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      ring
    _ = _ := by
      rw [integral_finsetSum _ (fun i _ => hint i)]
      apply Finset.sum_congr rfl
      intro i _
      rw [integral_const_mul]
      have hcorr : (∫ t : ℝ, zeroExtendedSine T m t * zeroExtendedSine T (i.val + 1) t) =
          sineCorrelation T m (i.val + 1) 0 := by simp [sineCorrelation]
      rw [hcorr]
      by_cases he : m = i.val + 1
      · rw [he, sineCorrelation_self_zero T hT (by omega), mul_one, ite_eq_left rfl]
      · simp [he, sineCorrelation_zero_shift T hT he]

/-- Remove the first `N` literal sine coordinates, starting at frequency one. -/
def removeSineHead (T : ℝ) (N : ℕ) (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  f t - finiteSine T (sineCoordinates T N f) t

theorem removeSineHead_memLp (T : ℝ) (N : ℕ) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) : MemLp (removeSineHead T N f) 2 volume :=
  hf.sub (finiteSine_memLp T _)

theorem removeSineHead_odd (T : ℝ) (N : ℕ) {f : ℝ → ℝ}
    (hf : ∀ᵐ t : ℝ, f (-t) = -f t) : ∀ᵐ t : ℝ, removeSineHead T N f (-t) = -removeSineHead T N f t := by
  filter_upwards [hf] with t ht
  unfold removeSineHead
  rw [ht, finiteSine_odd T _ t]
  ring

theorem removeSineHead_support (T : ℝ) (N : ℕ) {f : ℝ → ℝ}
    (hf : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    ∀ᵐ t : ℝ, t ∉ Icc (-T) T → removeSineHead T N f t = 0 := by
  filter_upwards [hf] with t htf ht
  simp [removeSineHead, htf ht, finiteSine_eq_zero_off_window T _ ht]

private theorem sineCoefficient_removeSineHead (T : ℝ) (hT : 0 < T) (N : ℕ) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) {m : ℕ} (hm : 0 < m) :
    sineCoefficient T (removeSineHead T N f) m = sineCoefficient T f m -
      ∑ i : Fin N, if m = i.val + 1 then sineCoefficient T f (i.val + 1) else 0 := by
  have hs := memLp_zeroExtendedSine T m
  have hx := finiteSine_memLp T (sineCoordinates T N f)
  have hsplit := integral_sub (hs.integrable_mul hf) (hs.integrable_mul hx)
  simp only [Pi.mul_apply] at hsplit
  have hcoeff := sineCoefficient_finiteSine T hT (sineCoordinates T N f) hm
  change (∫ t : ℝ, zeroExtendedSine T m t *
    (f t - finiteSine T (sineCoordinates T N f) t)) = _
  simp_rw [mul_sub]
  rw [hsplit]
  exact congrArg (fun v => sineCoefficient T f m - v) hcoeff

theorem sineCoefficient_removeSineHead_low (T : ℝ) (hT : 0 < T) {N : ℕ} {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) {n : ℕ} (hn : n < N) :
    sineCoefficient T (removeSineHead T N f) (n+1) = 0 := by
  rw [sineCoefficient_removeSineHead T hT N hf (by omega)]
  let j : Fin N := ⟨n, hn⟩
  rw [Finset.sum_eq_single j]
  · simp [j]
  · intro b _ hb
    have hne : n + 1 ≠ b.val + 1 := by
      intro he
      apply hb
      apply Fin.ext
      dsimp [j]
      omega
    exact ite_eq_right hne
  · simp

theorem sineCoefficient_removeSineHead_high (T : ℝ) (hT : 0 < T) {N : ℕ} {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) {m : ℕ} (hm : N < m) :
    sineCoefficient T (removeSineHead T N f) m = sineCoefficient T f m := by
  rw [sineCoefficient_removeSineHead T hT N hf (by omega)]
  have hne (i : Fin N) : m ≠ i.val + 1 := by omega
  simp only [ite_eq_right (hne _), Finset.sum_const_zero, sub_zero]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddSineHeadRemoval
