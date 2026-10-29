import FormalResearch.RiemannHypothesis.ThetaPhiModes
import FormalResearch.RiemannHypothesis.ThetaPhiGaussianBound
import FormalResearch.RiemannHypothesis.ThetaPhiSourceDerivatives
import FormalResearch.RiemannHypothesis.ThetaPhiLogConcavity
import FormalResearch.RiemannHypothesis.ThetaTailRatioTwo

open Lean Elab Command
run_cmd do
  let targets : Array Name := #[`FormalResearch.RiemannHypothesis.ThetaPhiModes, `FormalResearch.RiemannHypothesis.ThetaPhiGaussianBound, `FormalResearch.RiemannHypothesis.ThetaPhiSourceDerivatives, `FormalResearch.RiemannHypothesis.ThetaPhiLogConcavity, `FormalResearch.RiemannHypothesis.ThetaTailRatioTwo]
  let _ ← (← getEnv).constants.foldM (init := ()) fun _ name _ => do
    let some mod ← findModuleOf? name | return ()
    if targets.contains mod && !isPrivateName name then
      logInfo m!"THETA_PUBLIC_DECL|{mod}|{name}"
    return ()
  pure ()
