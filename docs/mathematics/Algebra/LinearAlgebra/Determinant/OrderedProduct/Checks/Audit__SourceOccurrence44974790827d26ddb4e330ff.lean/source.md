# Complete source: GRWTSK.Algebra.LinearAlgebra.Determinant.OrderedProduct.Checks.Audit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b0654fce1c72dd9f369a304ee3c0fd9eb2c2cfa` · SHA-256 `b00c234d5135b269bd7fdf7bbeba658cb0ac4566ce635ef661f2e567025d57ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.OrderedProductDeterminant
import Lean
open Lean Elab Command GRWTSK.LinearAlgebra.OrderedProductDeterminant
namespace GRWTSK.LinearAlgebra.OrderedProductDeterminant.Checks
theorem use_generic {R : Type*} [CommRing R] (A : ℕ → Matrix (Fin 2) (Fin 2) R) (hdet : ∀ n, (A n).det = 1) (n k : ℕ) : (GRWTSK.Algebra.orderedProduct A n k).det = 1 := det_orderedProduct_eq_one A hdet n k
theorem use_weighted {K : Type*} [Field K] (E : K) (a b : ℕ → K) (ha : ∀ n, a n ≠ 0) (n k : ℕ) : (GRWTSK.Algebra.orderedProduct (fun i => GRWTSK.LinearAlgebra.JacobiTransfer.weightedJacobiTransfer E (b i) (a i)) n k).det = 1 := det_weightedJacobi_orderedProduct E a b ha n k
end GRWTSK.LinearAlgebra.OrderedProductDeterminant.Checks
elab "#audit_ordered_determinant" : command => liftTermElabM do
  let env ← getEnv
  for n in #[`GRWTSK.LinearAlgebra.OrderedProductDeterminant.det_orderedProduct_eq_one,
    `GRWTSK.LinearAlgebra.OrderedProductDeterminant.det_weightedJacobi_orderedProduct] do
    let some info := env.find? n | throwError "missing contract"
    if info.isUnsafe || info.isPartial then throwError "unsafe or partial"
    let some body := info.value? true | throwError "missing proof"
    Meta.checkWithKernel body
    unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "proof/type mismatch"
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unexpected axiom"
    logInfo m!"ORDERED_DETERMINANT_CONTRACT::{n}"
  let some weighted := env.find? `GRWTSK.LinearAlgebra.OrderedProductDeterminant.det_weightedJacobi_orderedProduct | throwError "missing original consumer"
  let some proof := weighted.value? true | throwError "missing original consumer proof"
  unless proof.getUsedConstants.contains `GRWTSK.LinearAlgebra.OrderedProductDeterminant.det_orderedProduct_eq_one && proof.getUsedConstants.contains `GRWTSK.LinearAlgebra.JacobiTransfer.det_weightedJacobiTransfer do throwError "original consumer lacks canonical dependencies"
  logInfo "ORDERED_DETERMINANT_ORIGINAL::weighted"
  let some info := env.find? `GRWTSK.LinearAlgebra.OrderedProductDeterminant.Checks.use_generic | throwError "missing fixture"
  let some body := info.value? true | throwError "missing fixture proof"
  Meta.checkWithKernel body
  unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "fixture proof/type mismatch"
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.OrderedProductDeterminant.det_orderedProduct_eq_one do throwError "missing canonical dependency"
  logInfo "ORDERED_DETERMINANT_SYNTHETIC::use_generic"
  let some info := env.find? `GRWTSK.LinearAlgebra.OrderedProductDeterminant.Checks.use_weighted | throwError "missing fixture"
  let some body := info.value? true | throwError "missing fixture proof"
  Meta.checkWithKernel body
  unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "fixture proof/type mismatch"
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.OrderedProductDeterminant.det_weightedJacobi_orderedProduct do throwError "missing canonical dependency"
  logInfo "ORDERED_DETERMINANT_SYNTHETIC::use_weighted"
#audit_ordered_determinant
```
