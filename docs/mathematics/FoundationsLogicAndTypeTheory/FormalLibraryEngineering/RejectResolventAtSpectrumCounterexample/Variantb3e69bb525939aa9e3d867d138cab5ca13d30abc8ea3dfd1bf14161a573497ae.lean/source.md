# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectResolventAtSpectrumCounterexample.Variantb3e69bb525939aa9e3d867d138cab5ca13d30abc8ea3dfd1bf14161a573497ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6e93f11bbf12ae0e890e47f794bf76503611096` · SHA-256 `b3e69bb525939aa9e3d867d138cab5ca13d30abc8ea3dfd1bf14161a573497ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FiniteSpectralHeat
open GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat
def zeroSpectralModel : Model (Fin 1) (Fin 1 → ℝ) where
  frame := LinearEquiv.refl ℝ (Fin 1 → ℝ)
  operator := 0
  eigenvalue := fun _ => 0
  eigenvalue_nonneg := fun _ => le_refl 0
  diagonalizes := by ext x i; simp [spectralOperator, diagonal]
-- At the selected eigenvalue, the displayed multiplier is zero and cannot invert D-zI.
example : ¬ ((zeroSpectralModel.shiftedOperator 0).comp
    (zeroSpectralModel.resolvent 0) = LinearMap.id) := by
  intro h
  have he := congrArg (fun f : (Fin 1 → ℝ) →ₗ[ℝ] (Fin 1 → ℝ) =>
    f (fun _ => 1) 0) h
  norm_num [Model.shiftedOperator, Model.resolvent, Model.coordinateResolvent,
    zeroSpectralModel, diagonal, LinearMap.comp_apply] at he
```
