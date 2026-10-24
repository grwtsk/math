# Complete source: GRWTSK.NumberTheory.Chebyshev.RieszPointwiseReconstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e086f62a7417d154af4f993c89b52d6fdc9b9df6` · SHA-256 `c92f91a854c57d96eeba374b97354132199962280e5e70966d1d1a50801e68ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.EndpointConventions
import GRWTSK.NumberTheory.Chebyshev.TentSource

/-! # Symmetric first-Riesz reconstruction at integer endpoints

The arithmetic reconstruction is exact for every 0<h<=1, not an exchange of
two infinite limits. A spectral approximation to the two Riesz values must
supply its own errors; their amplification by 1/(2h) remains explicit.
No complete unsmoothed zeta formula or omitted-zero estimate is assumed away.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Chebyshev.RieszPointwiseReconstruction

open EndpointConventions TentSource

def halfJumpWeight (M m : ℕ) : ℝ :=
  if m < M then 1 else if m = M then 1 / 2 else 0

theorem hinge_symmetric_nat (M m : ℕ) (h : ℝ) (hh : 0 < h) (hsmall : h ≤ 1) :
    max ((M : ℝ) + h - (m : ℝ)) 0 - max ((M : ℝ) - h - (m : ℝ)) 0 =
      2 * h * halfJumpWeight M m := by
  by_cases hm : m < M
  · have hmR : (m : ℝ) + 1 ≤ M := by exact_mod_cast (Nat.succ_le_iff.mpr hm)
    rw [max_eq_left (by linarith), max_eq_left (by linarith)]
    simp [halfJumpWeight, hm]
    ring
  · by_cases he : m = M
    · subst m
      rw [max_eq_left (by linarith), max_eq_right (by linarith)]
      simp [halfJumpWeight]
      ring
    · have hmR : (M : ℝ) + 1 ≤ m := by exact_mod_cast (show M + 1 ≤ m by omega)
      rw [max_eq_right (by linarith), max_eq_right (by linarith)]
      simp [halfJumpWeight, hm, he]

