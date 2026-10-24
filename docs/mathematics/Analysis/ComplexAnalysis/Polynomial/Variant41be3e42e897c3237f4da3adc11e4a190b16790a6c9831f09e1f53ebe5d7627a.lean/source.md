# Complete source: GRWTSK.Analysis.ComplexAnalysis.Polynomial.Variant41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9456eff2902d531963457700db0e99e483d14e29` · SHA-256 `41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Chris Hughes All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Junyan Xu
-/
import Mathlib.Analysis.Complex.Liouville
import Mathlib.FieldTheory.IsAlgClosed.Basic
import Mathlib.Analysis.Calculus.Deriv.Polynomial
import Mathlib.Topology.Algebra.Polynomial

#align_import analysis.complex.polynomial from "leanprover-community/mathlib"@"17ef379e997badd73e5eabb4d38f11919ab3c4b3"

/-!
# The fundamental theorem of algebra

This file proves that every nonconstant complex polynomial has a root using Liouville's theorem.

As a consequence, the complex numbers are algebraically closed.
-/

open Polynomial

open scoped Polynomial

namespace Complex

/-- **Fundamental theorem of algebra**: every non constant complex polynomial
  has a root -/
theorem exists_root {f : ℂ[X]} (hf : 0 < degree f) : ∃ z : ℂ, IsRoot f z := by
  contrapose! hf
  have : Metric.Bounded (Set.range (eval · f)⁻¹)
  · obtain ⟨z₀, h₀⟩ := f.exists_forall_norm_le
    simp only [Pi.inv_apply, bounded_iff_forall_norm_le, Set.forall_range_iff, norm_inv]
    exact ⟨‖eval z₀ f‖⁻¹, fun z => inv_le_inv_of_le (norm_pos_iff.2 <| hf z₀) (h₀ z)⟩
  obtain ⟨c, hc⟩ := (f.differentiable.inv hf).exists_const_forall_eq_of_bounded this
  · obtain rfl : f = C c⁻¹ := Polynomial.funext fun z => by rw [eval_C, ← hc z, inv_inv]
    exact degree_C_le
#align complex.exists_root Complex.exists_root

instance isAlgClosed : IsAlgClosed ℂ :=
  IsAlgClosed.of_exists_root _ fun _p _ hp => Complex.exists_root <| degree_pos_of_irreducible hp
#align complex.is_alg_closed Complex.isAlgClosed

end Complex
```
