# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Aff409a6c4ff70873c7666518ff3782e7de621bc31cf6717fc1015c8a77a5a63AllPublicDiscove.Variantaff409a6c4ff70873c7666518ff3782e7de621bc31cf6717fc1015c8a77a5a63

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `987d14a8be532ad004234dffbfd2ce5a3d78ebc9` · SHA-256 `aff409a6c4ff70873c7666518ff3782e7de621bc31cf6717fc1015c8a77a5a63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
