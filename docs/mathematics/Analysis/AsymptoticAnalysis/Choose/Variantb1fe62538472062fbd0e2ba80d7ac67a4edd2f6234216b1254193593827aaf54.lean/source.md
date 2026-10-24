# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Choose.Variantb1fe62538472062fbd0e2ba80d7ac67a4edd2f6234216b1254193593827aaf54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d937359db4045baa0e5ddeba664fb8db6aa1cd7` · SHA-256 `b1fe62538472062fbd0e2ba80d7ac67a4edd2f6234216b1254193593827aaf54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Mitchell Horner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mitchell Horner
-/
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Analysis.Asymptotics.AsymptoticEquivalent
import Mathlib.Data.Nat.Cast.Field

/-!
# Binomial coefficients and factorial variants

This file proves asymptotic theorems for binomial coefficients and factorial variants.

## Main statements

* `isEquivalent_descFactorial` is the proof that `n.descFactorial k ~ n^k` as `n → ∞`.
* `isEquivalent_choose` is the proof that `n.choose k ~ n^k / k!` as `n → ∞`.
* `isTheta_choose` is the proof that `n.choose k = Θ(n^k)` as `n → ∞`.
-/


open Asymptotics Filter Nat Topology

/-- `n.descFactorial k` is asymptotically equivalent to `n^k`. -/
lemma isEquivalent_descFactorial (k : ℕ) :
    (fun (n : ℕ) ↦ (n.descFactorial k : ℝ)) ~[atTop] (fun (n : ℕ) ↦ (n^k : ℝ)) := by
  induction k with
  | zero => simpa using IsEquivalent.refl
  | succ k h =>
    simp_rw [descFactorial_succ, cast_mul, _root_.pow_succ']
    refine IsEquivalent.mul ?_ h
    have hz : ∀ᶠ (x : ℕ) in atTop, (x : ℝ) ≠ 0 :=
      eventually_atTop.mpr ⟨1, fun n hn ↦ ne_of_gt (mod_cast hn)⟩
    rw [isEquivalent_iff_tendsto_one hz, ← tendsto_add_atTop_iff_nat k]
    simpa using tendsto_natCast_div_add_atTop (k : ℝ)

/-- `n.choose k` is asymptotically equivalent to `n^k / k!`. -/
theorem isEquivalent_choose (k : ℕ) :
    (fun (n : ℕ) ↦ (n.choose k : ℝ)) ~[atTop] (fun (n : ℕ) ↦ (n^k / k.factorial : ℝ)) := by
  conv_lhs =>
    intro n
    rw [choose_eq_descFactorial_div_factorial,
      cast_div (n.factorial_dvd_descFactorial k) (mod_cast k.factorial_ne_zero)]
  exact (isEquivalent_descFactorial k).div IsEquivalent.refl

/-- `n.choose k` is big-theta `n^k`. -/
theorem isTheta_choose (k : ℕ) :
    (fun (n : ℕ) ↦ (n.choose k : ℝ)) =Θ[atTop] (fun (n : ℕ) ↦ (n^k : ℝ)) := by
  apply (isEquivalent_choose k).trans_isTheta
  simp_rw [div_eq_mul_inv, mul_comm _ (_⁻¹)]
  exact isTheta_rfl.const_mul_left <| inv_ne_zero (mod_cast k.factorial_ne_zero)
```
