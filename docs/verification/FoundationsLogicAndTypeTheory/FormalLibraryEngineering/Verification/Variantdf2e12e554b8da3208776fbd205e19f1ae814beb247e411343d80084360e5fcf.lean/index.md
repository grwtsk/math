# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Verification.Variantdf2e12e554b8da3208776fbd205e19f1ae814beb247e411343d80084360e5fcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3af2094dc06261ac888bb6b996224fc64df2d1ad",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantdf2e12e554b8da3208776fbd205e19f1ae814beb247e411343d80084360e5fcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantdf2e12e554b8da3208776fbd205e19f1ae814beb247e411343d80084360e5fcf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantdf2e12e554b8da3208776fbd205e19f1ae814beb247e411343d80084360e5fcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3af2094dc06261ac888bb6b996224fc64df2d1ad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantdf2e12e554b8da3208776fbd205e19f1ae814beb247e411343d80084360e5fcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantdf2e12e554b8da3208776fbd205e19f1ae814beb247e411343d80084360e5fcf.lean.json)

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
| 1 | `structure` | [StatementPreservationEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantdf2e12e554b8da3208776fbd205e19f1ae814beb247e411343d80084360e5fcf.lean/declarations/statementpreservationevidence--f1f62227a1f5cc8c34d7d367.md) | 27 | `declaration-track:f1f62227a1f5cc8c34d7d367e988f7651146594f3a7b461dc4263088e711f2cf` |
| 2 | `def` | [StatementPreservationEvidence.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantdf2e12e554b8da3208776fbd205e19f1ae814beb247e411343d80084360e5fcf.lean/declarations/statementpreservationevidence-valid--ac57d9f4bb2289c9dd13f731.md) | 32 | `declaration-track:ac57d9f4bb2289c9dd13f731196c356a3812607dbc2ab1f1ec0150234cdceda1` |
| 3 | `def` | [verifyStatementPreservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantdf2e12e554b8da3208776fbd205e19f1ae814beb247e411343d80084360e5fcf.lean/declarations/verifystatementpreservation--47578dc1d0ef8be9181a36ab.md) | 36 | `declaration-track:47578dc1d0ef8be9181a36ab0bcca73c7a685efeef94166418e28d89f77d21bb` |
| 4 | `theorem` | [verifyStatementPreservation_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantdf2e12e554b8da3208776fbd205e19f1ae814beb247e411343d80084360e5fcf.lean/declarations/verifystatementpreservation-sound--c53d1bc9e5b0ba432d9abac7.md) | 41 | `result-track:c53d1bc9e5b0ba432d9abac78736722d9b2fbba81c31d4112a536e663230be32` |
| 5 | `theorem` | [KernelReceipt.matchesTask_preserves_statement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantdf2e12e554b8da3208776fbd205e19f1ae814beb247e411343d80084360e5fcf.lean/declarations/kernelreceipt-matchestask-preserves-statement--ad609149959422fc34ef6228.md) | 48 | `result-track:ad609149959422fc34ef622855a91f251e5941c1d5501bd87abdde29312f5157` |
| 6 | `theorem` | [CheckedTrial.statement_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantdf2e12e554b8da3208776fbd205e19f1ae814beb247e411343d80084360e5fcf.lean/declarations/checkedtrial-statement-preserved--0b2040520ba3cf9b1e735fad.md) | 57 | `result-track:0b2040520ba3cf9b1e735fadda4a8ba7ac442074a3613e62d5555727cb01d8c8` |
| 7 | `theorem` | [CheckedTrial.kernel_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantdf2e12e554b8da3208776fbd205e19f1ae814beb247e411343d80084360e5fcf.lean/declarations/checkedtrial-kernel-proof--454bd3ee351b6ae59c279e2f.md) | 63 | `result-track:454bd3ee351b6ae59c279e2fb79047a416942d808d04b3bd8fde4ec03b50a4ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
