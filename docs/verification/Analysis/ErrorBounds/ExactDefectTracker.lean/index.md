# Verification target: GRWTSK.Analysis.ErrorBounds.ExactDefectTracker

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0d36bc217ba98a7d5fe28afed6981d1236779f9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/ExactDefectTracker.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/ExactDefectTracker.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/ExactDefectTracker.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0d36bc217ba98a7d5fe28afed6981d1236779f9`.

Source path: `GRWTSK/Analysis/ErrorBounds/ExactDefectTracker.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/ExactDefectTracker.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.SourceResidualConvergence`](../../../../mathematics/Analysis/ErrorBounds/SourceResidualConvergence.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactDefectTracker](../../../../mathematics/Analysis/ErrorBounds/ExactDefectTracker.lean/declarations/exactdefecttracker--c8c9442096433391c009fc8d.md) | 13 | `declaration-track:c8c9442096433391c009fc8d879a719f2f7dc88d6abec97c0df3b09820734f9d` |
| 2 | `theorem` | [exactDefectTracker_initial](../../../../mathematics/Analysis/ErrorBounds/ExactDefectTracker.lean/declarations/exactdefecttracker-initial--e2669ee638840c37e89596ee.md) | 20 | `result-track:e2669ee638840c37e89596ee26e2aba4f34955790be35e4e22a7ee1355387f49` |
| 3 | `theorem` | [exactDefectTracker_step](../../../../mathematics/Analysis/ErrorBounds/ExactDefectTracker.lean/declarations/exactdefecttracker-step--525a60303e1a95a55c2e74f7.md) | 25 | `result-track:525a60303e1a95a55c2e74f73272571970ad1343da7ce6b89f600180fa03d592` |
| 4 | `theorem` | [exactDefectTracker_first_step](../../../../mathematics/Analysis/ErrorBounds/ExactDefectTracker.lean/declarations/exactdefecttracker-first-step--a5a146833c61c74b747800f0.md) | 32 | `result-track:a5a146833c61c74b747800f0e0f1d84ac7be828dfd8237955db2365b690a77aa` |
| 5 | `theorem` | [exactDefectTracker_net_forcing_zero](../../../../mathematics/Analysis/ErrorBounds/ExactDefectTracker.lean/declarations/exactdefecttracker-net-forcing-zero--d4ed22259290ffd5c3f6ed6c.md) | 41 | `result-track:d4ed22259290ffd5c3f6ed6c487713f44389401bcbd59c5a343c1617a2bad090` |
| 6 | `theorem` | [exactDefectTracker_residual_step](../../../../mathematics/Analysis/ErrorBounds/ExactDefectTracker.lean/declarations/exactdefecttracker-residual-step--b4a24fec5febc52d0c157656.md) | 50 | `result-track:b4a24fec5febc52d0c15765654cb6310d8e5f9ea0f1f977710ef08badfcaaad5` |
| 7 | `theorem` | [exactDefectTracker_residual_vanishes](../../../../mathematics/Analysis/ErrorBounds/ExactDefectTracker.lean/declarations/exactdefecttracker-residual-vanishes--a81a1cd43ec4af54868d907e.md) | 59 | `result-track:a81a1cd43ec4af54868d907e24adcaf6a6c0645e1cb50023d94590fdba79e495` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
