# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogMellinAttempt04.Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e429537d49c39cd62c3e6259d5112cbe6fbef12a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e429537d49c39cd62c3e6259d5112cbe6fbef12a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCoordinate` — import line 6; external provider; requires a separately pinned dependency.
- `ActualMuntzMellinDomain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angularIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/angularintegral--320506d38da168dca3912eb1.md) | 27 | `declaration-track:320506d38da168dca3912eb1d719c0701466176e8c3487d62432069918f7a1fd` |
| 2 | `theorem` | [critical_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/critical-jacobian--8b4d3b5d192f6638799f0c66.md) | 30 | `result-track:8b4d3b5d192f6638799f0c6653cadba317cf7bd07311f9880047037cbb848256` |
| 3 | `theorem` | [mellin_critical_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/mellin-critical-log--169d8862105af8366f7ed5cd.md) | 42 | `result-track:169d8862105af8366f7ed5cdce224502e7572c89789674ef9618512ccc30cd51` |
| 4 | `theorem` | [critical_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/critical-integrable-iff--b25df33f0eaeef290b87153f.md) | 53 | `result-track:b25df33f0eaeef290b87153f45a951a0491f74d6142ad62138f4bbfd83147154` |
| 5 | `theorem` | [phase_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/phase-norm--93731177edd754954ce58710.md) | 65 | `result-track:93731177edd754954ce587101aa1b590d584c1d523d40cded65a80dc685fa953` |
| 6 | `theorem` | [logFunc_integrable_of_critical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/logfunc-integrable-of-critical--f32cf08827686837f49932b3.md) | 69 | `result-track:f32cf08827686837f49932b32fe26d5ba01de0fff868178fef7a6179dc267871` |
| 7 | `theorem` | [actualSource_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actualsource-memlp--9d82efca1536bf6524b86b52.md) | 81 | `result-track:9d82efca1536bf6524b86b52022c523d1ba70373ebc5bf3a8b8237bcace77050` |
| 8 | `def` | [actualSourceL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actualsourcel2--4814133e4b99aca9f952340f.md) | 90 | `declaration-track:4814133e4b99aca9f952340f53d94967f4f435c47baf62662b55b7845dc20ca4` |
| 9 | `theorem` | [actualSourceL2_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actualsourcel2-ae--bbc8044797852b578b00bb2e.md) | 93 | `result-track:bbc8044797852b578b00bb2e096b3181ee889d1a0bfae9e0bcc0897c4f0f8514` |
| 10 | `theorem` | [actual_source_log_pointwise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actual-source-log-pointwise--751600f45ae707c435722121.md) | 97 | `result-track:751600f45ae707c43572212193aa7ceb8a14796cd35c04b86f9e79f43e069fb1` |
| 11 | `theorem` | [actual_source_log_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actual-source-log-ae--e9774d8f98c6daa09e7d696a.md) | 104 | `result-track:e9774d8f98c6daa09e7d696a9fedb46c14a5dc65fd0571a09109368692f74d99` |
| 12 | `theorem` | [actual_source_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actual-source-angular-integrable--78816ec6bc48734fad394b93.md) | 113 | `result-track:78816ec6bc48734fad394b935b094efb3de8ca580ccf8d3f8b2a1c7364db14a9` |
| 13 | `theorem` | [actual_muntz_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actual-muntz-angular-integrable--10773162c6c95c5c48f6c733.md) | 120 | `result-track:10773162c6c95c5c48f6c733616995904c369d75feb9a4e532fc1f369a07046a` |
| 14 | `theorem` | [actual_muntz_log_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actual-muntz-log-integrable--7824879bc6f6759a32583052.md) | 127 | `result-track:7824879bc6f6759a32583052872e25387b31f0cd887f375caca9da342e3454f2` |
| 15 | `theorem` | [actual_source_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actual-source-mellin-log--7b71066c4aa560e1725e4180.md) | 134 | `result-track:7b71066c4aa560e1725e41808f2ac8a0ecc88d63c70417699572f37c8d72e824` |
| 16 | `theorem` | [actual_muntz_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actual-muntz-mellin-log--832ae629d88ce22a1d22f51d.md) | 142 | `result-track:832ae629d88ce22a1d22f51dee633967a6fe6512f810174b43aea4ae8cd53b4b` |
| 17 | `theorem` | [actual_muntz_mellin_log_class](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actual-muntz-mellin-log-class--cc5002a67a23845fd687940c.md) | 146 | `result-track:cc5002a67a23845fd687940c76d8e07a006aca3c3e292eaf466ffbeddc83cbed` |
| 18 | `theorem` | [actualQ_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actualq-memlp--38d7205fc47ede714eb8300b.md) | 154 | `result-track:38d7205fc47ede714eb8300b935c9e114f65b7d26c5e4944055f42a8ea996e43` |
| 19 | `def` | [actualQClass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actualqclass--5c803f1f37cd4751da38e3ff.md) | 160 | `declaration-track:5c803f1f37cd4751da38e3ff73d7c7db8d926a11cb9470f7ead8b0ee5eababcf` |
| 20 | `theorem` | [actualQClass_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actualqclass-ae--929d700d0d7c4166c98b90a5.md) | 163 | `result-track:929d700d0d7c4166c98b90a55cfc012e390cb8cd3395c10a3dd53a342afd4c38` |
| 21 | `theorem` | [actual_source_log_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actual-source-log-eq--abd498920fc1c59e3ab7b0a1.md) | 169 | `result-track:abd498920fc1c59e3ab7b0a1a0b6e29694345b09f853bb95c00cbbcc10551866` |
| 22 | `theorem` | [actual_muntz_log_class_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actual-muntz-log-class-integrable--7a3bdf7472203f6abf321d4b.md) | 173 | `result-track:7a3bdf7472203f6abf321d4b9ba29c4181ac43359cf1c4856412f2ac11ee8852` |
| 23 | `theorem` | [actual_muntz_log_class_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actual-muntz-log-class-angular-integrable--d9010b79b89d62b92e618f0f.md) | 177 | `result-track:d9010b79b89d62b92e618f0f59d90d2446f961645e414dc83cfe1308cd9a3925` |
| 24 | `theorem` | [actual_source_mellin_log_class](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a.lean/declarations/actual-source-mellin-log-class--83ce425edf77553ee862dfb5.md) | 183 | `result-track:83ce425edf77553ee862dfb5f409ba569a13c94a5bce01ca304fe6d07c1d0ab3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
