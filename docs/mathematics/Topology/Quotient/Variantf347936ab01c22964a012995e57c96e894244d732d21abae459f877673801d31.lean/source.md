# Complete source: GRWTSK.Topology.Quotient.Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12c70fe54e4d3d2d537f76fa351b902a68c96d0f` · SHA-256 `f347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker, Sharvil Kesarwani
-/
module

public import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
public import Mathlib.LinearAlgebra.Quotient.Basic

/-!
# Continuous linear maps and quotient topological modules

In this file, we collect various continuous linear maps associated to quotient spaces.

## Main definitions

* `Submodule.mkQL S` is the quotient map `M →L[R] M ⧸ S`. In other words, it is
  `Submodule.mkQ S` bundled as a `ContinuousLinearMap`.
* `Submodule.liftQL S f h` is the map `M ⧸ S →SL[σ] N` given by `f : M →SL[σ] N` and a proof
  `h : S ≤ f.ker` that `f` vanishes on `S`. In other words, it is `Submodule.liftQ S f h` bundled
  as a `ContinuousLinearMap`.

## TODO

* Define `Submodule.mapQL`, the continuous linear bundling of `Submodule.mapQ`.
-/

@[expose] public section

open Topology

namespace Submodule

section Ring

variable {R R₂ : Type*} [Ring R] [Ring R₂] {σ : R →+* R₂} {M M₂ : Type*}
  [TopologicalSpace M] [AddCommGroup M] [Module R M]
  [TopologicalSpace M₂] [AddCommGroup M₂] [Module R₂ M₂]
  (S : Submodule R M)

open ContinuousLinearMap

/-- `Submodule.mkQ` as a `ContinuousLinearMap`. -/
def mkQL : M →L[R] M ⧸ S where
  toLinearMap := S.mkQ
  cont := continuous_quot_mk

@[simp, norm_cast]
theorem toLinearMap_mkQL : (S.mkQL : M →ₗ[R] M ⧸ S) = S.mkQ := rfl

@[simp]
theorem coe_mkQL : ⇑S.mkQL = S.mkQ := rfl

theorem mkQL_apply (x : M) : S.mkQL x = S.mkQ x := by simp

theorem isQuotientMap_mkQL : IsQuotientMap S.mkQL := isQuotientMap_quot_mk

theorem isOpenQuotientMap_mkQL [ContinuousAdd M] : IsOpenQuotientMap S.mkQL :=
  S.isOpenQuotientMap_mkQ

/-- `Submodule.liftQ` as a `ContinuousLinearMap`. -/
def liftQL (f : M →SL[σ] M₂) (h : S ≤ f.ker) : M ⧸ S →SL[σ] M₂ where
  toLinearMap := S.liftQ f h
  cont := continuous_quot_lift _ f.continuous

@[simp, norm_cast]
theorem toLinearMap_liftQL (f : M →SL[σ] M₂) (h : S ≤ f.ker) :
    (S.liftQL f h).toLinearMap = S.liftQ f.toLinearMap h := rfl

@[simp]
theorem coe_liftQL (f : M →SL[σ] M₂) (h : S ≤ f.ker) :
    ⇑(S.liftQL f h) = S.liftQ f.toLinearMap h :=
  rfl

theorem liftQL_apply (f : M →SL[σ] M₂) (h : S ≤ f.ker) (x : M ⧸ S) :
    S.liftQL f h x = S.liftQ f.toLinearMap h x := by
  simp

end Ring

end Submodule
```
