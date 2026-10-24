# Verification target: GRWTSK.Combinatorics.Sequences.CyclicSumsetGrowth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d91298539e468bee096df87dea5a383af07b9940",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Sequences/CyclicSumsetGrowth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d91298539e468bee096df87dea5a383af07b9940`.

Source path: `GRWTSK/Combinatorics/Sequences/CyclicSumsetGrowth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Sequences/CyclicSumsetGrowth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Additive.CauchyDavenport` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iteratedSumset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/declarations/iteratedsumset--cf794ea351d8af1af4ae0386.md) | 23 | `declaration-track:cf794ea351d8af1af4ae03863778cace6251f67f66c82797f57aad0da6477524` |
| 2 | `theorem` | [iteratedSumset_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/declarations/iteratedsumset-zero--7a47e57b6d83820e1bd4d39c.md) | 27 | `result-track:7a47e57b6d83820e1bd4d39cfad42787a7233d56a28699c86ac4beb560742d12` |
| 3 | `theorem` | [iteratedSumset_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/declarations/iteratedsumset-succ--1234be59dbf1edbb01602ba9.md) | 29 | `result-track:1234be59dbf1edbb01602ba9a557729465746455d9e7322375d778957e08eecf` |
| 4 | `theorem` | [iteratedSumset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/declarations/iteratedsumset-nonempty--4eed0a7472d20f637090db0f.md) | 32 | `result-track:4eed0a7472d20f637090db0fb6dd93406ef79212741c8855bf9c8fe3e341d4ac` |
| 5 | `theorem` | [mem_iteratedSumset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/declarations/mem-iteratedsumset-iff--7f4bf239712aae3df4206bf6.md) | 42 | `result-track:7f4bf239712aae3df4206bf68da39563eeaa4151abf6ad3dd3a354c1c495b98e` |
| 6 | `theorem` | [prime_card_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/declarations/prime-card-lower-bound--67258428138ee68a4a26657f.md) | 78 | `result-track:67258428138ee68a4a26657fe697ecc685ba3fdb43e09cb3e3794e5316d9fabe` |
| 7 | `theorem` | [prime_card_lower_bound_of_ne_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/declarations/prime-card-lower-bound-of-ne-univ--450f8f919331663164154696.md) | 102 | `result-track:450f8f9193316631641546969a1dd55b6e48f92c381428474fc4aa594923dbcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
