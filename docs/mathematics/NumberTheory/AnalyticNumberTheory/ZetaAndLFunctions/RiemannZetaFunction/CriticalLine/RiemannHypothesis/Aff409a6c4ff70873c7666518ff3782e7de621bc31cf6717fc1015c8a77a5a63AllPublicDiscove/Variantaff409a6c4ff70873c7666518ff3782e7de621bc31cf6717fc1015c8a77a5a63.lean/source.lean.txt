import FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianModeBounds
import FormalResearch.RiemannHypothesis.ThetaPhiHigherDerivatives
import FormalResearch.RiemannHypothesis.ThetaPhiJetPerturbation
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianThree
import FormalResearch.RiemannHypothesis.ThetaTailRankThreeReduction
import FormalResearch.RiemannHypothesis.ThetaTailRankThreeGaps
import FormalResearch.RiemannHypothesis.ThetaTailRankThreeCriterion
import FormalResearch.RiemannHypothesis.ThetaTailRankThree012

open Lean Elab Command
run_cmd do
  let targets : Array Name := #[`FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials, `FormalResearch.RiemannHypothesis.ThetaPhiWronskianModeBounds, `FormalResearch.RiemannHypothesis.ThetaPhiHigherDerivatives, `FormalResearch.RiemannHypothesis.ThetaPhiJetPerturbation, `FormalResearch.RiemannHypothesis.ThetaPhiWronskianThree, `FormalResearch.RiemannHypothesis.ThetaTailRankThreeReduction, `FormalResearch.RiemannHypothesis.ThetaTailRankThreeGaps, `FormalResearch.RiemannHypothesis.ThetaTailRankThreeCriterion, `FormalResearch.RiemannHypothesis.ThetaTailRankThree012]
  let _ ← (← getEnv).constants.foldM (init := ()) fun _ name _ => do
    let some mod ← findModuleOf? name | return ()
    if targets.contains mod && !isPrivateName name then
      logInfo m!"THETA_PUBLIC_DECL|{mod}|{name}"
    return ()
  pure ()
