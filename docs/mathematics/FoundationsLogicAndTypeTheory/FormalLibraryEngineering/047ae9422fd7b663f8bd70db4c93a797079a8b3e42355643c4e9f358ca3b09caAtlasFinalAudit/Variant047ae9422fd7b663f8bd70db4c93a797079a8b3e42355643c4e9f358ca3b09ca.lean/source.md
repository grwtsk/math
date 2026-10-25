# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.047ae9422fd7b663f8bd70db4c93a797079a8b3e42355643c4e9f358ca3b09caAtlasFinalAudit.Variant047ae9422fd7b663f8bd70db4c93a797079a8b3e42355643c4e9f358ca3b09ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91c3c1929f5b2cf72c39f9000f5c6b9e04630920` · SHA-256 `047ae9422fd7b663f8bd70db4c93a797079a8b3e42355643c4e9f358ca3b09ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative
import FormalResearch.PositiveAtlas.OrderedPartitionBridge
import Lean.Util.CollectAxioms
open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative, `FormalResearch.PositiveAtlas.OrderedPartitionBridge]
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
