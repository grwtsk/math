# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d7bf4d8f6605259eeb0a8b72099922ba045358b",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d7bf4d8f6605259eeb0a8b72099922ba045358b`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean.json)

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
| 1 | `def` | [Proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/proj--64128cc658f1dac5c5f8bd39.md) | 95 | `declaration-track:64128cc658f1dac5c5f8bd3933b710d72953624fef1028dfafaba99b3c57b4b4` |
| 2 | `theorem` | [continuous_proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/continuous-proj--5517a141d661c921494e42ef.md) | 99 | `result-track:5517a141d661c921494e42ef2268ba097bbc1cb533c9150bd5e905dd412f4d66` |
| 3 | `def` | [π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/anonymous--6ed01c0649e3324a2ca6a8c2.md) | 107 | `declaration-track:6ed01c0649e3324a2ca6a8c23921c3609def0db0dbef931e3db9059d811b069d` |
| 4 | `def` | [ProjRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/projrestrict--bfe8fc86ea7726954becf605.md) | 111 | `declaration-track:bfe8fc86ea7726954becf605bfa68ad3d4169e3187214c88947a234d344a52b5` |
| 5 | `theorem` | [continuous_projRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/continuous-projrestrict--185ddfdd491d62922438f130.md) | 115 | `result-track:185ddfdd491d62922438f13052bd2b63053b91d05fde6346a4749414a335ca6e` |
| 6 | `theorem` | [proj_eq_self](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/proj-eq-self--16776d0c6deee99c08360a39.md) | 118 | `result-track:16776d0c6deee99c08360a39770be189daad4f61fc0f611cbc5ec96e7c69981f` |
| 7 | `theorem` | [proj_prop_eq_self](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/proj-prop-eq-self--e8f14999cab815d861626b3a.md) | 124 | `result-track:e8f14999cab815d861626b3abdedec1bdfd3f710139dc0276e57870df00dd9ee` |
| 8 | `theorem` | [proj_comp_of_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/proj-comp-of-subset--280534e660f83e7140a91260.md) | 130 | `result-track:280534e660f83e7140a912605cb5206303420ad2839358828106e66c35eefe30` |
| 9 | `theorem` | [proj_eq_of_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/proj-eq-of-subset--dc9711a47e9ca17af0cfe7ae.md) | 134 | `result-track:dc9711a47e9ca17af0cfe7aeedfa23a2799a1d0095e04860d8568605703f7aeb` |
| 10 | `def` | [ProjRestricts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/projrestricts--e1e95ce009faa79ae3ab2122.md) | 150 | `declaration-track:e1e95ce009faa79ae3ab2122fa48c85f68bdcbbdc6617b4890dab365e24dedda` |
| 11 | `theorem` | [continuous_projRestricts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/continuous-projrestricts--9c656a16461ac9cebc52e976.md) | 154 | `result-track:9c656a16461ac9cebc52e976cdcdff5e7dd8c51dd5052c3aa1dff654c8acd76f` |
| 12 | `theorem` | [surjective_projRestricts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/surjective-projrestricts--61aaf87bbbe68b83b136ca18.md) | 157 | `result-track:61aaf87bbbe68b83b136ca1857adb4a4518a28f5db1d5a38f6f6a7fdf2683396` |
| 13 | `theorem` | [projRestricts_eq_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/projrestricts-eq-id--7bfd1aad601b56a6c116046d.md) | 162 | `result-track:7bfd1aad601b56a6c116046d8966dd611951789f373888aa784f6c1ea65da6c9` |
| 14 | `theorem` | [projRestricts_eq_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/projrestricts-eq-comp--2ae3d8645624554742b5a933.md) | 167 | `result-track:2ae3d8645624554742b5a933ccccb0377b629af22c820ecf402de8dcd95302d8` |
| 15 | `theorem` | [projRestricts_comp_projRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/projrestricts-comp-projrestrict--2fd17df809032ebb0a6fcb4e.md) | 174 | `result-track:2fd17df809032ebb0a6fcb4e179122dc06fb19eba6e0e8b351bb13b0e8a4cf41` |
| 16 | `def` | [iso_map](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/iso-map--0363107d6f9dc97943644051.md) | 183 | `declaration-track:0363107d6f9dc97943644051b57ad456b60ff877dd89e85ac7f7a0e356f1e829` |
| 17 | `lemma` | [iso_map_bijective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/iso-map-bijective--51bad57fa38c0abef953cf79.md) | 192 | `result-track:51bad57fa38c0abef953cf79ae0151cdb33ad46e70ecd193d59e7e10a1eb59e9` |
| 18 | `def` | [spanFunctor](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/spanfunctor--ed04d1b658f2fe91b69e1cf5.md) | 215 | `declaration-track:ed04d1b658f2fe91b69e1cf54be1065b565ed48f5629a7af6d0b827a1472489e` |
| 19 | `def` | [spanCone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/spancone--1c32963c900c627ac6169aff.md) | 226 | `declaration-track:1c32963c900c627ac6169aff29c6cc84004088b5f499d5913619cb6ac3bd2707` |
| 20 | `def` | [spanFunctorIsoIndexFunctor](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/spanfunctorisoindexfunctor--7f9ca4ba2d69268f5426fbfa.md) | 239 | `declaration-track:7f9ca4ba2d69268f5426fbfa31e16d0ee44d332aef29a67ddf856a7a3a412dda` |
| 21 | `def` | [spanCone_isLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/spancone-islimit--10af9448d83780ce4512678e.md) | 254 | `declaration-track:10af9448d83780ce4512678e8c74cdf94205d877e2b82de4695d927dcce3a92a` |
| 22 | `def` | [e](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/e--fee230a6362c59dd6daa31ae.md) | 300 | `declaration-track:fee230a6362c59dd6daa31ae70f991b769e0859fd5daa5f2b5efdb2dd2a39aca` |
| 23 | `def` | [Products](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/products--a8829fa805172410238bef54.md) | 317 | `declaration-track:a8829fa805172410238bef54d6d5a4586ff3f4f2a119b474a67dbf593244ed63` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/instance--5663408eeaf7e07a782bdb8a.md) | 321 | `declaration-track:5663408eeaf7e07a782bdb8adaec16b89dc13eb6e67005fe6cbf7b2f9bda579f` |
| 25 | `theorem` | [lt_iff_lex_lt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/lt-iff-lex-lt--6015e236b10c8158cf2439a7.md) | 326 | `result-track:6015e236b10c8158cf2439a79c50b951546568b911c2cd77bf48f0fa5ba8f071` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/instance--be5b2ad864d9bf6890eca2ad.md) | 329 | `declaration-track:be5b2ad864d9bf6890eca2adb1fb1a20eaca7fc848ee9476f396849aa6fe56ca` |
| 27 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/eval--f5f6b4e9be8cfa458b10bc2a.md) | 338 | `declaration-track:f5f6b4e9be8cfa458b10bc2a08f06abe42b5a4360e42a06609aabb753a58847c` |
| 28 | `def` | [isGood](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/isgood--526856234dae15361cad3d44.md) | 344 | `declaration-track:526856234dae15361cad3d443b2a2af27eb34348d1414758aac2da076208813d` |
| 29 | `theorem` | [rel_head!_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/rel-head-of-mem--6f188806eab1cb4bfc8473ae.md) | 347 | `result-track:6f188806eab1cb4bfc8473aeba4497a10a9855d96a83324dd8d6c86f75e22fb5` |
| 30 | `theorem` | [head!_le_of_lt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/head-le-of-lt--55083e69809d6f62fcfd863d.md) | 351 | `result-track:55083e69809d6f62fcfd863d0d338b96ac410107d501dfc7eeed1a22750908a3` |
| 31 | `def` | [GoodProducts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/goodproducts--99164e2089e49488ab01f54e.md) | 358 | `declaration-track:99164e2089e49488ab01f54ec416b7c881c5be85560abb597d2eec733fadd958` |
| 32 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/eval--228b4a6300d7b82f003fa2e0.md) | 363 | `declaration-track:228b4a6300d7b82f003fa2e0c5cca0c6bf5ba4b2a4089261068e9ef15d9117d8` |
| 33 | `theorem` | [injective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/injective--a0dc245e6cddce9e1e7eb81a.md) | 366 | `result-track:a0dc245e6cddce9e1e7eb81a42243801adc920bd0e59af62a848bdb30b317aca` |
| 34 | `def` | [range](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/range--552420552163b69a6bd26030.md) | 375 | `declaration-track:552420552163b69a6bd2603008b489828572d6a32f67756e0c5de3f2c2a8cba9` |
| 35 | `def` | [equiv_range](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/equiv-range--af7117f1f06c7cf398087c14.md) | 379 | `declaration-track:af7117f1f06c7cf398087c14a3472faa085adb007f7fe01891a060ba179a909e` |
| 36 | `theorem` | [equiv_toFun_eq_eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/equiv-tofun-eq-eval--0495402bf048f6fa350e849c.md) | 382 | `result-track:0495402bf048f6fa350e849ca976f8ff297ebe929ca6cb8a58d5b8139f337b4d` |
| 37 | `theorem` | [linearIndependent_iff_range](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/linearindependent-iff-range--96024f3cb6f9340f31458f0e.md) | 384 | `result-track:96024f3cb6f9340f31458f0e8f8acc95001c52cf6ae428c9d36ce555f6600305` |
| 38 | `theorem` | [eval_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/eval-eq--14d8390e77bebec00be0597b.md) | 394 | `result-track:14d8390e77bebec00be0597b1d6e1fe2b0e0fd5f1eb8e5cbe7323ae27b4d4e7b` |
| 39 | `theorem` | [evalFacProp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/evalfacprop--d387a2a3fccc880aa94460ee.md) | 411 | `result-track:d387a2a3fccc880aa94460eec105d5b4d2f0852655c2ec02fc78ae9684afa961` |
| 40 | `theorem` | [evalFacProps](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/evalfacprops--79eedbd38f17ebb070672b3e.md) | 419 | `result-track:79eedbd38f17ebb070672b3e9cd940ffba2b3d856febe979df8ab50df993a594` |
| 41 | `theorem` | [prop_of_isGood](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/prop-of-isgood--7e5ccda16e6a728ea3c8d202.md) | 428 | `result-track:7e5ccda16e6a728ea3c8d2023ea0150276f359af56973f09d76515bdcb3de858` |
| 42 | `theorem` | [GoodProducts.span_iff_products](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/goodproducts-span-iff-products--4e1bffe5c8663896945696a6.md) | 443 | `result-track:4e1bffe5c8663896945696a6fd3ff26bfc272209e49bda327d55fad8515c8fa7` |
| 43 | `def` | [ord](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/ord--a64a80dab52c472c3abbb477.md) | 490 | `declaration-track:a64a80dab52c472c3abbb477f43d5159c1ea2b29bffb1866a6f4e34d6761c7f9` |
| 44 | `def` | [term](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/term--e34e6cea809faac2760f10ef.md) | 494 | `declaration-track:e34e6cea809faac2760f10efedabb55af9712bbfe9c6bb8b393df5f81a8b8c7f` |
| 45 | `theorem` | [term_ord_aux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/term-ord-aux--833402b93fddc8146e8b55ef.md) | 499 | `result-track:833402b93fddc8146e8b55ef19c550aff31de6d3c1cb0a391d35240f0188fc9f` |
| 46 | `theorem` | [ord_term_aux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/ord-term-aux--c2711982d7cdbb935baec7a2.md) | 504 | `result-track:c2711982d7cdbb935baec7a2a763dcea4d4a3a4542dd8036acda2d4ac1a12058` |
| 47 | `theorem` | [ord_term](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/ord-term--b41776d8fdcb07c5a4e5136e.md) | 508 | `result-track:b41776d8fdcb07c5a4e5136e0dba4a51b07928e9d97cfa44965dd514c996c16d` |
| 48 | `def` | [contained](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/contained--57eb569d74ca11ca9c50fac1.md) | 517 | `declaration-track:57eb569d74ca11ca9c50fac10fb88c6179bb5acdab7dc268a7b164ef54859a9a` |
| 49 | `def` | [P](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/p--113a4a24088b1e3514414482.md) | 524 | `declaration-track:113a4a24088b1e351441448238905d0b0732dbd92402692ab19903126d70aa86` |
| 50 | `theorem` | [Products.prop_of_isGood_of_contained](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/products-prop-of-isgood-of-contained--d0ffe2fecc39dda4765e5ddf.md) | 529 | `result-track:d0ffe2fecc39dda4765e5ddf3e2aa4ccc965fdd894a6b571598807d131edd3f3` |
| 51 | `theorem` | [contained_eq_proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/contained-eq-proj--5fc9a847bae26e29e86e15cf.md) | 559 | `result-track:5fc9a847bae26e29e86e15cfa7743aaf73aaca434ba5f6376f5ab69ad49958b0` |
| 52 | `theorem` | [isClosed_proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/isclosed-proj--ef8288b6572f2ad10c8187e0.md) | 565 | `result-track:ef8288b6572f2ad10c8187e07d2e9ecddf13e50ee94b59eff8142ce04d44b4be` |
| 53 | `theorem` | [contained_proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/contained-proj--95f9aa836209f343fbd2111c.md) | 568 | `result-track:95f9aa836209f343fbd2111cf3ad5be96338335627ba268e34d670616dd21be0` |
| 54 | `def` | [πs](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/s--3f06171c744d0ec3650d489e.md) | 575 | `declaration-track:3f06171c744d0ec3650d489edd926132279f33f5af01498bdcb1775be217c3df` |
| 55 | `theorem` | [coe_πs](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/coe-s--25a3519d45540ed9ab501944.md) | 578 | `result-track:25a3519d45540ed9ab5019440d15e79714a6883c6c7d7473970c32de464cd16a` |
| 56 | `theorem` | [injective_πs](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/injective-s--a848e93894776d4008bfaa39.md) | 582 | `result-track:a848e93894776d4008bfaa3946d76531813e685a96952507a34c15cbf54b9af2` |
| 57 | `def` | [πs'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/s--ed7b8bcb96346c97899d2198.md) | 590 | `declaration-track:ed7b8bcb96346c97899d219856d84a90bea40b722c476e5fd1317f9942d8eeac` |
| 58 | `theorem` | [coe_πs'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/coe-s--075e0776f238292f4faa9793.md) | 595 | `result-track:075e0776f238292f4faa9793192a31e9ff5d7732c3c75edf053102894449c122` |
| 59 | `theorem` | [injective_πs'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/injective-s--54b69c79583d675a7a30f70e.md) | 599 | `result-track:54b69c79583d675a7a30f70e960461b82f18e666175e8486eeaa6c5ac0ddf3d0` |
| 60 | `theorem` | [lt_ord_of_lt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/lt-ord-of-lt--b7dd5eded99710a64e48543b.md) | 605 | `result-track:b7dd5eded99710a64e48543b57ed97cd3034f6a9139acdfb6da2f85089c086ff` |
| 61 | `theorem` | [eval_πs](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/eval-s--a985520460cf115e8a080e03.md) | 609 | `result-track:a985520460cf115e8a080e0345c69e341afb5d70579e52ac2e1385bedf654565` |
| 62 | `theorem` | [eval_πs'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/eval-s--e29b6b1e1e253c54a9b2e3ea.md) | 613 | `result-track:e29b6b1e1e253c54a9b2e3ea583a2c923b3a308e802d24b4e9707fd383016461` |
| 63 | `theorem` | [eval_πs_image](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/eval-s-image--a9013ace68c6396b4e8b0d30.md) | 620 | `result-track:a9013ace68c6396b4e8b0d302a9ab5c3dec94fc8b30981cf21ecc99944607170` |
| 64 | `theorem` | [eval_πs_image'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/eval-s-image--b6a4fad40e68ff4313571281.md) | 629 | `result-track:b6a4fad40e68ff4313571281bd1c9fe60c7fb389918ff637b7ecaac652a6b383` |
| 65 | `theorem` | [head_lt_ord_of_isGood](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/head-lt-ord-of-isgood--b32c5c573a385bb34840b1ca.md) | 638 | `result-track:b32c5c573a385bb34840b1ca9a73cb362505046ab68753f1a6f1276d7077e2f1` |
| 66 | `theorem` | [isGood_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/declarations/isgood-mono--7d1793a220c45c2f8572a7fc.md) | 646 | `result-track:7d1793a220c45c2f8572a7fcf0ac1c345947f015c0a3d30a2618de3dba9bd123` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
