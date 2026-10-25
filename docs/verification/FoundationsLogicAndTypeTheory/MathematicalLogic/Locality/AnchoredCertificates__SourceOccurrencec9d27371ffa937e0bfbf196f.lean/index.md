# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Locality.AnchoredCertificates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac9e8d0a1a4e7efd220974cc461607c9a4ca4b36",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac9e8d0a1a4e7efd220974cc461607c9a4ca4b36`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Locality.FiniteRuleTransport`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReplayCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/replaycertificate--67492dd7956c42a2b24a474a.md) | 25 | `declaration-track:67492dd7956c42a2b24a474a4a41a48c2472edc050b85b7c8a93c5f6ec640585` |
| 2 | `def` | [ReplayCertificate.Fresh](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/replaycertificate-fresh--2923999941a438829f160b61.md) | 37 | `declaration-track:2923999941a438829f160b61feb372deb9ab8b59d101902d0ef9a27bed034463` |
| 3 | `def` | [ReplayCertificate.Accepted](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/replaycertificate-accepted--21301676d8330623a1f94f94.md) | 41 | `declaration-track:21301676d8330623a1f94f94aa9bef400adc64cdff11fca93305c799566920be` |
| 4 | `theorem` | [ReplayCertificate.current_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/replaycertificate-current-target--42818ca664448b400f0beefa.md) | 45 | `result-track:42818ca664448b400f0beefa8d9c967d0db9fa4bf789614ef2be75230a691729` |
| 5 | `theorem` | [ReplayCertificate.accepted_iff_fresh](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/replaycertificate-accepted-iff-fresh--5217dac05ef0ea6f23d37f1f.md) | 50 | `result-track:5217dac05ef0ea6f23d37f1f401ab4fe98813b0b5451f964e1a42d09b9ddd03a` |
| 6 | `theorem` | [ReplayCertificate.recorded_accepted](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/replaycertificate-recorded-accepted--efeca2c2673d3a149a351afd.md) | 56 | `result-track:efeca2c2673d3a149a351afdb49beb62ad2f40c4cb6bf692e52704f7ceaf7f1b` |
| 7 | `theorem` | [ReplayCertificate.stale_read_rejects](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/replaycertificate-stale-read-rejects--9202fc58555d632c3573d04e.md) | 62 | `result-track:9202fc58555d632c3573d04e3131b0c3b6b575d0b28a17d77fe6e8479a1109c9` |
| 8 | `theorem` | [ReplayCertificate.to_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/replaycertificate-to-terminal--65f9718f806f8593c0c74f2a.md) | 72 | `result-track:65f9718f806f8593c0c74f2affd0dea6fb3f980d2532817ec273aed6d08f5fad` |
| 9 | `def` | [ofGlobal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/ofglobal--42d068ea4792f1bd0ad4bb7d.md) | 78 | `declaration-track:42d068ea4792f1bd0ad4bb7d1d4712d0da2de960393f0c229413694844730e86` |
| 10 | `theorem` | [ofGlobal_recorded](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/ofglobal-recorded--014d0b3b553a123f00853a5c.md) | 86 | `result-track:014d0b3b553a123f00853a5c0fc5439c07b8ae533fd3e394ef6e154b72cd6a90` |
| 11 | `theorem` | [ofGlobal_reads](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/ofglobal-reads--66306e72c753300e742e3fbe.md) | 90 | `result-track:66306e72c753300e742e3fbecf6d358fc3e85330f7180fbcf92a4291524efa95` |
| 12 | `def` | [ofGrounded](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/ofgrounded--63a4e553bb75253d4f41a09e.md) | 103 | `declaration-track:63a4e553bb75253d4f41a09e40d98a38ba6b6f49e4ce0b6688ea03f87b82bfda` |
| 13 | `theorem` | [ofGrounded_recorded](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/ofgrounded-recorded--7a47a8368bcc018ba01fce7a.md) | 119 | `result-track:7a47a8368bcc018ba01fce7a10459ef06e3adc98c30b4432d7fa980cdbd15430` |
| 14 | `theorem` | [ofGrounded_reads](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/ofgrounded-reads--8c0612a974505f9f2fa7cdf1.md) | 129 | `result-track:8c0612a974505f9f2fa7cdf19de8f86ed5a6322d64efc51fff1c6ba9854f698f` |
| 15 | `def` | [replayQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/replayq--0a865ac0b3397c86ffefee3d.md) | 147 | `declaration-track:0a865ac0b3397c86ffefee3de75863cd6a2e012b98fbcd75fa5206f3866e789b` |
| 16 | `theorem` | [replayQ_reads](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/replayq-reads--b6d1b65640e126bf6a70f092.md) | 150 | `result-track:b6d1b65640e126bf6a70f0922efcad25c765abb07edcc68d123d7b6e2d8003ef` |
| 17 | `theorem` | [replayQ_accepted](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/replayq-accepted--206ca39f767edaa38038cd45.md) | 152 | `result-track:206ca39f767edaa38038cd45121867ef68905d8995caa69b3d92afade29764d8` |
| 18 | `theorem` | [replayQ_has_no_global_certificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencec9d27371ffa937e0bfbf196f.lean/declarations/replayq-has-no-global-certificate--9937cff8989b3404d45541ba.md) | 155 | `result-track:9937cff8989b3404d45541bae39c1987ac55af767d1f7b7d041a0c40d39f895f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
