# Complete source: GRWTSK.Topology.GeneralTopology.RealVectorSpace.Variant5f1655bb05d911c896d767aebbaede3f58a642be27cd3f69d0e90b5e8b7ac8f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fd3382672de66cd91d738b2915f8c9172ff268c` · SHA-256 `5f1655bb05d911c896d767aebbaede3f58a642be27cd3f69d0e90b5e8b7ac8f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.Algebra.Module.Equiv
import Mathlib.Topology.Instances.Rat
import Mathlib.Algebra.Module.Rat

/-!
# Continuous additive maps are `ℝ`-linear

In this file we prove that a continuous map `f : E →+ F` between two topological vector spaces
over `ℝ` is `ℝ`-linear
-/


variable {E : Type*} [AddCommGroup E] [Module ℝ E] [TopologicalSpace E] [ContinuousSMul ℝ E]
  {F : Type*} [AddCommGroup F] [Module ℝ F] [TopologicalSpace F] [ContinuousSMul ℝ F] [T2Space F]

/-- A continuous additive map between two vector spaces over `ℝ` is `ℝ`-linear. -/
theorem map_real_smul {G} [FunLike G E F] [AddMonoidHomClass G E F] (f : G) (hf : Continuous f)
    (c : ℝ) (x : E) :
    f (c • x) = c • f x :=
  suffices (fun c : ℝ => f (c • x)) = fun c : ℝ => c • f x from congr_fun this c
  Rat.isDenseEmbedding_coe_real.dense.equalizer (hf.comp <| continuous_id.smul continuous_const)
    (continuous_id.smul continuous_const) (funext fun r => map_ratCast_smul f ℝ ℝ r x)

namespace AddMonoidHom

/-- Reinterpret a continuous additive homomorphism between two real vector spaces
as a continuous real-linear map. -/
def toRealLinearMap (f : E →+ F) (hf : Continuous f) : E →L[ℝ] F :=
  ⟨{  toFun := f
      map_add' := f.map_add
      map_smul' := map_real_smul f hf }, hf⟩

@[simp]
theorem coe_toRealLinearMap (f : E →+ F) (hf : Continuous f) : ⇑(f.toRealLinearMap hf) = f :=
  rfl

end AddMonoidHom

/-- Reinterpret a continuous additive equivalence between two real vector spaces
as a continuous real-linear map. -/
def AddEquiv.toRealLinearEquiv (e : E ≃+ F) (h₁ : Continuous e) (h₂ : Continuous e.symm) :
    E ≃L[ℝ] F :=
  { e, e.toAddMonoidHom.toRealLinearMap h₁ with }

/-- A topological group carries at most one structure of a topological `ℝ`-module, so for any
topological `ℝ`-algebra `A` (e.g. `A = ℂ`) and any topological group that is both a topological
`ℝ`-module and a topological `A`-module, these structures agree. -/
instance (priority := 900) Real.isScalarTower [T2Space E] {A : Type*} [TopologicalSpace A] [Ring A]
    [Algebra ℝ A] [Module A E] [ContinuousSMul ℝ A] [ContinuousSMul A E] : IsScalarTower ℝ A E :=
  ⟨fun r x y => map_real_smul ((smulAddHom A E).flip y) (continuous_id.smul continuous_const) r x⟩
```
