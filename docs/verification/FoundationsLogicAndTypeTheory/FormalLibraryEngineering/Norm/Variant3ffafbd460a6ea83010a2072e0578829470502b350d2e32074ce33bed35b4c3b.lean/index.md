# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Norm.Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9fd6950affa10170ae75eb4fc46bfa889ec284e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9fd6950affa10170ae75eb4fc46bfa889ec284e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Types` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forall_arrow_of_Icc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/forall-arrow-of-icc--09d3c60f48990336b0f93b31.md) | 25 | `result-track:09d3c60f48990336b0f93b3125819cca1b836801b355decbebff6a512b21a39b` |
| 2 | `theorem` | [forall_arrow_of_Icc_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/forall-arrow-of-icc-rev--847910ec463da901baf224c6.md) | 31 | `result-track:847910ec463da901baf224c640a1b314a4f6a231e1d0fc8750f42f4388ae5fcd` |
| 3 | `theorem` | [forall_and_of_Icc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/forall-and-of-icc--8f3f7df903c6e72b164ad8b1.md) | 37 | `result-track:8f3f7df903c6e72b164ad8b17727526670e78393887ea85378232eb8de6a3db7` |
| 4 | `theorem` | [forall_and_of_Icc_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/forall-and-of-icc-rev--c5e7041fcc9e8f413fbdfee5.md) | 43 | `result-track:c5e7041fcc9e8f413fbdfee5ef18f31b8be6272d0482b6efb3bb10d30c58d123` |
| 5 | `def` | [goalNeedsIccWrapper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/goalneedsiccwrapper--4531f5ffa8580c33170225d4.md) | 50 | `declaration-track:4531f5ffa8580c33170225d48d33af133fd515c61c9cea018d184403a3c08b4a` |
| 6 | `def` | [hasNonPropBinder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/hasnonpropbinder--bd624607a00a2394a89002a8.md) | 106 | `declaration-track:bd624607a00a2394a89002a89a976e0cedbac51485079d6dfa8381b061f66b63` |
| 7 | `def` | [goalIsMultivariate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/goalismultivariate--c56daf327d8612d4733c1cc3.md) | 117 | `declaration-track:c56daf327d8612d4733c1cc30bbee93626e7f278ce7309691474d4d7c7e30a78` |
| 8 | `def` | [tryNormalizeGoalToIcc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/trynormalizegoaltoicc--69aeb72649034091a3c96479.md) | 133 | `declaration-track:69aeb72649034091a3c9647997096257b41cfcd7dd3319f491085f3a037ac5e8` |
| 9 | `theorem` | [rpow_one_half_eq_sqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/rpow-one-half-eq-sqrt--de0589e51d636124ab3e1481.md) | 152 | `result-track:de0589e51d636124ab3e14818fd9b06993b843d66360a9047fd97d173795a04a` |
| 10 | `theorem` | [rpow_inv_two_eq_sqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/rpow-inv-two-eq-sqrt--40c52369613188d6bc17cd15.md) | 157 | `result-track:40c52369613188d6bc17cd15fb46b703ffe3e84d49725d40dabd3fcec975b70d` |
| 11 | `theorem` | [rpow_three_halves_eq_mul_sqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/rpow-three-halves-eq-mul-sqrt--39a2fe3752ecfc72c3de4e80.md) | 163 | `result-track:39a2fe3752ecfc72c3de4e803fbe56fcf5c39a74cc3ec525a14432ac39171d2d` |
| 12 | `theorem` | [rpow_one_point_five_eq_mul_sqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/rpow-one-point-five-eq-mul-sqrt--0d6e6abdf9b4967d5efb067c.md) | 173 | `result-track:0d6e6abdf9b4967d5efb067c89b40a7bd4cf0b37cace8a65977606df26d1d747` |
| 13 | `def` | [intervalNormSafeSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/intervalnormsafesimp--49f20320e84db7a9818e9025.md) | 181 | `declaration-track:49f20320e84db7a9818e9025db75e190e6697eec56d26e1e88d8a919d04ab47f` |
| 14 | `def` | [intervalNormGoalSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/intervalnormgoalsimp--9029de38ad47c8b0daadae5c.md) | 189 | `declaration-track:9029de38ad47c8b0daadae5c525b4cf1136fdc7398b8e7912bad3ae8f8ead9cc` |
| 15 | `def` | [intervalNormCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/intervalnormcore--6c44c2284cb6cede35b0b147.md) | 195 | `declaration-track:6c44c2284cb6cede35b0b1474bc31f158ac4200cdb5cdafa2cf385a0c99c714c` |
| 16 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/syntax--4ebdb7c23ca873d2937661ff.md) | 212 | `declaration-track:4ebdb7c23ca873d2937661ff8a7e22529f2bd3209189b8f3a3fd7d051c42c304` |
| 17 | `def` | [elabIntervalNorm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/declarations/elabintervalnorm--a78f203d662970a858f5ba7b.md) | 215 | `declaration-track:a78f203d662970a858f5ba7bd6f4f5bc8427b6886d0fc662419dc737feeec278` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
