# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.SumCoeff.Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82528f0cd256b1099d59b3b009eb099f66f9f87d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82528f0cd256b1099d59b3b009eb099f66f9f87d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LSeriesSummable_of_sum_norm_bigO_aux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/declarations/lseriessummable-of-sum-norm-bigo-aux--a88917fcd9160b5247c70531.md) | 49 | `result-track:a88917fcd9160b5247c70531d4608b3ec5a24450a4f22ec50dfd5acfd41de0bc` |
| 2 | `theorem` | [LSeriesSummable_of_sum_norm_bigO](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/declarations/lseriessummable-of-sum-norm-bigo--ecadc5fd1012b72d664c9abc.md) | 79 | `result-track:ecadc5fd1012b72d664c9abce2f23bf17f5346eb023a756c081d1f27dd102094` |
| 3 | `theorem` | [LSeriesSummable_of_sum_norm_bigO_and_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/declarations/lseriessummable-of-sum-norm-bigo-and-nonneg--7e5ee03fe9b6f30dca68f0f6.md) | 92 | `result-track:7e5ee03fe9b6f30dca68f0f6800ebc81d84f204027d4666368ac1a474e35291e` |
| 4 | `theorem` | [LSeries_eq_mul_integral_aux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/declarations/lseries-eq-mul-integral-aux--cb646ff80f7d28ce3870f191.md) | 102 | `result-track:cb646ff80f7d28ce3870f19128449b162c298aa154de44fc369555add6dd5fc7` |
| 5 | `theorem` | [LSeries_eq_mul_integral](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/declarations/lseries-eq-mul-integral--fd892966dc222e553cb71987.md) | 140 | `result-track:fd892966dc222e553cb71987e9253242d5a6216c04ccf0a3ac57280cf3e60da3` |
| 6 | `theorem` | [LSeries_eq_mul_integral'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/declarations/lseries-eq-mul-integral--e521fced5b997a5c93e788dd.md) | 153 | `result-track:e521fced5b997a5c93e788dd73527210a711dadbd7ee4ef3b0f83b81b16a6cd1` |
| 7 | `theorem` | [LSeries_eq_mul_integral_of_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/declarations/lseries-eq-mul-integral-of-nonneg--7ca73a0e40f1ba40a890f899.md) | 162 | `result-track:7ca73a0e40f1ba40a890f89991c7753928f079135c576725f8d014a6479f8333` |
| 8 | `theorem` | [lemma₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/declarations/lemma--1e728980e76e40eb0773c204.md) | 176 | `result-track:1e728980e76e40eb0773c204b1c2f1c35019d3a20d5ed2f96b5f0922725e2f5d` |
| 9 | `theorem` | [lemma₂](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/declarations/lemma--7b1a91cbc5c0eb6725514c55.md) | 198 | `result-track:7b1a91cbc5c0eb6725514c553ee4643a376104b6a5ff1e26a1056409c946b45e` |
| 10 | `theorem` | [LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/declarations/lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div-aux--6ac123bcae3ec24391da8544.md) | 216 | `result-track:6ac123bcae3ec24391da8544623538a1b7b3fb7b83aa3ce978cd8e5cd1a718fb` |
| 11 | `theorem` | [LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₂](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/declarations/lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div-aux--1146a77c7e763a2da9601d47.md) | 228 | `result-track:1146a77c7e763a2da9601d47e994cf6d1ffb6f5f01dca9dd6e24f04b9ff8894b` |
| 12 | `theorem` | [LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₃](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/declarations/lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div-aux--44720015e9c8228f1684511b.md) | 256 | `result-track:44720015e9c8228f1684511bee8bbf5298168ed5421626ffc21c19737e8aeda1` |
| 13 | `theorem` | [LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/declarations/lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div--0e264a13bc2fb1634501413f.md) | 340 | `result-track:0e264a13bc2fb1634501413f3732a3a745052de4ab3d1fb3b9c160492018f0d1` |
| 14 | `theorem` | [LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_and_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/declarations/lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div-and-nonneg--12abf231fe68dc9f739526ea.md) | 366 | `result-track:12abf231fe68dc9f739526eaacaeb344aba18922c62105a729dfd7fc28ab8f6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
