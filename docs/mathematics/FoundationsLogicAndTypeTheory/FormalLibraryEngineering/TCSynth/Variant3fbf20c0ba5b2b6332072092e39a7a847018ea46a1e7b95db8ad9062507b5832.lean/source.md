# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TCSynth.Variant3fbf20c0ba5b2b6332072092e39a7a847018ea46a1e7b95db8ad9062507b5832

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1f85ba4bf329f3c7e2178e970a8a3372b506521` · SHA-256 `3fbf20c0ba5b2b6332072092e39a7a847018ea46a1e7b95db8ad9062507b5832`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Kim Morrison
-/
import Mathlib

/-!
# Test against slow typeclass synthesis

This file tests against regression in typeclass synthesis speed.
The tests below became fast by the fix in
https://github.com/leanprover/lean4/pull/4085
-/

section

-- Initial issue: https://github.com/leanprover-community/mathlib4/issues/12226

open Complex Filter Bornology

/--
error: failed to synthesize
  AddMonoidHomClass (AddGroupSeminorm ℂ) ℂ ℝ

Additional diagnostic information may be available using the `set_option diagnostics true` command.
-/
#guard_msgs in
set_option synthInstance.maxHeartbeats 3000 in
#synth AddMonoidHomClass (AddGroupSeminorm ℂ) ℂ ℝ

set_option synthInstance.maxHeartbeats 3000 in
-- This then results in a near failure (or failure on nightly-testing) of the simpNF linter on
-- `Complex.comap_exp_cobounded` and `Complex.map_exp_comap_re_atTop`:
example : comap exp (cobounded ℂ) = comap re atTop := by simp

end

section

-- Initial issue: https://github.com/leanprover-community/mathlib4/issues/12227

/-- info: NonUnitalNonAssocRing.toNonUnitalNonAssocSemiring -/
#guard_msgs in
variable {A : Type} [NormedRing A] [NormedAlgebra ℂ A] [StarRing A]
  [CStarRing A] [StarModule ℂ A] (x : A) in
#synth NonUnitalNonAssocSemiring (StarAlgebra.elemental ℂ x)

end

section

open Real in
-- Initial issue: https://github.com/leanprover-community/mathlib4/issues/12229
set_option synthInstance.maxHeartbeats 10000 in
example : Circle.exp (2 * π) = 1 := by simp

end

section

open Complex in
set_option synthInstance.maxHeartbeats 3200 in
-- Initial issue: https://github.com/leanprover-community/mathlib4/issues/12230
example (x : ℝ) : ‖cos x + sin x * I‖ = 1 := by simp

end

section

variable {α m n : Type*}

open Matrix in
set_option synthInstance.maxHeartbeats 2000 in
-- Initial issue: https://github.com/leanprover-community/mathlib4/issues/12231
example [AddCommGroup α] [StarAddMonoid α] [Module ℚ α] (c : ℚ)
    (M : Matrix m n α) : (c • M)ᴴ = c • Mᴴ := by simp

end

section

open Equiv in
set_option synthInstance.maxHeartbeats 1000 in
-- Initial issue: https://github.com/leanprover-community/mathlib4/issues/12232
-- reduced from 9000 to 1000 after `@[simp low] map_zero` in https://github.com/leanprover-community/mathlib4/pull/16679 (only 10 needed)
example {n : ℕ} (p : Fin (n + 1)) (e : Perm (Fin n)) :
    Equiv.Perm.decomposeFin.symm (p, e) 0 = p := by simp

end

section

variable (σ k : Type*) [Field k] [IsAlgClosed k] [Finite σ] (I : Ideal (MvPolynomial σ k)) in

set_option synthInstance.maxHeartbeats 1000 in
-- synthinstance heartbeat count was reduced from 20000 to 500 in the fix at https://github.com/leanprover-community/mathlib4/pull/21449
-- This fixes the failing simpNF of `MvPolynomial.vanishingIdeal_zeroLocus_eq_radical`
/--
error: failed to synthesize
  I.IsPrime

Additional diagnostic information may be available using the `set_option diagnostics true` command.
-/
#guard_msgs in
#synth I.IsPrime

end
```
