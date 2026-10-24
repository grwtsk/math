# Verification target: GRWTSK.Interfaces.PortFiberMetricAdjoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7548c3d5c98e587e29e5d65bb0372bf71c0fdd6f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberMetricAdjoint.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7548c3d5c98e587e29e5d65bb0372bf71c0fdd6f`.

Source path: `GRWTSK/Interfaces/PortFiberMetricAdjoint.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberMetricAdjoint.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberGaugeTransport`](../../../../mathematics/Analysis/OperatorTheory/PortFiberGaugeTransport.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicLineAdjoint`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AddedIndex](../../../../mathematics/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/declarations/addedindex--843740223fccb64406326f48.md) | 26 | `declaration-track:843740223fccb64406326f4851e424349e8b329a043ed30da4aeb58ecce07e73` |
| 2 | `def` | [AddedClaim](../../../../mathematics/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/declarations/addedclaim--ede91e38a3b998ad958d7476.md) | 38 | `declaration-track:ede91e38a3b998ad958d7476ccbb4e072b567dad153f2c0d105b4981532f4f80` |
| 3 | `theorem` | [addedClaim_proof](../../../../mathematics/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/declarations/addedclaim-proof--9f6873f8fb856c0882b7a548.md) | 83 | `result-track:9f6873f8fb856c0882b7a548a84cd0f50ceccb880c814ea99ec89364db5b496d` |
| 4 | `def` | [portfolio](../../../../mathematics/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/declarations/portfolio--fefe620a09d5a3e35b281d55.md) | 113 | `declaration-track:fefe620a09d5a3e35b281d553b481df6bee50f6b9bc5f052b8bf0e058eb9ff30` |
| 5 | `def` | [architecture](../../../../mathematics/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/declarations/architecture--dc43fb2d2d79aeba629bcfb2.md) | 116 | `declaration-track:dc43fb2d2d79aeba629bcfb2cecf30c0999dcd4c706622705a136a5a61dc20ac` |
| 6 | `abbrev` | [PreviousIndex](../../../../mathematics/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/declarations/previousindex--ecba9055f0502cae93c63aec.md) | 120 | `declaration-track:ecba9055f0502cae93c63aec288e47b68424078198e95fc58d21b3cce83179b2` |
| 7 | `theorem` | [original_branch_unchanged](../../../../mathematics/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/declarations/original-branch-unchanged--fe40397a0cd7899155d3666e.md) | 124 | `result-track:fe40397a0cd7899155d3666e3ff9a35bfa9fc509d13349196947aab855834201` |
| 8 | `theorem` | [new_branch_proved](../../../../mathematics/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/declarations/new-branch-proved--ae1a38b30ffcaee4b343f5f8.md) | 130 | `result-track:ae1a38b30ffcaee4b343f5f8996a7b49f7aea9c8acea351cc2bd8f05c64dad2e` |
| 9 | `theorem` | [target_unchanged](../../../../mathematics/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/declarations/target-unchanged--d742a8206f735fb3b75ec1b8.md) | 135 | `result-track:d742a8206f735fb3b75ec1b8fe0ecb521f3e506d8fc58c7936fb5722d1e86ca8` |
| 10 | `theorem` | [retarget_preserves_new](../../../../mathematics/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/declarations/retarget-preserves-new--a3c68d98120eeacd7f6ab68d.md) | 140 | `result-track:a3c68d98120eeacd7f6ab68de95c753542839e315e4e997e6fd5f320b76f6727` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
