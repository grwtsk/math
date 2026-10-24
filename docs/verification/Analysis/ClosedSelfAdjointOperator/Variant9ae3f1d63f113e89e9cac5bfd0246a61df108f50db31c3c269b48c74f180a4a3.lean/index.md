# Verification target: GRWTSK.Analysis.ClosedSelfAdjointOperator.Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b58eb4b6396c1cc499eaa24df6be77b3cb75d69",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean/index.md) · [Full source](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b58eb4b6396c1cc499eaa24df6be77b3cb75d69`.

Source path: `GRWTSK/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean.json)

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
| 1 | `structure` | [ClosedSelfAdjointOperator](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean/declarations/closedselfadjointoperator--f03c6d5092dd763d300f172e.md) | 30 | `declaration-track:f03c6d5092dd763d300f172e8c4687e15267a5a8bdff4dc4a4c580c8eaa7dc78` |
| 2 | `theorem` | [dense_domain](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean/declarations/dense-domain--0fca1fe6e780f35186047e0d.md) | 42 | `result-track:0fca1fe6e780f35186047e0d366c40922cb6fee84f776e816d6d374dcd95ee61` |
| 3 | `theorem` | [isClosed](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean/declarations/isclosed--2de7d7139741f900aa67a8ef.md) | 48 | `result-track:2de7d7139741f900aa67a8ef26cc93863677e4db870ee11c10e144287a10c820` |
| 4 | `def` | [eigenspace](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean/declarations/eigenspace--60f9291125c4ad3b4f7ada1b.md) | 54 | `declaration-track:60f9291125c4ad3b4f7ada1bb7d9a7c3a8b509f3dccd6a6fc2824a2aeddb2172` |
| 5 | `structure` | [ResolventAt](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean/declarations/resolventat--380a48a048797394efb01c52.md) | 62 | `declaration-track:380a48a048797394efb01c526e9ecff381f391e6a662a76c3e215a1255f7a6f5` |
| 6 | `def` | [HasCompactResolvent](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean/declarations/hascompactresolvent--6127c2d34400bbab948d0a04.md) | 72 | `declaration-track:6127c2d34400bbab948d0a045012056e82d359d55e0cf03ec1df32c83271c358` |
| 7 | `def` | [cayleyCandidate](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean/declarations/cayleycandidate--e5f9271e974699ed71c6f5c5.md) | 81 | `declaration-track:e5f9271e974699ed71c6f5c5a9e6f92a9dc15703adc2b17e6b07cf453c5b2d57` |
| 8 | `theorem` | [cayleyCandidate_apply](../../../../mathematics/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean/declarations/cayleycandidate-apply--08f5b7af228aaaf7c17e6568.md) | 86 | `result-track:08f5b7af228aaaf7c17e65680a83299023203753c2b985978b3e2e6c17cb8a7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
