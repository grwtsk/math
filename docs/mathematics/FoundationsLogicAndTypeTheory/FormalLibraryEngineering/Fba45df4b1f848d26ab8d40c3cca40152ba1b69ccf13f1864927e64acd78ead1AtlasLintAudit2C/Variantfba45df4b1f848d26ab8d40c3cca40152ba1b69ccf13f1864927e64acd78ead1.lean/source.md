# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fba45df4b1f848d26ab8d40c3cca40152ba1b69ccf13f1864927e64acd78ead1AtlasLintAudit2C.Variantfba45df4b1f848d26ab8d40c3cca40152ba1b69ccf13f1864927e64acd78ead1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2565de498e6aaf1edde8d95a4648de9a750f79d0` · SHA-256 `fba45df4b1f848d26ab8d40c3cca40152ba1b69ccf13f1864927e64acd78ead1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.OrderThreeRecursiveCumulant
import FormalResearch.PositiveAtlas.MatrixBlockSchur
import FormalResearch.PositiveAtlas.ProvenanceProjection
import FormalResearch.PositiveAtlas.InterventionDefect
import FormalResearch.PositiveAtlas.BlockSchur
import FormalResearch.PositiveAtlas.FiniteLogAffineCovariance
import FormalResearch.PositiveAtlas.ComparatorSeparation
import FormalResearch.PositiveAtlas.PhaseIIResidualQuotient
import Lean.Util.CollectAxioms
open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.OrderThreeRecursiveCumulant, `FormalResearch.PositiveAtlas.MatrixBlockSchur, `FormalResearch.PositiveAtlas.ProvenanceProjection, `FormalResearch.PositiveAtlas.InterventionDefect, `FormalResearch.PositiveAtlas.BlockSchur, `FormalResearch.PositiveAtlas.FiniteLogAffineCovariance, `FormalResearch.PositiveAtlas.ComparatorSeparation, `FormalResearch.PositiveAtlas.PhaseIIResidualQuotient]
  let moduleNames := env.allImportedModuleNames
  let names := env.const2ModIdx.fold (fun acc n idx =>
    if mods.contains moduleNames[idx]! then n :: acc else acc) []
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
