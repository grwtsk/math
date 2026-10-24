# Complete source: GRWTSK.LinearAlgebra.OrderedTransfer.Checks.Audit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47131d3b0d8d022df2eaf4e3d4fc27317041076e` · SHA-256 `afb7c9d86be73a227bc6d92110dbce79413ea0029770e91e1e411a3e8fc8f523`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.OrderedTransfer
import Lean
open Lean Elab Command GRWTSK.LinearAlgebra.OrderedTransfer
namespace GRWTSK.LinearAlgebra.OrderedTransfer.Checks
theorem use_product {R : Type*} [CommSemiring R] (A : ℕ → Matrix (Fin 2) (Fin 2) R) (X : ℕ → Fin 2 → R) (hstep : ∀ n, X (n+1) = (A n).mulVec (X n)) (n k : ℕ) : X (n+k) = (GRWTSK.Algebra.orderedProduct A n k).mulVec (X n) := state_eq_orderedProduct_mulVec A X hstep n k
theorem use_endpoint {R : Type*} [CommSemiring R] (A : ℕ → Matrix (Fin 2) (Fin 2) R) (X : ℕ → Fin 2 → R) (hstep : ∀ n, X (n+1) = (A n).mulVec (X n)) (m n : ℕ) (hnm : n ≤ m) : X m = (orderedTransfer A m n).mulVec (X n) := state_eq_orderedTransfer_mulVec A X hstep m n hnm
end GRWTSK.LinearAlgebra.OrderedTransfer.Checks
elab "#audit_ordered_transfer" : command => liftTermElabM do
  let env ← getEnv
  for n in #[`GRWTSK.LinearAlgebra.OrderedTransfer.orderedTransfer,
    `GRWTSK.LinearAlgebra.OrderedTransfer.orderedTransfer.eq_1,
    `GRWTSK.LinearAlgebra.OrderedTransfer.state_eq_orderedProduct_mulVec,
    `GRWTSK.LinearAlgebra.OrderedTransfer.state_eq_orderedTransfer_mulVec] do
    let some info := env.find? n | throwError "missing contract"
    if info.isUnsafe || info.isPartial then throwError "unsafe or partial"
    let some body := info.value? true | throwError "missing body"
    Meta.checkWithKernel body
    unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "body/type mismatch"
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unexpected axiom"
    logInfo m!"ORDERED_TRANSFER_CONTRACT::{n}"
  let some endpoint := env.find? `GRWTSK.LinearAlgebra.OrderedTransfer.state_eq_orderedTransfer_mulVec | throwError "missing original consumer"
  let some proof := endpoint.value? true | throwError "missing original consumer proof"
  unless proof.getUsedConstants.contains `GRWTSK.LinearAlgebra.OrderedTransfer.orderedTransfer && proof.getUsedConstants.contains `GRWTSK.LinearAlgebra.OrderedTransfer.state_eq_orderedProduct_mulVec do throwError "original consumer lacks canonical dependencies"
  logInfo "ORDERED_TRANSFER_ORIGINAL::endpoint"
  let some info := env.find? `GRWTSK.LinearAlgebra.OrderedTransfer.Checks.use_product | throwError "missing fixture"
  let some body := info.value? true | throwError "missing fixture proof"
  Meta.checkWithKernel body
  unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "fixture body/type mismatch"
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.OrderedTransfer.state_eq_orderedProduct_mulVec do throwError "missing canonical dependency"
  logInfo "ORDERED_TRANSFER_SYNTHETIC::use_product"
  let some info := env.find? `GRWTSK.LinearAlgebra.OrderedTransfer.Checks.use_endpoint | throwError "missing fixture"
  let some body := info.value? true | throwError "missing fixture proof"
  Meta.checkWithKernel body
  unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "fixture body/type mismatch"
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.OrderedTransfer.state_eq_orderedTransfer_mulVec do throwError "missing canonical dependency"
  logInfo "ORDERED_TRANSFER_SYNTHETIC::use_endpoint"
#audit_ordered_transfer
```
