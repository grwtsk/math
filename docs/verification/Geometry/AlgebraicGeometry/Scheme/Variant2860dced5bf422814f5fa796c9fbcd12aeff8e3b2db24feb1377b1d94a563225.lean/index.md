# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Scheme.Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4844fe9648a2d1a3314b2ba93dfd6d04c0d1eb92",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4844fe9648a2d1a3314b2ba93dfd6d04c0d1eb92`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean.json)

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
| 1 | `macro` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/macro--8ef42639da6771fadb96844e.md) | 129 | `declaration-track:8ef42639da6771fadb96844eca12b0e2f075f2793ea7358e88710fa98691869a` |
| 2 | `def` | [carrier](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/carrier--68293b899ab56bbd7bd58375.md) | 173 | `declaration-track:68293b899ab56bbd7bd5837580d4edefa1bda87f56a48c761c228fc47770a42d` |
| 3 | `theorem` | [mk_mem_carrier](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/mk-mem-carrier--29b8503d32304a34ccb1c885.md) | 179 | `result-track:29b8503d32304a34ccb1c8853f28394b136de9fb526f720cb0cd7376af4ba01f` |
| 4 | `theorem` | [isPrime_carrier](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/isprime-carrier--6a8acd8aa74c03548e6c2a93.md) | 191 | `result-track:6a8acd8aa74c03548e6c2a931fe94d00e4bcd94a14e326b284dcd6606bb0e407` |
| 5 | `def` | [toFun](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tofun--af9350c3aba0399258fcdd29.md) | 203 | `declaration-track:af9350c3aba0399258fcdd29c95c6a4fd37ac0c626090b969da4e0aedf4f702c` |
| 6 | `theorem` | [preimage_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/preimage-basicopen--bd7c1d007cd245b4283ee945.md) | 211 | `result-track:bd7c1d007cd245b4283ee94517d69fb3f10eb42b486d31b38382504ce9269461` |
| 7 | `def` | [toSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tospec--45b16e11a6cf4e7da9618605.md) | 224 | `declaration-track:45b16e11a6cf4e7da96186057f3255323f9c320536e3168ea890ed93681a1f04` |
| 8 | `lemma` | [toSpec_preimage_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tospec-preimage-basicopen--79c565af90ca8cf13015eea6.md) | 235 | `result-track:79c565af90ca8cf13015eea6d419d1e19c332599d4b74e3d5a07535ab737bd20` |
| 9 | `macro` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/macro--88f3cf141368802469826f96.md) | 259 | `declaration-track:88f3cf141368802469826f968f3cd5a8983eb31a731b8618ec99ab2387d71593` |
| 10 | `def` | [carrier](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/carrier--1b61fab2c9fc46064fdc2847.md) | 275 | `declaration-track:1b61fab2c9fc46064fdc28472862d54e2537e5c17889b1b98a0ec4d83dc98fb5` |
| 11 | `theorem` | [mem_carrier_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/mem-carrier-iff--177fd6179f0062b006dd44cc.md) | 279 | `result-track:177fd6179f0062b006dd44ccfcf8e326a5878d6a08dbec976a6017a0e5623757` |
| 12 | `theorem` | [mem_carrier_iff'](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/mem-carrier-iff--42f9b6a9ae071afb0d1ca037.md) | 285 | `result-track:42f9b6a9ae071afb0d1ca037ce8878f9275c3c996246cf1bafc425a5aa343148` |
| 13 | `theorem` | [mem_carrier_iff_of_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/mem-carrier-iff-of-mem--99e35c8aba7de57156c42f32.md) | 299 | `result-track:99e35c8aba7de57156c42f32b6db6cc3a0217cddba05816090635d7b2d5cb890` |
| 14 | `theorem` | [mem_carrier_iff_of_mem_mul](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/mem-carrier-iff-of-mem-mul--2785f63ceac0c9e891bd5249.md) | 313 | `result-track:2785f63ceac0c9e891bd5249626a590b9a44bf03335cd0833f8a352127dffa20` |
| 15 | `theorem` | [num_mem_carrier_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/num-mem-carrier-iff--0650705e75e7506cecf4deea.md) | 325 | `result-track:0650705e75e7506cecf4deea875c2cba42de2167a2a4fe88546c8c7a56b8a4bc` |
| 16 | `theorem` | [carrier.add_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/carrier-add-mem--6fa9ca4e327024e17c51b3b1.md) | 337 | `result-track:6fa9ca4e327024e17c51b3b18364453c0adda09cb5a442a9e2ed574a3e82270b` |
| 17 | `theorem` | [carrier.zero_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/carrier-zero-mem--27dd220085e75d6f07cd56f2.md) | 388 | `result-track:27dd220085e75d6f07cd56f2380b6817befad47b1db13bf3360c00bb595a8ee0` |
| 18 | `theorem` | [carrier.smul_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/carrier-smul-mem--f339df453a0c43cc114ea30f.md) | 394 | `result-track:f339df453a0c43cc114ea30f07aba3b8adedb6856a3dfc8db5d47b46185da73f` |
| 19 | `def` | [carrier.asIdeal](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/carrier-asideal--fd177d6721a65d556f7325cf.md) | 425 | `declaration-track:fd177d6721a65d556f7325cfed20f1e8136bcb2bdadc43dddfbd1187bf9005b5` |
| 20 | `theorem` | [carrier.asIdeal.homogeneous](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/carrier-asideal-homogeneous--7f8821728d4d203f5e6282f0.md) | 432 | `result-track:7f8821728d4d203f5e6282f097829b17b5386105516288cc27b91dfecbe97896` |
| 21 | `def` | [carrier.asHomogeneousIdeal](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/carrier-ashomogeneousideal--81089026f55d202f88a5101e.md) | 441 | `declaration-track:81089026f55d202f88a5101e04aeab0398c9b0354d80a8697523ba8270a15f1e` |
| 22 | `theorem` | [carrier.denom_notMem](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/carrier-denom-notmem--731d6524cbb2d355d768c0dd.md) | 444 | `result-track:731d6524cbb2d355d768c0dd6c82d77ec98fafd7efc1e5f3e5ea5e5b3a9aec8d` |
| 23 | `theorem` | [carrier.relevant](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/carrier-relevant--406f134f3cc2770f5f9b810f.md) | 455 | `result-track:406f134f3cc2770f5f9b810fd4b254fa793a5deaf546a61ba1b0cdd76538e69f` |
| 24 | `theorem` | [carrier.asIdeal.ne_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/carrier-asideal-ne-top--e6d2622ab9da13ab967068b9.md) | 458 | `result-track:e6d2622ab9da13ab967068b93ec78210f32f926f9b2c60f5b9e481e1b096d0af` |
| 25 | `theorem` | [carrier.asIdeal.prime](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/carrier-asideal-prime--f2db15f8d0755dc7bb250fb3.md) | 461 | `result-track:f2db15f8d0755dc7bb250fb3aef6d255a9864ec6b2aeeb9a85313762574122d4` |
| 26 | `def` | [toFun](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tofun--03d981b5542aed955102557c.md) | 483 | `declaration-track:03d981b5542aed955102557c55d0462ac7d09d7c6798d4683b494912073f9ed3` |
| 27 | `lemma` | [toSpec_fromSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tospec-fromspec--a986bbc75ac1b350a4ef1f36.md) | 492 | `result-track:a986bbc75ac1b350a4ef1f360f8229398e86104c73c705293bf0b442007e9025` |
| 28 | `lemma` | [fromSpec_toSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/fromspec-tospec--a49fd160416615b254bffd58.md) | 505 | `result-track:a49fd160416615b254bffd58ca49496a6f957d3ad95666e124b671aa2287abfa` |
| 29 | `lemma` | [toSpec_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tospec-injective--6f7810ad71fea5b8e0cf7593.md) | 512 | `result-track:6f7810ad71fea5b8e0cf7593f01e788d8b33649890aae1ee2e67a27a5b236f32` |
| 30 | `lemma` | [toSpec_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tospec-surjective--9e06ed35c4516e691ea30bfe.md) | 518 | `result-track:9e06ed35c4516e691ea30bfee3118dd8f3734307c0ee772a283fdc58e6efb7c1` |
| 31 | `lemma` | [toSpec_bijective](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tospec-bijective--3cff05c09e16cbfe45a80480.md) | 523 | `result-track:3cff05c09e16cbfe45a80480ed76363c76a74e2012a018ffa1fe62c069bf7aa9` |
| 32 | `lemma` | [image_basicOpen_eq_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/image-basicopen-eq-basicopen--9e67cc13a51f5feef2149df9.md) | 536 | `result-track:9e67cc13a51f5feef2149df9d233a5171a1fe00d1ef6fd7a6b6046c7cf1b96fe` |
| 33 | `def` | [fromSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/fromspec--a63b66a98570918ce0d573d0.md) | 553 | `declaration-track:a63b66a98570918ce0d573d0bb71f29de591197934a3bb2d12b7faac84f6a6d2` |
| 34 | `def` | [projIsoSpecTopComponent](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/projisospectopcomponent--fb8009861950d6d2e1b444c1.md) | 579 | `declaration-track:fb8009861950d6d2e1b444c18336269b2ce52bf4946096434e6e1597cf1026e6` |
| 35 | `def` | [awayToSection](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/awaytosection--14712c4334daa898c0afe45d.md) | 595 | `declaration-track:14712c4334daa898c0afe45d1822acc9c809d417fc1fc1c134915ea812152923` |
| 36 | `lemma` | [awayToSection_germ](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/awaytosection-germ--4766359131b718e5b7dec7ce.md) | 611 | `result-track:4766359131b718e5b7dec7ce929fd5417226d56b50fb80e6c1bcc49f58ecbd05` |
| 37 | `lemma` | [awayToSection_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/awaytosection-apply--4e4cffe272c9b5dd276bc40c.md) | 620 | `result-track:4e4cffe272c9b5dd276bc40ca2d42a5c11984b21670b24d996ab16e5fba1ace1` |
| 38 | `def` | [awayToΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/awayto--91b5b173070ad9eb5bcdb4b8.md) | 636 | `declaration-track:91b5b173070ad9eb5bcdb4b81c79120c5e150029386a96f4b061d130b5d497b7` |
| 39 | `lemma` | [awayToΓ_ΓToStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/awayto-tostalk--19a95a8f94f5acd497297d62.md) | 641 | `result-track:19a95a8f94f5acd497297d627d2e1a6172805551db740250ce67ad693d4fa398` |
| 40 | `def` | [toSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tospec--e92f4462fe23638b9a6a22af.md) | 657 | `declaration-track:e92f4462fe23638b9a6a22afc50267eb058f4fe94f3022235eb8aea0f4bf990d` |
| 41 | `lemma` | [toSpec_base_apply_eq_comap](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tospec-base-apply-eq-comap--f1afe8b1497de79b88c3cc06.md) | 664 | `result-track:f1afe8b1497de79b88c3cc06e4ff36d0f8e918b0c4815c491920e2ef2a74ceb4` |
| 42 | `lemma` | [toSpec_base_apply_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tospec-base-apply-eq--0fad2396cec088e23d2a4ad0.md) | 675 | `result-track:0fad2396cec088e23d2a4ad0be9c4aacfc7db4de3bd7796b5a675b0856a0ee36` |
| 43 | `lemma` | [toSpec_base_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tospec-base-isiso--0d833146a353a900c7fb260a.md) | 686 | `result-track:0d833146a353a900c7fb260a77c3051e3fd52f6e1e2fe557a133596581c466fe` |
| 44 | `lemma` | [mk_mem_toSpec_base_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/mk-mem-tospec-base-apply--56d0fd7cfe55cd7f62add4b7.md) | 691 | `result-track:56d0fd7cfe55cd7f62add4b71733704dc2bd9c1b415e50ccb35974d12881c3e5` |
| 45 | `lemma` | [toSpec_preimage_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tospec-preimage-basicopen--26c371e0eecd3010968121d4.md) | 698 | `result-track:26c371e0eecd3010968121d499e2b03ca9a6d377aa2e8e975155d86ea8968a3a` |
| 46 | `lemma` | [toOpen_toSpec_val_c_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/toopen-tospec-val-c-app--f9a9155f13281dfb85971bd2.md) | 710 | `result-track:f9a9155f13281dfb85971bd2bed3ccff2e842dcd6779a234170b16b742f670e9` |
| 47 | `lemma` | [toStalk_stalkMap_toSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tostalk-stalkmap-tospec--d892f62ae92f4063e4c8d904.md) | 718 | `result-track:d892f62ae92f4063e4c8d9049bf83c7bcbfb548a9fe72048609ab2297a3e710e` |
| 48 | `lemma` | [isLocalization_atPrime](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/islocalization-atprime--14e012ff3dce0a693ec7adf6.md) | 733 | `result-track:14e012ff3dce0a693ec7adf662dd48754ef14093c9818eecd675ed2795a3d7b7` |
| 49 | `def` | [specStalkEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/specstalkequiv--eaa5b52fb5d16b3290cfe7b0.md) | 792 | `declaration-track:eaa5b52fb5d16b3290cfe7b05529edde58892b7a5bb680bbffc60bc487d13168` |
| 50 | `lemma` | [toStalk_specStalkEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/tostalk-specstalkequiv--4b9d54dddf721c8a2c6b34a7.md) | 805 | `result-track:4b9d54dddf721c8a2c6b34a7950bc4b2cf9a6758b725fc9487fb581450ab5310` |
| 51 | `lemma` | [stalkMap_toSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/stalkmap-tospec--03fc7beacde54fa55a0683fe.md) | 818 | `result-track:03fc7beacde54fa55a0683fe127074d5f4beace321e82b00c888719be9b55b18` |
| 52 | `lemma` | [isIso_toSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/isiso-tospec--537d157dab42efe53086155b.md) | 830 | `result-track:537d157dab42efe53086155bba2f977342383b7dd019a635b2956a5316dcbdb9` |
| 53 | `def` | [projIsoSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/projisospec--70a3c77d8ec9051442f4fa2d.md) | 847 | `declaration-track:70a3c77d8ec9051442f4fa2dbc9ab6b89be16b3da691ec6c0b0ba00c3a3a29de` |
| 54 | `def` | [«Proj»](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/declarations/proj--9818590473a7a8bbd6be5eed.md) | 854 | `declaration-track:9818590473a7a8bbd6be5eedc709428e3de9ff02f0e32295c3a1c272f015fa3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
