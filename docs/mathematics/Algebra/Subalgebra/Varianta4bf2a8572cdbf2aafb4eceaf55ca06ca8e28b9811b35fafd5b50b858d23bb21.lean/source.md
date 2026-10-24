# Complete source: GRWTSK.Algebra.Subalgebra.Varianta4bf2a8572cdbf2aafb4eceaf55ca06ca8e28b9811b35fafd5b50b858d23bb21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `537c6240fae2f0cf2865d779faa33a3d42c30144` · SHA-256 `a4bf2a8572cdbf2aafb4eceaf55ca06ca8e28b9811b35fafd5b50b858d23bb21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
module

public import Mathlib.Algebra.Algebra.Subalgebra.Lattice
public import Mathlib.RingTheory.Finiteness.Basic
public import Mathlib.RingTheory.Finiteness.Bilinear

/-!
# Subalgebras that are finitely generated as submodules
-/

public section

open Function (Surjective)

namespace Subalgebra

open Submodule

variable {R A : Type*} [CommSemiring R] [Semiring A] [Algebra R A]

theorem fg_bot_toSubmodule : (⊥ : Subalgebra R A).toSubmodule.FG :=
  ⟨{1}, by simp [Algebra.toSubmodule_bot, one_eq_span]⟩

instance finite_bot : Module.Finite R (⊥ : Subalgebra R A) :=
  Module.Finite.range (Algebra.linearMap R A)

end Subalgebra

namespace Submodule

theorem fg_unit {R A : Type*} [CommSemiring R] [Semiring A] [Algebra R A] (I : (Submodule R A)ˣ) :
    (I : Submodule R A).FG := by
  obtain ⟨T, T', hT, hT', one_mem⟩ := mem_span_mul_finite_of_mem_mul (I.mul_inv ▸ one_le.mp le_rfl)
  refine ⟨T, span_eq_of_le _ hT ?_⟩
  rw [← one_mul I, ← mul_one (span R (T : Set A))]
  conv_rhs => rw [← I.inv_mul, ← mul_assoc]
  grw [← span_le.mpr hT', Units.val_mul, Units.val_one, span_mul_span, one_le.2 one_mem]

theorem fg_of_isUnit {R A : Type*} [CommSemiring R] [Semiring A] [Algebra R A] {I : Submodule R A}
    (hI : IsUnit I) : I.FG :=
  fg_unit hI.unit

section Mul

variable {R : Type*} {A : Type*} [CommSemiring R] [Semiring A] [Algebra R A]
variable {M N : Submodule R A}

theorem FG.mul (hm : M.FG) (hn : N.FG) : (M * N).FG := by
  rw [mul_eq_map₂]; exact hm.map₂ _ hn

theorem FG.pow (h : M.FG) (n : ℕ) : (M ^ n).FG :=
  Nat.recOn n ⟨{1}, by simp [one_eq_span]⟩ fun n ih => by simpa [pow_succ] using ih.mul h

end Mul

end Submodule
```
