# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Parallel.Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f4e626e79e7c178de53f14ea3aca1673b7add92",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f4e626e79e7c178de53f14ea3aca1673b7add92`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.WSeq.Relation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parallel.aux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/declarations/parallel-aux2--256f0a5d471d9ac3c01576d5.md) | 34 | `declaration-track:256f0a5d471d9ac3c01576d5df096937139f2fa580993c51b6aa253243f18962` |
| 2 | `def` | [parallel.aux1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/declarations/parallel-aux1--ad032be8856fc717acfed543.md) | 42 | `declaration-track:ad032be8856fc717acfed543a655765210b015bf4837d8f9cd25bde83b5e1098` |
| 3 | `def` | [parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/declarations/parallel--d22f1a6ddbb2a83238a65fb0.md) | 56 | `declaration-track:d22f1a6ddbb2a83238a65fb07a6f4aabb7df6e5ae97dc06dea25b89668ada464` |
| 4 | `theorem` | [terminates_parallel.aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/declarations/terminates-parallel-aux--0c846dc2cbefb9e288049dec.md) | 59 | `result-track:0c846dc2cbefb9e288049decc36101b7aa23568920a059ed5b8d64100f5b4be5` |
| 5 | `theorem` | [terminates_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/declarations/terminates-parallel--6c635828503d96d6326b8530.md) | 125 | `result-track:6c635828503d96d6326b8530ef842b55e370fb5e1e1013c0f3c353cece962bb6` |
| 6 | `theorem` | [exists_of_mem_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/declarations/exists-of-mem-parallel--0bd24a91c74a7f4d2c7a0e5b.md) | 187 | `result-track:0bd24a91c74a7f4d2c7a0e5b6b8b696fa106dbfde5948841440af5f728949c45` |
| 7 | `theorem` | [map_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/declarations/map-parallel--be6568d84bfcb1afef1000db.md) | 265 | `result-track:be6568d84bfcb1afef1000db571e1b21728b833fb6fbe7d3958509caa70beb5f` |
| 8 | `theorem` | [parallel_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/declarations/parallel-empty--375084a5ad50bd3e1e859f0c.md) | 294 | `result-track:375084a5ad50bd3e1e859f0c9ae6b414ef33305568ca826c23961b205bb36935` |
| 9 | `def` | [parallelRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/declarations/parallelrec--ed88cb00a2339582b08896d3.md) | 303 | `declaration-track:ed88cb00a2339582b08896d349d322f2e0d26d11a2fb97cb6f7347b2321d5d21` |
| 10 | `theorem` | [parallel_promises](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/declarations/parallel-promises--bb7032e17eca28fcf5b3048d.md) | 336 | `result-track:bb7032e17eca28fcf5b3048d6ae7b7996eef653141c52115d06fc5abfba41319` |
| 11 | `theorem` | [mem_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/declarations/mem-parallel--b57df9ecee8d158b974643a0.md) | 341 | `result-track:b57df9ecee8d158b974643a096fdb676fb5393574c69aecf4eebed54f819d66b` |
| 12 | `theorem` | [parallel_congr_lem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/declarations/parallel-congr-lem--1c2b1c1bc9bf086f4d517c5d.md) | 347 | `result-track:1c2b1c1bc9bf086f4d517c5dcf1fc2c7ebf2b031350f85f0e7e1c1e21bfbf2ae` |
| 13 | `theorem` | [parallel_congr_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/declarations/parallel-congr-left--f9ab1a3010bfdcdfddf39e4d.md) | 357 | `result-track:f9ab1a3010bfdcdfddf39e4db35a12a9769bc7269038954454d774c783024403` |
| 14 | `theorem` | [parallel_congr_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/declarations/parallel-congr-right--78cd0b7eee4e39e7daaa756a.md) | 380 | `result-track:78cd0b7eee4e39e7daaa756a406d0163ae4abc1bcea7939507de707593244382` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
