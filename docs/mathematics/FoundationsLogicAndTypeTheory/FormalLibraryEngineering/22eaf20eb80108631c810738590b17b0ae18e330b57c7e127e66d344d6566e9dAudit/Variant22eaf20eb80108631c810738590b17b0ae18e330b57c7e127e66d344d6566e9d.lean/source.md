# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.22eaf20eb80108631c810738590b17b0ae18e330b57c7e127e66d344d6566e9dAudit.Variant22eaf20eb80108631c810738590b17b0ae18e330b57c7e127e66d344d6566e9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `136c6a6bc71b6b9c23fd35121d1ae5571c0abfcb` · SHA-256 `22eaf20eb80108631c810738590b17b0ae18e330b57c7e127e66d344d6566e9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.FiniteAtlasTransport
import Lean.Util.CollectAxioms
open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
set_option pp.maxSteps 1000000
run_cmd do
  let env ← getEnv
  let modules := env.allImportedModuleNames
  let names := env.const2ModIdx.fold (fun acc n idx =>
    if modules[idx]! == `FormalResearch.PositiveAtlas.FiniteAtlasTransport then n :: acc else acc) []
  let present := names.filter fun n => (env.find? n).isSome
  for n in names.filter (fun n => (env.find? n).isNone) do
    unless (n.toString.splitOn ".").any (fun p => p.startsWith "_") do
      throwError "Missing public declaration {n}"
    logInfo m!"COMPILER_METADATA_ONLY {n}"
  for n in present.toArray.qsort Name.quickLt do
    let ci ← getConstInfo n
    logInfo m!"TYPE {n} levels {ci.levelParams}: {ci.type}"
    let axioms ← collectAxioms n
    logInfo m!"AXIOMS {n}: {axioms}"
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "Unexpected axiom {ax} for {n}"
  logInfo m!"AUDITED {present.length} declarations, including generated/private declarations"
```
