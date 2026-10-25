# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlockCut.Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdf7f8629a17b30cf3b6fec22ba58382b1ed5c23",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdf7f8629a17b30cf3b6fec22ba58382b1ed5c23`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TypeIIBlockCut](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean/declarations/typeiiblockcut--355d9bba306240e98ae0fb17.md) | 41 | `declaration-track:355d9bba306240e98ae0fb17469eb752e52218b0e878b477db8be4bca6fab36c` |
| 2 | `def` | [TypeIIBlockCut.childMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean/declarations/typeiiblockcut-childmatrix--84444e82f0dc86d541e079d8.md) | 57 | `declaration-track:84444e82f0dc86d541e079d8eec955b1fffbdd7579e4c3efdda8b32280bba1cc` |
| 3 | `def` | [TypeIIBlockCut.blockDiagonal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean/declarations/typeiiblockcut-blockdiagonal--bb918a0f7ecc46f8a09e6226.md) | 68 | `declaration-track:bb918a0f7ecc46f8a09e6226552adef21ab393419c476bb2fd3c3a38d34c479c` |
| 4 | `def` | [TypeIIBlockCut.crossMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean/declarations/typeiiblockcut-crossmatrix--0c54a79b4beda9d3040f0273.md) | 76 | `declaration-track:0c54a79b4beda9d3040f02738301cc26be46db5e2aed0e8b9182db23d831462b` |
| 5 | `theorem` | [TypeIIBlockCut.blockDiagonal_add_cross](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean/declarations/typeiiblockcut-blockdiagonal-add-cross--732f2571139dd3080c15388f.md) | 84 | `result-track:732f2571139dd3080c15388ffa151cdcbba3f71b01162e20539a98c834e0052c` |
| 6 | `def` | [TypeIIBlockCut.coefficientPartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean/declarations/typeiiblockcut-coefficientpartition--8669618633b8a02e115257a6.md) | 93 | `declaration-track:8669618633b8a02e115257a63df70337dbe2936bd0d65b1f4c4a751ac93aacc0` |
| 7 | `theorem` | [TypeIIBlockCut.sum_childMass_le_parent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean/declarations/typeiiblockcut-sum-childmass-le-parent--98311f759ab8dee7e5e6e3e5.md) | 103 | `result-track:98311f759ab8dee7e5e6e3e5b76e70da22400723fe8315e5f2ed99aaf83a015f` |
| 8 | `structure` | [SpatialNeckRealization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean/declarations/spatialneckrealization--501dbe78adb067e066bba171.md) | 116 | `declaration-track:501dbe78adb067e066bba171f53436b331078e1c8d5c6feb952afe4c6aa03b4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
