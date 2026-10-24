# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinSearch.Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17d037bc1004a9b0ad3026bf64acc34fb6224528",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17d037bc1004a9b0ad3026bf64acc34fb6224528`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binSearchAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean/declarations/binsearchaux--534799ccb129cfdfde8eb1e3.md) | 22 | `declaration-track:534799ccb129cfdfde8eb1e3b4c7e98b0db54f444fadb9e6a53267118c817a80` |
| 2 | `def` | [binSearch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean/declarations/binsearch--9844390637cef9aa6e40d23c.md) | 47 | `declaration-track:9844390637cef9aa6e40d23ce36572a09a2ec3ffc1774dc583bb57a07c667deb` |
| 3 | `def` | [binSearchContains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean/declarations/binsearchcontains--b1ea63e13cd7168dfc21c4bc.md) | 67 | `declaration-track:b1ea63e13cd7168dfc21c4bceb688adb6072413b492f8affd7be49fd5d54d9ee` |
| 4 | `def` | [binInsertAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean/declarations/bininsertaux--ecc6175363344a5990e4258e.md) | 77 | `declaration-track:ecc6175363344a5990e4258e05da176b2ab58b8a649caf30f19d9a918af42335` |
| 5 | `def` | [binInsertM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean/declarations/bininsertm--ea818cebbef95ff65fef09c4.md) | 106 | `declaration-track:ea818cebbef95ff65fef09c4a56487a42f2894e17a896f2afed28b83eaf30044` |
| 6 | `def` | [binInsert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean/declarations/bininsert--98d49dd05bfe2ebfcf16a69c.md) | 134 | `declaration-track:98d49dd05bfe2ebfcf16a69cba9564f7b22f73e9d42a4e380088b1ad755a8546` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
