# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IntervalArray.Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d28e8f03eeee3a72a1831a12ff1545459230f8c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d28e8f03eeee3a72a1831a12ff1545459230f8c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalDyadic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntervalArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/intervalarray--c9402a543be2d52571da651f.md) | 44 | `declaration-track:c9402a543be2d52571da651f67418803c71135c4ff7cf2cb628f3203b6b20938` |
| 2 | `def` | [getLo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/getlo--f55a19e4c9314b869eb70afb.md) | 60 | `declaration-track:f55a19e4c9314b869eb70afbe8f9aa47b60f8523420dfc9a63f4a972d2152e52` |
| 3 | `def` | [getHi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/gethi--0290fb665ef17164860d9a8a.md) | 64 | `declaration-track:0290fb665ef17164860d9a8a3a0b08763bc8fd526db9493f957a53a849f72121` |
| 4 | `def` | [get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/get--a07877c993c280f627fd1899.md) | 68 | `declaration-track:a07877c993c280f627fd189935237f4dd7c06e960cce7b23690c61c9fe4352fa` |
| 5 | `def` | [mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/mem--fef1c710fd9742137386cd39.md) | 75 | `declaration-track:fef1c710fd9742137386cd3981630c3bdb9ed479f1c05a42272184d54847f911` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/instance--8a972ccc1709d82bb1ec7f44.md) | 78 | `declaration-track:8a972ccc1709d82bb1ec7f4471c7f0a81a6c6164ab29a03ba7a2982764642bdd` |
| 7 | `def` | [ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/offn--f07657a712b48e484942273a.md) | 82 | `declaration-track:f07657a712b48e484942273a13b3f78e7b5ddee611e1a5ae1771c09dd1ccf6a1` |
| 8 | `def` | [mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/mk--b621d2d7d200087d61307b70.md) | 89 | `declaration-track:b621d2d7d200087d61307b70fa608ce0dda47f9e3d84f205659eaf036ee5f162` |
| 9 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/empty--b4e72e39accf1d6ab5f27332.md) | 93 | `declaration-track:b4e72e39accf1d6ab5f27332a0cb3b09fb49e70368a2c4fe3386eb815c3ec190` |
| 10 | `def` | [singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/singleton--0e8f07fc80c5ae23b93525fd.md) | 100 | `declaration-track:0e8f07fc80c5ae23b93525fdbc71f48cbd1d27391589841b22864a5b3404d7dd` |
| 11 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/add--ecade7580d85408065d2a6b9.md) | 107 | `declaration-track:ecade7580d85408065d2a6b9052d534f6efbd9d2d187df2f2e85e3fb7607fc6d` |
| 12 | `def` | [neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/neg--073e363da824d16b3220a858.md) | 114 | `declaration-track:073e363da824d16b3220a8584d2a89470d16834b990cdeee8ee21b35f43ff1fb` |
| 13 | `def` | [sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/sub--03fee9a9d1b5c76dc2f8b3a6.md) | 121 | `declaration-track:03fee9a9d1b5c76dc2f8b3a6efe26a14f818e5e2cb3d07d757628fffd4c7fbe8` |
| 14 | `def` | [relu](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/relu--5b273483bf4b714b523b4953.md) | 125 | `declaration-track:5b273483bf4b714b523b495325e5e82e3140ca95b8fee47a12e36fa8beba68a4` |
| 15 | `theorem` | [mem_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/mem-add--127a5cebabb69da9b14a81a7.md) | 134 | `result-track:127a5cebabb69da9b14a81a7a9c169f3fc91ceef7993c920ceb80173293ab8a7` |
| 16 | `theorem` | [mem_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/mem-neg--777ee55b6fba0c6f5e5a5125.md) | 151 | `result-track:777ee55b6fba0c6f5e5a5125c9d6c2aa594c9f4734279cc37b94bfa8cfdf8acd` |
| 17 | `theorem` | [mem_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/mem-sub--8da25079894acea05cd5914a.md) | 163 | `result-track:8da25079894acea05cd5914a3727947741002f8227c18dc50b7b318bce31fded` |
| 18 | `theorem` | [mem_relu](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/mem-relu--04482120a647b19915372a37.md) | 170 | `result-track:04482120a647b19915372a37905883d312ce4c69cb847e04f2d893b858934696` |
| 19 | `def` | [ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/oflist--5addc66558110963f8a1ed62.md) | 193 | `declaration-track:5addc66558110963f8a1ed62ccdf89daeea00b4e99b34d871c34112acb6d2dd3` |
| 20 | `def` | [toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variantcf55f8063a0ee3a5e6908b22220785b751cf26cd7ca4b15b46b754c9cb94e62d.lean/declarations/tolist--0d2ed2fbe5d994bb946b04df.md) | 200 | `declaration-track:0d2ed2fbe5d994bb946b04df64296259d3596ce6abbfe99d5af6a04e0679b44e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
