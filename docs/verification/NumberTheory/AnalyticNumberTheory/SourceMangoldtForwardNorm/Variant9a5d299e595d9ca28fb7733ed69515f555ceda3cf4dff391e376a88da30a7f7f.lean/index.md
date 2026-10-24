# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceMangoldtForwardNorm.Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b46316f350d46272bec6c232c4be73afc8574c4a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b46316f350d46272bec6c232c4be73afc8574c4a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceVaughanHankel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realSource](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/declarations/realsource--8a494b70928803a7a198d097.md) | 35 | `declaration-track:8a494b70928803a7a198d0970772e14db63c3b1b4fe7be9d8aaa2c131867cc40` |
| 2 | `theorem` | [realSource_coe](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/declarations/realsource-coe--fa8f8e4cb48c343aef223a88.md) | 38 | `result-track:fa8f8e4cb48c343aef223a887fa3ac627d2d696ca6b81d842aed43befc78234e` |
| 3 | `theorem` | [realSource_norm](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/declarations/realsource-norm--c2add85dfc1364163cc79477.md) | 45 | `result-track:c2add85dfc1364163cc79477fee9934359e085c73911a66509e6c7db00b82951` |
| 4 | `def` | [shift](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/declarations/shift--976ada58de6fb1a952a0cc2a.md) | 54 | `declaration-track:976ada58de6fb1a952a0cc2a4cc05feb1f0ae7718e2c84115fe2d2f25939366c` |
| 5 | `theorem` | [shift_coe](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/declarations/shift-coe--d67361e89286d7a9a5f1bdc7.md) | 58 | `result-track:d67361e89286d7a9a5f1bdc76f8e6df20b76a193c2ca5fab8f3f67b9baf6ad0b` |
| 6 | `theorem` | [shift_norm](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/declarations/shift-norm--9aa780fff3ddf68301c79973.md) | 66 | `result-track:9aa780fff3ddf68301c79973cb4acb781e32a5ed2584fca3d6aa41cdea9d12db` |
| 7 | `theorem` | [mangoldtL2_eq_sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/declarations/mangoldtl2-eq-sum--33861b3a78409e614955ad10.md) | 70 | `result-track:33861b3a78409e614955ad10384a1b4c9a4b00e6506b456c73931408b3a34177` |
| 8 | `theorem` | [inverse_sqrt_step](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/declarations/inverse-sqrt-step--6ccfa78ba91e72dddd3c1b8a.md) | 92 | `result-track:6ccfa78ba91e72dddd3c1b8a2927aebea5d9dac33e266f9c285f19dfc8a82c47` |
| 9 | `theorem` | [inverse_sqrt_sum_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/declarations/inverse-sqrt-sum-le--93a93da5ca6ee5c4706e3464.md) | 103 | `result-track:93a93da5ca6ee5c4706e3464054a805e624c2dd5f1190561f626a432859af8cf` |
| 10 | `theorem` | [sourceKernelCutoff_le_exp](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/declarations/sourcekernelcutoff-le-exp--8afb1b324c1a075e90755425.md) | 113 | `result-track:8afb1b324c1a075e90755425eb4a8a2bb1e5aca2114fbd3e2aa12e1f8bc700c3` |
| 11 | `theorem` | [actual_mangoldt_le_two_scale](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/declarations/actual-mangoldt-le-two-scale--d61f146167fa510eeafc867f.md) | 118 | `result-track:d61f146167fa510eeafc867f7a4d32670ee040cd8544bb92d19cc97375b5a16a` |
| 12 | `theorem` | [mangoldtL2_norm_le_finite_sqrt_cutoff_diff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/declarations/mangoldtl2-norm-le-finite-sqrt-cutoff-diff--0cf0ed6f2d4702edf92141d7.md) | 129 | `result-track:0cf0ed6f2d4702edf92141d79a0f674970d68b133c4722d6c5b573b82d8bc85f` |
| 13 | `theorem` | [mangoldtL2_norm_le_four_mul_scale_exp](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/declarations/mangoldtl2-norm-le-four-mul-scale-exp--a4943ca9aa62d18e4a499ca2.md) | 166 | `result-track:a4943ca9aa62d18e4a499ca2360b9f8557e129f05a0eca765b483e809205b70e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
