# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomologicalComplexKernels.Variantcc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68d520ddbaa993a320f26d0381aebd2d58be155c` · SHA-256 `cc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.HomologicalComplexLimits

/-!
# Kernels and cokernels in categories of homological complexes

-/

public section

open CategoryTheory Limits

namespace HomologicalComplex

variable {ι C : Type*} [Category* C] [HasZeroMorphisms C] {c : ComplexShape ι}
  {K L : HomologicalComplex C c} (f : K ⟶ L)

lemma hasKernel_of_hasKernel_f [∀ i, HasKernel (f.f i)] : HasKernel f :=
  have (i : ι) : HasLimit (parallelPair f 0 ⋙ eval C c i) :=
    hasLimit_of_iso (F := (parallelPair (f.f i) 0))
      (parallelPair.ext (Iso.refl _) (Iso.refl _))
  ⟨_, isLimitConeOfHasLimitEval _⟩

lemma hasCokernel_of_hasCokernel_f [∀ i, HasCokernel (f.f i)] : HasCokernel f :=
  have (i : ι) : HasColimit (parallelPair f 0 ⋙ eval C c i) :=
    hasColimit_of_iso (F := (parallelPair (f.f i) 0))
      (parallelPair.ext (Iso.refl _) (Iso.refl _))
  ⟨_, isColimitCoconeOfHasColimitEval _⟩

lemma eval_preservesLimit_of_hasKernel_f [∀ i, HasKernel (f.f i)] (i : ι) :
    PreservesLimit (parallelPair f 0) (eval C c i) :=
  have (i : ι) : HasLimit (parallelPair f 0 ⋙ eval C c i) :=
    hasLimit_of_iso (F := (parallelPair (f.f i) 0))
      (parallelPair.ext (Iso.refl _) (Iso.refl _))
  preservesLimit_of_preserves_limit_cone
    (isLimitConeOfHasLimitEval _) (limit.isLimit _)

lemma eval_preservesColimit_of_hasCokernel_f [∀ i, HasCokernel (f.f i)] (i : ι) :
    PreservesColimit (parallelPair f 0) (eval C c i) :=
  have (i : ι) : HasColimit (parallelPair f 0 ⋙ eval C c i) :=
    hasColimit_of_iso (F := (parallelPair (f.f i) 0))
      (parallelPair.ext (Iso.refl _) (Iso.refl _))
  preservesColimit_of_preserves_colimit_cocone
    (isColimitCoconeOfHasColimitEval _) (colimit.isColimit _)

end HomologicalComplex
```
