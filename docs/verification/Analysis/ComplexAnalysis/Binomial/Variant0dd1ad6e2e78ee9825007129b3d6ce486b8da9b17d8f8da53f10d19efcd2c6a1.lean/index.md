# Verification target: GRWTSK.Analysis.ComplexAnalysis.Binomial.Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fde95f8f3d29f910c8a6fa05fe09da5b568e44a9",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fde95f8f3d29f910c8a6fa05fe09da5b568e44a9`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Complex.ofReal_choose](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/complex-ofreal-choose--1a508ea5a10c17548cb6fce3.md) | 41 | `result-track:1a508ea5a10c17548cb6fce3481e7c23bb627a282d8cefcbb3e8c7bea0e79b46` |
| 2 | `def` | [binomialSeries](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/binomialseries--932a6f4fd957b62f0b580a39.md) | 48 | `declaration-track:932a6f4fd957b62f0b580a398975ae2cd36af04297f9d5ef64371ed893d537fb` |
| 3 | `theorem` | [binomialSeries_apply](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/binomialseries-apply--6305b78321ee38ee652b006d.md) | 54 | `result-track:6305b78321ee38ee652b006d81ff42e83bd025fca875fa6a9fa0535a98069e80` |
| 4 | `theorem` | [binomialSeries_eq_ordinaryHypergeometricSeries](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/binomialseries-eq-ordinaryhypergeometricseries--7bd7a62a33fab2e50139055e.md) | 59 | `result-track:7bd7a62a33fab2e50139055e61d82eae8fd619374ceb4367d36d17a175a05b0f` |
| 5 | `theorem` | [binomialSeries_radius_eq_top_of_nat](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/binomialseries-radius-eq-top-of-nat--d71b9cfebfa444c0f82087dd.md) | 76 | `result-track:d71b9cfebfa444c0f82087dda7ed1cf99a57057da7003d31672ff3c7aa48aa2a` |
| 6 | `theorem` | [binomialSeries_radius_eq_one](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/binomialseries-radius-eq-one--b63f4aab5d923bdadf5b74e2.md) | 83 | `result-track:b63f4aab5d923bdadf5b74e22e9fe13771a656d295031e53cb3de32ca9903641` |
| 7 | `theorem` | [binomialSeries_radius_ge_one](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/binomialseries-radius-ge-one--77fdbe6d2af3ff04db70d443.md) | 90 | `result-track:77fdbe6d2af3ff04db70d443779d1511e167ec8106beb6aaf16af681d30f495a` |
| 8 | `theorem` | [one_add_cpow_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-add-cpow-hasfpowerseriesonball-zero--999395c93cba0aec9a05ce11.md) | 101 | `result-track:999395c93cba0aec9a05ce11a2579e6bf3ff67d65d72bae43beb85a2ffaff228` |
| 9 | `theorem` | [one_add_cpow_hasFPowerSeriesAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-add-cpow-hasfpowerseriesat-zero--2f2b985076d00226abbcbc8c.md) | 149 | `result-track:2f2b985076d00226abbcbc8ca6b91e2a4e4117e40ce83965bf3b4f738c525461` |
| 10 | `theorem` | [one_div_one_sub_cpow_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-div-one-sub-cpow-hasfpowerseriesonball-zero--0db66c01a4cc0ee7d8128e79.md) | 153 | `result-track:0db66c01a4cc0ee7d8128e797fdd236ef0e6de09ce402041d3dab57d81fe75cf` |
| 11 | `theorem` | [one_div_one_sub_pow_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-div-one-sub-pow-hasfpowerseriesonball-zero--bc47c32c42d622f8667bfff3.md) | 165 | `result-track:bc47c32c42d622f8667bfff352963dc335952a6da1e5a65674715880f49850a3` |
| 12 | `theorem` | [one_div_sub_pow_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-div-sub-pow-hasfpowerseriesonball-zero--98b51f8d9b66a890004f242f.md) | 173 | `result-track:98b51f8d9b66a890004f242f2303cc3051f10af7b776ede3bfda33e0ac5f1366` |
| 13 | `theorem` | [one_div_sub_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-div-sub-hasfpowerseriesonball-zero--5ee10569ea85f76e36921c2b.md) | 189 | `result-track:5ee10569ea85f76e36921c2b45eb862f03da5b234b46fdb3e979aa5250d351ec` |
| 14 | `theorem` | [one_div_sub_sq_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-div-sub-sq-hasfpowerseriesonball-zero--b10247c61c6136e785599ae6.md) | 193 | `result-track:b10247c61c6136e785599ae6cf3219955f765fc586f7191e190ffcd37ea2a129` |
| 15 | `theorem` | [one_div_one_sub_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-div-one-sub-hasfpowerseriesonball-zero--dc40f5f808987e77da7adcd9.md) | 198 | `result-track:dc40f5f808987e77da7adcd998b2c9cf439c51e51ef8ef189f64763a82c90c15` |
| 16 | `theorem` | [one_div_one_sub_sq_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-div-one-sub-sq-hasfpowerseriesonball-zero--d6f46355ce1e6a97e3c51fa4.md) | 202 | `result-track:d6f46355ce1e6a97e3c51fa404069ac4cfaec8722c13bf8b494fba501f8fc172` |
| 17 | `theorem` | [hasFPowerSeriesOnBall_ofScalars_mul_add_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/hasfpowerseriesonball-ofscalars-mul-add-zero--7844750cf86db4cf5f2b0c43.md) | 207 | `result-track:7844750cf86db4cf5f2b0c431aa64c7f008c3a7aff9cf2e6f08759efcefe2bd9` |
| 18 | `lemma` | [one_div_sub_sq_sub_one_div_sq_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-div-sub-sq-sub-one-div-sq-hasfpowerseriesonball-zero--67a160a9efc414e46e16aedb.md) | 216 | `result-track:67a160a9efc414e46e16aedb922cfdea79580893b3dc28c4f8c9981ca29bc4eb` |
| 19 | `theorem` | [one_add_rpow_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-add-rpow-hasfpowerseriesonball-zero--4cde3631262b473590e2bfbc.md) | 234 | `result-track:4cde3631262b473590e2bfbc6e919fccc3dbb1687afbfb939c67a4f632649683` |
| 20 | `theorem` | [one_add_rpow_hasFPowerSeriesAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-add-rpow-hasfpowerseriesat-zero--f0cc3de018d9b1124504176d.md) | 244 | `result-track:f0cc3de018d9b1124504176d6e80580f72d408c43c26fefc203bfa37991b37d9` |
| 21 | `theorem` | [one_div_one_sub_rpow_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-div-one-sub-rpow-hasfpowerseriesonball-zero--4aa106746f53b2d22391865f.md) | 248 | `result-track:4aa106746f53b2d22391865fc4ebfb7b8293b485f637dc89895001e514d43c5b` |
| 22 | `theorem` | [one_div_sub_pow_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-div-sub-pow-hasfpowerseriesonball-zero--b4baae1d508d16802a109182.md) | 266 | `result-track:b4baae1d508d16802a10918280d11c437589e66e9c595e53855e5fd7325d63eb` |
| 23 | `theorem` | [one_div_sub_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-div-sub-hasfpowerseriesonball-zero--cb47e04454be3de855e8de4a.md) | 281 | `result-track:cb47e04454be3de855e8de4ad7e3c86c003135abc0593b4c1d02e5fd029c2c63` |
| 24 | `theorem` | [one_div_sub_sq_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-div-sub-sq-hasfpowerseriesonball-zero--f4b5bf267608d0e3a3d2c55b.md) | 285 | `result-track:f4b5bf267608d0e3a3d2c55b3f38c88bfe8d6e140b91cf073ab594e84cf23ae0` |
| 25 | `theorem` | [one_div_one_sub_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-div-one-sub-hasfpowerseriesonball-zero--839e9e99eab7ee7b0384b410.md) | 290 | `result-track:839e9e99eab7ee7b0384b410bd16fa1533a23b8246abfac741ec3ed63b7ca680` |
| 26 | `theorem` | [one_div_one_sub_sq_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/one-div-one-sub-sq-hasfpowerseriesonball-zero--34ebed18a4d03cd114f7b752.md) | 294 | `result-track:34ebed18a4d03cd114f7b7521fa61ecfa8a4e4ad865ef08994551f4cbfc9290f` |
| 27 | `theorem` | [hasFPowerSeriesOnBall_ofScalars_mul_add_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/declarations/hasfpowerseriesonball-ofscalars-mul-add-zero--03b979669500ed7565abf6c3.md) | 299 | `result-track:03b979669500ed7565abf6c335b6cef9db69754ba056b59d3e53b4b4e4daa720` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
