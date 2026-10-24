# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PSeries.Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b8568d7fc2dfd30d472f83eb0d0892d3194d53e",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b8568d7fc2dfd30d472f83eb0d0892d3194d53e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SuccDiffBounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/succdiffbounded--fc78d5a27a2e4ddd3a77e0d0.md) | 55 | `declaration-track:fc78d5a27a2e4ddd3a77e0d0494669d6b04c48c92087b1b551b5276ebf902494` |
| 2 | `theorem` | [le_sum_schlomilch'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/le-sum-schlomilch--83210286dbba1dd967151ecf.md) | 63 | `result-track:83210286dbba1dd967151ecf05b05d5e7292013300943fa53e62298cec6289ac` |
| 3 | `theorem` | [le_sum_condensed'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/le-sum-condensed--05533bc1dbe6fbe537fdc1fd.md) | 78 | `result-track:05533bc1dbe6fbe537fdc1fd787ede6cd8c9d7074c268f7aa857119ad3fb94c2` |
| 4 | `theorem` | [le_sum_schlomilch](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/le-sum-schlomilch--43f4e1779b5f660933de39c5.md) | 85 | `result-track:43f4e1779b5f660933de39c5ac89f4671629f78eef2abc6d7c09c5a216f2edb2` |
| 5 | `theorem` | [le_sum_condensed](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/le-sum-condensed--fbbcc42074f9f527d134b0eb.md) | 91 | `result-track:fbbcc42074f9f527d134b0ebbe4c106bb2b3b071d4d9f3d438beb5e97345cb6a` |
| 6 | `theorem` | [sum_schlomilch_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/sum-schlomilch-le--71aea7a9bde299b127753f5c.md) | 96 | `result-track:71aea7a9bde299b127753f5c6e49b95138cf4c607dc129c9734128781613f7a2` |
| 7 | `theorem` | [sum_condensed_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/sum-condensed-le--bf7377838893838bd9d9bd4e.md) | 113 | `result-track:bf7377838893838bd9d9bd4efec0eafed793451f75efdfe2d2e63afa8f5921c7` |
| 8 | `theorem` | [sum_schlomilch_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/sum-schlomilch-le--5f4c3daca238dbb990bc31a0.md) | 120 | `result-track:5f4c3daca238dbb990bc31a02d8960049e84d7a9548d9259d49efc3400443095` |
| 9 | `theorem` | [sum_condensed_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/sum-condensed-le--584226bf609a9f73818f4943.md) | 140 | `result-track:584226bf609a9f73818f49435a5a64743155ee559f4c7e9bd30bda06465d935f` |
| 10 | `theorem` | [le_tsum_schlomilch](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/le-tsum-schlomilch--b8f7693ae2fc4c72d5b2086e.md) | 154 | `result-track:b8f7693ae2fc4c72d5b2086eaa37b9bad22456f5c6794854b35ccb9c8a82fb68` |
| 11 | `theorem` | [le_tsum_condensed](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/le-tsum-condensed--f5b7a14e24747e1b593a8320.md) | 165 | `result-track:f5b7a14e24747e1b593a8320fcd401cdc1613b4ce320cb9e0ad71d8bd8523d20` |
| 12 | `theorem` | [tsum_schlomilch_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/tsum-schlomilch-le--a38ba9ca8ad899f886d7c45b.md) | 172 | `result-track:a38ba9ca8ad899f886d7c45bcc82a16d0258b3786cbbe2e36b1625bd1eb39577` |
| 13 | `theorem` | [tsum_condensed_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/tsum-condensed-le--25d83176a79801c853434b8c.md) | 180 | `result-track:25d83176a79801c853434b8c6b2086f488cae49f4cfd3711e51a3ee3f8e86980` |
| 14 | `theorem` | [summable_schlomilch_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-schlomilch-iff--9d5e083980c29189133bdb55.md) | 195 | `result-track:9d5e083980c29189133bdb557426cb79a2d9e3d068a5cc714e631b77c58d049a` |
| 15 | `theorem` | [summable_condensed_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-condensed-iff--38d48d566f51270a8b725dec.md) | 214 | `result-track:38d48d566f51270a8b725decb4495e1d623ce9e340f2e0ec333a4b14df3ac10f` |
| 16 | `theorem` | [summable_schlomilch_iff_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-schlomilch-iff-of-nonneg--a3e17fa7b75cc9d199066ba9.md) | 228 | `result-track:a3e17fa7b75cc9d199066ba90792e5200fff2535b8bcc28954ed9dcf00e94508` |
| 17 | `theorem` | [summable_condensed_iff_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-condensed-iff-of-nonneg--6a08c7e8f84131605ffa18a7.md) | 241 | `result-track:6a08c7e8f84131605ffa18a7179bcbbe32aef23fd0ce9cdcf38aa79e141cd975` |
| 18 | `theorem` | [summable_condensed_iff_of_eventually_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-condensed-iff-of-eventually-nonneg--8e1eb990a7e01e07a7df2681.md) | 253 | `result-track:8e1eb990a7e01e07a7df2681d6bc000ecc43d7259b040a56b0a8c7d2babcdf2c` |
| 19 | `theorem` | [summable_nat_rpow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-nat-rpow-inv--9b1d866c478c44af7e57bb41.md) | 288 | `result-track:9b1d866c478c44af7e57bb41aba3f0e58a36888d216490fbb330694fc18dc908` |
| 20 | `theorem` | [summable_nat_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-nat-rpow--3c656db57921e00973418f4f.md) | 319 | `result-track:3c656db57921e00973418f4f366416eb4702b2319c91152c7cd4196202d7f287` |
| 21 | `theorem` | [summable_one_div_nat_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-one-div-nat-rpow--8a643041d27182a5d53ba3c6.md) | 325 | `result-track:8a643041d27182a5d53ba3c661cef7948b21e83b228e1266a90e6afb3d225fa3` |
| 22 | `theorem` | [summable_nat_pow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-nat-pow-inv--c1621073188a39167583bbeb.md) | 332 | `result-track:c1621073188a39167583bbeb3f56e10f500d344521a475777f3a3cf85ac74fb2` |
| 23 | `theorem` | [summable_one_div_nat_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-one-div-nat-pow--b050767261bdbc38de8d151a.md) | 338 | `result-track:b050767261bdbc38de8d151a6ee67f1d68d4adc2ab06e995cee415427d323ce2` |
| 24 | `theorem` | [summable_one_div_int_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-one-div-int-pow--ecec68f0ec858ea46286418a.md) | 343 | `result-track:ecec68f0ec858ea46286418af56775fe66feda3c819d1ea3f4eaa49d5e4ad406` |
| 25 | `theorem` | [summable_abs_int_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-abs-int-rpow--b1ad219d3d418c478e94730f.md) | 350 | `result-track:b1ad219d3d418c478e94730fdd55113297c8f66e773747d1ba1ae90e7718cd3e` |
| 26 | `theorem` | [not_summable_natCast_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/not-summable-natcast-inv--2effd77adcd920ea9d878f39.md) | 359 | `result-track:2effd77adcd920ea9d878f3974510278af850c3ebe1c5e7316bc1df0a3b44ddc` |
| 27 | `theorem` | [not_summable_one_div_natCast](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/not-summable-one-div-natcast--540a72a1cbb1ce4a394551fa.md) | 365 | `result-track:540a72a1cbb1ce4a394551fa04446ef7f532d0d4d704c3f87a9bca190757984c` |
| 28 | `theorem` | [tendsto_sum_range_one_div_nat_succ_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/tendsto-sum-range-one-div-nat-succ-attop--fd34dc72d1774d575a18cc01.md) | 369 | `result-track:fd34dc72d1774d575a18cc01e56311cd64f2ae01acfba070b299efde1d6e1c63` |
| 29 | `theorem` | [summable_rpow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-rpow-inv--70af731a1a1074b9a6238e14.md) | 380 | `result-track:70af731a1a1074b9a6238e141e55b2a9a3175d63b7695d017df5fca6b570c8a4` |
| 30 | `theorem` | [summable_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-rpow--34093ae4a2daf76bb95b2649.md) | 385 | `result-track:34093ae4a2daf76bb95b26496af257cbb2d2b601cdff70baa4eb533350b2f943` |
| 31 | `theorem` | [summable_one_div_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-one-div-rpow--a216672adf23829da6df8ad1.md) | 388 | `result-track:a216672adf23829da6df8ad18e8cf7dae1bc48250ee604d8f91e28623d85af88` |
| 32 | `theorem` | [sum_Ioc_inv_sq_le_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/sum-ioc-inv-sq-le-sub--2243d6d3656091465b314389.md) | 402 | `result-track:2243d6d3656091465b314389b1621bd582b19b996fcd465116e24bdbee969c00` |
| 33 | `theorem` | [sum_Ioo_inv_sq_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/sum-ioo-inv-sq-le--a31ad91486bd66f5d4d8cb92.md) | 414 | `result-track:a31ad91486bd66f5d4d8cb92b925fd8cbea97dec752947ad40291bdb13699518` |
| 34 | `lemma` | [Real.not_summable_indicator_one_div_natCast](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/real-not-summable-indicator-one-div-natcast--7a12257dc39300ccb11c2003.md) | 443 | `result-track:7a12257dc39300ccb11c2003ea89d06fcfeba7f95adf60037482dd0690e4633a` |
| 35 | `lemma` | [Real.summable_one_div_nat_add_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/real-summable-one-div-nat-add-rpow--d205ce681a5e3a811470fa99.md) | 461 | `result-track:d205ce681a5e3a811470fa99eb676c46494ab4b1746359d9cbf68dde5b347143` |
| 36 | `lemma` | [Real.summable_one_div_int_add_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/real-summable-one-div-int-add-rpow--a483ac4529b1ade6f777c6f9.md) | 473 | `result-track:a483ac4529b1ade6f777c6f93db522942a16d14e6b36b998eef92133b8897ddd` |
| 37 | `theorem` | [summable_pow_div_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/declarations/summable-pow-div-add--529e8a2d0b6eed56ef4225ed.md) | 478 | `result-track:529e8a2d0b6eed56ef4225ed3a23f3b49282b18d8c5899ace837b36df45ce1a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
