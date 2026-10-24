# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletLSeries.Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e736399417772e88ffed62b99b22deab944529a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e736399417772e88ffed62b99b22deab944529a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [riemannZetaSummandHom](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/riemannzetasummandhom--49fb7df27fdbb8bd4534aac8.md) | 43 | `declaration-track:49fb7df27fdbb8bd4534aac8cdf505fe9c8d27972457459f5e51224eb3fb203e` |
| 2 | `def` | [dirichletSummandHom](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/dirichletsummandhom--d33f351010a4870e40535613.md) | 54 | `declaration-track:d33f351010a4870e405356137eb543168a954c69571a29dfd1324322b06db4d1` |
| 3 | `lemma` | [summable_riemannZetaSummand](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/summable-riemannzetasummand--3a25972a18dadb3b89ad9fcc.md) | 65 | `result-track:3a25972a18dadb3b89ad9fccea5ef815f1f146420aaa291e8726210d3732f451` |
| 4 | `lemma` | [tsum_riemannZetaSummand](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/tsum-riemannzetasummand--a53405bae161d7853b421995.md) | 73 | `result-track:a53405bae161d7853b4219958e6bc657d4c7033b6cbc8da965371dcec1e804e1` |
| 5 | `lemma` | [summable_dirichletSummand](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/summable-dirichletsummand--2082ceac31fae091da090032.md) | 81 | `result-track:2082ceac31fae091da0900326ac4517567c0a0ad0121be32d119926839b2550e` |
| 6 | `lemma` | [tsum_dirichletSummand](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/tsum-dirichletsummand--78d67004e2cfbb7f53795fe7.md) | 88 | `result-track:78d67004e2cfbb7f53795fe7d1d4f51aaf13a840b4e3bd301ac5839315006c97` |
| 7 | `theorem` | [riemannZeta_eulerProduct_hasProd](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/riemannzeta-eulerproduct-hasprod--2392d8f8988ef5795b417209.md) | 99 | `result-track:2392d8f8988ef5795b41720958803adf3f17e46ce18d2dc9442cae5587526bd9` |
| 8 | `theorem` | [riemannZeta_eulerProduct_tprod](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/riemannzeta-eulerproduct-tprod--8434cd68275476f8ec742a44.md) | 106 | `result-track:8434cd68275476f8ec742a44402f40023379ace87b68d6bbba05f8ab6de6677a` |
| 9 | `theorem` | [riemannZeta_eulerProduct](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/riemannzeta-eulerproduct--076d3344d92ba59fd212c4d3.md) | 112 | `result-track:076d3344d92ba59fd212c4d335657c27d4dce01e8eec5191c5ead57a073c6af1` |
| 10 | `theorem` | [DirichletCharacter.LSeries_eulerProduct_hasProd](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/dirichletcharacter-lseries-eulerproduct-hasprod--fae6507f8e15689541059117.md) | 122 | `result-track:fae6507f8e156895410591175e0334eef6fc9a0c3afecba5db09e5629d7eedc4` |
| 11 | `theorem` | [DirichletCharacter.LSeries_eulerProduct_tprod](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/dirichletcharacter-lseries-eulerproduct-tprod--2492b88ef7555f478d5ed562.md) | 130 | `result-track:2492b88ef7555f478d5ed5624d7e0647a7de111366ae51fc32627245b952c135` |
| 12 | `theorem` | [DirichletCharacter.LSeries_eulerProduct](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/dirichletcharacter-lseries-eulerproduct--125dda8470353b2022cd1a12.md) | 137 | `result-track:125dda8470353b2022cd1a12314f50f6c08c608ca8f78d34201638e28c9c20d0` |
| 13 | `theorem` | [DirichletCharacter.LSeries_eulerProduct_exp_log](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/dirichletcharacter-lseries-eulerproduct-exp-log--8b95f22f72585f4b7ba16547.md) | 147 | `result-track:8b95f22f72585f4b7ba16547f7def2c8bf2601a838ece8c5a8ce5b7215a613da` |
| 14 | `theorem` | [ArithmeticFunction.LSeries_zeta_eulerProduct_exp_log](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/arithmeticfunction-lseries-zeta-eulerproduct-exp-log--8773b4ae6e33606eabe1c92a.md) | 162 | `result-track:8773b4ae6e33606eabe1c92a548204dfbfc35cbe2e27465e46e73aa51a6bf0c8` |
| 15 | `theorem` | [riemannZeta_eulerProduct_exp_log](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/riemannzeta-eulerproduct-exp-log--065b1d704c2cfbee19b5563b.md) | 170 | `result-track:065b1d704c2cfbee19b5563be7df0bc2b0e91a6790e662d52f67d8eed9de34af` |
| 16 | `lemma` | [DirichletCharacter.LSeries_changeLevel](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/dirichletcharacter-lseries-changelevel--1d3459772889905ac42209ee.md) | 181 | `result-track:1d3459772889905ac42209eeca60d686c2e635e3ceeccf4b02e158877ef84ea9` |
| 17 | `theorem` | [DirichletCharacter.eulerProduct_log_eq_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/dirichletcharacter-eulerproduct-log-eq-lseries--25678839cf508353a4e730f5.md) | 229 | `result-track:25678839cf508353a4e730f5c381980ccfe2d5eba8501d7ccb05ee06fb468a97` |
| 18 | `theorem` | [DirichletCharacter.LSeries_eq_exp_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/dirichletcharacter-lseries-eq-exp-lseries--7f9ffcb23db28fa44d4da9dc.md) | 268 | `result-track:7f9ffcb23db28fa44d4da9dca0e71217a5c0061507afa142a7af5f9fb1c41997` |
| 19 | `theorem` | [riemannZeta_eq_exp_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/riemannzeta-eq-exp-lseries--1a7421656a5e3700e318cdc6.md) | 272 | `result-track:1a7421656a5e3700e318cdc6a1578d00a329b9b0e1ad56750ca2fe6a47e41fbd` |
| 20 | `theorem` | [log_riemannZeta_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/declarations/log-riemannzeta-eq--4de5837dc050a2558656bf8c.md) | 281 | `result-track:4de5837dc050a2558656bf8c29a31fe65bee2cb53465a2b2b8debe172e25d673` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
