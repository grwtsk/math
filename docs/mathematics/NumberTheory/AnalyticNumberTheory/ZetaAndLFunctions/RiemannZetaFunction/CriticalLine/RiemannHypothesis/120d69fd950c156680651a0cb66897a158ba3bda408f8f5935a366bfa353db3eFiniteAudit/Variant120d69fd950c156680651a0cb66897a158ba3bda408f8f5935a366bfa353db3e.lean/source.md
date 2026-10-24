# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.120d69fd950c156680651a0cb66897a158ba3bda408f8f5935a366bfa353db3eFiniteAudit.Variant120d69fd950c156680651a0cb66897a158ba3bda408f8f5935a366bfa353db3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14dab5029835639c363fb30387ee96eb6894c3a9` · SHA-256 `120d69fd950c156680651a0cb66897a158ba3bda408f8f5935a366bfa353db3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.XiFiniteOrder
import Lean.Util.CollectAxioms
open Lean Elab Command
set_option pp.all true
set_option pp.privateNames true
set_option maxRecDepth 100000
set_option pp.maxSteps 1000000
run_cmd do
  let env := (← getEnv).setExporting false
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.Grassmannian.PFClosure, `FormalResearch.PositiveAtlas.Grassmannian.SignedMinorElimination, `FormalResearch.PositiveAtlas.Grassmannian.FiniteOrder, `FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet, `FormalResearch.PositiveAtlas.Grassmannian.QuadraticMinors, `FormalResearch.PositiveAtlas.Grassmannian.SectorProducts, `FormalResearch.PositiveAtlas.Grassmannian.ToeplitzMinors, `FormalResearch.PositiveAtlas.Grassmannian.SignedGraph, `FormalResearch.PositiveAtlas.Grassmannian.BraidCoordinates, `FormalResearch.PositiveAtlas.Grassmannian.ToeplitzChart24, `FormalResearch.PositiveAtlas.Grassmannian.Transverse, `FormalResearch.RiemannHypothesis.XiToeplitz, `FormalResearch.RiemannHypothesis.XiFiniteOrder]
  let maintained : Array Name := mods
  let moduleNames := env.allImportedModuleNames
  for mod in maintained do
    unless moduleNames.contains mod do
      throwError "Maintained module not root-reachable {mod}"
    logInfo m!"ROOT_REACHABLE {mod}"
  for mod in mods do
    unless moduleNames.contains mod do
      throwError "Missing applied module {mod}"
    logInfo m!"APPLIED_MODULE {mod}"
  let names : List Name := env.const2ModIdx.fold (fun acc n idx =>
    if mods.contains moduleNames[idx]! then n :: acc else acc) []
  let present := names.filter fun n => (env.find? n).isSome
  let metadataOnly := names.filter fun n => (env.find? n).isNone
  for n in metadataOnly.toArray.qsort Name.quickLt do
    unless n.isInternal do
      throwError "Missing public declaration {n}"
    logInfo m!"COMPILER_METADATA_ONLY {n}"
  for n in present.toArray.qsort Name.quickLt do
    let some ci := env.find? n | throwError "Declaration disappeared {n}"
    let kind := match ci with
      | .axiomInfo _ => "axiom"
      | .defnInfo _ => "definition"
      | .thmInfo _ => "theorem"
      | .opaqueInfo _ => "opaque"
      | .quotInfo _ => "quotient primitive"
      | .inductInfo _ => "inductive"
      | .ctorInfo _ => "constructor"
      | .recInfo _ => "recursor"
    logInfo m!"DECL {n} KIND {kind} LEVELS {ci.levelParams}"
    logInfo m!"TYPE {n}: {ci.type}"
    logInfo m!"TYPE_EXPR {n}: {repr ci.type}"
    let axioms ← collectAxioms n
    logInfo m!"AXIOMS {n}: {axioms.qsort Name.quickLt}"
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "Unexpected transitive axiom {ax} for {n}"
  logInfo m!"AUDITED {present.length} kernel declarations; compiler metadata-only {metadataOnly.length}"
```
