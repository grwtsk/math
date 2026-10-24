# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Parallel.Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a003e07ea207b7df7e9e87ffb1c7c488d89ec382",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a003e07ea207b7df7e9e87ffb1c7c488d89ec382`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Seq.WSeq` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parallel.aux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/declarations/parallel-aux2--82825e888e8b656ced11d3b6.md) | 28 | `declaration-track:82825e888e8b656ced11d3b66e24acde5e4ebe742637c5bde00ebe36b971a615` |
| 2 | `def` | [parallel.aux1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/declarations/parallel-aux1--1f8932bbcb951f4a829c7b4a.md) | 37 | `declaration-track:1f8932bbcb951f4a829c7b4ade95bb12584584d9117b4b07679323deea4c1a5e` |
| 3 | `def` | [parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/declarations/parallel--8823e223d69de33edb9c6bf7.md) | 52 | `declaration-track:8823e223d69de33edb9c6bf704fd9621a349fb4f3f5461a22ba6895eb6e8209d` |
| 4 | `theorem` | [terminates_parallel.aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/declarations/terminates-parallel-aux--e4c6fb58fbf4658f07a4035c.md) | 56 | `result-track:e4c6fb58fbf4658f07a4035cf5d7c2860083df60cba9bf765583c99c60959805` |
| 5 | `theorem` | [terminates_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/declarations/terminates-parallel--88d0c96f5df7346bd932b2e8.md) | 129 | `result-track:88d0c96f5df7346bd932b2e83aa15b7befb6e7e1db2a28a2516926f464dcf293` |
| 6 | `theorem` | [exists_of_mem_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/declarations/exists-of-mem-parallel--ff858c359e4f7beec328491d.md) | 204 | `result-track:ff858c359e4f7beec328491d7f7b0832ea60ef3be649a35017e5cdfec9751405` |
| 7 | `theorem` | [map_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/declarations/map-parallel--84382628de7999cf976e7439.md) | 284 | `result-track:84382628de7999cf976e743983963c9b9b6cb875daa8f5c3fee55c6d25ef9538` |
| 8 | `theorem` | [parallel_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/declarations/parallel-empty--55975ce4573cc801dffa24d1.md) | 314 | `result-track:55975ce4573cc801dffa24d1c76a76cd9ba8d630930f009aa036c1b1d12bb3b3` |
| 9 | `def` | [parallelRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/declarations/parallelrec--49d786e49dc085004a008910.md) | 323 | `declaration-track:49d786e49dc085004a00891049b6fca5c7486ea4dcc8c1a24fee62bc78c82767` |
| 10 | `theorem` | [parallel_promises](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/declarations/parallel-promises--9c459ed6c4903867a3b6c25c.md) | 357 | `result-track:9c459ed6c4903867a3b6c25c4d910b193c1b55571a8c8c3475ef7d2d461e8910` |
| 11 | `theorem` | [mem_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/declarations/mem-parallel--2287ba19f0fb96d4d873ad4d.md) | 363 | `result-track:2287ba19f0fb96d4d873ad4d4e27f05685f0fd35e3e69373622617d51474150d` |
| 12 | `theorem` | [parallel_congr_lem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/declarations/parallel-congr-lem--30a9520168bf44f9734466c4.md) | 370 | `result-track:30a9520168bf44f9734466c41a88eea7968c0404760fd29e8421836be1e69d7f` |
| 13 | `theorem` | [parallel_congr_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/declarations/parallel-congr-left--ba0947ac93d4d90b5b52fdbc.md) | 381 | `result-track:ba0947ac93d4d90b5b52fdbcea898bdd9eb448af572bc102856c07445e136f31` |
| 14 | `theorem` | [parallel_congr_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/declarations/parallel-congr-right--e6147a4424e132a0990e99e0.md) | 405 | `result-track:e6147a4424e132a0990e99e065bce74f28802bf32f6db33b338f3661d2f5dced` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
