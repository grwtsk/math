# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf3ed094216776c59b4119e8380017f3b48e5066",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf3ed094216776c59b4119e8380017f3b48e5066`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Hom` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Defs` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sound](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/sound--11d0f3c2871dc398d9b5b6c4.md) | 58 | `result-track:11d0f3c2871dc398d9b5b6c4c01b0b50681cbbd60d63126500b276128670d24c` |
| 2 | `theorem` | [mk_prod](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/mk-prod--95ade84c710316d748458691.md) | 70 | `result-track:95ade84c710316d748458691f64540b46f74dacb4ed2fc05c073d0ce66648dca` |
| 3 | `theorem` | [strictMono_comap_prod_map](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/strictmono-comap-prod-map--217596a6c894ae9aec86d156.md) | 75 | `result-track:217596a6c894ae9aec86d156098ebe5b343ad80f48949a0d1190adb071662bb6` |
| 4 | `def` | [kerLift](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/kerlift--de820e1ef2d0fda402136c9b.md) | 85 | `declaration-track:de820e1ef2d0fda402136c9bc58d1ef64e180a170a1552593c358a79109fd5ca` |
| 5 | `theorem` | [kerLift_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/kerlift-mk--488bef8010695ad18f329135.md) | 89 | `result-track:488bef8010695ad18f329135551ca3e925212e1db701926a46eca53ea97e8d92` |
| 6 | `theorem` | [kerLift_mk'](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/kerlift-mk--f44a6a97a1b694483eb562b3.md) | 93 | `result-track:f44a6a97a1b694483eb562b3e96407f122b90d43b72926a382b1c669c912cb71` |
| 7 | `theorem` | [kerLift_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/kerlift-injective--f94cecde15434e508280d128.md) | 97 | `result-track:f94cecde15434e508280d128b22a835bb080519fcb0613517260ad303bbb1967` |
| 8 | `def` | [rangeKerLift](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/rangekerlift--985acdd33bc02a495f8a6176.md) | 105 | `declaration-track:985acdd33bc02a495f8a6176ad866ce723707f1df94bc1435bccd98ea762905c` |
| 9 | `theorem` | [rangeKerLift_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/rangekerlift-injective--7e86a3215ab86b44437439bf.md) | 109 | `result-track:7e86a3215ab86b44437439bf9b6d8b483c7650fb067d5ee4f90fd17585d15140` |
| 10 | `theorem` | [rangeKerLift_surjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/rangekerlift-surjective--05a2aa15d0f3dcffd80e6115.md) | 116 | `result-track:05a2aa15d0f3dcffd80e6115cf4140fb7ccc42622322d22f5490d3a1da047982` |
| 11 | `def` | [quotientKerEquivRange](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/quotientkerequivrange--7b376fd4d9ea2724c4b1e049.md) | 125 | `declaration-track:7b376fd4d9ea2724c4b1e0495dac0c176f54ac59343bce89d3e90bf27675fa71` |
| 12 | `def` | [quotientKerEquivOfRightInverse](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/quotientkerequivofrightinverse--4a6721e7c03026fe646ce958.md) | 132 | `declaration-track:4a6721e7c03026fe646ce95838a38f9fc553199389fa277f25ae43f91078813b` |
| 13 | `def` | [quotientBot](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/quotientbot--b6894bd2a98ff700b5ce3239.md) | 141 | `declaration-track:b6894bd2a98ff700b5ce323985bb81cb6519dacfdfe23084aad83062629aa661` |
| 14 | `def` | [quotientKerEquivOfSurjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/quotientkerequivofsurjective--b76402db3cf961400c0da4e5.md) | 150 | `declaration-track:b76402db3cf961400c0da4e532a2b0ab4794fbae354a2c79f4a2eab6812248fb` |
| 15 | `def` | [quotientMulEquivOfEq](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/quotientmulequivofeq--9bf56134b90a3c8c9ee4c9de.md) | 157 | `declaration-track:9bf56134b90a3c8c9ee4c9deb533743a264bf1ce5da87233b78b7b8b5e748ed5` |
| 16 | `theorem` | [quotientMulEquivOfEq_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/quotientmulequivofeq-mk--5c3af3b3fc63a758ddbe6bd4.md) | 162 | `result-track:5c3af3b3fc63a758ddbe6bd4160c3fd548c3fcbe7c18d158e933e34d4fe4ca9e` |
| 17 | `def` | [quotientMapSubgroupOfOfLe](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/quotientmapsubgroupofofle--a67232f598a62760219054dd.md) | 170 | `declaration-track:a67232f598a62760219054dd3b9bc438874568af51327c3235d5422d2b22b54c` |
| 18 | `theorem` | [quotientMapSubgroupOfOfLe_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/quotientmapsubgroupofofle-mk--cad198cd7db666815be294c7.md) | 176 | `result-track:cad198cd7db666815be294c77b1e2a72dd7a7cb741fe35a7a3a239712e0fca4e` |
| 19 | `def` | [equivQuotientSubgroupOfOfEq](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/equivquotientsubgroupofofeq--519b2babbcf62e31e7dba2b3.md) | 190 | `declaration-track:519b2babbcf62e31e7dba2b39a19860ef3d3d8e585074104d999ebf0afeeed3f` |
| 20 | `def` | [homQuotientZPowOfHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/homquotientzpowofhom--94f5dedd2c2150b0ac7ea182.md) | 205 | `declaration-track:94f5dedd2c2150b0ac7ea1822f4dff589355483b0e637a0ae29f17bb95b161b5` |
| 21 | `theorem` | [homQuotientZPowOfHom_id](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/homquotientzpowofhom-id--96b8a750fd2716ef7289fbdc.md) | 212 | `result-track:96b8a750fd2716ef7289fbdc5ee831895d455593d1c6316518b16ea5df70331a` |
| 22 | `theorem` | [homQuotientZPowOfHom_comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/homquotientzpowofhom-comp--46c5b4e5557a762f570137a7.md) | 216 | `result-track:46c5b4e5557a762f570137a7425d2b27fb99bdbb140e632956eda87f9f7b4731` |
| 23 | `theorem` | [homQuotientZPowOfHom_comp_of_rightInverse](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/homquotientzpowofhom-comp-of-rightinverse--d26dde82466aa4ec3c5503af.md) | 222 | `result-track:d26dde82466aa4ec3c5503af3d36efc2929b0bb1d508dc5ce8d4979b424079a2` |
| 24 | `def` | [equivQuotientZPowOfEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/equivquotientzpowofequiv--cf42901503612e19975bc98c.md) | 229 | `declaration-track:cf42901503612e19975bc98cb5b1bf5bd957fd9099670e3613bb2a415155523c` |
| 25 | `theorem` | [equivQuotientZPowOfEquiv_refl](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/equivquotientzpowofequiv-refl--5e2941c550a5b748c0b4be3d.md) | 237 | `result-track:5e2941c550a5b748c0b4be3d30120cd5306c00bd588161e66502d4fe949cc7c7` |
| 26 | `theorem` | [equivQuotientZPowOfEquiv_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/equivquotientzpowofequiv-symm--4fcbf2962afc8c7c51fe10f7.md) | 245 | `result-track:4fcbf2962afc8c7c51fe10f7e8dd51a0eada0a0a7748757895f3fe616c811580` |
| 27 | `theorem` | [equivQuotientZPowOfEquiv_trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/equivquotientzpowofequiv-trans--62f9de1043bc06daabeac63c.md) | 250 | `result-track:62f9de1043bc06daabeac63c12a1d8618be54d7b0da09f0e1bb228bb430684b3` |
| 28 | `def` | [quotientInfEquivProdNormalizerQuotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/quotientinfequivprodnormalizerquotient--3ac0665c807f3196c4b67735.md) | 269 | `declaration-track:3ac0665c807f3196c4b67735f38b3cef0c25a6e1f8f641536800d9e6824fd6b6` |
| 29 | `def` | [quotientInfEquivProdNormalQuotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/quotientinfequivprodnormalquotient--c185cdfb0d0fba5e4da8db9d.md) | 303 | `declaration-track:c185cdfb0d0fba5e4da8db9d7df05377fb9ffb1ef07747914e828ec7b1e86110` |
| 30 | `instance` | [map_normal](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/map-normal--35be668dad9f41ba3e05b28d.md) | 314 | `declaration-track:35be668dad9f41ba3e05b28dbd82be216a58afef1ad697983a0ac678de3de560` |
| 31 | `def` | [quotientQuotientEquivQuotientAux](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/quotientquotientequivquotientaux--6d1a7c481ebdb66ca1a03536.md) | 322 | `declaration-track:6d1a7c481ebdb66ca1a03536ce9b6af28e4190ba413f8656c3f9fac9c46e23f9` |
| 32 | `theorem` | [quotientQuotientEquivQuotientAux_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/quotientquotientequivquotientaux-mk--4fff994ecadacf96d1714c4b.md) | 330 | `result-track:4fff994ecadacf96d1714c4b8aa35c4ea4a98257aeee07e8fb93ed64413977c3` |
| 33 | `theorem` | [quotientQuotientEquivQuotientAux_mk_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/quotientquotientequivquotientaux-mk-mk--2e274207ab28821a1497c8a6.md) | 335 | `result-track:2e274207ab28821a1497c8a6d3860dd519f67283fa48f5c37ecbeb9af6c51049` |
| 34 | `def` | [quotientQuotientEquivQuotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/quotientquotientequivquotient--744b54c57e14b3b70419c972.md) | 342 | `declaration-track:744b54c57e14b3b70419c9729034b26364961d82c4c074a9050ea93279d537e5` |
| 35 | `theorem` | [le_comap_mk'](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/le-comap-mk--f747c0a2be24d68e093678cf.md) | 356 | `result-track:f747c0a2be24d68e093678cffd18cfc8bd6145a67cbd4fbad4d92e193d6dfefc` |
| 36 | `theorem` | [comap_map_mk'](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/comap-map-mk--8c0f5876d970b2e6bba1df29.md) | 361 | `result-track:8c0f5876d970b2e6bba1df2936378f8d2642fb7ed4e7e07eeae19d90339c136e` |
| 37 | `def` | [comapMk'OrderIso](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/comapmk-orderiso--34c268fbca6329a76efad546.md) | 369 | `declaration-track:34c268fbca6329a76efad546ed661eb23daa3ccb6fee21476e7fc5154ab92dcf` |
| 38 | `theorem` | [subsingleton_quotient_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/subsingleton-quotient-top--b5692e6695d8ecac3c177969.md) | 382 | `result-track:b5692e6695d8ecac3c177969fa7c94a86cd2cedb1b3f2e9cbb63417c00d44d19` |
| 39 | `theorem` | [subgroup_eq_top_of_subsingleton](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/subgroup-eq-top-of-subsingleton--6a7037bf5c2adef0093058bb.md) | 390 | `result-track:6a7037bf5c2adef0093058bba4bcfa83492cda372da03950d7fa401713732158` |
| 40 | `theorem` | [comap_comap_center](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/comap-comap-center--933dd171a3a89a34b3161483.md) | 398 | `result-track:933dd171a3a89a34b3161483da22c578b4289e771b8e52d7a0d024553face320` |
| 41 | `theorem` | [mk_nat_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/mk-nat-mul--1aec93a5ab08b4b80f7c7124.md) | 412 | `result-track:1aec93a5ab08b4b80f7c7124bd726d02923ecaaa80f751a6689515e8c42e0230` |
| 42 | `theorem` | [mk_int_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/declarations/mk-int-mul--c223319587a90a4ba27517dc.md) | 416 | `result-track:c223319587a90a4ba27517dc49c75e7f77f071a18ff8daba7fdb783f31e92396` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
