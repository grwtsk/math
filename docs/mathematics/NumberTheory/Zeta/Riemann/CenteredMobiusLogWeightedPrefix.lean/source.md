# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogWeightedPrefix

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1a41860d1f430240d6282428faaa2525fbe0042` · SHA-256 `37d9746ca54c10e3a0677bd16405b968a28db9fccb433dee5448476320db7456`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogEnergyStrength
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def centeredGreenWeightedPrefix (X m : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc X m,
    (ArithmeticFunction.vonMangoldt n : ℝ) / (n : ℝ)

def centeredGreenBaselineWeightedPrefix (X m : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc X m, 1 / (n : ℝ)

def centeredGreenWeightedPrefixError (X m : ℕ) : ℝ :=
  centeredGreenWeightedPrefix X m -
    centeredGreenBaselineWeightedPrefix X m

/-- Exact finite Abel formula at an arbitrary intermediate cutoff. -/
theorem centeredGreenWeightedPrefixError_abel
    {X m : ℕ} (hX : 1 ≤ X) (hm : X ≤ m) :
    centeredGreenWeightedPrefixError X m =
      centeredGreenDyadicPrefixMangoldtError X m / (m : ℝ) +
      ∑ r ∈ Finset.Icc (X + 1) (m - 1),
        centeredGreenDyadicPrefixMangoldtError X r *
          (1 / (r : ℝ) - 1 / (r + 1 : ℝ)) := by
  unfold centeredGreenWeightedPrefixError centeredGreenWeightedPrefix
    centeredGreenBaselineWeightedPrefix
  have hrewrite :
      ∀ n ∈ Finset.Ioc X m,
        (ArithmeticFunction.vonMangoldt n : ℝ) / (n : ℝ) -
          1 / (n : ℝ) =
        (centeredGreenDyadicPrefixMangoldtError X n -
          centeredGreenDyadicPrefixMangoldtError X (n - 1)) / (n : ℝ) := by
    intro n hn
    rw [prefixMangoldtError_increment (Finset.mem_Ioc.mp hn).1]
    ring
  rw [← Finset.sum_sub_distrib]
  simp_rw [hrewrite]
  -- Standard finite Abel telescoping at arbitrary m.
  induction m using Nat.case_strong_induction_on with
  | hz => omega
  | hs m ih =>
      by_cases hXm : X = m + 1
      · subst X
        simp
      · simp only [Finset.sum_Ioc_eq_sub] at *
        ring_nf
        omega

/-- Uniform prefix error A gives weighted prefix error at most A/X. -/
theorem abs_centeredGreenWeightedPrefixError_le
    {X m : ℕ} (hX : 1 ≤ X) (hmX : X ≤ m) (hm2 : m ≤ 2 * X)
    {A : ℝ} (hA : DyadicPrefixMangoldtBoundAt X A) :
    |centeredGreenWeightedPrefixError X m| ≤ A / (X : ℝ) := by
  rw [centeredGreenWeightedPrefixError_abel hX hmX]
  have hXm : |centeredGreenDyadicPrefixMangoldtError X m| ≤ A :=
    hA.2 m (Finset.mem_Icc.mpr ⟨hmX, hm2⟩)
  have hweights : ∀ r ∈ Finset.Icc (X + 1) (m - 1),
      0 ≤ 1 / (r : ℝ) - 1 / (r + 1 : ℝ) := by
    intro r hr
    have hrp : (0 : ℝ) < r := by
      have := (Finset.mem_Icc.mp hr).1
      positivity
    exact sub_nonneg.mpr (one_div_le_one_div_of_le hrp (by norm_num))
  have hmass :
      1 / (m : ℝ) +
        ∑ r ∈ Finset.Icc (X + 1) (m - 1),
          (1 / (r : ℝ) - 1 / (r + 1 : ℝ))
        ≤ 1 / (X : ℝ) := by
    by_cases hmEq : m = X
    · subst m
      simp
    · have hXm' : X < m := lt_of_le_of_ne hmX (Ne.symm hmEq)
      have htel :
          (∑ r ∈ Finset.Icc (X + 1) (m - 1),
            (1 / (r : ℝ) - 1 / (r + 1 : ℝ))) =
            1 / (X + 1 : ℝ) - 1 / (m : ℝ) := by
        -- elementary telescope
        simp only [Finset.sum_Icc_eq_sub]
        field_simp
        ring
      rw [htel]
      have hXp : (0 : ℝ) < X := by exact_mod_cast hX
      exact one_div_le_one_div_of_le hXp (by norm_num)
  calc
    _ ≤ |centeredGreenDyadicPrefixMangoldtError X m / (m : ℝ)| +
        ∑ r ∈ Finset.Icc (X + 1) (m - 1),
          |centeredGreenDyadicPrefixMangoldtError X r *
            (1 / (r : ℝ) - 1 / (r + 1 : ℝ))| := abs_add_le _ _
    _ ≤ A / (m : ℝ) +
        ∑ r ∈ Finset.Icc (X + 1) (m - 1),
          A * (1 / (r : ℝ) - 1 / (r + 1 : ℝ)) := by
      gcongr
      · exact div_le_div_of_nonneg_right hXm (by positivity)
      · intro r hr
        rw [abs_mul, abs_of_nonneg (hweights r hr)]
        exact mul_le_mul_of_nonneg_right
          (hA.2 r (by
            have hi := Finset.mem_Icc.mp hr
            exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩))
          (hweights r hr)
    _ ≤ A / (X : ℝ) := by
      rw [Finset.mul_sum]
      have hA0 := hA.1
      nlinarith

end GRWTSK.RiemannHypothesis
```
