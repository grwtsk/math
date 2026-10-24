# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Arborescence.Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f418d71396c1f7fa54a8c161f616d7f6e555467",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f418d71396c1f7fa54a8c161f616d7f6e555467`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Path` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Subquiver` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Arborescence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5.lean/declarations/arborescence--aa5b60e7dc8ae033c94d64ec.md) | 46 | `declaration-track:aa5b60e7dc8ae033c94d64ece85e7da9d65a55b58c0f0c070d83c0ee8e7df760` |
| 2 | `def` | [root](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5.lean/declarations/root--203f39661331fa90ffdb47b9.md) | 53 | `declaration-track:203f39661331fa90ffdb47b9546c4620198f06610e2d63d20afcbd7dce38c334` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5.lean/declarations/instance--343fd39c940fd19fd8013c5e.md) | 56 | `declaration-track:343fd39c940fd19fd8013c5e5adf7c99bc185239ebd054e6abf5c4979e076f68` |
| 4 | `def` | [arborescenceMk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5.lean/declarations/arborescencemk--5d3c056828996347e978692b.md) | 64 | `declaration-track:5d3c056828996347e978692b992618a039542afa77d1ac8432b67e008e240462` |
| 5 | `class` | [RootedConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5.lean/declarations/rootedconnected--a401afac67beb5f61e162071.md) | 101 | `declaration-track:a401afac67beb5f61e162071f2e2fd4d4251e9d2566a8be23ae48ccbc8b10f4b` |
| 6 | `def` | [shortestPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5.lean/declarations/shortestpath--cf16de837c51dfa734e6bf92.md) | 111 | `declaration-track:cf16de837c51dfa734e6bf92f768200ab190739b37976fe00b4e046d00b57a0b` |
| 7 | `theorem` | [shortest_path_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5.lean/declarations/shortest-path-spec--16c22b49e44583f2ef341b25.md) | 115 | `result-track:16c22b49e44583f2ef341b2562376b2c79bef0b8656190dcfe8ee273462fbaa7` |
| 8 | `def` | [geodesicSubtree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5.lean/declarations/geodesicsubtree--266255df2c20da5136ad2116.md) | 119 | `declaration-track:266255df2c20da5136ad211635a8943f09efd925e5e2ab1ddfe265c1d23a8c43` |
| 9 | `instance` | [geodesicArborescence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantb690fabea6b82578f065c7a6a94cebf8d1bdee647403f1f6970430fefc7de6c5.lean/declarations/geodesicarborescence--ea77a4b9125f5adda7f5393f.md) | 122 | `declaration-track:ea77a4b9125f5adda7f5393ff3e5143d2cbac30191644ac1dadb2e5c46e33b46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
