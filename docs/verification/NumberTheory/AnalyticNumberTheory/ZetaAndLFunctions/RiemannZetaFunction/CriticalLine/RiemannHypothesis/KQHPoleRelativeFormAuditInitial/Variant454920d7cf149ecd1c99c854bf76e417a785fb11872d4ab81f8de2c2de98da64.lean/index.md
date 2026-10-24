# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHPoleRelativeFormAuditInitial.Variant454920d7cf149ecd1c99c854bf76e417a785fb11872d4ab81f8de2c2de98da64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "857aecf53f730a164a40da80da881e39ca220735",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleRelativeFormAuditInitial/Variant454920d7cf149ecd1c99c854bf76e417a785fb11872d4ab81f8de2c2de98da64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleRelativeFormAuditInitial/Variant454920d7cf149ecd1c99c854bf76e417a785fb11872d4ab81f8de2c2de98da64.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleRelativeFormAuditInitial/Variant454920d7cf149ecd1c99c854bf76e417a785fb11872d4ab81f8de2c2de98da64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `857aecf53f730a164a40da80da881e39ca220735`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleRelativeFormAuditInitial/Variant454920d7cf149ecd1c99c854bf76e417a785fb11872d4ab81f8de2c2de98da64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleRelativeFormAuditInitial/Variant454920d7cf149ecd1c99c854bf76e417a785fb11872d4ab81f8de2c2de98da64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.CompensatedReadout` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [annihilator_error_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleRelativeFormAuditInitial/Variant454920d7cf149ecd1c99c854bf76e417a785fb11872d4ab81f8de2c2de98da64.lean/declarations/annihilator-error-bound--85b3319f436da85ea6d47a52.md) | 34 | `result-track:85b3319f436da85ea6d47a527cb017dbfd2193b81f4c8f9b0c50bc774e6feedd` |
| 2 | `theorem` | [transferred_error_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleRelativeFormAuditInitial/Variant454920d7cf149ecd1c99c854bf76e417a785fb11872d4ab81f8de2c2de98da64.lean/declarations/transferred-error-bound--c3e9cb5e91dc006bd60ed358.md) | 45 | `result-track:c3e9cb5e91dc006bd60ed3585c4cbfc1ec9778499626228d87e56ada779774f2` |
| 3 | `theorem` | [transferred_kernel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleRelativeFormAuditInitial/Variant454920d7cf149ecd1c99c854bf76e417a785fb11872d4ab81f8de2c2de98da64.lean/declarations/transferred-kernel--dcbe0dd7848869e47fed2a6f.md) | 53 | `result-track:dcbe0dd7848869e47fed2a6f5412f4574b631daddd0940a413aa9f8789ad55d6` |
| 4 | `theorem` | [native_readout_transfer](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleRelativeFormAuditInitial/Variant454920d7cf149ecd1c99c854bf76e417a785fb11872d4ab81f8de2c2de98da64.lean/declarations/native-readout-transfer--054eb1afd0eee47bbfc1691a.md) | 63 | `result-track:054eb1afd0eee47bbfc1691ad716dbf08856086513ea674f1682efa2a2fbb3c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
