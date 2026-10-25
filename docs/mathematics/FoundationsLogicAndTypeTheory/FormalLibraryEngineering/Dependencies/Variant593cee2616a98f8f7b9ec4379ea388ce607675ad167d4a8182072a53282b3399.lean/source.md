# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dependencies.Variant593cee2616a98f8f7b9ec4379ea388ce607675ad167d4a8182072a53282b3399

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6db2976776ff99815a02517804ea969b94ff06c` · SHA-256 `593cee2616a98f8f7b9ec4379ea388ce607675ad167d4a8182072a53282b3399`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.FutureObservableProvenance
import Lean.Util.FoldConsts

open Lean

run_meta do
  let env ← getEnv
  let names : Array Name := #[
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.matrixWord,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.matrixWord_cons,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.matrixWord_fold,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.matrixWord_execute,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.provenance_extension,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.quadratic_matrixWord]
  for name in names do
    let some info := env.find? name | throwError "missing declaration {name}"
    let body := match info.value? (allowOpaque := true) with
      | some value => value.getUsedConstants
      | none => #[]
    let record := Json.mkObj [("declaration", toJson name.toString),
      ("type_constants", toJson (info.type.getUsedConstants.map Name.toString)),
      ("proof_or_definition_constants", toJson (body.map Name.toString))]
    logInfo m!"{record.compress}"
```
