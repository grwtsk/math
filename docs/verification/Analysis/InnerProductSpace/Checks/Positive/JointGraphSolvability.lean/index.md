# Verification target: GRWTSK.Analysis.InnerProductSpace.Checks.Positive.JointGraphSolvability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54c456d2b4efd484a7a7836c9858f0a07513babe",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54c456d2b4efd484a7a7836c9858f0a07513babe`.

Source path: `GRWTSK/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability`](../../../../../../mathematics/Analysis/InnerProductSpace/JointGraphSolvability.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean/declarations/example--7b1365c3153f67c4c3afbce3.md) | 23 | `declaration-track:7b1365c3153f67c4c3afbce3b3539fc784754faac39967c02fc02e8beb032a0b` |
| 2 | `def` | [identityOp](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean/declarations/identityop--71492de7e7bb4f5a0589b9f5.md) | 34 | `declaration-track:71492de7e7bb4f5a0589b9f52bcbd380763299ce367a20ea36e61fb59f6e3db5` |
| 3 | `theorem` | [identity_dense](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean/declarations/identity-dense--729414a43080ddb19f8af3e7.md) | 37 | `result-track:729414a43080ddb19f8af3e70249f2ce4c74b2a05cc94c3aa3f13deda80f16d4` |
| 4 | `theorem` | [identity_closed](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean/declarations/identity-closed--b8fcb2545d1b81d04016fca3.md) | 41 | `result-track:b8fcb2545d1b81d04016fca3d7b519de16fe93ae4a1aee23407a94f1eaf37fac` |
| 5 | `theorem` | [zero_closed](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean/declarations/zero-closed--84eae3bde9bfdf9145236dc9.md) | 55 | `result-track:84eae3bde9bfdf9145236dc99c03fc0b4df9f3a10e7f656eaa93dc3dfac7076e` |
| 6 | `theorem` | [identity_adjoint_apply](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean/declarations/identity-adjoint-apply--9dafe93ec6a884c62cf4fd04.md) | 69 | `result-track:9dafe93ec6a884c62cf4fd04400e264c3416ddf6e2575ed1d78b62b36cb86162` |
| 7 | `theorem` | [identity_zero_complex](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean/declarations/identity-zero-complex--74b810408552a7841df0841d.md) | 75 | `result-track:74b810408552a7841df0841de83e925e1afd05c1fc40e1bdcd5e02c0919f9877` |
| 8 | `theorem` | [identity_core_estimate](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean/declarations/identity-core-estimate--fd2fc0e57d1345bcedf65940.md) | 80 | `result-track:fd2fc0e57d1345bcedf65940644c7e98ae4b276294baaf1188612e1e95af81c1` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean/declarations/example--b9343c27c97d023a744821b9.md) | 91 | `declaration-track:b9343c27c97d023a744821b932713a417f631bbcce8b13e4c4ca072d29257808` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
