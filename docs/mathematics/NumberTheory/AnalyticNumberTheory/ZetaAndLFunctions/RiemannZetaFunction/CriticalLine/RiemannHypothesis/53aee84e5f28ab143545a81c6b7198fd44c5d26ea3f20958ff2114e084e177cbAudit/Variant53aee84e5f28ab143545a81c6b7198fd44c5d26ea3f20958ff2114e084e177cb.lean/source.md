# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.53aee84e5f28ab143545a81c6b7198fd44c5d26ea3f20958ff2114e084e177cbAudit.Variant53aee84e5f28ab143545a81c6b7198fd44c5d26ea3f20958ff2114e084e177cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ea3f41917c9de54eac354dbcb79013343b8833b` · SHA-256 `53aee84e5f28ab143545a81c6b7198fd44c5d26ea3f20958ff2114e084e177cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtRieszQuotientMean
import Lean.Util.CollectAxioms

open Lean Elab Command

run_elab do
  let env ← getEnv
  let targets := #[
    `FormalResearch.RiemannHypothesis.SourceMangoldtRieszReconstruction,
    `FormalResearch.RiemannHypothesis.SourceMangoldtRieszQuotientMean]
  let mut count : Nat := 0
  for (name, info) in env.constants.toList do
    if let some idx := env.getModuleIdxFor? name then
      if targets.contains env.header.modules[idx]!.module then
        let axioms ← collectAxioms name
        if axioms.contains `sorryAx then
          throwError "Admitted dependency in {name}"
        let allowed := #[`propext, `Classical.choice, `Quot.sound]
        if axioms.any (fun ax => !allowed.contains ax) then
          throwError "Unexpected axiom dependency in {name}: {axioms}"
        if info.isAxiom then
          throwError "New axiom declaration: {name}"
        logInfo m!"DECLARATION {name}\nTYPE {info.type}\nAXIOMS {axioms}"
        count := count + 1
  if count < 33 then
    throwError "Incomplete module declaration audit: only {count} declarations found"
  logInfo m!"AUDITED {count} declarations from both new modules"
```
