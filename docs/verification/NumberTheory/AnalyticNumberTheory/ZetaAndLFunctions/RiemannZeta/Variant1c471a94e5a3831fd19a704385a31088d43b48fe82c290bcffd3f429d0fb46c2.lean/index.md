# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZeta.Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1373554596e115d890861eb6abf16a6bcc05dcb3",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1373554596e115d890861eb6abf16a6bcc05dcb3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.HurwitzZeta` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeriesComplex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completedRiemannZeta₀](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/completedriemannzeta--d5df2bedc4c87f71ff756427.md) | 67 | `declaration-track:d5df2bedc4c87f71ff75642721ed7ef6e1a3dc6397eba6bce6360a9fc8572adf` |
| 2 | `def` | [completedRiemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/completedriemannzeta--b60e8f5e321933f738d1eaed.md) | 71 | `declaration-track:b60e8f5e321933f738d1eaedb0bbcba58a96d1519d7f0d5b88fef21bc899b04a` |
| 3 | `lemma` | [HurwitzZeta.completedHurwitzZetaEven_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/hurwitzzeta-completedhurwitzzetaeven-zero--3e398b74b4161e0da2a76d0e.md) | 73 | `result-track:3e398b74b4161e0da2a76d0ed1817f00df843d466fae7e0dd73f78631052fe5c` |
| 4 | `lemma` | [HurwitzZeta.completedHurwitzZetaEven₀_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/hurwitzzeta-completedhurwitzzetaeven-zero--8a2ca7883a23f5e128cf1758.md) | 76 | `result-track:8a2ca7883a23f5e128cf1758fd19a3fce9b72f5457ba964597bdce8e600426de` |
| 5 | `lemma` | [HurwitzZeta.completedCosZeta_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/hurwitzzeta-completedcoszeta-zero--9b7b479ad7b04903410c96ce.md) | 79 | `result-track:9b7b479ad7b04903410c96ce5cb2a642281986cfc98c5e8980bd196bea40f536` |
| 6 | `lemma` | [HurwitzZeta.completedCosZeta₀_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/hurwitzzeta-completedcoszeta-zero--fb3f85842b13e493529fc375.md) | 83 | `result-track:fb3f85842b13e493529fc37556f24d761ab2eb2b177325feb2734de44f739214` |
| 7 | `lemma` | [completedRiemannZeta_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/completedriemannzeta-eq--f5c70c038cbbcdece30778e6.md) | 88 | `result-track:f5c70c038cbbcdece30778e693130394615869568f7d8cb2821f362e37cf4882` |
| 8 | `theorem` | [differentiable_completedZeta₀](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/differentiable-completedzeta--5fc76e31fff0141023d72909.md) | 93 | `result-track:5fc76e31fff0141023d7290940f6260e064a3884d2b9c19967a84591348cf3af` |
| 9 | `theorem` | [differentiableAt_completedZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/differentiableat-completedzeta--f8ff907ab013d015d615cccc.md) | 97 | `result-track:f8ff907ab013d015d615cccc0075b7a8720bc26449cda202fe63e0ec733953e1` |
| 10 | `theorem` | [completedRiemannZeta₀_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/completedriemannzeta-one-sub--e4aa99f5e4bba3964c237370.md) | 103 | `result-track:e4aa99f5e4bba3964c237370455d0ff8133b128a7ff52ec8a8891f0a6aac83ae` |
| 11 | `theorem` | [completedRiemannZeta_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/completedriemannzeta-one-sub--dc49fbc41b524c903aafc6e6.md) | 109 | `result-track:dc49fbc41b524c903aafc6e6ff080a3ea9c2d0c8849844fb4935fb569be585f3` |
| 12 | `lemma` | [completedRiemannZeta_residue_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/completedriemannzeta-residue-one--77f21ab2512e7f19ba9d4d10.md) | 114 | `result-track:77f21ab2512e7f19ba9d4d10e7b0daa6c50a1e7fea72ce9f0557fe808dba3622` |
| 13 | `def` | [riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/riemannzeta--eaceed9b4b71e8e55b77c08f.md) | 123 | `declaration-track:eaceed9b4b71e8e55b77c08ff546e0c86f8a7de2847b59bef4a58193892d1b96` |
| 14 | `lemma` | [HurwitzZeta.hurwitzZetaEven_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/hurwitzzeta-hurwitzzetaeven-zero--f9a81cc8e14d68471f60db0a.md) | 125 | `result-track:f9a81cc8e14d68471f60db0a3dae0dff25b86006fc0af467d1374e8b7132772b` |
| 15 | `lemma` | [HurwitzZeta.cosZeta_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/hurwitzzeta-coszeta-zero--a3dffba0770fc9d541df61fb.md) | 127 | `result-track:a3dffba0770fc9d541df61fb4168327985012308c53d3bf76fa907e88d45b39e` |
| 16 | `lemma` | [HurwitzZeta.hurwitzZeta_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/hurwitzzeta-hurwitzzeta-zero--daf04deb3422d45f0628fe01.md) | 131 | `result-track:daf04deb3422d45f0628fe01f3210033ab16c2478aa211918f6862f3f4c97a5c` |
| 17 | `lemma` | [HurwitzZeta.expZeta_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/hurwitzzeta-expzeta-zero--ee28d0fcde1667116f9dd8f1.md) | 135 | `result-track:ee28d0fcde1667116f9dd8f14a6b700bfa10dd5aef508e161533808bb80fc05e` |
| 18 | `theorem` | [differentiableAt_riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/differentiableat-riemannzeta--b29687043164417a2b0a8b5a.md) | 141 | `result-track:b29687043164417a2b0a8b5af452215663bff563c1f93bbf874e78df47e2dc8f` |
| 19 | `theorem` | [riemannZeta_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/riemannzeta-zero--c15953957516d5d66d277351.md) | 145 | `result-track:c15953957516d5d66d2773516f9be42da71573bd2bdcff6d8839d45431e872fa` |
| 20 | `lemma` | [riemannZeta_def_of_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/riemannzeta-def-of-ne-zero--d82dbf30acfcdea7e767e1df.md) | 148 | `result-track:d82dbf30acfcdea7e767e1dfd3df091b8e07b49b05a1fad926fe47fe64d0a90a` |
| 21 | `theorem` | [riemannZeta_neg_two_mul_nat_add_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/riemannzeta-neg-two-mul-nat-add-one--9ebc1ebb6790c1579295fb69.md) | 153 | `result-track:9ebc1ebb6790c1579295fb69c92ecd4468ce8091515c95e062dbeabd0edd9250` |
| 22 | `theorem` | [riemannZeta_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/riemannzeta-one-sub--3ef6b18d2fdc77612921b11b.md) | 158 | `result-track:3ef6b18d2fdc77612921b11bcdff8d18aa01a7830dd104ecea51dcf68a2391c8` |
| 23 | `def` | [RiemannHypothesis](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/riemannhypothesis--d6c2c9ff930eeb2c00c5b8ae.md) | 164 | `declaration-track:d6c2c9ff930eeb2c00c5b8ae01d861f3a777a234e7b87b8e65cc19e6ce58838d` |
| 24 | `theorem` | [completedZeta_eq_tsum_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/completedzeta-eq-tsum-of-one-lt-re--cd4bb410a067dcb9380335d1.md) | 171 | `result-track:cd4bb410a067dcb9380335d1106c31c61ce4f27c3d2657b7e515c30d199c784a` |
| 25 | `theorem` | [zeta_eq_tsum_one_div_nat_cpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/zeta-eq-tsum-one-div-nat-cpow--fcec130e1a76cc16e13c84d3.md) | 186 | `result-track:fcec130e1a76cc16e13c84d3b979eeb4d622365d437697f04ca380ceee82db7b` |
| 26 | `theorem` | [zeta_eq_tsum_one_div_nat_add_one_cpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/zeta-eq-tsum-one-div-nat-add-one-cpow--845934015c773dd37d15c5e8.md) | 193 | `result-track:845934015c773dd37d15c5e82d45df175f4504423bce94449f573e03b5e561fa` |
| 27 | `theorem` | [zeta_nat_eq_tsum_of_gt_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/zeta-nat-eq-tsum-of-gt-one--95a58f45250580fdb16ecd83.md) | 202 | `result-track:95a58f45250580fdb16ecd83946ee1ecf17768bab8e1f58279fe2f51b3a26384` |
| 28 | `lemma` | [riemannZeta_residue_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/riemannzeta-residue-one--aab385f688a95961aed4822a.md) | 209 | `result-track:aab385f688a95961aed4822a24482846a13500b8dce0407d0073a08027196adc` |
| 29 | `theorem` | [tendsto_sub_mul_tsum_nat_cpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/tendsto-sub-mul-tsum-nat-cpow--27560e861134e0edc8e7ffed.md) | 213 | `result-track:27560e861134e0edc8e7ffed85e521d8277d1b84ab5398cc5c67535296b6ae67` |
| 30 | `theorem` | [tendsto_sub_mul_tsum_nat_rpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/declarations/tendsto-sub-mul-tsum-nat-rpow--e9917204cf3d98685d5fb000.md) | 222 | `result-track:e9917204cf3d98685d5fb000c224612b22b93421d4ba54498015051fc29e1fe6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
