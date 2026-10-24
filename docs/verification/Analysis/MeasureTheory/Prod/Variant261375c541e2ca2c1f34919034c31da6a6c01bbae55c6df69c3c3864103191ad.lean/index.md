# Verification target: GRWTSK.Analysis.MeasureTheory.Prod.Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a11edce1155ee73b04ed856f70353e9c9c7b81f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a11edce1155ee73b04ed856f70353e9c9c7b81f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean.json)

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
| 1 | `class` | [HasProd](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/hasprod--c9205733d6f25ac68a46213e.md) | 45 | `declaration-track:c9205733d6f25ac68a46213e41cfc1ba8710f50a0c208b7eadc5e393bdd0ac6e` |
| 2 | `def` | [prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/prod--bbf984c093bb18909b1bfb65.md) | 52 | `declaration-track:bbf984c093bb18909b1bfb6505835d6993e234569cb25ac2b77c7afd4e57dd81` |
| 3 | `lemma` | [prod_eq_zero_of_not_hasProd](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/prod-eq-zero-of-not-hasprod--ed46462565c2e70af448cdfd.md) | 56 | `result-track:ed46462565c2e70af448cdfd8a04bbcf822ccbf2b535b6202b87bdc62a023ccf` |
| 4 | `lemma` | [prod_apply](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/prod-apply--59d894e47c362045564ac7d4.md) | 60 | `result-track:59d894e47c362045564ac7d47c6aaa2f48489e71d9444a7d265a1c6058504132` |
| 5 | `lemma` | [HasProd.flip](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/hasprod-flip--1d385fcd26246bf13e7a3333.md) | 76 | `result-track:1d385fcd26246bf13e7a33336284c5aeb4eae3f106b84895eb14f1150a1ca140` |
| 6 | `lemma` | [hasProd_flip_iff](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/hasprod-flip-iff--12c5aa48cffb8b4c7eace516.md) | 82 | `result-track:12c5aa48cffb8b4c7eace5167a37ad9190b30894b7a1bbccbcffb2bcd516b06d` |
| 7 | `theorem` | [stronglyMeasurable_vectorMeasure_prodMk_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/stronglymeasurable-vectormeasure-prodmk-left--27c9e6e1c90780529fbacea1.md) | 88 | `result-track:27c9e6e1c90780529fbacea10b1069be1439574b629fb623c0c92cebf00be22e` |
| 8 | `theorem` | [integrable_vectorMeasure_prodMk_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/integrable-vectormeasure-prodmk-left--90ce93d1f3dd750ac37d5202.md) | 108 | `result-track:90ce93d1f3dd750ac37d5202ff6988f1a98c973a732666861ffffb37ca211804` |
| 9 | `def` | [prodOfIsFiniteMeasureLeft](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/prodofisfinitemeasureleft--5190cc6cef892dd1af873a6d.md) | 119 | `declaration-track:5190cc6cef892dd1af873a6d26cdb6e0e58cb1fe0e2b27858c3be2128b1c2c5b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/instance--a5ccb33acbe7b649db28bbdb.md) | 151 | `declaration-track:a5ccb33acbe7b649db28bbdbcb9331049b402d6a3ccf4f162f8fd01020566856` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/instance--ed2158cc24ee756134c6a25c.md) | 158 | `declaration-track:ed2158cc24ee756134c6a25c209d86f7e2cfc68a64103c90412c762e8a453fcf` |
| 12 | `lemma` | [prod_eq_of_forall_apply_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/prod-eq-of-forall-apply-prod--6406a9e3ddfc353a1575fe0c.md) | 161 | `result-track:6406a9e3ddfc353a1575fe0cd25215f294b7817e9c34d4617a2914814c15f02e` |
| 13 | `lemma` | [map_prod_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/map-prod-swap--fcdfe7d3d807f58411897e5e.md) | 170 | `result-track:fcdfe7d3d807f58411897e5ea7a059a6ba9f83141b2c2160d928130161682008` |
| 14 | `lemma` | [prod_apply_eq_integral](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/prod-apply-eq-integral--900d0e16fb965e1018ea8c19.md) | 179 | `result-track:900d0e16fb965e1018ea8c198469249d01be81668c24cc7a462d17b13fc21eeb` |
| 15 | `lemma` | [prod_flip_apply_eq_integral](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/prod-flip-apply-eq-integral--7d682dffa34a009a78f47f74.md) | 190 | `result-track:7d682dffa34a009a78f47f74afbae960eb2698be65cfa1648df247c2c9636c80` |
| 16 | `lemma` | [variation_prod_le](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/variation-prod-le--b6889aec9b8cc90ab05768d9.md) | 195 | `result-track:b6889aec9b8cc90ab05768d9dafadd4fc9fc6544743ac85c97d8b08db734ba20` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/instance--9c17f88a5a7234882f6566fa.md) | 203 | `declaration-track:9c17f88a5a7234882f6566fa6e93cc3f8ee9e0d8edee63f62880c241c4741860` |
| 18 | `lemma` | [_root_.MeasureTheory.Integrable.prod_vectorMeasure](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/root-measuretheory-integrable-prod-vectormeasure--e1c0e004d9f8b3bed8195ae6.md) | 211 | `result-track:e1c0e004d9f8b3bed8195ae6e0b31f3a07482f3df6a51f463676da2855b8a64f` |
| 19 | `theorem` | [integral_prod_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/integral-prod-swap--cb8308b2d90714978d89bc3d.md) | 217 | `result-track:cb8308b2d90714978d89bc3dba187d84965ae5e90934fa94935a2e4a42202adf` |
| 20 | `theorem` | [_root_.MeasureTheory.StronglyMeasurable.integral_vectorMeasure_prod_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/root-measuretheory-stronglymeasurable-integral-vectormeasure-prod-right--db44e510c3d8a37732e25b05.md) | 226 | `result-track:db44e510c3d8a37732e25b057482bc0226cda2d0c5afc1f5890640da9f626e9d` |
| 21 | `theorem` | [_root_.MeasureTheory.StronglyMeasurable.integral_vectorMeasure_prod_right'](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/root-measuretheory-stronglymeasurable-integral-vectormeasure-prod-right--5cec53ddc864b74a96989631.md) | 235 | `result-track:5cec53ddc864b74a9698963143a14684b9e43cce17508ca5624380fe4b6fd9ee` |
| 22 | `theorem` | [_root_.MeasureTheory.StronglyMeasurable.integral_vectorMeasure_prod_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/root-measuretheory-stronglymeasurable-integral-vectormeasure-prod-left--f7b62669b000889c0921f120.md) | 243 | `result-track:f7b62669b000889c0921f12032ebc68f5ac26e161f7bc3a60cc7e652ff338568` |
| 23 | `theorem` | [_root_.MeasureTheory.StronglyMeasurable.integral_vectorMeasure_prod_left'](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/root-measuretheory-stronglymeasurable-integral-vectormeasure-prod-left--e26b67a3d1fcc11b26c6c1cc.md) | 250 | `result-track:e26b67a3d1fcc11b26c6c1ccab1ecc8cf7d0d63af11d68ce625e5edf58bf7b04` |
| 24 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.integral_vectorMeasure_prod_right'](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/root-measuretheory-aestronglymeasurable-integral-vectormeasure-prod-righ--59342ad3a1dca11c35338832.md) | 257 | `result-track:59342ad3a1dca11c35338832fce806890f3204086af2ae9b4c17957b59e18bea` |
| 25 | `theorem` | [_root_.MeasureTheory.Integrable.integral_vectorMeasure_prod_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/root-measuretheory-integrable-integral-vectormeasure-prod-left--00fe0d6ca8fedcc0160d73c3.md) | 265 | `result-track:00fe0d6ca8fedcc0160d73c34abe774712d0135865cd8103d1a0f8afa0abd1da` |
| 26 | `theorem` | [lintegral_fn_integral_sub](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/lintegral-fn-integral-sub--2b21447597840f946eeab982.md) | 276 | `result-track:2b21447597840f946eeab982dbaddaf3946ae47fc3d2105bdb0da9eb173d16ab` |
| 27 | `theorem` | [continuous_integral_integral](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/continuous-integral-integral--953bbf08059e9c9361478483.md) | 287 | `result-track:953bbf08059e9c93614784836bf5634e183c4eae0258d47f4ea7e581d928b074` |
| 28 | `theorem` | [integral_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/integral-prod--cf4a850012883c738831f1f3.md) | 314 | `result-track:cf4a850012883c738831f1f30b910c81fd0a96e73890904613a307761c4a25d1` |
| 29 | `theorem` | [integral_prod_smul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/integral-prod-smul--2e3aa5f43759780241f62524.md) | 362 | `result-track:2e3aa5f43759780241f62524759af7eb5d48d684691519449ffb425a2f6c50a4` |
| 30 | `theorem` | [integral_prod_symm](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/integral-prod-symm--e20d59ab82892415faba05a3.md) | 375 | `result-track:e20d59ab82892415faba05a3703270ff3aa5ffe642ca8f46e42107fa064e50db` |
| 31 | `theorem` | [integral_prod_smul_symm](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/integral-prod-smul-symm--62248b6b097e85cac1f2ca59.md) | 389 | `result-track:62248b6b097e85cac1f2ca59134d27c0820bc186b530021c4336d6903387a808` |
| 32 | `theorem` | [integral_integral](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/integral-integral--61a55ce996a9e12232feb516.md) | 398 | `result-track:61a55ce996a9e12232feb516389bb3e1cf917de4362c5af8dc84549fb1720296` |
| 33 | `theorem` | [integral_integral_smul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/integral-integral-smul--c555f07d518671e018e59158.md) | 408 | `result-track:c555f07d518671e018e59158012ed45139d9ff46841b058c95fed9435544eca4` |
| 34 | `theorem` | [integral_integral_symm](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/integral-integral-symm--9390d8ecda7f62b281f08293.md) | 415 | `result-track:9390d8ecda7f62b281f08293760120991b1fa79066c267c2c8508a472dc848ce` |
| 35 | `theorem` | [integral_integral_smul_symm](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/integral-integral-smul-symm--bd16f7550b99527e84691f3e.md) | 425 | `result-track:bd16f7550b99527e84691f3eed826436fa24e994cd7fff82ebbfeca29f17804e` |
| 36 | `theorem` | [integral_integral_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/integral-integral-swap--182480270224a9bc96800195.md) | 434 | `result-track:182480270224a9bc968001951929427e93df0f7795b34b5cb480c27e53409458` |
| 37 | `theorem` | [integral_integral_smul_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/declarations/integral-integral-smul-swap--3c2a3a34b2f4f0c00ca057a8.md) | 453 | `result-track:3c2a3a34b2f4f0c00ca057a8f26a28b4a6f0e5db5c0f6b7da6fc6ec6e5541c0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
