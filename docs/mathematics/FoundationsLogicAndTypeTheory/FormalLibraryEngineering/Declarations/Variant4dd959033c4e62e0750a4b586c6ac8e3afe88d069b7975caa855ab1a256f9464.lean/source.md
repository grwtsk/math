# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declarations.Variant4dd959033c4e62e0750a4b586c6ac8e3afe88d069b7975caa855ab1a256f9464

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `865d844ae825fbb410f473d1a470a2cde0b99ecc` · SHA-256 `4dd959033c4e62e0750a4b586c6ac8e3afe88d069b7975caa855ab1a256f9464`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.MathematicalTooling.Certificates.Bound
import Lean.Util.CollectAxioms

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
run_cmd do
  let env ← getEnv
  let selected : Array String := #["FormalResearch.MathematicalTooling.Certificates.Bound"]
  for mod in env.header.moduleNames do
    logInfo m!"TT_IMPORT {mod}"
  for (name, info) in env.constants do
    if let some idx := env.getModuleIdxFor? name then
      let mod := env.header.moduleNames[idx.toNat]!
      if selected.contains mod.toString && !name.isInternal then
        let axioms ← Lean.collectAxioms name
        if axioms.contains ``sorryAx then
          throwError "Rejected sorryAx dependency: {name}"
        for axiomName in axioms do
          if !#[``propext, ``Classical.choice, ``Quot.sound].contains axiomName then
            throwError "Unadmitted axiom {axiomName} in {name}"
        let kind := match info with
          | .thmInfo _ => "theorem"
          | .axiomInfo _ => "axiom"
          | .defnInfo _ => "definition"
          | .opaqueInfo _ => "opaque"
          | .inductInfo _ => "inductive"
          | .ctorInfo _ => "constructor"
          | .recInfo _ => "recursor"
          | .quotInfo _ => "quotient"
        let declarationType ← liftTermElabM <| PrettyPrinter.ppExpr info.type
        let record := Json.mkObj [
          ("name", toJson name.toString),
          ("module", toJson mod.toString),
          ("kind", toJson kind),
          ("universe_parameters", toJson (info.levelParams.map Name.toString)),
          ("type", toJson declarationType.pretty),
          ("axioms", toJson (axioms.map Name.toString))]
        logInfo m!"TT_DECL {record.compress}"
```
