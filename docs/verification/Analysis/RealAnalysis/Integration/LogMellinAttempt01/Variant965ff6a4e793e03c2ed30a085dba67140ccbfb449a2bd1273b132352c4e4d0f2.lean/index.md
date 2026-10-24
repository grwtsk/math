# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogMellinAttempt01.Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e46140be5b3d57191fcd01cd24083ae53be811b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e46140be5b3d57191fcd01cd24083ae53be811b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean.json)

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
| 1 | `def` | [angularIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/angularintegral--a42b8a48eacee0c098520a78.md) | 27 | `declaration-track:a42b8a48eacee0c098520a78469d0b72e7f3306570756f9b416840b4ed7c6280` |
| 2 | `theorem` | [critical_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/critical-jacobian--47f69e2a4e94770d6720e6c8.md) | 30 | `result-track:47f69e2a4e94770d6720e6c8a412698f7282eb9480432619e0873f4a27c87cca` |
| 3 | `theorem` | [mellin_critical_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/mellin-critical-log--6069c19467dddf078bf5d8bf.md) | 42 | `result-track:6069c19467dddf078bf5d8bf5ec6f29aab35bb45ec48e9b47e5d85526ab34d02` |
| 4 | `theorem` | [critical_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/critical-integrable-iff--950fb94d76a7f22c4954de71.md) | 53 | `result-track:950fb94d76a7f22c4954de71d39ccbb916959292b29751acb89a168c58a90b9d` |
| 5 | `theorem` | [phase_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/phase-norm--23c151907516bdb1717e3e2e.md) | 65 | `result-track:23c151907516bdb1717e3e2ee229272be5ce8b1593ea0f4bfd4195daff91ddd8` |
| 6 | `theorem` | [logFunc_integrable_of_critical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/logfunc-integrable-of-critical--81a5bb360ae19666469205e7.md) | 69 | `result-track:81a5bb360ae19666469205e715e50ed7cb2815cc1c863c1cb14a07c33688c572` |
| 7 | `theorem` | [actualSource_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/actualsource-memlp--a1778a8d83fe9fa418102d36.md) | 81 | `result-track:a1778a8d83fe9fa418102d360216b6ea9512ec43de85f20d78700e36e50c5c53` |
| 8 | `def` | [actualSourceL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/actualsourcel2--8401fd5645a6242e29202493.md) | 89 | `declaration-track:8401fd5645a6242e29202493ece7ce6803fd62e186868677888eea33a4b04251` |
| 9 | `theorem` | [actualSourceL2_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/actualsourcel2-ae--239eeaec1ea92aec7212343f.md) | 92 | `result-track:239eeaec1ea92aec7212343fc81f6fcefec7bdde6b2a85404de9cd1e282fe816` |
| 10 | `theorem` | [actual_source_log_pointwise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/actual-source-log-pointwise--54b638eec217f9b09410f5c3.md) | 96 | `result-track:54b638eec217f9b09410f5c312ab6fd8b851fbbff093a035c4b7933170339657` |
| 11 | `theorem` | [actual_source_log_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/actual-source-log-ae--fa39a85b1c3c49d8e9ab4a2a.md) | 103 | `result-track:fa39a85b1c3c49d8e9ab4a2a51d34ab25adac74e50957a15329ebf02dc1f6871` |
| 12 | `theorem` | [actual_source_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/actual-source-angular-integrable--6b5f8d9df87250f3b5d9116a.md) | 112 | `result-track:6b5f8d9df87250f3b5d9116a9ac0a63633a01ea4b35df91d9f82606084b7b322` |
| 13 | `theorem` | [actual_muntz_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/actual-muntz-angular-integrable--488e3215bb1678c2779c425a.md) | 119 | `result-track:488e3215bb1678c2779c425a2c42a8ca13e5ffd3238983c468a61b61609810b2` |
| 14 | `theorem` | [actual_muntz_log_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/actual-muntz-log-integrable--e2208538ff0132053a4a31db.md) | 126 | `result-track:e2208538ff0132053a4a31db0cfce8ee428dd09a8a180dc2da58a79124e3265d` |
| 15 | `theorem` | [actual_source_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/actual-source-mellin-log--382fb8da2e4a17ccb22d9e6d.md) | 133 | `result-track:382fb8da2e4a17ccb22d9e6d91247454d09316a1e211ae3d45caae83a70ad364` |
| 16 | `theorem` | [actual_muntz_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/actual-muntz-mellin-log--412294c6c516ef96d2b6be5b.md) | 139 | `result-track:412294c6c516ef96d2b6be5b868304ca8ba510a15812139d982343faddca2c1d` |
| 17 | `theorem` | [actual_muntz_mellin_log_class](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variant965ff6a4e793e03c2ed30a085dba67140ccbfb449a2bd1273b132352c4e4d0f2.lean/declarations/actual-muntz-mellin-log-class--6170a96999c15acbf3872cbe.md) | 143 | `result-track:6170a96999c15acbf3872cbe5a9e01b2dd6286da26c36559fe11e4465874e2e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
