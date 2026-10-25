# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TheoremInventory.Variant22c97db11b72e8ed757c368ee085e38107803a123e6b75bc7d76e81205e6c6ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3006a97fe692f1f1de9db4ee264ee9d42bfed564` · SHA-256 `22c97db11b72e8ed757c368ee085e38107803a123e6b75bc7d76e81205e6c6ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS
import Lean

/-!
Run with:

`lake env lean Tools/TheoremInventory.lean`

The final output line is one compact JSON object prefixed by
`FCRS_THEOREM_INVENTORY_JSON\t`.  The external repository wrapper adds the
revision and manifest binding; this tool reports only elaborated environment
facts.
-/

open Lean Elab Command

namespace FCRS.Tools.TheoremInventory

structure ExportedTheorem where
  name : String
  moduleName : String
  typeText : String
  proofDependencies : List String
  typeDependencies : List String
  axiomDependencies : List String

def sortedConstantNames (expression : Expr) : List String :=
  let constants := expression.foldConsts NameSet.empty fun name found =>
    found.insert name
  (constants.toList.map Name.toString).mergeSort (fun left right => left < right)

def sortedNameArray (names : Array Name) : List String :=
  (names.toList.map Name.toString).mergeSort (fun left right => left < right)

def jsonString (value : String) : String :=
  Json.compress (.str value)

def jsonStringArray (values : List String) : String :=
  "[" ++ String.intercalate "," (values.map jsonString) ++ "]"

def ExportedTheorem.compactJson (record : ExportedTheorem) : String :=
  "{" ++
  "\"name\":" ++ jsonString record.name ++ "," ++
  "\"kind\":\"theorem\"," ++
  "\"module\":" ++ jsonString record.moduleName ++ "," ++
  "\"type\":" ++ jsonString record.typeText ++ "," ++
  "\"proof_dependencies\":" ++ jsonStringArray record.proofDependencies ++ "," ++
  "\"type_dependencies\":" ++ jsonStringArray record.typeDependencies ++ "," ++
  "\"axiom_dependencies\":" ++ jsonStringArray record.axiomDependencies ++
  "}"

def compactInventoryJson (records : List ExportedTheorem) : String :=
  "{\"declarations\":[" ++
    String.intercalate "," (records.map ExportedTheorem.compactJson) ++ "]}"

run_cmd do
  let environment ← getEnv
  let mut theoremNames : List (Name × String) := []
  for (name, moduleIndex) in environment.const2ModIdx.toList do
    let moduleName := environment.header.moduleNames[moduleIndex.toNat]!
    let moduleText := moduleName.toString
    if moduleText == "FCRS" || moduleText.startsWith "FCRS." then
      match environment.find? name with
      | some (.thmInfo _) =>
          theoremNames := (name, moduleText) :: theoremNames
      | _ => pure ()
  let sortedTheoremNames := theoremNames.mergeSort
    (fun left right => left.1.toString < right.1.toString)
  IO.print "FCRS_THEOREM_INVENTORY_JSON\t{\"declarations\":["
  let mut first := true
  for (name, moduleText) in sortedTheoremNames do
    match environment.find? name with
    | some (.thmInfo theoremInfo) =>
        let axiomNames ← collectAxioms name
        let record : ExportedTheorem := {
          name := name.toString
          moduleName := moduleText
          typeText := reprStr theoremInfo.type
          proofDependencies := sortedConstantNames theoremInfo.value
          typeDependencies := sortedConstantNames theoremInfo.type
          axiomDependencies := sortedNameArray axiomNames
        }
        if first then
          first := false
        else
          IO.print ","
        IO.print record.compactJson
    | _ => pure ()
  IO.println "]}"

end FCRS.Tools.TheoremInventory
```
