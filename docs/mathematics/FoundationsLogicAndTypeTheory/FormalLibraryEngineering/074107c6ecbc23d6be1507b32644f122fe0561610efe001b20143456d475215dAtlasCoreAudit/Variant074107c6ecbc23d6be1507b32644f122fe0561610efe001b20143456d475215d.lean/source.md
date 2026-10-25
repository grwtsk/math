# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.074107c6ecbc23d6be1507b32644f122fe0561610efe001b20143456d475215dAtlasCoreAudit.Variant074107c6ecbc23d6be1507b32644f122fe0561610efe001b20143456d475215d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81675a1dbfa5ac578b73c2f9ce3f1d3f21ffb519` · SHA-256 `074107c6ecbc23d6be1507b32644f122fe0561610efe001b20143456d475215d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Certification
import FormalResearch.PositiveAtlas.CertificationUniverseFixtures
import FormalResearch.PositiveAtlas.PositiveGeometry
import FormalResearch.PositiveAtlas.ScalarSchur
import FormalResearch.PositiveAtlas.BlockSchur
import FormalResearch.PositiveAtlas.InvertibleBlockSchur
import FormalResearch.PositiveAtlas.MatrixBlockSchur
import FormalResearch.PositiveAtlas.ExplicitSchurMatrix
import FormalResearch.PositiveAtlas.GeneralizedInverseSchur
import FormalResearch.PositiveAtlas.NullCrossAnnihilation
import FormalResearch.PositiveAtlas.ProvenanceRange
import FormalResearch.PositiveAtlas.SingularLinearSolver
import FormalResearch.PositiveAtlas.SolverIndependence
import FormalResearch.PositiveAtlas.PhaseIIResidualQuotient
import Lean.Util.CollectAxioms
open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.Certification, `FormalResearch.PositiveAtlas.CertificationUniverseFixtures, `FormalResearch.PositiveAtlas.PositiveGeometry, `FormalResearch.PositiveAtlas.ScalarSchur, `FormalResearch.PositiveAtlas.BlockSchur, `FormalResearch.PositiveAtlas.InvertibleBlockSchur, `FormalResearch.PositiveAtlas.MatrixBlockSchur, `FormalResearch.PositiveAtlas.ExplicitSchurMatrix, `FormalResearch.PositiveAtlas.GeneralizedInverseSchur, `FormalResearch.PositiveAtlas.NullCrossAnnihilation, `FormalResearch.PositiveAtlas.ProvenanceRange, `FormalResearch.PositiveAtlas.SingularLinearSolver, `FormalResearch.PositiveAtlas.SolverIndependence, `FormalResearch.PositiveAtlas.PhaseIIResidualQuotient]
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
