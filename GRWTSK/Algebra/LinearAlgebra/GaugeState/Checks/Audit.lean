import GRWTSK.Algebra.LinearAlgebra.GaugeState
import Lean
open Lean Elab Command GRWTSK.Algebra.LinearAlgebra.GaugeState GRWTSK.Algebra
universe u v
namespace GRWTSK.Algebra.LinearAlgebra.GaugeState.Checks
theorem state_step {G : Type u} {S : Type v} [Group G] [MulAction G S] (A B : ℕ → G) (X : ℕ → S) (n : ℕ) : X (n+1) = A n • X n ↔ gaugeState B X (n+1) = gaugeTransfer A B n • gaugeState B X n := gaugeState_step_iff A B X n
end GRWTSK.Algebra.LinearAlgebra.GaugeState.Checks
elab "#audit_gauge_state" : command => liftTermElabM do
  let env ← getEnv
  for n in #[`GRWTSK.Algebra.LinearAlgebra.GaugeState.gaugeState,
    `GRWTSK.Algebra.LinearAlgebra.GaugeState.gaugeState_step_iff,
    `GRWTSK.Algebra.LinearAlgebra.GaugeState.gaugeState.eq_1] do
    let some info := env.find? n | throwError "missing stored contract"
    if info.isUnsafe || info.isPartial then throwError "unsafe or partial contract"
    let some body := info.value? true | throwError "missing body"
    Meta.checkWithKernel body
    Meta.checkWithKernel <| mkApp (mkLambda Name.anonymous BinderInfo.default info.type (mkBVar 0)) body
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unexpected axiom"
    logInfo m!"GAUGE_STATE_CONTRACT::{n}"
  let some info := env.find? `GRWTSK.Algebra.LinearAlgebra.GaugeState.gaugeState_step_iff | throwError "missing original step theorem"
  let some body := info.value? true | throwError "missing original proof"
  for dependency in #[`GRWTSK.Algebra.LinearAlgebra.GaugeState.gaugeState, `GRWTSK.Algebra.gaugeTransfer] do
    unless body.getUsedConstants.contains dependency do throwError "missing original canonical body dependency"
  logInfo "GAUGE_STATE_ORIGINAL::step"
  let some info := env.find? `GRWTSK.Algebra.LinearAlgebra.GaugeState.Checks.state_step | throwError "missing synthetic wrapper"
  let some body := info.value? true | throwError "missing wrapper proof"
  Meta.checkWithKernel body
  Meta.checkWithKernel <| mkApp (mkLambda Name.anonymous BinderInfo.default info.type (mkBVar 0)) body
  unless body.getUsedConstants.contains `GRWTSK.Algebra.LinearAlgebra.GaugeState.gaugeState_step_iff do throwError "missing canonical wrapper dependency"
  logInfo "GAUGE_STATE_SYNTHETIC::step"
#audit_gauge_state
