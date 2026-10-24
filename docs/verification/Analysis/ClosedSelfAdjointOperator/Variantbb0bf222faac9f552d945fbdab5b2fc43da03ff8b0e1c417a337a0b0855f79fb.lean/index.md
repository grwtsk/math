# Verification target: GRWTSK.Analysis.ClosedSelfAdjointOperator.Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7234174cfbd3401b914f3a2abac20eb7a9da1f5e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean/index.md) · [Full source](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7234174cfbd3401b914f3a2abac20eb7a9da1f5e`.

Source path: `GRWTSK/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClosedSelfAdjointOperator](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean/declarations/closedselfadjointoperator--e9b0db2a3d049a1aa678f87b.md) | 38 | `declaration-track:e9b0db2a3d049a1aa678f87b8ee3f6cb08eb23ed2315a24f99ba1294d28d3fec` |
| 2 | `theorem` | [dense_domain](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean/declarations/dense-domain--721e04b1370952db04acaba4.md) | 50 | `result-track:721e04b1370952db04acaba4c37119b6d774320980a02b8585846013863a009e` |
| 3 | `theorem` | [isClosed](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean/declarations/isclosed--d59f0356d8a74327c2c1d348.md) | 56 | `result-track:d59f0356d8a74327c2c1d3482fa2d8de9d1cc2eefcc920a8738e71d5f4e393d0` |
| 4 | `def` | [eigenspace](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean/declarations/eigenspace--f953db606eafe54e3f573424.md) | 62 | `declaration-track:f953db606eafe54e3f573424d33315e848de5b84cd5df519d4fb4af3ea552dec` |
| 5 | `structure` | [ResolventAt](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean/declarations/resolventat--bd2fbff8a6cf9a1763ead3f6.md) | 70 | `declaration-track:bd2fbff8a6cf9a1763ead3f6e4b3002ebce42a20e8e002106f46b48ee16e13d2` |
| 6 | `def` | [HasCompactResolvent](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean/declarations/hascompactresolvent--8f3bc57f7f5a2d1dd1a56465.md) | 80 | `declaration-track:8f3bc57f7f5a2d1dd1a56465006b8b584e42e5b842a6b1623dc5ac822f94ab01` |
| 7 | `def` | [cayleyCandidate](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean/declarations/cayleycandidate--f51df0844e8f3fd6aa189f7f.md) | 89 | `declaration-track:f51df0844e8f3fd6aa189f7f5bc3bd06cae42a449f09298e78b4645a20091b7e` |
| 8 | `theorem` | [cayleyCandidate_apply](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean/declarations/cayleycandidate-apply--cc3c17fbc9a1c352a78cdc25.md) | 94 | `result-track:cc3c17fbc9a1c352a78cdc251a43117cddc764054b3bd10236ac1eb053e83eac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
