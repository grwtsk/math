# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PerronFormula.Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37ebc097b2f05a955e08b89d04b4afa1b77f2ab2",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37ebc097b2f05a955e08b89d04b4afa1b77f2ab2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.Analysis.Asymptotics.Uniformly` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.ResidueCalcOnRectangles` — import line 10; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Wiener` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [zeroTendstoDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/zerotendstodiff--835b24d512ced574e5644815.md) | 40 | `result-track:835b24d512ced574e5644815d4411220c335e411a4e763b484f41a29c04c2744` |
| 2 | `lemma` | [RectangleIntegral_tendsTo_VerticalIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/rectangleintegral-tendsto-verticalintegral--e8e65bacba7ba6e10fe65f58.md) | 59 | `result-track:e8e65bacba7ba6e10fe65f58ae5d0c60eb9a92650687718b717f3fa0ef7b1042` |
| 3 | `lemma` | [verticalIntegral_eq_verticalIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/verticalintegral-eq-verticalintegral--15edfadbe5141bbb5d3b706e.md) | 75 | `result-track:15edfadbe5141bbb5d3b706e3c4bfdbe818b7879c2cedf09abcebd0416c28344` |
| 4 | `lemma` | [verticalIntegral_sub_verticalIntegral_eq_squareIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/verticalintegral-sub-verticalintegral-eq-squareintegral--ec19654dd413b2b2dcb77cdc.md) | 87 | `result-track:ec19654dd413b2b2dcb77cdc415ba47d05895f048deac94317295bd40533b396` |
| 5 | `lemma` | [RectangleIntegral_tendsTo_UpperU](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/rectangleintegral-tendsto-upperu--8118846804851b457b96a213.md) | 129 | `result-track:8118846804851b457b96a213ed0a5b9c2f237fae55eefc4c63e354329f8c5153` |
| 6 | `lemma` | [RectangleIntegral_tendsTo_LowerU](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/rectangleintegral-tendsto-loweru--ecb1aa7434f612ebbd526461.md) | 160 | `result-track:ecb1aa7434f612ebbd526461db1897ace216f96294cefe0a20758e20de0000e3` |
| 7 | `lemma` | [limitOfConstant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/limitofconstant--5fd9fe97dedb2295c8c6e5a7.md) | 208 | `result-track:5fd9fe97dedb2295c8c6e5a76c3071cdca31170b2ed2a3be79598f84ff696326` |
| 8 | `lemma` | [limitOfConstantLeft](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/limitofconstantleft--79ad4b9256ee8b145e4478f2.md) | 230 | `result-track:79ad4b9256ee8b145e4478f2401aa0fa2e7dfb6ea8563b5b47dc525c99665f47` |
| 9 | `lemma` | [tendsto_rpow_atTop_nhds_zero_of_norm_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/tendsto-rpow-attop-nhds-zero-of-norm-lt-one--0022f8e52a8626273d5b57d7.md) | 251 | `result-track:0022f8e52a8626273d5b57d72bb13da7e49bf1bae6e55cb23fe923577ccf674b` |
| 10 | `lemma` | [tendsto_rpow_atTop_nhds_zero_of_norm_gt_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/tendsto-rpow-attop-nhds-zero-of-norm-gt-one--793c53811e2360f41930e378.md) | 264 | `result-track:793c53811e2360f41930e3785224e72257c305283eccbcbf0705b01d0cf97087` |
| 11 | `lemma` | [Complex.cpow_eq_exp_log_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/complex-cpow-eq-exp-log-ofreal--ccc906682bba549084a0fad0.md) | 279 | `result-track:ccc906682bba549084a0fad09055318558d313346478a8b44c14f54c8b9733b6` |
| 12 | `lemma` | [Complex.cpow_neg_eq_inv_pow_ofReal_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/complex-cpow-neg-eq-inv-pow-ofreal-pos--12cb4dfb81c82d2ff480dfea.md) | 284 | `result-track:12cb4dfb81c82d2ff480dfead9ac356adfba2343806b4a46e6c93f0cd249668f` |
| 13 | `abbrev` | [f](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/f--9b1ba3bc464ed63fb089e47a.md) | 293 | `declaration-track:9b1ba3bc464ed63fb089e47aeaae3f970d1083243c6b953ffaa519737ac793f1` |
| 14 | `lemma` | [f_mul_eq_f](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/f-mul-eq-f--606b2402ddeeafbb34dd08e5.md) | 296 | `result-track:606b2402ddeeafbb34dd08e5f7c83335c7d19f0a3de275c1ff8a68252adef79a` |
| 15 | `lemma` | [isHolomorphicOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/isholomorphicon--0afb5c6a2ecb6d0fe1a64345.md) | 318 | `result-track:0afb5c6a2ecb6d0fe1a643456e581c10939e2f7e543f5069be38dc38ce3491c4` |
| 16 | `lemma` | [integral_one_div_const_add_sq_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/integral-one-div-const-add-sq-pos--4686d2a08c37bf33ecee4fc6.md) | 333 | `result-track:4686d2a08c37bf33ecee4fc6b83e0aaf0a2976b2365731834c0387bc8dd9f1be` |
| 17 | `lemma` | [Integrable.one_div_const_add_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/integrable-one-div-const-add-sq--d2422e1fdaf62058b1ff54cc.md) | 344 | `result-track:d2422e1fdaf62058b1ff54ccd8d82f93b19993925301a9794213c18839a80dea` |
| 18 | `lemma` | [integralPosAux'_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/integralposaux-of-le--aea03bd54510c89328170a58.md) | 348 | `result-track:aea03bd54510c89328170a580232d5dec3b9e6decef4c73b563078fa15f06e98` |
| 19 | `lemma` | [integralPosAux'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/integralposaux--51cb27366ad720d95676fb7e.md) | 375 | `result-track:51cb27366ad720d95676fb7eb55706c76799e249a484000dbb64fc53bc83c7a1` |
| 20 | `lemma` | [integralPosAux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/integralposaux--bedaa6efec690701a20ffc07.md) | 391 | `result-track:bedaa6efec690701a20ffc07a5b0f2cb3716698b02950baa4f2d7fe90a848552` |
| 21 | `lemma` | [vertIntBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/vertintbound--a90cdef8549b7a8108518d84.md) | 408 | `result-track:a90cdef8549b7a8108518d84d2751ab70c834dbeb78aebe9cf2adf355c82e32e` |
| 22 | `lemma` | [vertIntBoundLeft](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/vertintboundleft--6b48f32e3f3193acf02683c0.md) | 452 | `result-track:6b48f32e3f3193acf02683c078f5ed4798551776b414278f9c14a1e1f2b0d7ef` |
| 23 | `lemma` | [map_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/map-conj--58c7d3450e35a79a45c317e8.md) | 498 | `result-track:58c7d3450e35a79a45c317e801888fbb3edbb3ed369b571cf655045ce6541276` |
| 24 | `theorem` | [isTheta_uniformlyOn_uIcc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/istheta-uniformlyon-uicc--ed5775863221ba9e1ced9f94.md) | 505 | `result-track:ed5775863221ba9e1ced9f94569043fe0e68d0c6e33c00c824af2cf97aa2fc6d` |
| 25 | `theorem` | [isTheta_uniformlyOn_uIoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/istheta-uniformlyon-uioc--b0c89951dd0e06771fe40056.md) | 528 | `result-track:b0c89951dd0e06771fe4005659c176b8cd95d6e2a354087eec2848834f01b37b` |
| 26 | `lemma` | [isTheta](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/istheta--9486bcf14ab4da7222bc3ee9.md) | 535 | `result-track:9486bcf14ab4da7222bc3ee922cfb41a752e13c5dfa6999eee65f659289b8696` |
| 27 | `lemma` | [isIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/isintegrable--66fc0d0b3713c3dc3ab419ba.md) | 549 | `result-track:66fc0d0b3713c3dc3ab419ba5e4a0a1ecba05117393f601ec4d163f01e703683` |
| 28 | `theorem` | [horizontal_integral_isBigO](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/horizontal-integral-isbigo--df3a2993dc559314d73f7e09.md) | 568 | `result-track:df3a2993dc559314d73f7e0930d5f42992b27b53d77bfb4428f4743af877fd2e` |
| 29 | `lemma` | [tendsto_zero_Lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/tendsto-zero-lower--aff6a6a9cbdd1bfae72d8c14.md) | 593 | `result-track:aff6a6a9cbdd1bfae72d8c14d9ad0eb1a7080dc0cfae525c75ef1273b96d5be4` |
| 30 | `lemma` | [tendsto_zero_Upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/tendsto-zero-upper--e6c8e522fd50cde8c4110cc4.md) | 613 | `result-track:e6c8e522fd50cde8c4110cc4c8d140a65af63b7faa58afbf6f4e84d48890ef7d` |
| 31 | `lemma` | [contourPull](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/contourpull--8e62361ae97ad4a69eebce71.md) | 621 | `result-track:8e62361ae97ad4a69eebce713343c239e7c44b851b8f9581b9d451caab68a96b` |
| 32 | `lemma` | [formulaLtOne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/formulaltone--4943c4271d9a2d494a0a2e02.md) | 646 | `result-track:4943c4271d9a2d494a0a2e0230191330a471edf7ce034a74b3418698675c7b86` |
| 33 | `theorem` | [HolomorphicOn.upperUIntegral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/holomorphicon-upperuintegral-eq-zero--2af33919a40c0750ecabb79a.md) | 684 | `result-track:2af33919a40c0750ecabb79a493700781779def75e3cf69a7703cf3fe04a4115` |
| 34 | `theorem` | [HolomorphicOn.lowerUIntegral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/holomorphicon-loweruintegral-eq-zero--93355ed8bd1fd9104474b596.md) | 697 | `result-track:93355ed8bd1fd9104474b596d71511d934e11711a37497d8d5239115d138bbe3` |
| 35 | `lemma` | [sPlusOneNeZero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/splusonenezero--40c1c208c4fac225ed8d4d23.md) | 711 | `result-track:40c1c208c4fac225ed8d4d23280b430f3ef708a073b0a5130550b0af222fed42` |
| 36 | `lemma` | [keyIdentity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/keyidentity--9148ac2d8b25783b19515049.md) | 726 | `result-track:9148ac2d8b25783b19515049123a936897950dc196673d1ff2507aaa9caff8fa` |
| 37 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.ZeroTendstoDiff.Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.Filter.Tendsto.eventually_bddAbove](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/root-grwtsk-analysis-realanalysis-integration-zerotendstodiff-variant52f--5ef06ac103923e3eaafda329.md) | 735 | `result-track:5ef06ac103923e3eaafda32929368d57a03d63f18b1787a0ffcbda5d9f358693` |
| 38 | `lemma` | [bddAbove_square_of_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/bddabove-square-of-tendsto--335f405801ee2cd419c74e9a.md) | 744 | `result-track:335f405801ee2cd419c74e9a985e445e6ec7d05190ca8545d68d1c1f5470a750` |
| 39 | `lemma` | [diffBddAtZero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/diffbddatzero--fcbf4ff3cd7b1b17b65a81c2.md) | 770 | `result-track:fcbf4ff3cd7b1b17b65a81c2bdc98a2b6d9239c36e4b2eb963ade5bce194837e` |
| 40 | `lemma` | [diffBddAtNegOne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/diffbddatnegone--72a6fa8d235bc8224bfff944.md) | 816 | `result-track:72a6fa8d235bc8224bfff944befc28aa579d2f0c20ceecb31b8c2b575cc1d5d2` |
| 41 | `lemma` | [residueAtZero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/residueatzero--d3f3725a9530d08d5352d83e.md) | 853 | `result-track:d3f3725a9530d08d5352d83ebf4ed453f6b558a9f5bf69a7fdccdc6e7ef839ea` |
| 42 | `lemma` | [residueAtNegOne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/residueatnegone--531a29851a0246f4b84352b8.md) | 896 | `result-track:531a29851a0246f4b84352b8a00aa7d5de3d2c6dee7272d0760e002779e6530b` |
| 43 | `lemma` | [residuePull1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/residuepull1--74e51eb1e43c536c1fb90c90.md) | 943 | `result-track:74e51eb1e43c536c1fb90c90bbef02ca03058243e3bde64699f0b0c9d02def79` |
| 44 | `lemma` | [residuePull2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/residuepull2--3c5cf53b9795e2fbc72c87a1.md) | 977 | `result-track:3c5cf53b9795e2fbc72c87a13383fc9197ac4efc8718175ceefa9c53d9e1db3f` |
| 45 | `lemma` | [contourPull3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/contourpull3--09171b64c93560a586c0cffb.md) | 1013 | `result-track:09171b64c93560a586c0cffbad113bd88c6b64a3817bdc4c2b74090bbc31788f` |
| 46 | `lemma` | [formulaGtOne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/declarations/formulagtone--ac63fae4f3d4805994d590d8.md) | 1034 | `result-track:ac63fae4f3d4805994d590d83e8ef6fed7ec10db59f3e32b8cc35acdef4c8340` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
