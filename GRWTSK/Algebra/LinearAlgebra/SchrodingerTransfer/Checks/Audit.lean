import GRWTSK.LinearAlgebra.LinearAlgebra.SchrodingerTransfer
import Lean
open Lean Elab Command GRWTSK.LinearAlgebra.SchrodingerTransfer
namespace GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks
theorem use_recurrence {R : Type*} [CommRing R] (E V previous current next : R) :
 next + previous + V * current = E * current ↔ rawState next current = (schrodingerTransfer E V).mulVec (rawState current previous) := schrodinger_recurrence_iff_transfer E V previous current next
theorem use_determinant {R : Type*} [CommRing R] (E V : R) : (schrodingerTransfer E V).det = 1 := det_schrodingerTransfer E V
theorem use_inequality : (schrodingerSL (0 : ℚ) 0 : Matrix (Fin 2) (Fin 2) ℚ) ≠ (schrodingerSL (1 : ℚ) 0 : Matrix (Fin 2) (Fin 2) ℚ) := schrodinger_same_SL_syntax_not_equal
end GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks
elab "#audit_schrodinger" : command => liftTermElabM do
  let env ← getEnv
  for n in #[`GRWTSK.LinearAlgebra.SchrodingerTransfer.det_schrodingerTransfer,
      `GRWTSK.LinearAlgebra.SchrodingerTransfer.rawState,
      `GRWTSK.LinearAlgebra.SchrodingerTransfer.rawState.eq_1,
      `GRWTSK.LinearAlgebra.SchrodingerTransfer.schrodingerSL,
      `GRWTSK.LinearAlgebra.SchrodingerTransfer.schrodingerSL.eq_1,
      `GRWTSK.LinearAlgebra.SchrodingerTransfer.schrodingerTransfer,
      `GRWTSK.LinearAlgebra.SchrodingerTransfer.schrodingerTransfer.eq_1,
      `GRWTSK.LinearAlgebra.SchrodingerTransfer.schrodinger_recurrence_iff_transfer,
      `GRWTSK.LinearAlgebra.SchrodingerTransfer.schrodinger_same_SL_syntax_not_equal] do
    let some info := env.find? n | throwError "missing contract"
    if info.isUnsafe || info.isPartial then throwError "unsafe or partial declaration"
    let some body := info.value? true | throwError "missing body"
    Meta.checkWithKernel body
    unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "body type mismatch"
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unexpected axiom"
    logInfo m!"SCHRODINGER_CONTRACT::{n}"
  let some info := env.find? `GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks.use_recurrence | throwError "missing fixture"
  let some body := info.value? true | throwError "missing proof"
  Meta.checkWithKernel body
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.SchrodingerTransfer.schrodinger_recurrence_iff_transfer do throwError "missing canonical reference"
  logInfo "SCHRODINGER_SYNTHETIC::use_recurrence"
  let some info := env.find? `GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks.use_determinant | throwError "missing fixture"
  let some body := info.value? true | throwError "missing proof"
  Meta.checkWithKernel body
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.SchrodingerTransfer.det_schrodingerTransfer do throwError "missing canonical reference"
  logInfo "SCHRODINGER_SYNTHETIC::use_determinant"
  let some info := env.find? `GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks.use_inequality | throwError "missing fixture"
  let some body := info.value? true | throwError "missing proof"
  Meta.checkWithKernel body
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.SchrodingerTransfer.schrodinger_same_SL_syntax_not_equal do throwError "missing canonical reference"
  logInfo "SCHRODINGER_SYNTHETIC::use_inequality"
#audit_schrodinger
