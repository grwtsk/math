# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Queue.Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad3d9ab2b69b458b0cea24d85535249f059379b5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad3d9ab2b69b458b0cea24d85535249f059379b5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean.json)

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
| 1 | `structure` | [Queue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean/declarations/queue--acf0c74488cd197896d02cfe.md) | 23 | `declaration-track:acf0c74488cd197896d02cfe1603c9503f22500769fe9014fcfa00179b25b01f` |
| 2 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean/declarations/empty--7da72ac676bc0c584a8d37a8.md) | 36 | `declaration-track:7da72ac676bc0c584a8d37a82c5b193e505db814b42b9a82a6b858624ff3ab65` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean/declarations/instance--9a29fabab4900b13982c1b35.md) | 38 | `declaration-track:9a29fabab4900b13982c1b352992d19d8cf47ccdb3be39a42e9c20f3b0fc44ec` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean/declarations/instance--0be2fbfc17e387e2245d3160.md) | 39 | `declaration-track:0be2fbfc17e387e2245d3160621c2c7248c347b96c4b0062fe2f3f0bb5355534` |
| 5 | `def` | [isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean/declarations/isempty--856618fbd32ef52cb19ee4a9.md) | 42 | `declaration-track:856618fbd32ef52cb19ee4a9aef59449f5f633fe439406ea8e63361a92ba41f1` |
| 6 | `def` | [enqueue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean/declarations/enqueue--5861c70b76f6d88deb861b33.md) | 46 | `declaration-track:5861c70b76f6d88deb861b33b50ff615d4c46f617de09046d45a734714ffe98d` |
| 7 | `def` | [enqueueAll](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean/declarations/enqueueall--3890527d36d3c7300d655d32.md) | 50 | `declaration-track:3890527d36d3c7300d655d326ea2496b6f830ab2eb471a394e7e897813a69099` |
| 8 | `def` | [dequeue?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean/declarations/dequeue--d522261907d6f59cacb321d1.md) | 57 | `declaration-track:d522261907d6f59cacb321d16f8d9c2a44a34e4ca5335df7af591c9ef9b94cf6` |
| 9 | `def` | [toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean/declarations/toarray--30124dd73173870a32be4856.md) | 65 | `declaration-track:30124dd73173870a32be4856e0dc9626acd90ae85bb5657426e5cbe1bd659e40` |
| 10 | `def` | [filterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Queue/Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78.lean/declarations/filterm--c8cb8217eeebe835622cff30.md) | 74 | `declaration-track:c8cb8217eeebe835622cff300f6d3a36589fb5dd82de7f5bdb4e1fe19d40179a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
