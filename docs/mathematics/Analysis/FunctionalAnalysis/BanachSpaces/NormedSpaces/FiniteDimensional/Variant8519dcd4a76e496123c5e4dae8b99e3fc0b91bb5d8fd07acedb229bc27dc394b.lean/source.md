# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.FiniteDimensional.Variant8519dcd4a76e496123c5e4dae8b99e3fc0b91bb5d8fd07acedb229bc27dc394b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09f63bcf9f6d0dbdb51effea8fc0096d4f58d618` · SHA-256 `8519dcd4a76e496123c5e4dae8b99e3fc0b91bb5d8fd07acedb229bc27dc394b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Analysis.Calculus.InverseFunctionTheorem.ApproximatesLinearOn
import Mathlib.Analysis.Normed.Module.FiniteDimension

/-!
# A lemma about `ApproximatesLinearOn` that needs `FiniteDimensional`

In this file we prove that in a real vector space,
a function `f` that approximates a linear equivalence on a subset `s`
can be extended to a homeomorphism of the whole space.

This used to be the only lemma in `Mathlib/Analysis/Calculus/Inverse`
depending on `FiniteDimensional`, so it was moved to a new file when the original file got split.
-/

open Set
open scoped NNReal

namespace ApproximatesLinearOn

/-- In a real vector space, a function `f` that approximates a linear equivalence on a subset `s`
can be extended to a homeomorphism of the whole space. -/
theorem exists_homeomorph_extension {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F] [FiniteDimensional ℝ F] {s : Set E}
    {f : E → F} {f' : E ≃L[ℝ] F} {c : ℝ≥0} (hf : ApproximatesLinearOn f (f' : E →L[ℝ] F) s c)
    (hc : Subsingleton E ∨ lipschitzExtensionConstant F * c < ‖(f'.symm : F →L[ℝ] E)‖₊⁻¹) :
    ∃ g : E ≃ₜ F, EqOn f g s := by
  -- the difference `f - f'` is Lipschitz on `s`. It can be extended to a Lipschitz function `u`
  -- on the whole space, with a slightly worse Lipschitz constant. Then `f' + u` will be the
  -- desired homeomorphism.
  obtain ⟨u, hu, uf⟩ :
    ∃ u : E → F, LipschitzWith (lipschitzExtensionConstant F * c) u ∧ EqOn (f - ⇑f') u s :=
    hf.lipschitzOnWith.extend_finite_dimension
  let g : E → F := fun x => f' x + u x
  have fg : EqOn f g s := fun x hx => by simp_rw [g, ← uf hx, Pi.sub_apply, add_sub_cancel]
  have hg : ApproximatesLinearOn g (f' : E →L[ℝ] F) univ (lipschitzExtensionConstant F * c) := by
    apply LipschitzOnWith.approximatesLinearOn
    rw [lipschitzOnWith_univ]
    convert hu
    ext x
    simp only [g, add_sub_cancel_left, ContinuousLinearEquiv.coe_coe, Pi.sub_apply]
  haveI : FiniteDimensional ℝ E := f'.symm.finiteDimensional
  exact ⟨hg.toHomeomorph g hc, fg⟩

end ApproximatesLinearOn
```
