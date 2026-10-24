# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Parallel.Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3660e0c742bd7132dcdcee493defe81142a60b4a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3660e0c742bd7132dcdcee493defe81142a60b4a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.WSeq.Relation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parallel.aux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/declarations/parallel-aux2--cd8a5c45d14ce5bf080e9e53.md) | 26 | `declaration-track:cd8a5c45d14ce5bf080e9e53bf2bc0ec0c6e2e7170efab7475b3178e46d58552` |
| 2 | `def` | [parallel.aux1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/declarations/parallel-aux1--683f515c26196a37433a075c.md) | 34 | `declaration-track:683f515c26196a37433a075c0aadaffe2a88b1bb3520fb6bb07cad8008549fd0` |
| 3 | `def` | [parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/declarations/parallel--4affc770cc937fd5917ccace.md) | 48 | `declaration-track:4affc770cc937fd5917ccace7eb3dd561a44063546992e0796d6bf2ca98d8d00` |
| 4 | `theorem` | [terminates_parallel.aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/declarations/terminates-parallel-aux--55a6d6e027b9c35266be5fb0.md) | 51 | `result-track:55a6d6e027b9c35266be5fb0ef014970b1904497780238ace56dcb0414a8e17e` |
| 5 | `theorem` | [terminates_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/declarations/terminates-parallel--8d5a7d85c46b3983d6cb8c18.md) | 117 | `result-track:8d5a7d85c46b3983d6cb8c180e7e7f18c35521cf082c4e9127961f14b74f7096` |
| 6 | `theorem` | [exists_of_mem_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/declarations/exists-of-mem-parallel--7180fda496950f0833ae782e.md) | 179 | `result-track:7180fda496950f0833ae782eda8c6ed75d2533fdd858303c9f6082deb38bee04` |
| 7 | `theorem` | [map_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/declarations/map-parallel--f96710990b0e90d157c1014f.md) | 257 | `result-track:f96710990b0e90d157c1014f40571cba9c68dd7aba466fe01d5ee5f81513e67b` |
| 8 | `theorem` | [parallel_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/declarations/parallel-empty--5f2d83b37930cdcb9dca7d19.md) | 286 | `result-track:5f2d83b37930cdcb9dca7d198fdb649b27ef9e9c2a2c13b5651233e66a3a4d93` |
| 9 | `def` | [parallelRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/declarations/parallelrec--c2253bbb1865c685bd22511d.md) | 295 | `declaration-track:c2253bbb1865c685bd22511d882a0d2016112f1e5123d993ee4846d3181c8ae5` |
| 10 | `theorem` | [parallel_promises](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/declarations/parallel-promises--91c19c8cf8900161330a643e.md) | 328 | `result-track:91c19c8cf8900161330a643e9448c2b5938d21add4893121af68c84a8e2499eb` |
| 11 | `theorem` | [mem_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/declarations/mem-parallel--4a3cce68f3e1e44e7ded8374.md) | 333 | `result-track:4a3cce68f3e1e44e7ded837473d15274470e937db928a1ef1d97a2e62851bf6c` |
| 12 | `theorem` | [parallel_congr_lem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/declarations/parallel-congr-lem--133285de10ba6f6f813094d6.md) | 339 | `result-track:133285de10ba6f6f813094d66ba9f87986211ca3392e6607134a70e93e889e7c` |
| 13 | `theorem` | [parallel_congr_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/declarations/parallel-congr-left--3be9fbac567faddd4ad49f53.md) | 349 | `result-track:3be9fbac567faddd4ad49f53c5a292354220fdf4c5b9b320f9328ea279377b66` |
| 14 | `theorem` | [parallel_congr_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/declarations/parallel-congr-right--ef1c0b6df1b41e0ec1987de7.md) | 372 | `result-track:ef1c0b6df1b41e0ec1987de7c778ad3acec3c361aa6d1546cc8e7de48eb992cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
