# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Fe8e2ddb793f2905e580cd714094f263fcbeb3d4aee42c774cb27f7dcd4a1a2aRHPoleCorrection.Variantfe8e2ddb793f2905e580cd714094f263fcbeb3d4aee42c774cb27f7dcd4a1a2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0867225a793726138d8b8bfc67804d47964c6775` · SHA-256 `fe8e2ddb793f2905e580cd714094f263fcbeb3d4aee42c774cb27f7dcd4a1a2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Laplace.PoleCertificate
import FormalResearch.RiemannHypothesis.Laplace.Assembly
import FormalResearch.RiemannHypothesis.Landau.Correction
import Lean.Util.CollectAxioms
open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[
    `FormalResearch.RiemannHypothesis.Laplace.PoleCertificate,
    `FormalResearch.RiemannHypothesis.Laplace.Assembly,
    `FormalResearch.RiemannHypothesis.Landau.Correction]
  let names := env.const2ModIdx.fold (fun acc n idx =>
    if mods.contains env.allImportedModuleNames[idx]! then n :: acc else acc) []
  let present := names.filter fun n => (env.find? n).isSome
  let metadataOnly := names.filter fun n => (env.find? n).isNone
  for n in metadataOnly do
    unless (n.toString.splitOn ".").any (fun p => p.startsWith "_") do
      throwError "Missing public declaration {n}"
    logInfo m!"COMPILER_METADATA_ONLY {n}"
  for n in present.toArray.qsort Name.quickLt do
    let ci ← getConstInfo n
    logInfo m!"TYPE {n} levels {ci.levelParams}: {ci.type}"
    let axs ← collectAxioms n
    logInfo m!"AXIOMS {n}: {axs}"
    for ax in axs do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "Unexpected axiom {ax} for {n}"
  logInfo m!"AUDITED {present.length} declarations, including generated/private declarations"
```
