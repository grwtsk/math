# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.3896ab33010fb32712db5ac1215c2f48aded61f4ad97d9bd6512c29603c37660AtlasLintAudit1.Variant3896ab33010fb32712db5ac1215c2f48aded61f4ad97d9bd6512c29603c37660

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a925ba9dd5c522f6f264068f6b75c475cb49c960` · SHA-256 `3896ab33010fb32712db5ac1215c2f48aded61f4ad97d9bd6512c29603c37660`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.ComparatorMargin
import FormalResearch.PositiveAtlas.ScalarSchur
import FormalResearch.PositiveAtlas.QuadraticSwapInvolution
import FormalResearch.PositiveAtlas.BlockDirectionReindexing
import FormalResearch.PositiveAtlas.AnalyticDispersion
import FormalResearch.PositiveAtlas.CommutingInvolutions
import FormalResearch.PositiveAtlas.Certification
import FormalResearch.PositiveAtlas.OrderedPartitionBridge
import Lean.Util.CollectAxioms
open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.ComparatorMargin, `FormalResearch.PositiveAtlas.ScalarSchur, `FormalResearch.PositiveAtlas.QuadraticSwapInvolution, `FormalResearch.PositiveAtlas.BlockDirectionReindexing, `FormalResearch.PositiveAtlas.AnalyticDispersion, `FormalResearch.PositiveAtlas.CommutingInvolutions, `FormalResearch.PositiveAtlas.Certification, `FormalResearch.PositiveAtlas.OrderedPartitionBridge]
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
