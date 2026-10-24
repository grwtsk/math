# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51de0d6f29844123ae5c3e8e6aaaf841bf1f59d3",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51de0d6f29844123ae5c3e8e6aaaf841bf1f59d3`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Hom` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sound](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/sound--3a9570260d15bb3a8d2f86f2.md) | 50 | `result-track:3a9570260d15bb3a8d2f86f2161817e71526d861e47b45ffe790146209718d13` |
| 2 | `theorem` | [mk_prod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/mk-prod--8fb686dc59557a2a1e7530e7.md) | 62 | `result-track:8fb686dc59557a2a1e7530e7ec19378e85d311f345d67a45d61bb9c196372c04` |
| 3 | `theorem` | [strictMono_comap_prod_map](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/strictmono-comap-prod-map--ea3c30952e80788fa97e5d90.md) | 67 | `result-track:ea3c30952e80788fa97e5d90b4c0d9066c815af10d0f2b27556373a43bca6ee7` |
| 4 | `def` | [kerLift](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/kerlift--8a0102af95e2c4f5b6407e13.md) | 77 | `declaration-track:8a0102af95e2c4f5b6407e1394266b5d5861c622e7622fec06330c06670f636c` |
| 5 | `theorem` | [kerLift_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/kerlift-mk--464ddce010eb419bd9dc9343.md) | 81 | `result-track:464ddce010eb419bd9dc9343135c13aa47e34db04b7707efaa3e35c950a0e9f6` |
| 6 | `theorem` | [kerLift_mk'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/kerlift-mk--fc880c0c597e0b9b7dd86fe2.md) | 85 | `result-track:fc880c0c597e0b9b7dd86fe25813b7fbdaf65ea3c81381793c4735afcef3c3bb` |
| 7 | `theorem` | [kerLift_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/kerlift-injective--24d9d2085f6d01a2fb366b2d.md) | 89 | `result-track:24d9d2085f6d01a2fb366b2db2ceb4cfb3d2e86171352da6b271498c3e887286` |
| 8 | `def` | [rangeKerLift](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/rangekerlift--38d264f90c7fcb91f691e66c.md) | 97 | `declaration-track:38d264f90c7fcb91f691e66ce47838ea50dce0193aec801bcedf448d6c1303cc` |
| 9 | `theorem` | [rangeKerLift_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/rangekerlift-injective--40334eec6e943ce48617fb9b.md) | 101 | `result-track:40334eec6e943ce48617fb9b09f97710ba7744796c686e2493334447eb22260e` |
| 10 | `theorem` | [rangeKerLift_surjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/rangekerlift-surjective--0e57b99f03fbc72b84dc5c6e.md) | 108 | `result-track:0e57b99f03fbc72b84dc5c6e0a5ca2bdcd28d79690310e0ba25f342103a5eb09` |
| 11 | `def` | [quotientKerEquivRange](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/quotientkerequivrange--470bdcc7cb5dd64ecc29299f.md) | 117 | `declaration-track:470bdcc7cb5dd64ecc29299fb15895c3c2651f15fac552b75bc1af3e1fea330e` |
| 12 | `def` | [quotientKerEquivOfRightInverse](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/quotientkerequivofrightinverse--daf9ca2239e22aba7ebfb343.md) | 124 | `declaration-track:daf9ca2239e22aba7ebfb34368a6d04707067c47a47aa6d62c39e69e0ebc67b3` |
| 13 | `def` | [quotientBot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/quotientbot--044635f0406a62da34d438cf.md) | 133 | `declaration-track:044635f0406a62da34d438cf4cbfd9c584547ac5fa4171cd23881579602d2cbe` |
| 14 | `def` | [quotientKerEquivOfSurjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/quotientkerequivofsurjective--fe9b910ac316b415deeda004.md) | 142 | `declaration-track:fe9b910ac316b415deeda004ddbbef7a23a549151759f1a46c9f961920cd9869` |
| 15 | `def` | [quotientMulEquivOfEq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/quotientmulequivofeq--cf17bf676607b842407c296c.md) | 149 | `declaration-track:cf17bf676607b842407c296c893d836023c194a7924b69a2ae0a9211a6ceb9e0` |
| 16 | `theorem` | [quotientMulEquivOfEq_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/quotientmulequivofeq-mk--5817627f4b2e72b1e94e75fe.md) | 154 | `result-track:5817627f4b2e72b1e94e75fe4eeff45fc159b9e7a5ea0d8ff0b124a484bec26c` |
| 17 | `def` | [quotientMapSubgroupOfOfLe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/quotientmapsubgroupofofle--e6246ff882f5f2e775de5ef0.md) | 162 | `declaration-track:e6246ff882f5f2e775de5ef0a4e2c54bf75d23e1dd77306b3b4911807aa16e4c` |
| 18 | `theorem` | [quotientMapSubgroupOfOfLe_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/quotientmapsubgroupofofle-mk--6543bc48bf1523d462972b26.md) | 168 | `result-track:6543bc48bf1523d462972b26f8321ff90c5d7311ea71b2b744d61cea696a7cc8` |
| 19 | `def` | [equivQuotientSubgroupOfOfEq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/equivquotientsubgroupofofeq--98ef787f5f1bd205d7c6711e.md) | 182 | `declaration-track:98ef787f5f1bd205d7c6711e22dbc294755d91c51cb77be4b69e7f0ff0430c8b` |
| 20 | `def` | [homQuotientZPowOfHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/homquotientzpowofhom--f188590d9280ba6d617fda0f.md) | 197 | `declaration-track:f188590d9280ba6d617fda0f6bda10c9393da60b1973f3d63b46e58da80b65ff` |
| 21 | `theorem` | [homQuotientZPowOfHom_id](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/homquotientzpowofhom-id--48dc7bed0fa9fc9e7e4b4752.md) | 204 | `result-track:48dc7bed0fa9fc9e7e4b4752562b78ca3108ffee717c526f42baeff5204bf875` |
| 22 | `theorem` | [homQuotientZPowOfHom_comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/homquotientzpowofhom-comp--71f3315464571daeb0275e7f.md) | 208 | `result-track:71f3315464571daeb0275e7f0147d7310120d26e9ebbfacb682444b4a785285a` |
| 23 | `theorem` | [homQuotientZPowOfHom_comp_of_rightInverse](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/homquotientzpowofhom-comp-of-rightinverse--25ba6675b5c15c735387d720.md) | 214 | `result-track:25ba6675b5c15c735387d72049ea26f01e09c6c05ab1d3d38ea9ec0c4ad9cf7e` |
| 24 | `def` | [equivQuotientZPowOfEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/equivquotientzpowofequiv--5c19ff7d0207c5c08c21bcdb.md) | 221 | `declaration-track:5c19ff7d0207c5c08c21bcdbfbab8c03f64190b06a77e86da24b26c50d6cb409` |
| 25 | `theorem` | [equivQuotientZPowOfEquiv_refl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/equivquotientzpowofequiv-refl--43ceb072695762cdb15ea9b7.md) | 229 | `result-track:43ceb072695762cdb15ea9b73a582a0969aa74b906a362fdb3cc833c12205070` |
| 26 | `theorem` | [equivQuotientZPowOfEquiv_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/equivquotientzpowofequiv-symm--1c5a13b716c81d700b0ebb67.md) | 237 | `result-track:1c5a13b716c81d700b0ebb67fc6a2109c23654fec0cadf91cec7e51169fc5d7d` |
| 27 | `theorem` | [equivQuotientZPowOfEquiv_trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/equivquotientzpowofequiv-trans--a53b19a5a8a842ecf17fd801.md) | 242 | `result-track:a53b19a5a8a842ecf17fd80141348b8b01442e90adb800cb49c87b7524205a6b` |
| 28 | `def` | [quotientInfEquivProdNormalizerQuotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/quotientinfequivprodnormalizerquotient--23553c9b0bae47f17999225a.md) | 261 | `declaration-track:23553c9b0bae47f17999225a83975424cd78a31d9d345a60f48bc7fbcc6f7abc` |
| 29 | `def` | [quotientInfEquivProdNormalQuotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/quotientinfequivprodnormalquotient--3113b1ebe516e9df048d987d.md) | 295 | `declaration-track:3113b1ebe516e9df048d987d02256aabc08e5553f4ef829eb06345aed81b6277` |
| 30 | `instance` | [map_normal](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/map-normal--711aa5075c4981378884fbd7.md) | 306 | `declaration-track:711aa5075c4981378884fbd703c3bd73bbb0ac2d467ff74c098153d8636d1d97` |
| 31 | `def` | [quotientQuotientEquivQuotientAux](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/quotientquotientequivquotientaux--02a1d09419cef0593e99dcf3.md) | 314 | `declaration-track:02a1d09419cef0593e99dcf339af2f5dfca15639c9ba0e208fec391771ad543f` |
| 32 | `theorem` | [quotientQuotientEquivQuotientAux_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/quotientquotientequivquotientaux-mk--63984d6f4f4fce32af3077f6.md) | 322 | `result-track:63984d6f4f4fce32af3077f6d043d53709700457d77c7a2b1b64e6c442ded487` |
| 33 | `theorem` | [quotientQuotientEquivQuotientAux_mk_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/quotientquotientequivquotientaux-mk-mk--b98c5ff72859ab18b49a7759.md) | 327 | `result-track:b98c5ff72859ab18b49a7759217f94daf4f35b834bb5bd7c253982a3270ebe6b` |
| 34 | `def` | [quotientQuotientEquivQuotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/quotientquotientequivquotient--6cd4a851f0137b2e8780369c.md) | 334 | `declaration-track:6cd4a851f0137b2e8780369cbdf54c02a783c6898be0049b427eacb32a51472f` |
| 35 | `theorem` | [le_comap_mk'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/le-comap-mk--02b70d10d7204d0961d5baa2.md) | 348 | `result-track:02b70d10d7204d0961d5baa2fd5127a5c823bab5c8afc99337ed81c633f1fdf5` |
| 36 | `theorem` | [comap_map_mk'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/comap-map-mk--2614a969ff4d6cac27641cd6.md) | 353 | `result-track:2614a969ff4d6cac27641cd6ebff92d6326b7da8478bbea20e53f82007ebbcf2` |
| 37 | `def` | [comapMk'OrderIso](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/comapmk-orderiso--edd6d09d467869bec521bda7.md) | 361 | `declaration-track:edd6d09d467869bec521bda7e4c66b08d634d4e21bc7e746760e35229e9b51bf` |
| 38 | `theorem` | [subsingleton_quotient_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/subsingleton-quotient-top--32d3e8b530aa0d4c0fa2452d.md) | 374 | `result-track:32d3e8b530aa0d4c0fa2452d35ca48125d9a273947eed2976e3dd389e9487bcb` |
| 39 | `theorem` | [subgroup_eq_top_of_subsingleton](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/subgroup-eq-top-of-subsingleton--3f88fad7748e81c197bd17cc.md) | 382 | `result-track:3f88fad7748e81c197bd17ccca02c923e94d71ac0163808acbf3c82d079fcf13` |
| 40 | `theorem` | [comap_comap_center](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/comap-comap-center--2aa4187e25e2580efc9af92c.md) | 390 | `result-track:2aa4187e25e2580efc9af92cf7de593e0e113e3f1b733a6a32a355d93030994f` |
| 41 | `theorem` | [mk_nat_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/mk-nat-mul--a4396681cf30c406e64565e9.md) | 404 | `result-track:a4396681cf30c406e64565e983e1c2263034b36db27a7af56921ee5ad4abe08c` |
| 42 | `theorem` | [mk_int_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean/declarations/mk-int-mul--2b82f67115866ad111028b3d.md) | 408 | `result-track:2b82f67115866ad111028b3db9060110daf677e9a2539249b5694108b86064b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
