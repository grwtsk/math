# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.C4b572448b94dc2cf0aad47d360ddd6f941118a5397d8c731d0fcd613ae387f5RHContinuationIn.Variantc4b572448b94dc2cf0aad47d360ddd6f941118a5397d8c731d0fcd613ae387f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b740d7a24b9f277f7a59dcd542d01fc69256ff4` · SHA-256 `c4b572448b94dc2cf0aad47d360ddd6f941118a5397d8c731d0fcd613ae387f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals
import FormalResearch.RiemannHypothesis.Laplace.Expansion
import FormalResearch.RiemannHypothesis.Laplace.InitialFormula
import Lean.Util.CollectAxioms
open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[
    `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling,
    `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals,
    `FormalResearch.RiemannHypothesis.Laplace.Expansion,
    `FormalResearch.RiemannHypothesis.Laplace.InitialFormula]
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
