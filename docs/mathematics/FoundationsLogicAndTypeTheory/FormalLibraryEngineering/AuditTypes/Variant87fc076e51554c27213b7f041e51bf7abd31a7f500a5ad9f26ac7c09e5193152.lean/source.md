# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuditTypes.Variant87fc076e51554c27213b7f041e51bf7abd31a7f500a5ad9f26ac7c09e5193152

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4beb58d3d4fe908b9c15694fd0f942e823264afc` · SHA-256 `87fc076e51554c27213b7f041e51bf7abd31a7f500a5ad9f26ac7c09e5193152`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
import FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergCocycle
open Lean Elab Command
set_option pp.all true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
set_option pp.deepTerms true
set_option pp.maxSteps 100000000
run_cmd do
  let env ← getEnv
  let names := (env.constants.toList.map Prod.fst).filter fun n =>
    "FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergCocycle.".isPrefixOf n.toString
  for name in names do
    let axioms ← collectAxioms name
    let record := Json.mkObj [("name", toJson name.toString),
      ("axioms", toJson (axioms.map Name.toString))]
    liftIO <| IO.println ("ATLAS_HEISENBERG_EXPORT=" ++ record.compress)
    elabCommand (← `(command| #check $(mkIdent name)))
```
