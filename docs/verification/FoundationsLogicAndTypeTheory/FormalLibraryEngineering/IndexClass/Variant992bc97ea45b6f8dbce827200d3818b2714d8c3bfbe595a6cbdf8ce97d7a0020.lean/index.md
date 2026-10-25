# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexClass.Variant992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73beebda25a813be143c0c4b748656c237a4a53c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73beebda25a813be143c0c4b748656c237a4a53c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CrystallineIndex.KernelCokernel` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.CrystallineIndex.CohomologyClass` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.CrystallineIndex.WittValuedIndex` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CrystallineIndexClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020.lean/declarations/crystallineindexclass--85bac4689db9c5d5656e65bd.md) | 26 | `declaration-track:85bac4689db9c5d5656e65bd5070435c085df9aa7bb002065705c096f924826e` |
| 2 | `theorem` | [index_class_represents_formal_index](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020.lean/declarations/index-class-represents-formal-index--0040d68c7995069cc8ee6785.md) | 38 | `result-track:0040d68c7995069cc8ee6785d96617cfdc46c7772466678576ad8dd07cdd5a66` |
| 3 | `structure` | [CrystallineIndexClassInWitt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020.lean/declarations/crystallineindexclassinwitt--30585cf8cf86b7aaa82db7d5.md) | 51 | `declaration-track:30585cf8cf86b7aaa82db7d5e0098ee1eb2e9f94a01d0b2a187409d13e8c0f4f` |
| 4 | `theorem` | [crystalline_index_class_in_witt_is_index](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020.lean/declarations/crystalline-index-class-in-witt-is-index--76af4e87a6aca33862cf92f1.md) | 61 | `result-track:76af4e87a6aca33862cf92f142f75f654b1e361ecf1ccdeba11ce3e8b0c9d37d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
