import GRWTSK.Algebra.LinearAlgebra.JacobiTransfer
import Lean
open Lean Elab Command GRWTSK.LinearAlgebra.JacobiTransfer
namespace GRWTSK.LinearAlgebra.JacobiTransfer.Checks
theorem use_raw_ratio {K : Type*} [Field K] (E b a p : K) : (rawJacobiTransfer E b a p).det = p / a := det_rawJacobiTransfer E b a p
theorem use_weighted_recurrence {K : Type*} [Field K] (E b a p previous current next : K) (ha : a ≠ 0) : jacobiRecurrence E b a p previous current next ↔ weightedState a current next = (weightedJacobiTransfer E b a).mulVec (weightedState p previous current) := jacobi_recurrence_iff_weighted_transfer E b a p previous current next ha
theorem use_weighted_determinant {K : Type*} [Field K] (E b a : K) (ha : a ≠ 0) : (weightedJacobiTransfer E b a).det = 1 := det_weightedJacobiTransfer E b a ha
end GRWTSK.LinearAlgebra.JacobiTransfer.Checks
elab "#audit_jacobi" : command => liftTermElabM do
  let original ← getEnv
  let some parent := original.find? `GRWTSK.LinearAlgebra.JacobiTransfer.weightedJacobiSL | throwError "missing parent"
  let equations ← Meta.getEqnsFor? `GRWTSK.LinearAlgebra.JacobiTransfer.weightedJacobiSL
  let unfold ← Meta.getUnfoldEqnFor? `GRWTSK.LinearAlgebra.JacobiTransfer.weightedJacobiSL
  let env ← getEnv
  let some parentAfter := env.find? `GRWTSK.LinearAlgebra.JacobiTransfer.weightedJacobiSL | throwError "parent lost"
  unless parent.type == parentAfter.type && parent.value? true == parentAfter.value? true && parent.levelParams == parentAfter.levelParams do throwError "query changed parent"
  unless (equations.getD #[] ++ unfold.toArray).contains `GRWTSK.LinearAlgebra.JacobiTransfer.weightedJacobiSL.eq_1 do throwError "missing selected native equation"
  let oldNames := original.checked.get.constants.foldStage2 (fun set n _ => set.insert n) ({} : NameSet)
  let added := env.checked.get.constants.foldStage2 (fun names n _ => if oldNames.contains n then names else names.push n) (#[] : Array Name)
  unless added == #[`GRWTSK.LinearAlgebra.JacobiTransfer.weightedJacobiSL.eq_1] && !(original.find? `GRWTSK.LinearAlgebra.JacobiTransfer.weightedJacobiSL.eq_1).isSome do throwError "unexpected stored/query family"
  for n in #[`GRWTSK.LinearAlgebra.JacobiTransfer.cyclic_coefficient_zero_without_zero_eigenvector,
    `GRWTSK.LinearAlgebra.JacobiTransfer.det_rawJacobiTransfer,
    `GRWTSK.LinearAlgebra.JacobiTransfer.det_weightedJacobiTransfer,
    `GRWTSK.LinearAlgebra.JacobiTransfer.jacobiRecurrence,
    `GRWTSK.LinearAlgebra.JacobiTransfer.jacobiRecurrence.eq_1,
    `GRWTSK.LinearAlgebra.JacobiTransfer.jacobi_recurrence_iff_raw_transfer,
    `GRWTSK.LinearAlgebra.JacobiTransfer.jacobi_recurrence_iff_solved,
    `GRWTSK.LinearAlgebra.JacobiTransfer.jacobi_recurrence_iff_weighted_transfer,
    `GRWTSK.LinearAlgebra.JacobiTransfer.jacobi_sequence_iff_raw_transfer,
    `GRWTSK.LinearAlgebra.JacobiTransfer.jacobi_sequence_iff_weighted_transfer,
    `GRWTSK.LinearAlgebra.JacobiTransfer.rawJacobiTransfer,
    `GRWTSK.LinearAlgebra.JacobiTransfer.rawJacobiTransfer.eq_1,
    `GRWTSK.LinearAlgebra.JacobiTransfer.rawJacobiTransfer_not_det_one,
    `GRWTSK.LinearAlgebra.JacobiTransfer.rawJacobiTransfer_schrodinger,
    `GRWTSK.LinearAlgebra.JacobiTransfer.rawSequenceState,
    `GRWTSK.LinearAlgebra.JacobiTransfer.rawSequenceState.eq_1,
    `GRWTSK.LinearAlgebra.JacobiTransfer.schrodinger_sequence_iff_transfer,
    `GRWTSK.LinearAlgebra.JacobiTransfer.stateWeightingMatrix,
    `GRWTSK.LinearAlgebra.JacobiTransfer.stateWeightingMatrix.eq_1,
    `GRWTSK.LinearAlgebra.JacobiTransfer.stateWeightingMatrix_mulVec,
    `GRWTSK.LinearAlgebra.JacobiTransfer.twoSiteJacobi,
    `GRWTSK.LinearAlgebra.JacobiTransfer.twoSiteJacobi.eq_1,
    `GRWTSK.LinearAlgebra.JacobiTransfer.twoSiteJacobi_cyclic,
    `GRWTSK.LinearAlgebra.JacobiTransfer.twoSiteJacobi_first_three_moments_match,
    `GRWTSK.LinearAlgebra.JacobiTransfer.twoSiteJacobi_not_conjugate,
    `GRWTSK.LinearAlgebra.JacobiTransfer.weightedJacobiSL,
    `GRWTSK.LinearAlgebra.JacobiTransfer.weightedJacobiSL.eq_1,
    `GRWTSK.LinearAlgebra.JacobiTransfer.weightedJacobiTransfer,
    `GRWTSK.LinearAlgebra.JacobiTransfer.weightedJacobiTransfer.eq_1,
    `GRWTSK.LinearAlgebra.JacobiTransfer.weightedJacobiTransfer_schrodinger,
    `GRWTSK.LinearAlgebra.JacobiTransfer.weightedSequenceState,
    `GRWTSK.LinearAlgebra.JacobiTransfer.weightedSequenceState.eq_1,
    `GRWTSK.LinearAlgebra.JacobiTransfer.weightedState,
    `GRWTSK.LinearAlgebra.JacobiTransfer.weightedState.eq_1,
    `GRWTSK.LinearAlgebra.JacobiTransfer.weighted_raw_intertwining] do
    let some info := env.find? n | throwError "missing contract"
    if info.isUnsafe || info.isPartial then throwError "unsafe or partial"
    let some body := info.value? true | throwError "missing body"
    Meta.checkWithKernel body
    unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "body/type mismatch"
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unexpected axiom"
    logInfo m!"JACOBI_CONTRACT::{n}"
  let some info := env.find? `GRWTSK.LinearAlgebra.JacobiTransfer.Checks.use_raw_ratio | throwError "missing fixture"
  let some body := info.value? true | throwError "missing fixture proof"
  Meta.checkWithKernel body
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.JacobiTransfer.det_rawJacobiTransfer do throwError "missing actual canonical dependency"
  logInfo "JACOBI_SYNTHETIC::use_raw_ratio"
  let some info := env.find? `GRWTSK.LinearAlgebra.JacobiTransfer.Checks.use_weighted_recurrence | throwError "missing fixture"
  let some body := info.value? true | throwError "missing fixture proof"
  Meta.checkWithKernel body
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.JacobiTransfer.jacobi_recurrence_iff_weighted_transfer do throwError "missing actual canonical dependency"
  logInfo "JACOBI_SYNTHETIC::use_weighted_recurrence"
  let some info := env.find? `GRWTSK.LinearAlgebra.JacobiTransfer.Checks.use_weighted_determinant | throwError "missing fixture"
  let some body := info.value? true | throwError "missing fixture proof"
  Meta.checkWithKernel body
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.JacobiTransfer.det_weightedJacobiTransfer do throwError "missing actual canonical dependency"
  logInfo "JACOBI_SYNTHETIC::use_weighted_determinant"
#audit_jacobi
