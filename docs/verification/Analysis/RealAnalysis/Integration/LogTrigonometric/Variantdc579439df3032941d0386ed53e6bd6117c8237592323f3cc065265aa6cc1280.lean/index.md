# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogTrigonometric.Variantdc579439df3032941d0386ed53e6bd6117c8237592323f3cc065265aa6cc1280

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7b3ce0fec86f859321ad79c1e9d874549a09ee5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantdc579439df3032941d0386ed53e6bd6117c8237592323f3cc065265aa6cc1280.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantdc579439df3032941d0386ed53e6bd6117c8237592323f3cc065265aa6cc1280.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantdc579439df3032941d0386ed53e6bd6117c8237592323f3cc065265aa6cc1280.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7b3ce0fec86f859321ad79c1e9d874549a09ee5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantdc579439df3032941d0386ed53e6bd6117c8237592323f3cc065265aa6cc1280.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantdc579439df3032941d0386ed53e6bd6117c8237592323f3cc065265aa6cc1280.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [integral_log_sin_zero_pi_eq_two_mul_integral_log_sin_zero_pi_div_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantdc579439df3032941d0386ed53e6bd6117c8237592323f3cc065265aa6cc1280.lean/declarations/integral-log-sin-zero-pi-eq-two-mul-integral-log-sin-zero-pi-div-two--0cb89a8e2e3498500d9c4109.md) | 29 | `result-track:0cb89a8e2e3498500d9c410918f715ea225cace64c304cccaece9fa8ed56d994` |
| 2 | `theorem` | [integral_log_sin_zero_pi_div_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantdc579439df3032941d0386ed53e6bd6117c8237592323f3cc065265aa6cc1280.lean/declarations/integral-log-sin-zero-pi-div-two--e8ae40dd3656bacc8aafddf7.md) | 44 | `result-track:e8ae40dd3656bacc8aafddf7d3574b0c73d71cd2d211491cf335a0be5dbfc96f` |
| 3 | `theorem` | [integral_log_sin_zero_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantdc579439df3032941d0386ed53e6bd6117c8237592323f3cc065265aa6cc1280.lean/declarations/integral-log-sin-zero-pi--b0078980be63adfcae8ceeeb.md) | 83 | `result-track:b0078980be63adfcae8ceeeba0fa0420d4c742e8665bae54eb068cc95b8c8470` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
