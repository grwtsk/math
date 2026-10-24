# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenHybridEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6151e9a9a0e9b27580e5cc24e3984af2a31089f9` · SHA-256 `045b0c9205997518bda2b40f1eafa13ceacc213deabc9aa24f54d487e56dd4ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenHybridTail
import Mathlib.Analysis.PSeries
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.RiemannHypothesis
def greenLowPrincipalHead (X : ℕ) : Finset ℤ :=
  (Finset.Icc (-(X / 2 : ℤ)) (X / 2 : ℤ)).erase 0
theorem card_greenLowPrincipalHead_le (X : ℕ) :
    (greenLowPrincipalHead X).card ≤ X := by
  unfold greenLowPrincipalHead
  rw [Finset.card_erase_le]
  rw [Finset.card_Icc]
  omega
def greenLowPrincipalResidualEnergy (X : ℕ) : ℝ :=
  ∑ k ∈ greenLowPrincipalHead X, ‖greenCenteringResidual X k‖ ^ 2
theorem greenLowPrincipalResidualEnergy_le
    {X : ℕ} (hX : 1 ≤ X) :
    greenLowPrincipalResidualEnergy X ≤
      (1 + 1 / Real.pi)^2 / (X : ℝ) := by
  unfold greenLowPrincipalResidualEnergy
  have hXr : 0 < (X : ℝ) := by exact_mod_cast hX
  calc
    _ ≤ ∑ _k ∈ greenLowPrincipalHead X,
        (((1 + 1 / Real.pi) / (X : ℝ)) ^ 2) := by
      apply Finset.sum_le_sum
      intro k hk
      have hk0 : k ≠ 0 := Finset.ne_of_mem_erase hk
      have h := norm_greenCenteringResidual_le_explicit hX hk0
      have hkone : (1 : ℝ) ≤ |(k : ℝ)| := by
        exact_mod_cast Int.one_le_abs hk0
      have hfreq :
          1 + 1 / (Real.pi * |(k : ℝ)|) ≤ 1 + 1 / Real.pi := by
        gcongr
        exact one_div_le_one_div_of_le Real.pi_pos (by nlinarith)
      have hnorm := h.trans (div_le_div_of_nonneg_right hfreq hXr.le)
      nlinarith [sq_nonneg ‖greenCenteringResidual X k‖]
    _ = (greenLowPrincipalHead X).card *
        (((1 + 1 / Real.pi) / (X : ℝ)) ^ 2) := by
      rw [Finset.sum_const_nat]
    _ ≤ (X : ℝ) * (((1 + 1 / Real.pi) / (X : ℝ)) ^ 2) := by
      gcongr
      exact_mod_cast card_greenLowPrincipalHead_le X
    _ = (1 + 1 / Real.pi)^2 / (X : ℝ) := by
      field_simp
      ring
theorem exists_reciprocalSquarePartialSumBound :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ N : ℕ, (∑ n ∈ Finset.Icc 1 N, 1 / (n : ℝ)^2) ≤ C := by
  have hs : Summable (fun n : ℕ => 1 / (n : ℝ)^2) := by
    simpa using (Real.summable_nat_pow_inv.mpr (by norm_num : 1 < (2 : ℕ)))
  refine ⟨∑' n : ℕ, 1 / (n : ℝ)^2, tsum_nonneg (fun _ => by positivity), ?_⟩
  intro N
  exact hs.sum_le_tsum (fun _ _ => by positivity)
end GRWTSK.RiemannHypothesis
```
