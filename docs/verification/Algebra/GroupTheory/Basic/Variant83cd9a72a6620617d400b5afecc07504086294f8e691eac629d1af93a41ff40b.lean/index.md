# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a93a59bba6b604056d5152bef719eabaa3503d5c",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a93a59bba6b604056d5152bef719eabaa3503d5c`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean.json)

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
| 1 | `theorem` | [sound](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/sound--2dd502e11cf39460a8fc4850.md) | 60 | `result-track:2dd502e11cf39460a8fc4850c4fac8e2d223064f4a5a1604bed02a850961de04` |
| 2 | `theorem` | [mk_prod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/mk-prod--97505f48a644ba59f9f45c48.md) | 72 | `result-track:97505f48a644ba59f9f45c48a76658a466aa63c0aed31087977f673ab9828afc` |
| 3 | `theorem` | [strictMono_comap_prod_map](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/strictmono-comap-prod-map--4fdaac35ad62ee21f2bce926.md) | 77 | `result-track:4fdaac35ad62ee21f2bce92612a7bcbb2369de8485d95307ff84d31cef66efeb` |
| 4 | `def` | [prodEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/prodequiv--1a8b9ecbd6d2ec6b4d4db571.md) | 84 | `declaration-track:1a8b9ecbd6d2ec6b4d4db571899b42fe7d5b9fe94cdf602781d6915a0e5c4d29` |
| 5 | `def` | [prodMulEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/prodmulequiv--9fdb5a9bd05038f588319357.md) | 95 | `declaration-track:9fdb5a9bd05038f58831935749c5e827139761182ac1849350cbba5517a4c558` |
| 6 | `def` | [kerLift](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/kerlift--9088bde1810307d1635dc14c.md) | 106 | `declaration-track:9088bde1810307d1635dc14c75af9229692faa81fa1fb628f0508cc89edec201` |
| 7 | `theorem` | [kerLift_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/kerlift-mk--efb0946575b5b3668438ff96.md) | 110 | `result-track:efb0946575b5b3668438ff968ea54c9ae24d8bf8c262f5e39092a0fabdff817a` |
| 8 | `theorem` | [kerLift_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/kerlift-injective--f5a423aa983ddec81985d07e.md) | 114 | `result-track:f5a423aa983ddec81985d07ea09400de754a0b6cfcaf98536523a339a31f3ede` |
| 9 | `def` | [rangeKerLift](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/rangekerlift--4f7adcc269afd35f1e140724.md) | 122 | `declaration-track:4f7adcc269afd35f1e14072486573313cb3f5597bcfeec3a3000554dfdd5d85d` |
| 10 | `theorem` | [rangeKerLift_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/rangekerlift-injective--41fec990480f730a9fe86d85.md) | 126 | `result-track:41fec990480f730a9fe86d856d8155929a9a7c2bbbbb47d1aca0a1137e952b59` |
| 11 | `theorem` | [rangeKerLift_surjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/rangekerlift-surjective--b5a2a82bca650b63b1cc45af.md) | 133 | `result-track:b5a2a82bca650b63b1cc45afb63a9aee000ba0cf183bb7c16668fad986ad789e` |
| 12 | `def` | [quotientKerEquivRange](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientkerequivrange--1ba07f08dfc0177fcdbd92db.md) | 142 | `declaration-track:1ba07f08dfc0177fcdbd92dbd9fc513c814b2dcc1e5302b821e1d13c7c4e820b` |
| 13 | `def` | [quotientKerEquivOfRightInverse](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientkerequivofrightinverse--c95dfc9d364b00bc8ae1b868.md) | 149 | `declaration-track:c95dfc9d364b00bc8ae1b8680e2b219b84725a901ec6867cc453483e69b8ce78` |
| 14 | `def` | [quotientBot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientbot--399a60ec4ca7fc9badb79e35.md) | 158 | `declaration-track:399a60ec4ca7fc9badb79e35fb95653700c7ad058ba95d8c9ee8397b132e278d` |
| 15 | `def` | [quotientKerEquivOfSurjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientkerequivofsurjective--89f8047ba9fd358aa18fcfbf.md) | 167 | `declaration-track:89f8047ba9fd358aa18fcfbf590583fc1bb0114184956f0d8ee10237b7db6832` |
| 16 | `def` | [quotientMulEquivOfEq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientmulequivofeq--8378172184f70197f99e6a85.md) | 174 | `declaration-track:8378172184f70197f99e6a85e30d1212dd3abf56e7c76c03495ade39979d362b` |
| 17 | `theorem` | [quotientMulEquivOfEq_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientmulequivofeq-mk--201f9622bdf4803b8a8bb942.md) | 179 | `result-track:201f9622bdf4803b8a8bb942ae9f07c3b6f51bf0457180731aa84a749d1c9f1a` |
| 18 | `def` | [quotientMapSubgroupOfOfLe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientmapsubgroupofofle--0ed85c6d9bdcbf2ac33ec453.md) | 187 | `declaration-track:0ed85c6d9bdcbf2ac33ec4538a5173ff19ab0d0abf7705081b8e61d8c91a453a` |
| 19 | `theorem` | [quotientMapSubgroupOfOfLe_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientmapsubgroupofofle-mk--098b5e525b267ecf92c14f0c.md) | 193 | `result-track:098b5e525b267ecf92c14f0c17ae6805872814a13f789476eebb38834a5215a0` |
| 20 | `def` | [equivQuotientSubgroupOfOfEq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/equivquotientsubgroupofofeq--01adb9741e97b682eef83c98.md) | 208 | `declaration-track:01adb9741e97b682eef83c9847ba3aee91509cd2665c647e42db4ccc7dc39261` |
| 21 | `def` | [homQuotientZPowOfHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/homquotientzpowofhom--10ee22569db07c83ac81a1bc.md) | 223 | `declaration-track:10ee22569db07c83ac81a1bcb14b586b56e36269a050cb1b33f881249966655a` |
| 22 | `theorem` | [homQuotientZPowOfHom_id](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/homquotientzpowofhom-id--d1d4e39c62fb32f9a03372a5.md) | 230 | `result-track:d1d4e39c62fb32f9a03372a582a2321a8e85f42eb41e5eac769185bf8db4b2f1` |
| 23 | `theorem` | [homQuotientZPowOfHom_comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/homquotientzpowofhom-comp--08ac84b1a2991ee36de947f2.md) | 234 | `result-track:08ac84b1a2991ee36de947f24f98af41c86d9fb6de3759b1c361c221001b5cb7` |
| 24 | `theorem` | [homQuotientZPowOfHom_comp_of_rightInverse](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/homquotientzpowofhom-comp-of-rightinverse--6d2778b874e788234d936305.md) | 240 | `result-track:6d2778b874e788234d936305bac7cd8cb2356c737fbed35029441a8aa6fa1541` |
| 25 | `def` | [equivQuotientZPowOfEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/equivquotientzpowofequiv--31ff1c0d81e36249676a14f6.md) | 247 | `declaration-track:31ff1c0d81e36249676a14f6bc87aa3c6be3df77704310d6d3224e7f27399e37` |
| 26 | `theorem` | [equivQuotientZPowOfEquiv_refl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/equivquotientzpowofequiv-refl--9f0ee2740698df618293cca7.md) | 255 | `result-track:9f0ee2740698df618293cca756ed2af6af768305e124a22290c00b2615f56023` |
| 27 | `theorem` | [equivQuotientZPowOfEquiv_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/equivquotientzpowofequiv-symm--a03dbab594336861f1952c33.md) | 263 | `result-track:a03dbab594336861f1952c335a4f138fc5b0ced6beb84232beb4425db56d1bd6` |
| 28 | `theorem` | [equivQuotientZPowOfEquiv_trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/equivquotientzpowofequiv-trans--b5f366d86f1c7a8c90a06716.md) | 268 | `result-track:b5f366d86f1c7a8c90a067160ce40b3443e4193dca5b13b15970e9be88b29c09` |
| 29 | `def` | [quotientInfEquivProdNormalizerQuotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientinfequivprodnormalizerquotient--762bd8e121d6aa46d939df05.md) | 287 | `declaration-track:762bd8e121d6aa46d939df0581239cb7a2844b269588620a34c14d359834e962` |
| 30 | `def` | [quotientInfEquivProdNormalQuotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientinfequivprodnormalquotient--85dc1c4f03eea1eb4e2807fd.md) | 314 | `declaration-track:85dc1c4f03eea1eb4e2807fd6a9f67f5f298bce63265a0182299da51c4afc63b` |
| 31 | `instance` | [map_normal](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/map-normal--3293a6f91c155a5b03d9a041.md) | 325 | `declaration-track:3293a6f91c155a5b03d9a041895ec485d9c01fcf59c3e09ba0828ff314f62dea` |
| 32 | `def` | [quotientQuotientEquivQuotientAux](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientquotientequivquotientaux--a42bd6450f24404090435165.md) | 333 | `declaration-track:a42bd6450f2440409043516526278e224a3240b184a6a234724a033867a2b8f3` |
| 33 | `theorem` | [quotientQuotientEquivQuotientAux_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientquotientequivquotientaux-mk--06cdb501ff434a8980ca09bf.md) | 341 | `result-track:06cdb501ff434a8980ca09bfca7a7a5ed37ed537ce53acb4321560ea687d8010` |
| 34 | `theorem` | [quotientQuotientEquivQuotientAux_mk_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientquotientequivquotientaux-mk-mk--1cb78a05012d2b41a7bfda0c.md) | 346 | `result-track:1cb78a05012d2b41a7bfda0cc92072466f0b24e5a23e7d02a5edfbfce2ab20d6` |
| 35 | `def` | [quotientQuotientEquivQuotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientquotientequivquotient--1eac2cd7fb8a194214d2fd95.md) | 353 | `declaration-track:1eac2cd7fb8a194214d2fd9507dabbc9b75d84b96b75553ef9497b4d47f42bee` |
| 36 | `lemma` | [quotientQuotientEquivQuotient_symm_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientquotientequivquotient-symm-mk--b04d72e24f47b50d91e3ab7e.md) | 360 | `result-track:b04d72e24f47b50d91e3ab7e0aa56c7905e08407e81e0451d312e6f99e93382f` |
| 37 | `lemma` | [quotientQuotientEquivQuotient_apply_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/quotientquotientequivquotient-apply-mk--2150701d3d55e8c505b89236.md) | 365 | `result-track:2150701d3d55e8c505b892366b80cb1b8498c80a194e84db74d7d86133b68347` |
| 38 | `theorem` | [le_comap_mk'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/le-comap-mk--04fc0c32c2419d4b965e816d.md) | 376 | `result-track:04fc0c32c2419d4b965e816d56d71ecdaf96767d6dc0567b6883cbf6fd7149e4` |
| 39 | `theorem` | [comap_map_mk'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/comap-map-mk--63e563030a65e7fbd9d88a16.md) | 381 | `result-track:63e563030a65e7fbd9d88a16c1ef96eb5c90f0d5886b6ac7cc321dba2f726f61` |
| 40 | `def` | [comapMk'OrderIso](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/comapmk-orderiso--60847950bfd843c4ee20228e.md) | 389 | `declaration-track:60847950bfd843c4ee20228e0937f70d16143c2e5f4fd5aa589a654eba9efc04` |
| 41 | `theorem` | [subsingleton_quotient_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/subsingleton-quotient-top--9b7567ac3a384997395b8ee5.md) | 402 | `result-track:9b7567ac3a384997395b8ee549077233d6430f89a7c743bad3e7017aa4f8d217` |
| 42 | `theorem` | [subgroup_eq_top_of_subsingleton](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/subgroup-eq-top-of-subsingleton--5f080ab253b51cca16ba1f99.md) | 408 | `result-track:5f080ab253b51cca16ba1f992876db40b3aeadadad8fd547a180170d2e96d87f` |
| 43 | `theorem` | [comap_comap_center](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/comap-comap-center--666368226f6d64778f69b2e2.md) | 416 | `result-track:666368226f6d64778f69b2e297e0baf77751aab3e69c68036ee46408f90c3f99` |
| 44 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Sound.Variantc2cf8cef6161a1bebaca1bd10e30f79648877f02cc020d0e06645ca6a70b8d65.Subgroup.Characteristic.comap_quotient_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/root-grwtsk-algebra-grouptheory-sound-variantc2cf8cef6161a1bebaca1bd10e3--c329e3c738389967cfc95e96.md) | 425 | `result-track:c329e3c738389967cfc95e969d0bd83b2eefd9d27a3ed597843f7e3966b484fc` |
| 45 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.Sound.Variantc2cf8cef6161a1bebaca1bd10e30f79648877f02cc020d0e06645ca6a70b8d65.MonoidHom.domRestrictHomKerEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/root-grwtsk-algebra-grouptheory-sound-variantc2cf8cef6161a1bebaca1bd10e3--3a90fd9a2feb5ee2a0b04239.md) | 440 | `declaration-track:3a90fd9a2feb5ee2a0b04239b0f333c65e37666d63e1058bf0549f0fd052d242` |
| 46 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Sound.Variantc2cf8cef6161a1bebaca1bd10e30f79648877f02cc020d0e06645ca6a70b8d65.MonoidHom.domRestrictHomKerEquiv_apply_coe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/root-grwtsk-algebra-grouptheory-sound-variantc2cf8cef6161a1bebaca1bd10e3--ddda461d5a2182abc6f7e6a0.md) | 450 | `result-track:ddda461d5a2182abc6f7e6a0cc7bc34c0c6ae81ef884e41c440a760f180fd0e9` |
| 47 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Sound.Variantc2cf8cef6161a1bebaca1bd10e30f79648877f02cc020d0e06645ca6a70b8d65.MonoidHom.domRestrictHomKerEquiv_symm_coe_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/root-grwtsk-algebra-grouptheory-sound-variantc2cf8cef6161a1bebaca1bd10e3--d31bb3f5a8136d16970e7fcd.md) | 455 | `result-track:d31bb3f5a8136d16970e7fcde4f25fbc172eeb5a5a65c8e028330996876d1036` |
| 48 | `theorem` | [mk_nat_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/mk-nat-mul--6c183e5635bf151834956774.md) | 475 | `result-track:6c183e5635bf1518349567741619509df0aec76543a7da656a62d9d58026ab7f` |
| 49 | `theorem` | [mk_int_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/mk-int-mul--e9e32c21868833e1cb824750.md) | 479 | `result-track:e9e32c21868833e1cb824750ce7ed039e8988ff683cea496071e68628836ea19` |
| 50 | `def` | [mulEquivPiModRangePowMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/mulequivpimodrangepowmonoidhom--88ec3d476b2bfb0d342d4a53.md) | 499 | `declaration-track:88ec3d476b2bfb0d342d4a53bbd63903664d162d8edcf90c306d088f38445ab3` |
| 51 | `lemma` | [mulEquivPiModRangePowMonoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/declarations/mulequivpimodrangepowmonoidhom-apply--2db9b4dd77791c7f64f4f13c.md) | 511 | `result-track:2db9b4dd77791c7f64f4f13c8f26315ac4ef616dbc31fb5584142cadff7c6a74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
