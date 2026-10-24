# Verification target: GRWTSK.Analysis.MeasureTheory.NativeOffGridCounting.Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1d5b75bc2ec99362199057bf9bc123cb41b9497",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1d5b75bc2ec99362199057bf9bc123cb41b9497`.

Source path: `GRWTSK/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.NativeOffGridDensity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [countingPrimitive](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/declarations/countingprimitive--801477813b8ab8b93a9378af.md) | 21 | `declaration-track:801477813b8ab8b93a9378afb3d4490136ec9755fb5862609659845aa034820d` |
| 2 | `theorem` | [literal_density_continuous_at](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/declarations/literal-density-continuous-at--26aebc42d4367dbc2a49be54.md) | 24 | `result-track:26aebc42d4367dbc2a49be548d7f4b5a815414ffb85ff59e8e17ebd55d088e54` |
| 3 | `theorem` | [literal_density_smooth_at](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/declarations/literal-density-smooth-at--c37cb83594721075c698c021.md) | 29 | `result-track:c37cb83594721075c698c021d8d7702841a1ca858ad1ac16b1ec976781a51a89` |
| 4 | `theorem` | [literal_complex_counting_derivative](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/declarations/literal-complex-counting-derivative--abc2e2d986d711339c08a4d0.md) | 43 | `result-track:abc2e2d986d711339c08a4d0cd43178df1e8da473eb88acafc87fc19c44f27a7` |
| 5 | `theorem` | [literal_counting_primitive_derivative](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/declarations/literal-counting-primitive-derivative--685967e0bdce1ffd1b4a5551.md) | 57 | `result-track:685967e0bdce1ffd1b4a5551f6ae7dc0444a18a58fc52e5ab36710711205ad57` |
| 6 | `theorem` | [literal_density_interval_integrable](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/declarations/literal-density-interval-integrable--ce2ce738878d418c641bd8a8.md) | 65 | `result-track:ce2ce738878d418c641bd8a85abb874f7cc20cf2f97355b7d5c82ad81bb768c1` |
| 7 | `theorem` | [literal_density_exact_counting_error](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/declarations/literal-density-exact-counting-error--2f2ab3772d46ca30a4a1fd89.md) | 74 | `result-track:2f2ab3772d46ca30a4a1fd8907f2d922c470e9c852e22672d6df554276bef82c` |
| 8 | `theorem` | [literal_phase_norm_le_one_sixth](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/declarations/literal-phase-norm-le-one-sixth--5bb4a6e45663db849179bd7a.md) | 85 | `result-track:5bb4a6e45663db849179bd7ae024ced5286be3df553b32c8dd26b26e00680aaf` |
| 9 | `theorem` | [literal_counting_error_power_envelope](../../../../../mathematics/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/declarations/literal-counting-error-power-envelope--0b25238a4093fa064337835e.md) | 92 | `result-track:0b25238a4093fa064337835ef27b8f6586d64ab64c4f3d78056f7b3209a5c82e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
