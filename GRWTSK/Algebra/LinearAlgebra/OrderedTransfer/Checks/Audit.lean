import GRWTSK.Algebra.LinearAlgebra.OrderedTransfer
import Lean
open Lean Elab Command GRWTSK.Algebra.LinearAlgebra.OrderedTransfer
namespace GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.Checks
theorem use_product {R : Type*} [CommSemiring R] (A : ℕ → Matrix (Fin 2) (Fin 2) R) (X : ℕ → Fin 2 → R) (hstep : ∀ n, X (n+1) = (A n).mulVec (X n)) (n k : ℕ) : X (n+k) = (GRWTSK.Algebra.orderedProduct A n k).mulVec (X n) := state_eq_orderedProduct_mulVec A X hstep n k
theorem use_endpoint {R : Type*} [CommSemiring R] (A : ℕ → Matrix (Fin 2) (Fin 2) R) (X : ℕ → Fin 2 → R) (hstep : ∀ n, X (n+1) = (A n).mulVec (X n)) (m n : ℕ) (hnm : n ≤ m) : X m = (orderedTransfer A m n).mulVec (X n) := state_eq_orderedTransfer_mulVec A X hstep m n hnm
end GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.Checks
elab "#audit_ordered_transfer" : command => liftTermElabM do
  let env ← getEnv
  for n in #[`GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.orderedTransfer,
    `GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.orderedTransfer.eq_1,
    `GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.state_eq_orderedProduct_mulVec,
    `GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.state_eq_orderedTransfer_mulVec] do
    let some info := env.find? n | throwError "missing contract"
    if info.isUnsafe || info.isPartial then throwError "unsafe or partial"
    let some body := info.value? true | throwError "missing body"
    Meta.checkWithKernel body
    unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "body/type mismatch"
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unexpected axiom"
    logInfo m!"ORDERED_TRANSFER_CONTRACT::{n}"
  let some endpoint := env.find? `GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.state_eq_orderedTransfer_mulVec | throwError "missing original consumer"
  let some proof := endpoint.value? true | throwError "missing original consumer proof"
  unless proof.getUsedConstants.contains `GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.orderedTransfer && proof.getUsedConstants.contains `GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.state_eq_orderedProduct_mulVec do throwError "original consumer lacks canonical dependencies"
  logInfo "ORDERED_TRANSFER_ORIGINAL::endpoint"
  let some info := env.find? `GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.Checks.use_product | throwError "missing fixture"
  let some body := info.value? true | throwError "missing fixture proof"
  Meta.checkWithKernel body
  unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "fixture body/type mismatch"
  unless body.getUsedConstants.contains `GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.state_eq_orderedProduct_mulVec do throwError "missing canonical dependency"
  logInfo "ORDERED_TRANSFER_SYNTHETIC::use_product"
  let some info := env.find? `GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.Checks.use_endpoint | throwError "missing fixture"
  let some body := info.value? true | throwError "missing fixture proof"
  Meta.checkWithKernel body
  unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "fixture body/type mismatch"
  unless body.getUsedConstants.contains `GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.state_eq_orderedTransfer_mulVec do throwError "missing canonical dependency"
  logInfo "ORDERED_TRANSFER_SYNTHETIC::use_endpoint"
#audit_ordered_transfer