theorem finite_halfJump_sum (M N : ℕ) (hM : 2 ≤ M) (hMN : M ≤ N) :
    (∑ m ∈ Finset.Icc 2 N, ArithmeticFunction.vonMangoldt m * halfJumpWeight M m) =
      psiHalf (M : ℝ) := by
  classical
  have hstrict :
      (∑ m ∈ (Finset.Icc 2 N).filter (fun m => m < M),
        ArithmeticFunction.vonMangoldt m) = psiStrict (M : ℝ) := by
    rw [psiStrict_nat]
    apply Finset.sum_subset
    · intro m hm
      exact Finset.mem_range.mpr (Finset.mem_filter.mp hm).2
    · intro m hm hnot
      have hlt := Finset.mem_range.mp hm
      have hm2 : m < 2 := by
        by_contra h
        exact hnot (Finset.mem_filter.mpr
          ⟨Finset.mem_Icc.mpr ⟨by omega, by omega⟩, hlt⟩)
      interval_cases m <;> simp
  have hmem : M ∈ Finset.Icc 2 N := Finset.mem_Icc.mpr ⟨hM, hMN⟩
  calc
    _ = ∑ m ∈ Finset.Icc 2 N,
        ((if m < M then ArithmeticFunction.vonMangoldt m else 0) +
          (if m = M then ArithmeticFunction.vonMangoldt m / 2 else 0)) := by
      apply Finset.sum_congr rfl
      intro m _
      by_cases hm : m < M
      · have he : m ≠ M := by omega
        simp [halfJumpWeight, hm, he]
      · simp [halfJumpWeight, hm]
        split_ifs <;> ring
    _ = (∑ m ∈ (Finset.Icc 2 N).filter (fun m => m < M),
          ArithmeticFunction.vonMangoldt m) + ArithmeticFunction.vonMangoldt M / 2 := by
      simp [Finset.sum_add_distrib, Finset.sum_filter, Finset.sum_ite_eq', hmem]
    _ = psiHalf (M : ℝ) := by
      rw [hstrict, psiHalf, psi_nat_eq_strict_add_jump]
      ring

def symmetricRieszQuotient (N : ℕ) (x h : ℝ) : ℝ :=
  (firstRieszPrefix N (x + h) - firstRieszPrefix N (x - h)) / (2 * h)

theorem symmetricRieszQuotient_nat (M N : ℕ) (hM : 2 ≤ M) (hMN : M ≤ N)
    (h : ℝ) (hh : 0 < h) (hsmall : h ≤ 1) :
    symmetricRieszQuotient N (M : ℝ) h = psiHalf (M : ℝ) := by
  have hnum : firstRieszPrefix N ((M : ℝ) + h) - firstRieszPrefix N ((M : ℝ) - h) =
      2 * h * ∑ m ∈ Finset.Icc 2 N,
        ArithmeticFunction.vonMangoldt m * halfJumpWeight M m := by
    unfold firstRieszPrefix
    rw [← Finset.sum_sub_distrib, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m _
    calc
      _ = ArithmeticFunction.vonMangoldt m *
          (max ((M : ℝ) + h - (m : ℝ)) 0 - max ((M : ℝ) - h - (m : ℝ)) 0) := by ring
      _ = _ := by rw [hinge_symmetric_nat M m h hh hsmall]; ring
  rw [symmetricRieszQuotient, hnum, finite_halfJump_sum M N hM hMN]
  field_simp

/-- Between integers the radius must stay inside the two neighboring
integer boundaries. No endpoint is crossed and the same reconstruction
equals the inclusive, strict and half-jump observables. -/
theorem symmetricRieszQuotient_noninteger (N : ℕ) (x h : ℝ)
    (hx : 1 < x) (hN : ⌊x⌋₊ ≤ N) (hh : 0 < h)
    (hleft : h ≤ x - (⌊x⌋₊ : ℝ))
    (hright : h ≤ (⌊x⌋₊ : ℝ) + 1 - x) :
    symmetricRieszQuotient N x h = psiHalf x := by
  classical
  have hnot : (⌊x⌋₊ : ℝ) ≠ x := by intro he; rw [he] at hleft; linarith
  have hsum : (∑ m ∈ Finset.Icc 2 N,
      if m ≤ ⌊x⌋₊ then ArithmeticFunction.vonMangoldt m else 0) = _root_.Chebyshev.psi x := by
    rw [← Finset.sum_filter]
    have hset : (Finset.Icc 2 N).filter (fun m => m ≤ ⌊x⌋₊) = Finset.Icc 2 ⌊x⌋₊ := by
      ext m
      simp only [Finset.mem_filter, Finset.mem_Icc]
      omega
    rw [hset, _root_.Chebyshev.psi_eq_sum_Icc]
    apply Finset.sum_subset
    · intro m hm
      obtain ⟨hm, hm'⟩ := Finset.mem_Icc.mp hm
      exact Finset.mem_Icc.mpr ⟨by omega, hm'⟩
    · intro m hm hmissing
      have hm2 : m < 2 := by
        have hm' := Finset.mem_Icc.mp hm
        simp only [Finset.mem_Icc, not_and_or, not_le] at hmissing
        omega
      interval_cases m <;> simp
  have hnum : firstRieszPrefix N (x + h) - firstRieszPrefix N (x - h) =
      2 * h * ∑ m ∈ Finset.Icc 2 N,
        if m ≤ ⌊x⌋₊ then ArithmeticFunction.vonMangoldt m else 0 := by
    unfold firstRieszPrefix
    rw [← Finset.sum_sub_distrib, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m _
    by_cases hm : m ≤ ⌊x⌋₊
    · have hmr : (m : ℝ) ≤ (⌊x⌋₊ : ℝ) := by exact_mod_cast hm
      rw [if_pos hm, max_eq_left (by linarith), max_eq_left (by linarith)]
      ring
    · have hmr : (⌊x⌋₊ : ℝ) + 1 ≤ m := by
        exact_mod_cast (show ⌊x⌋₊ + 1 ≤ m by omega)
      rw [if_neg hm, max_eq_right (by linarith), max_eq_right (by linarith)]
      ring
  rw [symmetricRieszQuotient, hnum, hsum,
    psiHalf_eq_psi_of_not_integer (by linarith) hnot]
  field_simp

/-- Every noninteger x>1 admits a strictly positive reconstruction radius;
the radius depends on the actual distance to the neighboring integers. -/
theorem exists_noninteger_reconstruction_radius (x : ℝ) (hx : 1 < x)
    (hnot : (⌊x⌋₊ : ℝ) ≠ x) :
    ∃ δ : ℝ, 0 < δ ∧ ∀ h : ℝ, 0 < h → h ≤ δ →
      ∀ N : ℕ, ⌊x⌋₊ ≤ N → symmetricRieszQuotient N x h = psiHalf x := by
  let δ := min (x - (⌊x⌋₊ : ℝ)) ((⌊x⌋₊ : ℝ) + 1 - x)
  have hl : 0 < x - (⌊x⌋₊ : ℝ) :=
    sub_pos.mpr (lt_of_le_of_ne (Nat.floor_le (by linarith)) hnot)
  have hr : 0 < (⌊x⌋₊ : ℝ) + 1 - x := sub_pos.mpr (Nat.lt_floor_add_one x)
  refine ⟨δ, lt_min hl hr, ?_⟩
  intro h hh hd N hN
  exact symmetricRieszQuotient_noninteger N x h hx hN hh
    (hd.trans (min_le_left _ _)) (hd.trans (min_le_right _ _))

/-- Both Riesz evaluation/tail errors are charged before unsmoothing.
The inverse-radius amplification cannot be omitted or made uniform by a
fixed-test convergence statement. -/
theorem pointwise_reconstruction_error (M N : ℕ) (hM : 2 ≤ M) (hMN : M ≤ N)
    (h : ℝ) (hh : 0 < h) (hsmall : h ≤ 1)
    (plus minus : ℂ) (εplus εminus : ℝ)
    (hp : ‖(firstRieszPrefix N ((M : ℝ) + h) : ℂ) - plus‖ ≤ εplus)
    (hm : ‖(firstRieszPrefix N ((M : ℝ) - h) : ℂ) - minus‖ ≤ εminus) :
    ‖(psiHalf (M : ℝ) : ℂ) - (plus - minus) / ((2 * h : ℝ) : ℂ)‖ ≤
      (εplus + εminus) / (2 * h) := by
  have hid : (psiHalf (M : ℝ) : ℂ) =
      ((firstRieszPrefix N ((M : ℝ) + h) : ℂ) -
        (firstRieszPrefix N ((M : ℝ) - h) : ℂ)) / ((2 * h : ℝ) : ℂ) := by
    rw [← symmetricRieszQuotient_nat M N hM hMN h hh hsmall]
    simp [symmetricRieszQuotient]
  rw [hid, ← sub_div, norm_div]
  have htriangle := (norm_sub_le
    ((firstRieszPrefix N ((M : ℝ) + h) : ℂ) - plus)
    ((firstRieszPrefix N ((M : ℝ) - h) : ℂ) - minus)).trans (add_le_add hp hm)
  have hnum : ‖((firstRieszPrefix N ((M : ℝ) + h) : ℂ) -
      (firstRieszPrefix N ((M : ℝ) - h) : ℂ)) - (plus - minus)‖ ≤ εplus + εminus := by
    calc
      _ = ‖((firstRieszPrefix N ((M : ℝ) + h) : ℂ) - plus) -
          ((firstRieszPrefix N ((M : ℝ) - h) : ℂ) - minus)‖ := by congr 1; ring
      _ ≤ _ := htriangle
  simpa [Complex.norm_real, abs_of_pos hh] using
    div_le_div_of_nonneg_right hnum (show 0 ≤ 2 * h by positivity)

end GRWTSK.NumberTheory.Chebyshev.RieszPointwiseReconstruction
```
