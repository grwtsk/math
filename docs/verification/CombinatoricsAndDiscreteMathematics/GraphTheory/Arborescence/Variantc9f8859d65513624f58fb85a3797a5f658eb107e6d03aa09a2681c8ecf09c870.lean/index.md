# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Arborescence.Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c3618c088d2dc87b55711501d976090a0e0e943",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c3618c088d2dc87b55711501d976090a0e0e943`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Arborescence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/declarations/arborescence--d2cbdd826cef4be4d13f2ac3.md) | 39 | `declaration-track:d2cbdd826cef4be4d13f2ac35dbcdf57dc33b5a8d0f79dc7a199387cbac477ee` |
| 2 | `def` | [root](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/declarations/root--288ad602d662acbb7825ed63.md) | 46 | `declaration-track:288ad602d662acbb7825ed631b5071f6514357bbf2b298a8427147c8ac782d85` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/declarations/instance--12bde2fe5aa95303edf5d704.md) | 49 | `declaration-track:12bde2fe5aa95303edf5d704506b93f00f35553b03dbd20a7b0a6b0772475ed5` |
| 4 | `def` | [arborescenceMk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/declarations/arborescencemk--c7ae5f3df9075d42cf001f68.md) | 58 | `declaration-track:c7ae5f3df9075d42cf001f68f428f0fd0bd4dc47a6c80e85a6444a0248b7c503` |
| 5 | `class` | [RootedConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/declarations/rootedconnected--9d6b7e07bbbc276776cb11fe.md) | 95 | `declaration-track:9d6b7e07bbbc276776cb11fe70b0ea177f75aa120023d4099b80393b0021e4d8` |
| 6 | `def` | [shortestPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/declarations/shortestpath--c80db9d203c0c1facc627dac.md) | 105 | `declaration-track:c80db9d203c0c1facc627dac8b234f3b66a5b747553f9df45baf17308cb4af63` |
| 7 | `theorem` | [shortest_path_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/declarations/shortest-path-spec--859da86e938f7a70fcec694f.md) | 109 | `result-track:859da86e938f7a70fcec694ffea9d7ddb86351285e1fe76ebcca17939bbae81a` |
| 8 | `def` | [geodesicSubtree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/declarations/geodesicsubtree--289ae35a4e29effa0982d599.md) | 113 | `declaration-track:289ae35a4e29effa0982d59934fd059a71843531d8b05aea7e0ac6fd9cfa4d1e` |
| 9 | `instance` | [geodesicArborescence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/declarations/geodesicarborescence--4ef0b1acf5ecda2eda562a2a.md) | 117 | `declaration-track:4ef0b1acf5ecda2eda562a2a9f7ce3d4609bcb5b5286188c961c1d3182311b43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
