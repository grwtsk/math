# Verification target: GRWTSK.Combinatorics.DirectedEulerWalkCyclicIndex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a33c4d66b54a94b9c86c16b4e93b3bcbe7abe301",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedEulerWalkCyclicIndex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerWalkCyclicIndex.lean/index.md) · [Full source](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerWalkCyclicIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a33c4d66b54a94b9c86c16b4e93b3bcbe7abe301`.

Source path: `GRWTSK/Combinatorics/DirectedEulerWalkCyclicIndex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedEulerWalkCyclicIndex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedEulerSplicing`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tail_getElem_zero](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerWalkCyclicIndex.lean/declarations/tail-getelem-zero--f9f49184c8ebcadc04a43c68.md) | 17 | `result-track:f9f49184c8ebcadc04a43c68664c6a925c46f1958c00e83a08db198ea85f6285` |
| 2 | `theorem` | [endpoints_eq_of_length_zero](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerWalkCyclicIndex.lean/declarations/endpoints-eq-of-length-zero--4cfe2d00bc393b23b7b402ca.md) | 24 | `result-track:4cfe2d00bc393b23b7b402ca5223bee1b6d561117b4f8519b58dd9259adc6bbd` |
| 3 | `theorem` | [head_getElem_last](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerWalkCyclicIndex.lean/declarations/head-getelem-last--a58ea7f479d0d9479561d586.md) | 32 | `result-track:a58ea7f479d0d9479561d586a8531d77174ea12e76f15caa39411b1c2a067d9a` |
| 4 | `theorem` | [head_getElem_succ](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerWalkCyclicIndex.lean/declarations/head-getelem-succ--4eba639a324b0ce1f1e41312.md) | 54 | `result-track:4eba639a324b0ce1f1e41312eca5e2bdb33ec92d94a663471f4f0b139cdfe313` |
| 5 | `theorem` | [closed_get_cyclic](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerWalkCyclicIndex.lean/declarations/closed-get-cyclic--9d19b10d29be8f863f809369.md) | 75 | `result-track:9d19b10d29be8f863f8093699f333f1733553a03ada00c1d98fc0333dd457298` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
