# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PartialCorrectness.Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dae94a66788cd7cac8eab43666b00a4d89b309c9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dae94a66788cd7cac8eab43666b00a4d89b309c9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD.Correctness` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Contrib.Sinc` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Arsinh` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [evalDual?_val_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean/declarations/evaldual-val-correct--f95886de9ad08e2dfc315a17.md) | 51 | `result-track:f95886de9ad08e2dfc315a17c9142a07841f8acc8be2a55f5208e6d184a6037a` |
| 2 | `theorem` | [evalDual?1_val_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean/declarations/evaldual-1-val-correct--3faef899c58b4f843902a00e.md) | 231 | `result-track:3faef899c58b4f843902a00e4fd8c32f41aec9ba85619ac0c08c2f44a06442e4` |
| 3 | `theorem` | [evalFunc1_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean/declarations/evalfunc1-inv--408894ac98613a76908ccc8f.md) | 240 | `result-track:408894ac98613a76908ccc8fb747af16966658d36af7151c54ddcc4f74b2d686` |
| 4 | `theorem` | [evalFunc1_differentiableAt_of_evalDual?](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean/declarations/evalfunc1-differentiableat-of-evaldual--cffa77e25eae27097c4f68d9.md) | 244 | `result-track:cffa77e25eae27097c4f68d9e77e3640156dce19839290ac3a0fb9bb7bfcdbba` |
| 5 | `theorem` | [evalDual?_der_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean/declarations/evaldual-der-correct--34c45100cac31dded29b5cbf.md) | 415 | `result-track:34c45100cac31dded29b5cbf6f730cbc00208ec07931f5113ce338d65ad29c04` |
| 6 | `theorem` | [evalDual?1_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean/declarations/evaldual-1-correct--27c39f1106758c49de2fb2ab.md) | 837 | `result-track:27c39f1106758c49de2fb2ab1aa65696af8aa59e71430aac81caf5a7796e2ac1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
