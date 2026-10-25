# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceScaleNativeAudit.Variantdbd3854cf84504fcb96f660fcd3d26ca1ddca01faf6f534ca32f2d64b4b9be93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b85aca6d321da33c7a6d98d8161b13c78a601f38` · SHA-256 `dbd3854cf84504fcb96f660fcd3d26ca1ddca01faf6f534ca32f2d64b4b9be93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.SourceScaleReconstruction
import Lean.Util.CollectAxioms

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
run_cmd do
  let env ← getEnv
  let selected : Array String := #["FormalResearch.PositiveAtlas.SourceScaleReconstruction"]
  for expected in selected do
    if !(env.header.moduleNames.any fun mod => mod.toString == expected) then
      throwError "Source-scale consumer module absent from native closure: {expected}"
  let mut inspected : Nat := 0
  for (name, info) in env.constants do
    if let some idx := env.getModuleIdxFor? name then
      let mod := env.header.moduleNames[idx.toNat]!
      if selected.contains mod.toString then
        let axioms ← Lean.collectAxioms name
        if axioms.contains ``sorryAx then
          throwError "Rejected sorryAx dependency: {name}"
        for axiomName in axioms do
          if !#[``propext, ``Classical.choice, ``Quot.sound].contains axiomName then
            throwError "Unadmitted axiom {axiomName} in {name}"
        let declarationType ← liftTermElabM <| PrettyPrinter.ppExpr info.type
        let kind := match info with
          | .thmInfo _ => "theorem"
          | .axiomInfo _ => "axiom"
          | .defnInfo _ => "definition"
          | .opaqueInfo _ => "opaque"
          | .inductInfo _ => "inductive"
          | .ctorInfo _ => "constructor"
          | .recInfo _ => "recursor"
          | .quotInfo _ => "quotient"
        let mut definitionBody : Json := Json.null
        if #["FormalResearch.PositiveAtlas.SourceScaleReconstruction.fixtureInventory",
            "FormalResearch.PositiveAtlas.SourceScaleReconstruction.fixtureBlocks",
            "FormalResearch.PositiveAtlas.SourceScaleReconstruction.chartInventory"].contains name.toString then
          if let some value := info.value? then
            definitionBody := toJson (← liftTermElabM <| PrettyPrinter.ppExpr value).pretty
        let record := Json.mkObj [
          ("name", toJson name.toString),
          ("module", toJson mod.toString),
          ("kind", toJson kind),
          ("type", toJson declarationType.pretty),
          ("definition_body", definitionBody),
          ("axioms", toJson (axioms.map Name.toString))]
        logInfo m!"SOURCE_SCALE_AUDIT {record.compress}"
        inspected := inspected + 1
  logInfo m!"SOURCE_SCALE_AUDIT_COUNT {inspected}"
```
