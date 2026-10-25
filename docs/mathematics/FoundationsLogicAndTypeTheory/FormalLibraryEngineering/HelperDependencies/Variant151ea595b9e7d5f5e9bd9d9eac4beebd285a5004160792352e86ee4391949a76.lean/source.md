# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HelperDependencies.Variant151ea595b9e7d5f5e9bd9d9eac4beebd285a5004160792352e86ee4391949a76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4a92484de58d1afd0bd743a49239c8a17605ec7` · SHA-256 `151ea595b9e7d5f5e9bd9d9eac4beebd285a5004160792352e86ee4391949a76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceJointMangoldtBaseline
import Lean.Util.FoldConsts

open Lean

run_meta do
  let env ← getEnv
  let labels : Array String := #["_private.SourceJointMangoldtBaseline.0.FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.originalPrefix",
    "_private.SourceJointMangoldtBaseline.0.FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.shiftedColumnTest",
    "_private.SourceJointMangoldtBaseline.0.FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.shiftedColumnTest_integrable",
    "_private.SourceJointMangoldtBaseline.0.FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.shiftedColumnTest_integral_zero",
    "_private.SourceJointMangoldtBaseline.0.FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.shiftedColumnTest_zero_above"]
  for label in labels do
    let name := (label.splitOn ".").foldl (fun acc part =>
      match part.toNat? with
      | some n => Name.num acc n
      | none => Name.str acc part) Name.anonymous
    let some info := env.find? name | throwError "missing private dependency {name}"
    let body := match info.value? (allowOpaque := true) with
      | some value => value.getUsedConstants
      | none => #[]
    logInfo m!"{(Json.mkObj [("declaration", toJson name.toString), ("type_constants", toJson (info.type.getUsedConstants.map Name.toString)), ("proof_or_definition_constants", toJson (body.map Name.toString))]).compress}"
```
