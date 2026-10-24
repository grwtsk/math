# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IteratorLemmas.Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "764128016d38936a0b67c1579bdc9fd17d51f649",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `764128016d38936a0b67c1579bdc9fd17d51f649`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Combinators` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Data.DHashMap.IteratorLemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Std.Data.HashMap.RawLemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Std.Data.HashMap.Lemmas` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toList_inner](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/tolist-inner--74a0c56fe636199a74cab986.md) | 33 | `result-track:74a0c56fe636199a74cab986d46329a32b032843276068f4241f6faeea735f0f` |
| 2 | `theorem` | [toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/tolist-iter--110502034baf9f375539d1dc.md) | 39 | `result-track:110502034baf9f375539d1dce33aafe60be8ca5a4ffae998defbae15c98513f4` |
| 3 | `theorem` | [toListRev_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/tolistrev-iter--d6161a51cb2852262c964818.md) | 45 | `result-track:d6161a51cb2852262c964818034353146f1498cd88f27ea23b5232d2573d4381` |
| 4 | `theorem` | [toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/toarray-iter--d74938e9f0d6208e84b97bd8.md) | 50 | `result-track:d74938e9f0d6208e84b97bd8e82801dd99bf1cfd839f009086206dd249349783` |
| 5 | `theorem` | [keys_inner](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/keys-inner--9d787ce2be766332f28e485d.md) | 60 | `result-track:9d787ce2be766332f28e485d7cb93c4abeee2c88bb3a3bd76cdeab0908d9435d` |
| 6 | `theorem` | [toList_keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/tolist-keysiter--d75200271de891ca3b9ff6ab.md) | 65 | `result-track:d75200271de891ca3b9ff6abced3f0574eb6348d9a5cdd4dec19b950e987955a` |
| 7 | `theorem` | [toListRev_keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/tolistrev-keysiter--cbf6cb135dcbf62ab2dea87b.md) | 71 | `result-track:cbf6cb135dcbf62ab2dea87b5fb9ffeaddca94c8dc45ab5aaa82fccd3e564f47` |
| 8 | `theorem` | [toArray_keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/toarray-keysiter--b76e4cfaf63ab81770a15b4d.md) | 76 | `result-track:b76e4cfaf63ab81770a15b4df177a7962a228587c88e3e64147d3ac214c39e43` |
| 9 | `theorem` | [toList_valuesIter_eq_toList_map_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/tolist-valuesiter-eq-tolist-map-snd--453cef97f3b85941706fd3c7.md) | 87 | `result-track:453cef97f3b85941706fd3c790f66a9afa227a671c65dcddedd95a0d15f882b8` |
| 10 | `theorem` | [toListRev_valuesIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/tolistrev-valuesiter--191adc00a314b6f51f7fcdd9.md) | 94 | `result-track:191adc00a314b6f51f7fcdd99e5c7ccfb3931886a12811389aa6d56c01ac5963` |
| 11 | `theorem` | [toArray_valuesIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/toarray-valuesiter--e3c5e2d1abd9f8286a11c7bb.md) | 99 | `result-track:e3c5e2d1abd9f8286a11c7bb5aa29607c8b1a8ad227ba57df39aff1478e3d9d2` |
| 12 | `theorem` | [toList_inner](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/tolist-inner--eb755e557757e0587430bc80.md) | 114 | `result-track:eb755e557757e0587430bc801156df456ff6ae1d255935cbbb3583bc7f392007` |
| 13 | `theorem` | [toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/tolist-iter--2c4423756a688909542e128c.md) | 120 | `result-track:2c4423756a688909542e128c0a6548d48d9cf7e4ee9935620da6d26d9d5f5796` |
| 14 | `theorem` | [toListRev_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/tolistrev-iter--0c141940fa49481a2897eed2.md) | 125 | `result-track:0c141940fa49481a2897eed284724ceb4bdc19ec9d787aef346af754f60c0ef3` |
| 15 | `theorem` | [toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/toarray-iter--ca7de2e9414fdc1b26a7e6fe.md) | 130 | `result-track:ca7de2e9414fdc1b26a7e6fe8bbc3e7131d6f83da04c6cff468523e3831d3307` |
| 16 | `theorem` | [keys_inner](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/keys-inner--7c96fd9b26f18bd57a18bc8a.md) | 138 | `result-track:7c96fd9b26f18bd57a18bc8a0dd0585c792ff7d6b5d4786568119ebee776f401` |
| 17 | `theorem` | [toList_keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/tolist-keysiter--048c500a7041a9aa05860889.md) | 145 | `result-track:048c500a7041a9aa05860889a8aaa531ff240f2c56d1b5f17238fc4794275bb9` |
| 18 | `theorem` | [toListRev_keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/tolistrev-keysiter--43ccd007a6274bb0b9e9d30e.md) | 150 | `result-track:43ccd007a6274bb0b9e9d30e96965af6c9bbc5b3c5e9f5473abb745d9a322ab3` |
| 19 | `theorem` | [toArray_keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/toarray-keysiter--2687c82a4c4230f35f019479.md) | 155 | `result-track:2687c82a4c4230f35f0194799fe47694730bea9296647d455c7d6baaf2b351b8` |
| 20 | `theorem` | [toList_valuesIter_eq_toList_map_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/tolist-valuesiter-eq-tolist-map-snd--34eb72b035408f22cad5ca23.md) | 166 | `result-track:34eb72b035408f22cad5ca232d863d132c3d3c04efa70df65015ecf795cb744d` |
| 21 | `theorem` | [toListRev_valuesIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/tolistrev-valuesiter--02a0e9370bdfe49f762fb409.md) | 171 | `result-track:02a0e9370bdfe49f762fb4098ce7d125663d0602e6946b8ffd3d2143e3c6c7dd` |
| 22 | `theorem` | [toArray_valuesIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3.lean/declarations/toarray-valuesiter--2a8a4c4f46164d26f03e5f94.md) | 176 | `result-track:2a8a4c4f46164d26f03e5f9455c1fe839844305066cb13a5a774bd73a0635384` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
