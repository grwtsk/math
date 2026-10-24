# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.883d9424af8bc6ffe197e2db4748b8a9ee577904ca34fc1eb21928554d17c487AllPublicDiscove.Variant883d9424af8bc6ffe197e2db4748b8a9ee577904ca34fc1eb21928554d17c487

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d34de164ded1a58b09d0139fe6883a698410068` · SHA-256 `883d9424af8bc6ffe197e2db4748b8a9ee577904ca34fc1eb21928554d17c487`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
