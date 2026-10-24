# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.4b5a32e176bcefd0c51a8577c100b8f1b83023d43c8bee1ad00d32803e52e5a5AllPublicDiscove.Variant4b5a32e176bcefd0c51a8577c100b8f1b83023d43c8bee1ad00d32803e52e5a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c0be4a23a973c6cd68325678b5749da103b1e29` · SHA-256 `4b5a32e176bcefd0c51a8577c100b8f1b83023d43c8bee1ad00d32803e52e5a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
