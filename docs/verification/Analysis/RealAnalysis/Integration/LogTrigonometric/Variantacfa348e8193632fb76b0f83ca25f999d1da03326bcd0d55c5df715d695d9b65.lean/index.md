# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogTrigonometric.Variantacfa348e8193632fb76b0f83ca25f999d1da03326bcd0d55c5df715d695d9b65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16363fe5ab3972abf4646b194b3f33d1d3d220c1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantacfa348e8193632fb76b0f83ca25f999d1da03326bcd0d55c5df715d695d9b65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantacfa348e8193632fb76b0f83ca25f999d1da03326bcd0d55c5df715d695d9b65.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantacfa348e8193632fb76b0f83ca25f999d1da03326bcd0d55c5df715d695d9b65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16363fe5ab3972abf4646b194b3f33d1d3d220c1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantacfa348e8193632fb76b0f83ca25f999d1da03326bcd0d55c5df715d695d9b65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantacfa348e8193632fb76b0f83ca25f999d1da03326bcd0d55c5df715d695d9b65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [integral_log_sin_zero_pi_eq_two_mul_integral_log_sin_zero_pi_div_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantacfa348e8193632fb76b0f83ca25f999d1da03326bcd0d55c5df715d695d9b65.lean/declarations/integral-log-sin-zero-pi-eq-two-mul-integral-log-sin-zero-pi-div-two--3661d2bb1353269e5fa89afc.md) | 37 | `result-track:3661d2bb1353269e5fa89afc652dfaf24959b1a812734bc58723357ccd1bc296` |
| 2 | `theorem` | [integral_log_sin_zero_pi_div_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantacfa348e8193632fb76b0f83ca25f999d1da03326bcd0d55c5df715d695d9b65.lean/declarations/integral-log-sin-zero-pi-div-two--e7033f0caa315aacc09a9942.md) | 52 | `result-track:e7033f0caa315aacc09a9942b40207c933ab7beb6bbae8536e4c1a74f43db7e9` |
| 3 | `theorem` | [integral_log_sin_zero_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantacfa348e8193632fb76b0f83ca25f999d1da03326bcd0d55c5df715d695d9b65.lean/declarations/integral-log-sin-zero-pi--733fefef59d7dddb73795616.md) | 91 | `result-track:733fefef59d7dddb73795616ebe9032c97a4940fdb91f931a886713f2a2b32bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
