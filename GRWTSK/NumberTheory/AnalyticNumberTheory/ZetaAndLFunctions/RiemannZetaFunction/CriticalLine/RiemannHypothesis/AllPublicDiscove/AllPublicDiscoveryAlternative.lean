import FormalResearch.RiemannHypothesis.ThetaIntegralTailLogSlope
import FormalResearch.RiemannHypothesis.ThetaTailLogSlope
import FormalResearch.RiemannHypothesis.ThetaTailRankTwo

open Lean Elab Command
run_cmd do
  let targets : Array Name := #[`FormalResearch.RiemannHypothesis.ThetaIntegralTailLogSlope, `FormalResearch.RiemannHypothesis.ThetaTailLogSlope, `FormalResearch.RiemannHypothesis.ThetaTailRankTwo]
  let _ ← (← getEnv).constants.foldM (init := ()) fun _ name _ => do
    let some mod ← findModuleOf? name | return ()
    if targets.contains mod && !isPrivateName name then
      logInfo m!"THETA_PUBLIC_DECL|{mod}|{name}"
    return ()
  pure ()
