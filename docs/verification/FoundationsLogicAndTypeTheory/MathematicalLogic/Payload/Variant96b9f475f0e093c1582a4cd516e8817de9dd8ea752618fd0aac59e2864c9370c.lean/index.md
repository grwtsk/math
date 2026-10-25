# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Payload.Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a886497441c94a4a19089b57ea82614347083db8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a886497441c94a4a19089b57ea82614347083db8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c.lean.json)

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
| 1 | `structure` | [PayloadDescriptor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c.lean/declarations/payloaddescriptor--cd9078d533363739f0f443e1.md) | 28 | `declaration-track:cd9078d533363739f0f443e13603602dbb9dc2c671bc02705f35ef882847a103` |
| 2 | `def` | [PayloadDescriptor.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c.lean/declarations/payloaddescriptor-valid--2e71cd6673855f9b93144468.md) | 38 | `declaration-track:2e71cd6673855f9b93144468bdd273d4bed59ba31d81b1c80e520ee0f4ee73b6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c.lean/declarations/instance--b216c24428ddd603466dded1.md) | 48 | `declaration-track:b216c24428ddd603466dded114aa4909eb29a06fb7ea7e303f937e8f6019d4cc` |
| 4 | `def` | [verifyPayloadDescriptor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c.lean/declarations/verifypayloaddescriptor--24c814e777f7b9154b710d26.md) | 52 | `declaration-track:24c814e777f7b9154b710d26b430f822b66b11cc2fdc1c581503a7da37869f80` |
| 5 | `theorem` | [verifyPayloadDescriptor_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c.lean/declarations/verifypayloaddescriptor-sound--350dd73d82fe259484bb3a90.md) | 57 | `result-track:350dd73d82fe259484bb3a90e0595711ba3fe0a736308b73b86bfc449e08b916` |
| 6 | `structure` | [PayloadCodec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c.lean/declarations/payloadcodec--692df54e56fa34c980544416.md) | 63 | `declaration-track:692df54e56fa34c980544416a3231e5ad16fd98bd31b1f9f41b75d1e77ccb0db` |
| 7 | `structure` | [PayloadSemantics](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c.lean/declarations/payloadsemantics--92f1fe12d94308a64f7d7400.md) | 70 | `declaration-track:92f1fe12d94308a64f7d7400cec2c47814d92bdef65707f073fda546682fd458` |
| 8 | `theorem` | [expectedUpdate_preserves_revision](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c.lean/declarations/expectedupdate-preserves-revision--98bd81ccae21388490056a87.md) | 80 | `result-track:98bd81ccae21388490056a87ae646282e596181f21ae205e80a19827f70e8db9` |
| 9 | `theorem` | [expectedUpdate_preserves_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variant96b9f475f0e093c1582a4cd516e8817de9dd8ea752618fd0aac59e2864c9370c.lean/declarations/expectedupdate-preserves-invariant--886924b4be0d98f05898d1ff.md) | 87 | `result-track:886924b4be0d98f05898d1ff4e335920ba5098d7dffa45b4b5c033eaa5e7cdce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
