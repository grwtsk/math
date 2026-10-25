# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DyadicBounds.Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87ff56dd51f8cbb6731e5802861c2ca3d107018b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87ff56dd51f8cbb6731e5802861c2ca3d107018b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEvalDyadic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkUpperBoundDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/checkupperbounddyadic--5745497d949bd95f3d997811.md) | 76 | `declaration-track:5745497d949bd95f3d9978119d8615340690bf03e40ffdc5904f50c56b4a50cf` |
| 2 | `def` | [checkLowerBoundDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/checklowerbounddyadic--8e49f0273925f215ae61baec.md) | 83 | `declaration-track:8e49f0273925f215ae61baec503b61b0522fd59512246cab14ae13d79c8f1b26` |
| 3 | `def` | [checkStrictUpperBoundDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/checkstrictupperbounddyadic--6e7753b0d9839b71ba5ca499.md) | 90 | `declaration-track:6e7753b0d9839b71ba5ca4997088e10098e5455516008a05cb782815eb4182ec` |
| 4 | `def` | [checkStrictLowerBoundDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/checkstrictlowerbounddyadic--23444983395447711d836f3e.md) | 97 | `declaration-track:23444983395447711d836f3e14d95e2d146f4aaa3d346f7eab21230d3626032c` |
| 5 | `theorem` | [verify_upper_bound_dyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/verify-upper-bound-dyadic--2c949efadfc3b3512b8713a5.md) | 126 | `result-track:2c949efadfc3b3512b8713a5f94b95fa3aac654d51295a4bed4aa3fdccc777c3` |
| 6 | `theorem` | [verify_lower_bound_dyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/verify-lower-bound-dyadic--7b8895926f2ec6dd5256405a.md) | 157 | `result-track:7b8895926f2ec6dd5256405af031c26335970ae0ad5893d4dfdc4ed54da2273e` |
| 7 | `theorem` | [verify_upper_bound_dyadic'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/verify-upper-bound-dyadic--b0d3bae1fab873b946f35e72.md) | 186 | `result-track:b0d3bae1fab873b946f35e72aa05998c6ceb621da601040b8897aed900b3d2d7` |
| 8 | `theorem` | [verify_lower_bound_dyadic'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/verify-lower-bound-dyadic--4fb3c811b7a9f9dcd903839c.md) | 199 | `result-track:4fb3c811b7a9f9dcd903839c669154363541c204963a9abac1c993706a05569d` |
| 9 | `theorem` | [verify_strict_upper_bound_dyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/verify-strict-upper-bound-dyadic--6b78a43c5b5af58084a90cf2.md) | 216 | `result-track:6b78a43c5b5af58084a90cf201b60762742317cee424962be294fbbb5f673cd1` |
| 10 | `theorem` | [verify_strict_lower_bound_dyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/verify-strict-lower-bound-dyadic--54b2cb15f1124a508309e458.md) | 242 | `result-track:54b2cb15f1124a508309e458d6903ff3935a14d8b85cc49f90b4340141bd831a` |
| 11 | `theorem` | [verify_strict_upper_bound_dyadic'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/verify-strict-upper-bound-dyadic--92151c66a8d6c5ae8db8f510.md) | 267 | `result-track:92151c66a8d6c5ae8db8f510a6718e34d7189c0d989b9851bae73b62499419ae` |
| 12 | `theorem` | [verify_strict_lower_bound_dyadic'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/verify-strict-lower-bound-dyadic--f1ba0885ea6909fffc8e2130.md) | 279 | `result-track:f1ba0885ea6909fffc8e2130a2f4b28b7036d854a63f9ea429b19b2096e67cec` |
| 13 | `def` | [checkUpperBoundDyadicWithInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/checkupperbounddyadicwithinv--00b53905ea9d041fa4f16f33.md) | 296 | `declaration-track:00b53905ea9d041fa4f16f336ee7c1bcbe2f888d036d984d5581f68d0477b724` |
| 14 | `def` | [checkLowerBoundDyadicWithInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/checklowerbounddyadicwithinv--ae079b8f7130a034c8abe1c6.md) | 305 | `declaration-track:ae079b8f7130a034c8abe1c61986bfeaeade49bb3f0e3e97d5dd78320356187d` |
| 15 | `def` | [checkStrictUpperBoundDyadicWithInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/checkstrictupperbounddyadicwithinv--4cb88e3d630889087ad86d8f.md) | 314 | `declaration-track:4cb88e3d630889087ad86d8f50bebdd90b421076a7964af5d13c22d5e465738a` |
| 16 | `def` | [checkStrictLowerBoundDyadicWithInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/checkstrictlowerbounddyadicwithinv--27f0683f58346e10b6878a28.md) | 323 | `declaration-track:27f0683f58346e10b6878a28a47971d25a61f3410c5d90b083883501bf9497a7` |
| 17 | `theorem` | [verify_upper_bound_dyadic_withInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/verify-upper-bound-dyadic-withinv--b3a5452da64d450729f8ce76.md) | 337 | `result-track:b3a5452da64d450729f8ce76c11622b58982dbff12bede9a011afbce6dfcf758` |
| 18 | `theorem` | [verify_lower_bound_dyadic_withInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/verify-lower-bound-dyadic-withinv--49660349d14e141d8db5fb20.md) | 360 | `result-track:49660349d14e141d8db5fb20c38b0680bab7fe79a3d9fb427b2744ce0d122daa` |
| 19 | `theorem` | [verify_strict_upper_bound_dyadic_withInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/verify-strict-upper-bound-dyadic-withinv--c03894f39e4ecdc793e9fe99.md) | 383 | `result-track:c03894f39e4ecdc793e9fe9968808375241628b97252c90e3e55add8830e4ecf` |
| 20 | `theorem` | [verify_strict_lower_bound_dyadic_withInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/declarations/verify-strict-lower-bound-dyadic-withinv--0e7841346c642db599fd8089.md) | 406 | `result-track:0e7841346c642db599fd808933a4a765e700dc385ce07536105f9cdb5f7e269c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
