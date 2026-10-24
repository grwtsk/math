# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.SumCoeff.Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d38edb06043c2b96455d2f8a41ceec6a8d5ff431",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d38edb06043c2b96455d2f8a41ceec6a8d5ff431`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LSeriesSummable_of_sum_norm_bigO_aux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/declarations/lseriessummable-of-sum-norm-bigo-aux--7ca0e4d326fcd370fb1fce08.md) | 41 | `result-track:7ca0e4d326fcd370fb1fce08d0b7f694fd842019e3df3e7958ac899bf90bdc9a` |
| 2 | `theorem` | [LSeriesSummable_of_sum_norm_bigO](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/declarations/lseriessummable-of-sum-norm-bigo--2768e357182a1de758f7f806.md) | 71 | `result-track:2768e357182a1de758f7f806e500a10793a148ce8ee69133cdb163d6bc631527` |
| 3 | `theorem` | [LSeriesSummable_of_sum_norm_bigO_and_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/declarations/lseriessummable-of-sum-norm-bigo-and-nonneg--3a52beebbe15896c08b756c7.md) | 84 | `result-track:3a52beebbe15896c08b756c7e9f54653143b8aa0195af71625f63c12c915b608` |
| 4 | `theorem` | [LSeries_eq_mul_integral_aux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/declarations/lseries-eq-mul-integral-aux--6ca4a269624f30fb4c010eb5.md) | 94 | `result-track:6ca4a269624f30fb4c010eb5583a98a5950fcb91ee646dbfe0d618f935165369` |
| 5 | `theorem` | [LSeries_eq_mul_integral](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/declarations/lseries-eq-mul-integral--1649fafbfac5a9ff72da5b96.md) | 132 | `result-track:1649fafbfac5a9ff72da5b969f408d74ef78c024cc76814dd664759176a2ee70` |
| 6 | `theorem` | [LSeries_eq_mul_integral'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/declarations/lseries-eq-mul-integral--bb6fa1ea0c213992e6d8ca3f.md) | 145 | `result-track:bb6fa1ea0c213992e6d8ca3faf101cbaaf003727967a567b5fc6bc8f615c0e42` |
| 7 | `theorem` | [LSeries_eq_mul_integral_of_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/declarations/lseries-eq-mul-integral-of-nonneg--7466b35226df0158b51a609f.md) | 154 | `result-track:7466b35226df0158b51a609f5b94cc5236f47ec8c250b8564af6f7715d3aa363` |
| 8 | `theorem` | [lemma₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/declarations/lemma--d3746db7c2c2cdea9c5586a1.md) | 168 | `result-track:d3746db7c2c2cdea9c5586a191b312959064db634351b3ddfdba43b6f9fac59c` |
| 9 | `theorem` | [lemma₂](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/declarations/lemma--89278afee0fe9ae71110eb42.md) | 190 | `result-track:89278afee0fe9ae71110eb42f881ec2dd9980376e8e3a08260e46a0e9bcd7cae` |
| 10 | `theorem` | [LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/declarations/lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div-aux--6ff523f6e78e46a1577d9589.md) | 208 | `result-track:6ff523f6e78e46a1577d958913bddb321e2d42dddd6d02bcf92bd954de21cbda` |
| 11 | `theorem` | [LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₂](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/declarations/lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div-aux--8f8498e5cd40bdad4e6ec2fa.md) | 220 | `result-track:8f8498e5cd40bdad4e6ec2fa0019f44a50554dad4e2d9bcbec617bccd9477d3a` |
| 12 | `theorem` | [LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₃](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/declarations/lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div-aux--fd4737b741392131483d6bc6.md) | 248 | `result-track:fd4737b741392131483d6bc63c52fcca165e033eafd01f1b84284958bb7f62d4` |
| 13 | `theorem` | [LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/declarations/lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div--250074ad86408e37d5d75ece.md) | 332 | `result-track:250074ad86408e37d5d75ece6ab191a2aa80876cdca614a2b11f4a3501f86c46` |
| 14 | `theorem` | [LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_and_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/declarations/lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div-and-nonneg--eee6ffb2abdf9efefb4b55aa.md) | 358 | `result-track:eee6ffb2abdf9efefb4b55aae3a07b265442a3a9bac2c24c96743a932e989429` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
