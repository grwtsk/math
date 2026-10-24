# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Merge.Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50f4e5057262f09ba18aabcde85a7aed34ce0a29",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50f4e5057262f09ba18aabcde85a7aed34ce0a29`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean.json)

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
| 1 | `def` | [merge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean/declarations/merge--fe85ac38fb0a1c282bd8557b.md) | 16 | `declaration-track:fe85ac38fb0a1c282bd8557bdb22f6373f4e4bc2a09320021a08475b6a9142df` |
| 2 | `def` | [mergeDedupWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean/declarations/mergededupwith--249645a605f680e20a0daa19.md) | 39 | `declaration-track:249645a605f680e20a0daa1973afebfa1e579d6b2741c52d547e1c5a320787a8` |
| 3 | `def` | [mergeDedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean/declarations/mergededup--5789f05e421389fc968e2554.md) | 61 | `declaration-track:5789f05e421389fc968e25546538d20e8886f7a1e4d242f92be20a84261faf3d` |
| 4 | `def` | [mergeUnsortedDedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean/declarations/mergeunsorteddedup--a7bd53419640360a6a024715.md) | 70 | `declaration-track:a7bd53419640360a6a0247155fb7a79e697bd144613164af690e49c0cd16749b` |
| 5 | `def` | [mergeAdjacentDups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean/declarations/mergeadjacentdups--f1168226cf155374f92ee407.md) | 87 | `declaration-track:f1168226cf155374f92ee407cce38623fcf898149de34267871cc42b8a5789c6` |
| 6 | `def` | [dedupSorted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean/declarations/dedupsorted--9e14e8a6eba8cccfd449717b.md) | 103 | `declaration-track:9e14e8a6eba8cccfd449717b5eba8a35f0aa1d65bb894156cf6f7171762de186` |
| 7 | `def` | [sortDedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean/declarations/sortdedup--110ef073958cd698e3f0c012.md) | 107 | `declaration-track:110ef073958cd698e3f0c012153e419a347b31f926c2db25f14bea9856788549` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
