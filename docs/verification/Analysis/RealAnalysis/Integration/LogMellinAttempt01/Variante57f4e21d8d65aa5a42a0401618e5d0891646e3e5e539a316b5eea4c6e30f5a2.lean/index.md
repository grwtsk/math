# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogMellinAttempt01.Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "638e0d302e11fc34b4c0be8e084c38ae53edaf80",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `638e0d302e11fc34b4c0be8e084c38ae53edaf80`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCoordinate` — import line 1; external provider; requires a separately pinned dependency.
- `ActualMuntzMellinDomain` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angularIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/angularintegral--b270a949e6343eff8511ee76.md) | 19 | `declaration-track:b270a949e6343eff8511ee76a0ef50159c65322338f47c7bba5ef75fcf7cac1b` |
| 2 | `theorem` | [critical_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/critical-jacobian--5269f75cde01d39b90c87587.md) | 22 | `result-track:5269f75cde01d39b90c8758732dd844a74a3b2e62ea65ae21c6c46b51730c7a2` |
| 3 | `theorem` | [mellin_critical_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/mellin-critical-log--f1ce622bd27050dc931264ea.md) | 34 | `result-track:f1ce622bd27050dc931264eadd58e2bb90423d1b06b06446674f9230849532a9` |
| 4 | `theorem` | [critical_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/critical-integrable-iff--4e08ead367d5a8f8b848ab1f.md) | 45 | `result-track:4e08ead367d5a8f8b848ab1fc72ea056cc845377969338a162aa9a909b56dcdc` |
| 5 | `theorem` | [phase_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/phase-norm--0b2cab1da5082132738b61a6.md) | 57 | `result-track:0b2cab1da5082132738b61a6b7129c10d261e1eaa36ac662d58ed6557f217e05` |
| 6 | `theorem` | [logFunc_integrable_of_critical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/logfunc-integrable-of-critical--6f3afadf63ce018e1424ca6f.md) | 61 | `result-track:6f3afadf63ce018e1424ca6f67860678f661a2418bb7bdbce272910ad3b7c577` |
| 7 | `theorem` | [actualSource_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/actualsource-memlp--96c59852499e93a23832c95e.md) | 73 | `result-track:96c59852499e93a23832c95e1eddb21001d54b236d5aba25590e8c4c9fac1eb8` |
| 8 | `def` | [actualSourceL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/actualsourcel2--0e5d99cd3bc8fb789b981cc0.md) | 81 | `declaration-track:0e5d99cd3bc8fb789b981cc04f1c8d8f1c4403e85a0f1cd4818c8c044108d9a9` |
| 9 | `theorem` | [actualSourceL2_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/actualsourcel2-ae--9941cae5b4f41e5ab8726b4d.md) | 84 | `result-track:9941cae5b4f41e5ab8726b4dab6a4e401a14c1f4956ad25e0ba3d425075ebc5c` |
| 10 | `theorem` | [actual_source_log_pointwise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/actual-source-log-pointwise--756ec5f3819eff90cdca3a84.md) | 88 | `result-track:756ec5f3819eff90cdca3a84159b24b5c66f616676e33afdf3557e9d93d880c0` |
| 11 | `theorem` | [actual_source_log_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/actual-source-log-ae--96fb667baa514bdc46628d3a.md) | 95 | `result-track:96fb667baa514bdc46628d3ab843900d086a1ea1b4ccbba3a0534c829cb5b025` |
| 12 | `theorem` | [actual_source_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/actual-source-angular-integrable--14e9fea79004a7f051b27da9.md) | 104 | `result-track:14e9fea79004a7f051b27da9a8093f5ac641c138a23960a8eb687266ac5451b9` |
| 13 | `theorem` | [actual_muntz_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/actual-muntz-angular-integrable--81f71e8b8f5e3106e3761d57.md) | 111 | `result-track:81f71e8b8f5e3106e3761d5758836bdd47373f5b85e86019251ffddcd10a7b2a` |
| 14 | `theorem` | [actual_muntz_log_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/actual-muntz-log-integrable--6f77861e31b155ba295bf0cb.md) | 118 | `result-track:6f77861e31b155ba295bf0cb3186c32feba45100b31a95cf5003d783a636723a` |
| 15 | `theorem` | [actual_source_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/actual-source-mellin-log--af5a013fdf74c508ad3022aa.md) | 125 | `result-track:af5a013fdf74c508ad3022aa3b01ad5b57894879f7bc8a0086f3bc457f12cb18` |
| 16 | `theorem` | [actual_muntz_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/actual-muntz-mellin-log--4c2690141d59a5764ebb43a6.md) | 131 | `result-track:4c2690141d59a5764ebb43a6d65446bf98e8aa39c23418dfbc4fc65205cae074` |
| 17 | `theorem` | [actual_muntz_mellin_log_class](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/declarations/actual-muntz-mellin-log-class--9d1a2ec62ff38bbba9398477.md) | 135 | `result-track:9d1a2ec62ff38bbba939847723a67640f32566b5cc68a13cf044a993b61071a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
