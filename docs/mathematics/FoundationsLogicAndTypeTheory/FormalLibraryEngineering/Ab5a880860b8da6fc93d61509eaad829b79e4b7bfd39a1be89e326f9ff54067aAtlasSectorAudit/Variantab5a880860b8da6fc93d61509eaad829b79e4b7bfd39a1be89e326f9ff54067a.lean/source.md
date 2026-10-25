# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ab5a880860b8da6fc93d61509eaad829b79e4b7bfd39a1be89e326f9ff54067aAtlasSectorAudit.Variantab5a880860b8da6fc93d61509eaad829b79e4b7bfd39a1be89e326f9ff54067a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d314bf6fe33f1845fb8c88f21baa5979b5e98c13` · SHA-256 `ab5a880860b8da6fc93d61509eaad829b79e4b7bfd39a1be89e326f9ff54067a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.QuadraticSwapInvolution
import FormalResearch.PositiveAtlas.CommutingInvolutions
import FormalResearch.PositiveAtlas.PositiveFourSector
import FormalResearch.PositiveAtlas.InterventionDefect
import FormalResearch.PositiveAtlas.ComparatorSeparation
import FormalResearch.PositiveAtlas.ComparatorMargin
import FormalResearch.PositiveAtlas.FourPhaseConvolution
import FormalResearch.PositiveAtlas.AnalyticDispersion
import Lean.Util.CollectAxioms
open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.QuadraticSwapInvolution, `FormalResearch.PositiveAtlas.CommutingInvolutions, `FormalResearch.PositiveAtlas.PositiveFourSector, `FormalResearch.PositiveAtlas.InterventionDefect, `FormalResearch.PositiveAtlas.ComparatorSeparation, `FormalResearch.PositiveAtlas.ComparatorMargin, `FormalResearch.PositiveAtlas.FourPhaseConvolution, `FormalResearch.PositiveAtlas.AnalyticDispersion]
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
