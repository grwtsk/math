# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.TransfiniteIteration.Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d467968f47a379d41f6f046177968449c576a2ec",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d467968f47a379d41f6f046177968449c576a2ec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.Limit` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transfiniteIterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean/declarations/transfiniteiterate--58e6c1e3dcaf274ef2ee1258.md) | 51 | `declaration-track:58e6c1e3dcaf274ef2ee125819adf06dcf2fc882ae1f3e38405e7ff66356ba38` |
| 2 | `lemma` | [transfiniteIterate_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean/declarations/transfiniteiterate-bot--24e821c775e5df5b268b029f.md) | 56 | `result-track:24e821c775e5df5b268b029f6106cf75f730599862db3eebc7654c5e9fdaa8be` |
| 3 | `lemma` | [transfiniteIterate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean/declarations/transfiniteiterate-succ--446bfd3e0c03d93ce8f5edc6.md) | 61 | `result-track:446bfd3e0c03d93ce8f5edc6354e9579600366130a197ac67be445b0c329f45c` |
| 4 | `lemma` | [transfiniteIterate_limit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean/declarations/transfiniteiterate-limit--84d7568b17767b3d8b21e4fd.md) | 68 | `result-track:84d7568b17767b3d8b21e4fd80ae44fc7acdb6893851830866168fca2ee2002e` |
| 5 | `lemma` | [monotone_transfiniteIterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean/declarations/monotone-transfiniteiterate--3f6c63732655baeafa281d1c.md) | 82 | `result-track:3f6c63732655baeafa281d1cb66902259fde291a471d8cb305e53c6ab0132b95` |
| 6 | `lemma` | [top_mem_range_transfiniteIterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean/declarations/top-mem-range-transfiniteiterate--566b43910dad7baa61ca4460.md) | 104 | `result-track:566b43910dad7baa61ca4460cbf27c15af5a896677b9a75b3955d9756ecb33fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
