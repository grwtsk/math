# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SumIntegralComparisons.Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d4cb29ea8a78cbb61f9f1272d0afc24a9722a21",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d4cb29ea8a78cbb61f9f1272d0afc24a9722a21`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_Ico_le_integral_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/sum-ico-le-integral-of-le--e70ef08932d8f7c25027362b.md) | 60 | `result-track:e70ef08932d8f7c25027362bb61cd132c89298fe957e7d6d31593edab9586ecd` |
| 2 | `lemma` | [integral_le_sum_Ico_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/integral-le-sum-ico-of-le--8add44c563f746c332e1a8ef.md) | 76 | `result-track:8add44c563f746c332e1a8ef1b832bf867234d9d0fed2288a37a3506376cba09` |
| 3 | `theorem` | [intervalIntegrable_subset_of_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/intervalintegrable-subset-of-integrableon--4f910d73a1ba2b970878f18a.md) | 82 | `result-track:4f910d73a1ba2b970878f18ab033858a3241eceab79e8b84f8e3bd1143bdc499` |
| 4 | `theorem` | [AntitoneOn.integral_le_sum_of_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-integral-le-sum-of-integrableon--29e00c391b6ba43bd3b6feb6.md) | 89 | `result-track:29e00c391b6ba43bd3b6feb678411f57d2f46a5e507dccb433d2397dd2349710` |
| 5 | `theorem` | [AntitoneOn.integral_le_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-integral-le-sum--f37a815777fc4a714f01d3dd.md) | 105 | `result-track:f37a815777fc4a714f01d3dd3de89d026bd134baf59a8e6a6a00bc8aafc686e3` |
| 6 | `theorem` | [AntitoneOn.integral_le_sum_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-integral-le-sum-ico--c0471681ce21092fbaf1e53a.md) | 110 | `result-track:c0471681ce21092fbaf1e53a0514031b04f29b62daed179429e288a97ed2865f` |
| 7 | `theorem` | [AntitoneOn.sum_le_integral_of_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-sum-le-integral-of-integrableon--6519eb8a257c837416737d11.md) | 117 | `result-track:6519eb8a257c837416737d11cb57b1512b18602c66c5e397eac093e216ce9ec3` |
| 8 | `theorem` | [AntitoneOn.sum_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-sum-le-integral--ee4c3ca242eb6dffce9f82c8.md) | 133 | `result-track:ee4c3ca242eb6dffce9f82c83020e8bae5994f8812748a7ea73b8f3adbf467af` |
| 9 | `theorem` | [AntitoneOn.sum_le_integral_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-sum-le-integral-ico--431621c8a88240f312b38be7.md) | 138 | `result-track:431621c8a88240f312b38be7df36c9001788e44657ff47a00eac325909b064ba` |
| 10 | `theorem` | [MonotoneOn.sum_le_integral_of_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/monotoneon-sum-le-integral-of-integrableon--7f70c2484bdd1f699abfdd39.md) | 145 | `result-track:7f70c2484bdd1f699abfdd394eeb28702f6942d4d0339cce321cc5be373a70a6` |
| 11 | `theorem` | [MonotoneOn.sum_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/monotoneon-sum-le-integral--e09eddaf1504c0e01707e675.md) | 151 | `result-track:e09eddaf1504c0e01707e675a2d9dc73f42850ecf86db927a10fc669e237bf0a` |
| 12 | `theorem` | [MonotoneOn.sum_le_integral_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/monotoneon-sum-le-integral-ico--4cfc7be33c8398c7e20997ff.md) | 156 | `result-track:4cfc7be33c8398c7e20997ff276e162876b987c4add555d88398d38b0df9eaac` |
| 13 | `theorem` | [MonotoneOn.integral_le_sum_of_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/monotoneon-integral-le-sum-of-integrableon--eaa039f73e431674ffa37df2.md) | 161 | `result-track:eaa039f73e431674ffa37df22702d8cdad3879cf8e40876e2f477860c5bc5a6b` |
| 14 | `theorem` | [MonotoneOn.integral_le_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/monotoneon-integral-le-sum--23a33e3d8a8e9b50434146de.md) | 167 | `result-track:23a33e3d8a8e9b50434146de5890bde4bee87e5aa64747ada20d67f615076072` |
| 15 | `theorem` | [MonotoneOn.integral_le_sum_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/monotoneon-integral-le-sum-ico--039e58fa3e0b7f43c5ed8025.md) | 172 | `result-track:039e58fa3e0b7f43c5ed80255da6a0bb580e134e47a1f33d8250346a29c2d0ef` |
| 16 | `lemma` | [sum_mul_Ico_le_integral_of_monotone_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/sum-mul-ico-le-integral-of-monotone-antitone--9af164b5616027f20e3ab64e.md) | 177 | `result-track:9af164b5616027f20e3ab64ea2b72c1981ceaa46d88cd52b50b9e9b65b204c64` |
| 17 | `lemma` | [integral_le_sum_mul_Ico_of_antitone_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/integral-le-sum-mul-ico-of-antitone-monotone--9a6475022722046df658ecdd.md) | 196 | `result-track:9a6475022722046df658ecdd97e7e2f2c0db586561ddeeb3a15840b9f6f7a98e` |
| 18 | `lemma` | [AntitoneOn.sum_Ico_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-sum-ico-le-integral--377970f53c7d47e54633b36b.md) | 219 | `result-track:377970f53c7d47e54633b36b95d7f6f7dd3e81d33ee813e05bdef940b30e53b8` |
| 19 | `lemma` | [AntitoneOn.sum_range_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-sum-range-le-integral--cad3dd2ddb7906582dfd73f5.md) | 229 | `result-track:cad3dd2ddb7906582dfd73f5a03c8595963dc786b43a75ce7bae3739f466b685` |
| 20 | `theorem` | [AntitoneOn.summable_of_integrableOn_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-summable-of-integrableon-ioi--5e54e00fb70f52f3a30487ca.md) | 238 | `result-track:5e54e00fb70f52f3a30487ca4eb44967fcbec94e66d42cd6b6b0562808100891` |
| 21 | `theorem` | [AntitoneOn.summable_of_integrableOn_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-summable-of-integrableon-ioi-zero--b787b97edb31fc932b1787d4.md) | 248 | `result-track:b787b97edb31fc932b1787d41d3a3e6f354c099f3c3f6bb41aaa99a4fee0835a` |
| 22 | `theorem` | [AntitoneOn.tsum_comp_add_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-tsum-comp-add-le-integral--ea957948d2bcc1d803168002.md) | 254 | `result-track:ea957948d2bcc1d803168002f1c98a9ea9d263352592f93bb629ccd45381b32e` |
| 23 | `theorem` | [AntitoneOn.tsum_add_one_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-tsum-add-one-le-integral--6d039959379e04ce85de111a.md) | 268 | `result-track:6d039959379e04ce85de111aedeea40eece2a771879b9c18b01a37283aac83b1` |
| 24 | `theorem` | [AntitoneOn.tsum_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-tsum-le-integral--e3554081cabac9104144f508.md) | 275 | `result-track:e3554081cabac9104144f5083faaafefcc688c22c8a20289649f24d89450bbb1` |
| 25 | `theorem` | [AntitoneOn.abs_tsum_sub_sum_range_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-abs-tsum-sub-sum-range-le-integral--deeaa28c6e3710bd7742de6d.md) | 282 | `result-track:deeaa28c6e3710bd7742de6d793f6e165b75c57c2b255d86f5f9cb4c73593887` |
| 26 | `theorem` | [AntitoneOn.integrableOn_Ioi_of_summable_comp_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-integrableon-ioi-of-summable-comp-add--5dfe6c255a9bea67747c720d.md) | 296 | `result-track:5dfe6c255a9bea67747c720db169de2bab22d9000a52a73d16452edb0b8d662f` |
| 27 | `theorem` | [AntitoneOn.integrableOn_Ioi_zero_of_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-integrableon-ioi-zero-of-summable--8222037fcf062256a78074c4.md) | 314 | `result-track:8222037fcf062256a78074c42e062c3ed24bd366cffa67664d519a570c1a8a53` |
| 28 | `theorem` | [AntitoneOn.integral_le_tsum_comp_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-integral-le-tsum-comp-add--f172e94343c6020d93ddff16.md) | 322 | `result-track:f172e94343c6020d93ddff16b66c922fc8640e9a87c591fb4a1de8f8acfc704c` |
| 29 | `theorem` | [AntitoneOn.integral_le_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/declarations/antitoneon-integral-le-tsum--c022e774e8a249465fb0b174.md) | 339 | `result-track:c022e774e8a249465fb0b1743b96e549d01af93fe816d2260a5467d07de924b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
