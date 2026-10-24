# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorPairApproximation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c53533ebffe49a78e37a183c643361f37afb2ea",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c53533ebffe49a78e37a183c643361f37afb2ea`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticC1Approximation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorPairChannels`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [errorBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/errorbudget--874bf4b2056cf59e14f4bbb0.md) | 29 | `declaration-track:874bf4b2056cf59e14f4bbb0b0dde06920439e7e6b8080d6144dd7568449e3ca` |
| 2 | `def` | [Accepted](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/accepted--c9f9e3bb2368f0d7e4adfd50.md) | 32 | `declaration-track:c9f9e3bb2368f0d7e4adfd50e4191e6f7bce762348aa9c1c2dd9a57f850fd3fa` |
| 3 | `def` | [enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/enclosure--4ac8636c3c11b7601a1408cd.md) | 36 | `declaration-track:4ac8636c3c11b7601a1408cd317ca9b7d30279d6d8f86a4479c515396b755283` |
| 4 | `lemma` | [enclosure_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/enclosure-budget--9dc613f4f735e9363df5dfab.md) | 47 | `result-track:9dc613f4f735e9363df5dfab2df91bccd9a30dd566519a6d244ab37157a74971` |
| 5 | `theorem` | [channel_errors](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/channel-errors--8dac736af12be1ff6c3b6b20.md) | 54 | `result-track:8dac736af12be1ff6c3b6b2022bd2daf01b097d232f92f0d1c87401328bf1b91` |
| 6 | `theorem` | [cutoff64_channel_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/cutoff64-channel-bounds--c6656e2d414174a4e4e33d8e.md) | 63 | `result-track:c6656e2d414174a4e4e33d8e2a3de0f451965274b5ccb05f7a13fe05fbca6d47` |
| 7 | `lemma` | [errorBudget_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/errorbudget-tendsto-zero--456cbb29496d451b257a93f9.md) | 71 | `result-track:456cbb29496d451b257a93f9e19401e8fc08cf63ec35ff93e9588725dfd9d673` |
| 8 | `theorem` | [eventually_accepted_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/eventually-accepted-iff--f2a0f18429e93ec11879ef8d.md) | 78 | `result-track:f2a0f18429e93ec11879ef8db0a9173d591e8eefcd192bfa46a15ed041ba756f` |
| 9 | `theorem` | [exists_accepted_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/exists-accepted-iff--750f1056b0640002dd406328.md) | 87 | `result-track:750f1056b0640002dd406328e1cb6ad3ff3e0d132970f43367703aa9832a1a03` |
| 10 | `def` | [Eligible](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/eligible--1cb73877a6fd7d5f6f0b8017.md) | 97 | `declaration-track:1cb73877a6fd7d5f6f0b80170732ca24b815b57496f5a416f446cd0ed4a10b76` |
| 11 | `def` | [Trial](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/trial--0871243175a550c9cfbed91b.md) | 99 | `declaration-track:0871243175a550c9cfbed91b37fb663910983b46f871955843fe7c1c8637b13f` |
| 12 | `lemma` | [mirror_endpoints_in_band](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/mirror-endpoints-in-band--dbf775da363c630fb5d583c7.md) | 102 | `result-track:dbf775da363c630fb5d583c75734e796da411d544c8c681dcc23d22389e93c6d` |
| 13 | `lemma` | [target_of_source_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/target-of-source-zero--b4a751a94ad9b28db60d3cc0.md) | 116 | `result-track:b4a751a94ad9b28db60d3cc0ec013d64eb8d33f53295b5d131a0bd44150b6575` |
| 14 | `lemma` | [source_pair_zero_iff_target](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/source-pair-zero-iff-target--a0a84529a4e8fe2bd8f638c8.md) | 129 | `result-track:a0a84529a4e8fe2bd8f638c8d3c900d9673e0b098f39e1597c803f0bb914d0d0` |
| 15 | `theorem` | [eventually_trial_iff_not_target](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/eventually-trial-iff-not-target--629df6295b39c86f2abf9c27.md) | 140 | `result-track:629df6295b39c86f2abf9c27ba07fa1911c7373ef27e22b85b79c62cb57bf7bc` |
| 16 | `theorem` | [exists_trial_iff_not_target](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/exists-trial-iff-not-target--a27379aa40c0ce2b36b0df1b.md) | 149 | `result-track:a27379aa40c0ce2b36b0df1ba46473e2586de963e63208b8da41307254656f46` |
| 17 | `def` | [Coverage](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/coverage--e2f26fb37bd5e5e305e42e7c.md) | 159 | `declaration-track:e2f26fb37bd5e5e305e42e7cf47a58210eb1df5ca1b91f4fed6652bdf951d507` |
| 18 | `theorem` | [coverage_iff_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/coverage-iff-rh--fe5701ea6a15d5f05c866d70.md) | 163 | `result-track:fe5701ea6a15d5f05c866d70728df15e0c4ac2f8fa2452cfc611479211f31f35` |
| 19 | `def` | [coverageProfile](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/coverageprofile--75aff663b7e701143245f81a.md) | 176 | `declaration-track:75aff663b7e701143245f81aca7734dd61fb8ead717ce27215e29ebb8fc64dc7` |
| 20 | `theorem` | [coverageProfile_status](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/coverageprofile-status--4f140433aeaaf4a1b28a1252.md) | 177 | `result-track:4f140433aeaaf4a1b28a1252b8c174d0682d84824117e230166b3fe552baaf93` |
| 21 | `theorem` | [window_successor_of_trials](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/declarations/window-successor-of-trials--27478ebbb1bbadafca854484.md) | 181 | `result-track:27478ebbb1bbadafca854484bd7b70498a7a9bdb80bc1a990950199e759d25cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
