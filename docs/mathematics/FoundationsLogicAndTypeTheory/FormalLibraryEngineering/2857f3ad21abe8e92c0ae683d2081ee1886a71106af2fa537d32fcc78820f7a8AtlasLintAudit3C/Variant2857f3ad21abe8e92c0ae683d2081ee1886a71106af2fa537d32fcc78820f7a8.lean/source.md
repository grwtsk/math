# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.2857f3ad21abe8e92c0ae683d2081ee1886a71106af2fa537d32fcc78820f7a8AtlasLintAudit3C.Variant2857f3ad21abe8e92c0ae683d2081ee1886a71106af2fa537d32fcc78820f7a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd2895d3eae407f064682812ad279348632105e9` · SHA-256 `2857f3ad21abe8e92c0ae683d2081ee1886a71106af2fa537d32fcc78820f7a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.GeneralizedInverseSchur
import FormalResearch.PositiveAtlas.PositiveGeometry
import FormalResearch.PositiveAtlas.OrderFourRecursiveCumulant
import FormalResearch.PositiveAtlas.PositiveFourSector
import FormalResearch.PositiveAtlas.InvertibleBlockSchur
import FormalResearch.PositiveAtlas.SingularLinearSolver
import Lean.Util.CollectAxioms
open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.GeneralizedInverseSchur, `FormalResearch.PositiveAtlas.PositiveGeometry, `FormalResearch.PositiveAtlas.OrderFourRecursiveCumulant, `FormalResearch.PositiveAtlas.PositiveFourSector, `FormalResearch.PositiveAtlas.InvertibleBlockSchur, `FormalResearch.PositiveAtlas.SingularLinearSolver]
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
