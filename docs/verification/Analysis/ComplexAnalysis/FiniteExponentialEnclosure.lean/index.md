# Verification target: GRWTSK.Analysis.Complex.FiniteExponentialEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89aa19c7c25a7b862d4113d93611f13574de58f5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/FiniteExponentialEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89aa19c7c25a7b862d4113d93611f13574de58f5`.

Source path: `GRWTSK/Analysis/Complex/FiniteExponentialEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/FiniteExponentialEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IntervalMellinKernel`](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.Exponential` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rectNorm](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/declarations/rectnorm--7eb09d4cad46f935d4417674.md) | 28 | `declaration-track:7eb09d4cad46f935d44176743a7650b7aec84340573c715e33c07546ddee6ff1` |
| 2 | `theorem` | [rectNorm_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/declarations/rectnorm-nonneg--d40add2adfdd5032ac769872.md) | 30 | `result-track:d40add2adfdd5032ac7698726f74a318a47dc6f040c918897d41e426bcdbb2e5` |
| 3 | `theorem` | [norm_le_rectNorm](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/declarations/norm-le-rectnorm--c61f5043a4da806975533640.md) | 33 | `result-track:c61f5043a4da80697553364015f723141c19e2f79aa80bc0d5ebb81baeafdfe7` |
| 4 | `def` | [expPolynomial](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/declarations/exppolynomial--869b94ef1feb7194ab17f48e.md) | 37 | `declaration-track:869b94ef1feb7194ab17f48ec0742f2a68fee55bb9bec5542658657fb18990b5` |
| 5 | `def` | [expRemainder](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/declarations/expremainder--e5f98cbd16ebb2d0621ef0e1.md) | 41 | `declaration-track:e5f98cbd16ebb2d0621ef0e19f2699b1f143f8e5e61ff581f3a26caa7f7edf7e` |
| 6 | `theorem` | [expRemainder_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/declarations/expremainder-nonneg--386e527dd78c8a85084b15b0.md) | 43 | `result-track:386e527dd78c8a85084b15b0bbe36edd99909ed6a0d55f5d9e7b2c0638d95747` |
| 7 | `theorem` | [expPolynomial_error](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/declarations/exppolynomial-error--d07cf59aa8a494386a9fcb4a.md) | 49 | `result-track:d07cf59aa8a494386a9fcb4abaf04f35976037cb8b3400d8337535f363f7579f` |
| 8 | `theorem` | [exp_difference_near](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/declarations/exp-difference-near--0317ce75c7d433a40d3be592.md) | 68 | `result-track:0317ce75c7d433a40d3be592fd49cfe9662ad55433358d1dce17ac7969e01ca1` |
| 9 | `theorem` | [expPolynomial_perturbed_error](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/declarations/exppolynomial-perturbed-error--5e76ccea0c1f1298c9710ee6.md) | 85 | `result-track:5e76ccea0c1f1298c9710ee64ad474de0bf6c0d6a8e8f7aa4072e2ad44f5c5ae` |
| 10 | `structure` | [PowerEvaluation](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/declarations/powerevaluation--bf363bc544fd01547f50bad6.md) | 108 | `declaration-track:bf363bc544fd01547f50bad6727bbfd2deebf68986d3b64efd95bf4596b1b9a4` |
| 11 | `def` | [value](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/declarations/value--72556b3a138cf86ed44b4e32.md) | 123 | `declaration-track:72556b3a138cf86ed44b4e328e3b8d6e48fc26a816ac3c251ab341a6c8ba1293` |
| 12 | `def` | [error](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/declarations/error--9036d3bf67a88841b4b7274e.md) | 126 | `declaration-track:9036d3bf67a88841b4b7274e62bfa63843d479b98dc8189fe13479d1c89ae205` |
| 13 | `theorem` | [error_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/declarations/error-nonneg--91d15e270ba1a93e83f22cba.md) | 130 | `result-track:91d15e270ba1a93e83f22cba6e19c015e58be47ec6955c8cb5aae629057ef40d` |
| 14 | `theorem` | [sound](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/declarations/sound--f8286fb6903c9c19f7cf7a82.md) | 140 | `result-track:f8286fb6903c9c19f7cf7a82fb6842a8d0f9b30c3616e9fa6ae77e9d3dcd7f93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
