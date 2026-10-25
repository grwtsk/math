# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittValuedIndex.Variant382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ba3b514767efc498c4692a48aad2325dc7181b0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittValuedIndex/Variant382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittValuedIndex/Variant382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittValuedIndex/Variant382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ba3b514767efc498c4692a48aad2325dc7181b0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittValuedIndex/Variant382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittValuedIndex/Variant382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CrystallineIndex.WittComplex` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.CrystallineIndex.SheafSpectrumOperator` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.CrystallineIndex.KernelCokernel` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WittValuedCrystallineIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittValuedIndex/Variant382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353.lean/declarations/wittvaluedcrystallineindex--bfd24476fec0753f2f37ad9f.md) | 29 | `declaration-track:bfd24476fec0753f2f37ad9f91e058c5eec41fe91c08dee8f316031aa18c3a36` |
| 2 | `def` | [WittValuedCrystallineIndex.Nonzero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittValuedIndex/Variant382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353.lean/declarations/wittvaluedcrystallineindex-nonzero--749cdd0fd0ab8b55701bc066.md) | 41 | `declaration-track:749cdd0fd0ab8b55701bc066a48e709d5793120b28d24c3185bfbd8e55acb829` |
| 3 | `theorem` | [witt_index_represents_operator_index](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittValuedIndex/Variant382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353.lean/declarations/witt-index-represents-operator-index--126476668ba2c8785e621230.md) | 50 | `result-track:126476668ba2c8785e621230768456e6065425ed038f7a10681fd809d90411c8` |
| 4 | `theorem` | [witt_index_has_witt_element](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittValuedIndex/Variant382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353.lean/declarations/witt-index-has-witt-element--c878c9997803a606588b8a95.md) | 60 | `result-track:c878c9997803a606588b8a95552d1f6c360c1bd034daff1f8a25f9d4627ac80a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
