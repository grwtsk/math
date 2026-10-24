# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tree.Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f14395d5cad84f211382f3ea097dcf95f0a227bc",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f14395d5cad84f211382f3ea097dcf95f0a227bc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.RBMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Num.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Ordering.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Util.CompileInductive` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Tree.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/tree--f0077d2a487b2e994481bd33.md) | 40 | `declaration-track:f0077d2a487b2e994481bd333244ba0d9238fcdd1afde8cd72b4aee3e54b37e0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/instance--f9d7b7d5531b452637449b32.md) | 55 | `declaration-track:f9d7b7d5531b452637449b325fb59d849a511d7725e95ab947cfcef5e6ae5604` |
| 3 | `def` | [ofRBNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/ofrbnode--fa2e1e24bea68bf9796c2cd4.md) | 61 | `declaration-track:fa2e1e24bea68bf9796c2cd44bf07724aeaef1836072b1359ff79e4ef36f5a21` |
| 4 | `def` | [indexOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/indexof--2f23b695eefdee32f6f29227.md) | 70 | `declaration-track:2f23b695eefdee32f6f292275416d6dc41ccaea5af5d402d951f1ed778691681` |
| 5 | `def` | [get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/get--8f37f9a0e4f3c180a00b0c0f.md) | 84 | `declaration-track:8f37f9a0e4f3c180a00b0c0f3ae5e4ff7bed68a59cb23b9b0d8ba84c0f3494cc` |
| 6 | `def` | [getOrElse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/getorelse--9ac925a567dc60898df40cc6.md) | 93 | `declaration-track:9ac925a567dc60898df40cc60ed5498d7247084c04f03e8d04286342bd70d5e7` |
| 7 | `def` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/map--f7e24e0d0173f1dbb011e67b.md) | 99 | `declaration-track:f7e24e0d0173f1dbb011e67ba000a3161368cfca61abca41d945709537c0f4b9` |
| 8 | `def` | [numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/numnodes--5cc936e6583a6a64b8effd33.md) | 106 | `declaration-track:5cc936e6583a6a64b8effd33ece1cf64066129345ffd87dd8449d43cd68c607b` |
| 9 | `def` | [numLeaves](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/numleaves--5fbbb31497cb3aab623058e9.md) | 113 | `declaration-track:5fbbb31497cb3aab623058e97b8b96b34be95accbc55de84cdbb58d3f7bd3331` |
| 10 | `def` | [height](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/height--863201aa70693180d24c970f.md) | 120 | `declaration-track:863201aa70693180d24c970f11846a7f9cbbcf2bef032d2e6c343338274ecfdc` |
| 11 | `theorem` | [numLeaves_eq_numNodes_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/numleaves-eq-numnodes-succ--17417de302a769f7c8af85fb.md) | 125 | `result-track:17417de302a769f7c8af85fb81098be6c1b0843e770f4dbb9b33b1b80b295c86` |
| 12 | `theorem` | [numLeaves_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/numleaves-pos--4f3a8ee8a60397d6033069a9.md) | 129 | `result-track:4f3a8ee8a60397d6033069a90275c57c2889d3b6e2097d4a4de1fc83639c6485` |
| 13 | `theorem` | [height_le_numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/height-le-numnodes--34896079667c08023367a629.md) | 134 | `result-track:34896079667c08023367a629fe83d561af4acfd033f65ca524ec45aae7de80c7` |
| 14 | `def` | [left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/left--08c8f709bd9d6cd6327c3fc4.md) | 144 | `declaration-track:08c8f709bd9d6cd6327c3fc48610d30bfb4f9de311e7325732c4cfb1a75f46ce` |
| 15 | `def` | [right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/right--a0341334c10f455ba3e9c8a2.md) | 151 | `declaration-track:a0341334c10f455ba3e9c8a2d57fef850c77d4de67684a2364acbcaeb7f3ce9f` |
| 16 | `def` | [unitRecOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/unitrecon--732a5f49033f0998572ad3ab.md) | 163 | `declaration-track:732a5f49033f0998572ad3ab71a09283a2523daef620c2c26f62909e2974c875` |
| 17 | `theorem` | [left_node_right_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta475a362772db6a3b8e33a369c9b1ebfa813fd68109f816cd5228aff6b88fde8.lean/declarations/left-node-right-eq-self--277dacd64f3625699840e42e.md) | 170 | `result-track:277dacd64f3625699840e42ed3d3b6e9acf38069aa1496ec7ee4ebbf96bf1f33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
