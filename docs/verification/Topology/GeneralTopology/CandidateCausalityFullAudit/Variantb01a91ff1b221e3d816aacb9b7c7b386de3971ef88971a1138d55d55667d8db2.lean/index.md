# Verification target: GRWTSK.Topology.GeneralTopology.CandidateCausalityFullAudit.Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a40482344a47f8856e7be6f23641be5e5bc8ef2a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a40482344a47f8856e7be6f23641be5e5bc8ef2a`.

Source path: `GRWTSK/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CandidateLineBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.VerticalLine` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryInverse](../../../../../mathematics/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2.lean/declarations/boundaryinverse--00dd3ec0cf1727ff9f2af6a2.md) | 22 | `declaration-track:00dd3ec0cf1727ff9f2af6a229c702fa7a92eda6bb4d7b84d56d6be823352500` |
| 2 | `theorem` | [boundaryInverse_eq_zero_of_neg](../../../../../mathematics/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2.lean/declarations/boundaryinverse-eq-zero-of-neg--60182da34bb4a665c2d67c6a.md) | 27 | `result-track:60182da34bb4a665c2d67c6aef8360948f1b0effca186134f241821286b8932e` |
| 3 | `theorem` | [candidate_boundary_majorant](../../../../../mathematics/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2.lean/declarations/candidate-boundary-majorant--d96747ceb1ab75b6343b5b6a.md) | 71 | `result-track:d96747ceb1ab75b6343b5b6a721c62de67816abcd36803c873bbb0a565c032b9` |
| 4 | `theorem` | [candidate_boundaryInverse_eq_zero](../../../../../mathematics/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2.lean/declarations/candidate-boundaryinverse-eq-zero--b7932a1df97e28806cbf5bac.md) | 106 | `result-track:b7932a1df97e28806cbf5bac884c59bf9b2b16f4496e04c298abc1340cf872ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
