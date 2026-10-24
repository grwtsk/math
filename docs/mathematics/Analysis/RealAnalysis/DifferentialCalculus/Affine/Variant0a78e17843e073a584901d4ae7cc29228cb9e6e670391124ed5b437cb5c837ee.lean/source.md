# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Affine.Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc410520e81544570336dffb40dd36b7ec26a815` · SHA-256 `0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
module

public import Mathlib.Analysis.Normed.Group.AddTorsor
public import Mathlib.Topology.Algebra.ContinuousAffineMap
public import Mathlib.Algebra.Order.Field.Power
public import Mathlib.Analysis.Calculus.FDeriv.Basic


/-!
# The derivative of continuous affine maps

For detailed documentation of the Fréchet derivative,
see the module docstring of `Mathlib/Analysis/Calculus/FDeriv/Basic.lean`.

This file contains the usual formulas (and existence assertions) for the derivative of
continuous affine maps.
-/

public section

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
  (f : E →ᴬ[𝕜] F) {x : E} {s : Set E} {L : Filter (E × E)}

namespace ContinuousAffineMap

/-!
### Continuous affine maps
-/

protected theorem hasFDerivAtFilter : HasFDerivAtFilter f f.contLinear L := by
  refine .of_isLittleOTVS <| .congr_left (.zero _ _) ?_
  simp [(vsub_eq_sub _ _).symm.trans (f.contLinear_map_vsub _ _).symm]

@[fun_prop]
protected theorem hasStrictFDerivAt {x : E} : HasStrictFDerivAt f f.contLinear x :=
  f.hasFDerivAtFilter

@[fun_prop]
protected theorem hasFDerivWithinAt : HasFDerivWithinAt f f.contLinear s x :=
  f.hasFDerivAtFilter

@[fun_prop]
protected theorem hasFDerivAt : HasFDerivAt f f.contLinear x :=
  f.hasFDerivAtFilter

@[simp, fun_prop]
protected theorem differentiableAt : DifferentiableAt 𝕜 f x :=
  f.hasFDerivAt.differentiableAt

@[fun_prop]
protected theorem differentiableWithinAt : DifferentiableWithinAt 𝕜 f s x :=
  f.differentiableAt.differentiableWithinAt

@[simp]
protected theorem fderiv : fderiv 𝕜 f x = f.contLinear :=
  f.hasFDerivAt.fderiv

protected theorem fderivWithin (hxs : UniqueDiffWithinAt 𝕜 s x) :
    fderivWithin 𝕜 f s x = f.contLinear := by
  rw [DifferentiableAt.fderivWithin f.differentiableAt hxs]
  exact f.fderiv

@[simp, fun_prop]
protected theorem differentiable : Differentiable 𝕜 f := fun _ =>
  f.differentiableAt

@[fun_prop]
protected theorem differentiableOn : DifferentiableOn 𝕜 f s :=
  f.differentiable.differentiableOn

end ContinuousAffineMap
```
