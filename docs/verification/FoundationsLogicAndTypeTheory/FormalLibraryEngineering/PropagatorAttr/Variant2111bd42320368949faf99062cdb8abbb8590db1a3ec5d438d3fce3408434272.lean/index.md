# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagatorAttr.Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dae6e8ffad2ccdf09ef183f409403258f5d1dcb3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dae6e8ffad2ccdf09ef183f409403258f5d1dcb3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PropagatorMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272.lean/declarations/propagatormap--5f2c5998b9a8c5146c4d28d6.md) | 21 | `declaration-track:5f2c5998b9a8c5146c4d28d6c7ae55d57eea59fefde1c8939014168fe92f4c88` |
| 2 | `def` | [PropagatorMap.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272.lean/declarations/propagatormap-insert--67e3ac7a5fa997917d669ab7.md) | 23 | `declaration-track:67e3ac7a5fa997917d669ab701f80a032298ed989ae98f5ebe4740d9aa6b14e4` |
| 3 | `structure` | [BuiltinPropagators](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272.lean/declarations/builtinpropagators--a6d6268970e4e75fb613930b.md) | 28 | `declaration-track:a6d6268970e4e75fb613930bdafc88f9afe50e77f9d6ab069513f3a866c843f0` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272.lean/declarations/builtin-initialize--5a3625a7383abfd0a51ddcdb.md) | 33 | `declaration-track:5a3625a7383abfd0a51ddcdb928597a7b812c5a768100c2d4a015ce292627f57` |
| 5 | `def` | [registerBuiltinPropagatorCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272.lean/declarations/registerbuiltinpropagatorcore--2fab4913e5360901af84195d.md) | 35 | `declaration-track:2fab4913e5360901af84195d82487838bc57615e708fc09839af1cef560c0048` |
| 6 | `def` | [registerBuiltinUpwardPropagator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272.lean/declarations/registerbuiltinupwardpropagator--cb3818d79b3c4a56668aede7.md) | 43 | `declaration-track:cb3818d79b3c4a56668aede73e531637f3b06542c2cabd44b5cb61bda66d7a66` |
| 7 | `def` | [registerBuiltinDownwardPropagator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272.lean/declarations/registerbuiltindownwardpropagator--18b3fbce3688634a82f143d6.md) | 46 | `declaration-track:18b3fbce3688634a82f143d6320e8176ce7f2d118ee2f63abf62f58f145941d7` |
| 8 | `def` | [addBuiltin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272.lean/declarations/addbuiltin--294a7603fa079f53de236170.md) | 49 | `declaration-track:294a7603fa079f53de236170909aa6d14cb7428fb2602a6ce57b4dc4e82bb2ae` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272.lean/declarations/builtin-initialize--5c4270408a240aed3bab6c24.md) | 65 | `declaration-track:5c4270408a240aed3bab6c2485b2321b46df82632109b8ee510f2d07a9f1053c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
