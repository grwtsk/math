# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IteratorLemmas.Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4db5631e5e44fd77b96f5ed59723733e1b2c8b2d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4db5631e5e44fd77b96f5ed59723733e1b2c8b2d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Combinators` — import line 9; external provider; requires a separately pinned dependency.
- `Std.Data.DHashMap.IteratorLemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Data.HashMap.RawLemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Data.HashMap.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toList_inner](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/tolist-inner--44a98b1840e04fe3517838ab.md) | 25 | `result-track:44a98b1840e04fe3517838ab631c7082a9a05a533142fb058fe1d867fc2cdb89` |
| 2 | `theorem` | [toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/tolist-iter--ef92264bc38ea51a74ab4740.md) | 31 | `result-track:ef92264bc38ea51a74ab4740072686f2e748c2d2f8c0682b8d68758126be4fdf` |
| 3 | `theorem` | [toListRev_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/tolistrev-iter--cae7ce81ffdfbf53285e7140.md) | 37 | `result-track:cae7ce81ffdfbf53285e7140a5c7c697209583c7c1678d94b534f64fb7326b87` |
| 4 | `theorem` | [toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/toarray-iter--2d087d80456debcab12d4aef.md) | 42 | `result-track:2d087d80456debcab12d4aef0990ea88a424264da9d9ed1d27780e96cc791188` |
| 5 | `theorem` | [keys_inner](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/keys-inner--fa0321fb1e66fe165f124041.md) | 52 | `result-track:fa0321fb1e66fe165f1240411c0af74b552e40820fc8b8c7a8689de7d5d8e787` |
| 6 | `theorem` | [toList_keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/tolist-keysiter--4091302aa96d0b96f60f94cb.md) | 57 | `result-track:4091302aa96d0b96f60f94cbd3614f12ab953338187443df05729bac09ffa288` |
| 7 | `theorem` | [toListRev_keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/tolistrev-keysiter--4842dc30e962b2daba135741.md) | 63 | `result-track:4842dc30e962b2daba1357417fe23ba71abdc8cb7b491382965a54d18cae3236` |
| 8 | `theorem` | [toArray_keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/toarray-keysiter--7b4365b0164296bed499f749.md) | 68 | `result-track:7b4365b0164296bed499f74932b1f2c85bab507f66336df5ac02da8e02a2b65c` |
| 9 | `theorem` | [toList_valuesIter_eq_toList_map_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/tolist-valuesiter-eq-tolist-map-snd--74e8cfeb0adde69b0d6002be.md) | 79 | `result-track:74e8cfeb0adde69b0d6002be0ae8e2ef99895d8ec4fd6324de57a6b81565c164` |
| 10 | `theorem` | [toListRev_valuesIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/tolistrev-valuesiter--339bb0920b88758bf647339e.md) | 86 | `result-track:339bb0920b88758bf647339e2589c92a6ebace9cc525208effb687a05a3f309c` |
| 11 | `theorem` | [toArray_valuesIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/toarray-valuesiter--919c019cfd79321688fa2fc9.md) | 91 | `result-track:919c019cfd79321688fa2fc94549e1f1949578ad2bc66b559619418256f480d1` |
| 12 | `theorem` | [toList_inner](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/tolist-inner--47919ea667a22e5a30951c8f.md) | 106 | `result-track:47919ea667a22e5a30951c8f1c9db64c20b06f1323332793ef82a24c815f7900` |
| 13 | `theorem` | [toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/tolist-iter--b212990a97bb04e279ad6b41.md) | 112 | `result-track:b212990a97bb04e279ad6b41f9c0957ba02a5f3f369e97eba3a5142731733c20` |
| 14 | `theorem` | [toListRev_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/tolistrev-iter--b445a48214c4385d41db085b.md) | 117 | `result-track:b445a48214c4385d41db085b80d84f3bbad62020cf7051e0cd151bf52a74fa1c` |
| 15 | `theorem` | [toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/toarray-iter--0ca415ac6788c2674bb94148.md) | 122 | `result-track:0ca415ac6788c2674bb941483e0547dbec77772763fdbb8cd0f32d186ad3eb5a` |
| 16 | `theorem` | [keys_inner](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/keys-inner--c89f69cc3826930e78093ec3.md) | 130 | `result-track:c89f69cc3826930e78093ec32051bce9cb3b0330ebf26e1dc9760cc7ab1c4c2a` |
| 17 | `theorem` | [toList_keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/tolist-keysiter--0dcf2c24d1ad370196e08cce.md) | 137 | `result-track:0dcf2c24d1ad370196e08cce61ee04bb437f1e914251ea1bbae9567396541e3e` |
| 18 | `theorem` | [toListRev_keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/tolistrev-keysiter--8215015e56ff75a5edfd7bfa.md) | 142 | `result-track:8215015e56ff75a5edfd7bfa3397e05fd41b7ee432c834fb54bbebc5d2e720ea` |
| 19 | `theorem` | [toArray_keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/toarray-keysiter--42f11b9e2e4a4fc709f415c6.md) | 147 | `result-track:42f11b9e2e4a4fc709f415c68cb97c6a0dc2edeb01693e2dc7e99a1e75387967` |
| 20 | `theorem` | [toList_valuesIter_eq_toList_map_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/tolist-valuesiter-eq-tolist-map-snd--96de37ad2df33c8f1bce44f0.md) | 158 | `result-track:96de37ad2df33c8f1bce44f04e6121efe86eada2ab355cda9f4db83228ff5e7f` |
| 21 | `theorem` | [toListRev_valuesIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/tolistrev-valuesiter--56fc62ed7b1d90facffef73e.md) | 163 | `result-track:56fc62ed7b1d90facffef73ee6df81579713afa7a96779b4fdcba14c0bb9baef` |
| 22 | `theorem` | [toArray_valuesIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687.lean/declarations/toarray-valuesiter--8c03225ba14e6ab1be53c82c.md) | 168 | `result-track:8c03225ba14e6ab1be53c82c9eea218624ea8889045a92564aba7aaae8e8500a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
