# Verification target: GRWTSK.NumberTheory.Moebius.FiniteAnchorLogObservation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb24e68f70587c052162b9737f72b2db5a844aea",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/FiniteAnchorLogObservation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/FiniteAnchorLogObservation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/FiniteAnchorLogObservation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb24e68f70587c052162b9737f72b2db5a844aea`.

Source path: `GRWTSK/NumberTheory/Moebius/FiniteAnchorLogObservation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/FiniteAnchorLogObservation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.AnchoredPairGreenCoefficientBridge`](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteAnchorLogObservation](../../../../mathematics/NumberTheory/Moebius/FiniteAnchorLogObservation.lean/declarations/finiteanchorlogobservation--bfa36783e39be34b4fd7bec7.md) | 15 | `declaration-track:bfa36783e39be34b4fd7bec773a32372c1df50c39c1daf437b5f0e1869b0fd48` |
| 2 | `theorem` | [finiteAnchorLogObservation_sub](../../../../mathematics/NumberTheory/Moebius/FiniteAnchorLogObservation.lean/declarations/finiteanchorlogobservation-sub--60ea6d96b3f8b627f941b1f5.md) | 19 | `result-track:60ea6d96b3f8b627f941b1f5a305c7e40b8dfbd5d96fe2acb7627eb76d7de761` |
| 3 | `theorem` | [finiteAnchorLogObservation_diagonal](../../../../mathematics/NumberTheory/Moebius/FiniteAnchorLogObservation.lean/declarations/finiteanchorlogobservation-diagonal--63293af6f4b1ba20f24b4f9b.md) | 28 | `result-track:63293af6f4b1ba20f24b4f9b07a5fd5f1570ed658c376f81aa6eeee5ab42a030` |
| 4 | `theorem` | [finiteAnchorLogObservation_kernel](../../../../mathematics/NumberTheory/Moebius/FiniteAnchorLogObservation.lean/declarations/finiteanchorlogobservation-kernel--bf13d83e524358f259b8bef2.md) | 58 | `result-track:bf13d83e524358f259b8bef2b057e833127a2094da6f347a5f2e67665cbd1f2c` |
| 5 | `theorem` | [finiteAnchorLogObservation_injective](../../../../mathematics/NumberTheory/Moebius/FiniteAnchorLogObservation.lean/declarations/finiteanchorlogobservation-injective--4e90779c58b6dc29c6e0e24f.md) | 72 | `result-track:4e90779c58b6dc29c6e0e24f4463eab8174391bbe01f7098f35ee346d1221326` |
| 6 | `theorem` | [finiteAnchorLogObservation_moebius](../../../../mathematics/NumberTheory/Moebius/FiniteAnchorLogObservation.lean/declarations/finiteanchorlogobservation-moebius--757abfcfda6116dab166593c.md) | 83 | `result-track:757abfcfda6116dab166593c25fadf13e4c98639c3789e3835f9153d08f3a8c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
