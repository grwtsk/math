# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Attempt01Source.Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fb8c49e46edb6e31c7a728ec9adeae1a302adc8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fb8c49e46edb6e31c7a728ec9adeae1a302adc8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceExactRestrictedStrip` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactStripCost](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean/declarations/exactstripcost--fc4f9058c4e30c288f6c4d60.md) | 34 | `declaration-track:fc4f9058c4e30c288f6c4d6064fcc56f49f7952aaf0c048eea1d1ad33a1030bd` |
| 2 | `def` | [exactOverlapResidualBudget](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean/declarations/exactoverlapresidualbudget--a05632283ab0551e61efe66a.md) | 38 | `declaration-track:a05632283ab0551e61efe66a68327bba91288cdb7b6d3596671e66fab29d68b0` |
| 3 | `theorem` | [exactStripCost_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean/declarations/exactstripcost-nonneg--c3c7954347756ee2d3a6bd11.md) | 41 | `result-track:c3c7954347756ee2d3a6bd11a3e6b3d8bbe53d036ee7219b1323b5e554f9ec37` |
| 4 | `theorem` | [exactOverlapResidualBudget_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean/declarations/exactoverlapresidualbudget-nonneg--df0ec0c4ba287ae486ced69c.md) | 47 | `result-track:df0ec0c4ba287ae486ced69cf3672136c5927bab270542f56468a6515e015a47` |
| 5 | `theorem` | [residual_upper_of_overlap_with_ledger](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean/declarations/residual-upper-of-overlap-with-ledger--38d5ab68a7a6afa5012162f7.md) | 51 | `result-track:38d5ab68a7a6afa5012162f78431f3ef83e004296417f0e6a46817235540d801` |
| 6 | `theorem` | [residual_tail_of_overlap_with_exact_strip](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean/declarations/residual-tail-of-overlap-with-exact-strip--1b0b556c19d8095186a5a2b9.md) | 69 | `result-track:1b0b556c19d8095186a5a2b9dac8704dd0344ff833e1369932e6fe8dfca032c7` |
| 7 | `theorem` | [quadratic_lower_of_residual_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean/declarations/quadratic-lower-of-residual-upper--1b4fe90837b4f3965f80368a.md) | 77 | `result-track:1b4fe90837b4f3965f80368a22bab3a0f29406b06ca9d0ba5cc68a7b78cb8ce5` |
| 8 | `theorem` | [all_real_lower_of_overlap_with_ledger](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean/declarations/all-real-lower-of-overlap-with-ledger--65d30a912b6af464d5cd1fd0.md) | 89 | `result-track:65d30a912b6af464d5cd1fd0123970303d7f9b3d1b5a9c9fab5f66582db772fb` |
| 9 | `theorem` | [all_real_lower_of_overlap_with_exact_strip](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean/declarations/all-real-lower-of-overlap-with-exact-strip--15725a9eece5abafa247fe49.md) | 109 | `result-track:15725a9eece5abafa247fe49a53c15818a38ddeb63877b56bc22974afcc566ae` |
| 10 | `theorem` | [estimate_of_overlap_with_exact_strip](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt01Source/Variantdb8a3fbb0278d15bc7cc2a7bf38d791bfc84c204cb0bb23c8a99742ed185b4d1.lean/declarations/estimate-of-overlap-with-exact-strip--af1a8068841ab8b1a5629521.md) | 120 | `result-track:af1a8068841ab8b1a5629521872d8f518cad3fb149708c077de5669fbe26c4a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
