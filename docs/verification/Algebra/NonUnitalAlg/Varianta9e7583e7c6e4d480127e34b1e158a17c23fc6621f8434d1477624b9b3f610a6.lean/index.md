# Verification target: GRWTSK.Algebra.NonUnitalAlg.Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbe045f3b02ce2a05a7f50c1dc08fe93b583a6b3",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/index.md) · [Full source](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbe045f3b02ce2a05a7f50c1dc08fe93b583a6b3`.

Source path: `GRWTSK/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonUnitalAlgHom](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/nonunitalalghom--45a49e570f42367571befd20.md) | 63 | `declaration-track:45a49e570f42367571befd205d8f7b253bb0645bf38fe13130ed0a4e4f9bb6fc` |
| 2 | `class` | [NonUnitalAlgHomClass](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/nonunitalalghomclass--2a3f2bb2440b015e2e117bb1.md) | 77 | `declaration-track:2a3f2bb2440b015e2e117bb15c33baf4d0e1348295740e05ac52c0a3c33cc7f5` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/instance--e1a966298f2dd13977459f44.md) | 90 | `declaration-track:e1a966298f2dd13977459f44dae44e91bb611abc8d6ce19f5109a24ef0663a07` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/instance--4a42a03938515abe3ea103cd.md) | 101 | `declaration-track:4a42a03938515abe3ea103cdf67789b745b54f3d177b28bb63a955ec80ae3df3` |
| 5 | `def` | [toNonUnitalAlgHom](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/tononunitalalghom--cea1df4b89b8cf9f53fd1ab0.md) | 107 | `declaration-track:cea1df4b89b8cf9f53fd1ab055217170596c650708157a6bd02fe0a1fcf309d0` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/instance--d91c836148004a0eb0df9984.md) | 113 | `declaration-track:d91c836148004a0eb0df9984da8fbf99d1530a0cd93328a4626ab6ebbee9863d` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/instance--d7d0c8a46ad6352f90333eb3.md) | 135 | `declaration-track:d7d0c8a46ad6352f90333eb3a3852bb43cf7690c90a9a11b6608043da55f9220` |
| 8 | `theorem` | [toFun_eq_coe](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/tofun-eq-coe--ceda820e2cbfd29a92507e15.md) | 140 | `result-track:ceda820e2cbfd29a92507e15ae4a06e4d13750fdb8f94fbe1cf313fc6f956cf5` |
| 9 | `def` | [Simps.apply](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/simps-apply--32050c4a17a789802c82b41b.md) | 145 | `declaration-track:32050c4a17a789802c82b41be6f3e446deafbeed733db85f1f6a446416436075` |
| 10 | `theorem` | [coe_coe](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-coe--161bf0e73b9c825780f48b66.md) | 151 | `result-track:161bf0e73b9c825780f48b66f1dc3f768532ee5f2d981714a72e10b4b0552507` |
| 11 | `theorem` | [coe_injective](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-injective--630a6291967e45f273d66e0e.md) | 156 | `result-track:630a6291967e45f273d66e0eee18acd325a7ccb586bceea44ed10b6209a2b601` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/instance--81cd910a7dd235b14937f3de.md) | 160 | `declaration-track:81cd910a7dd235b14937f3deb8b54f594694f7207f2b60da3d29d1d38df9c3ef` |
| 13 | `theorem` | [ext](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/ext--d815e94843badaeadfea0965.md) | 170 | `result-track:d815e94843badaeadfea0965db5a1cd80087d91d93267602e715f81af491c262` |
| 14 | `theorem` | [ext_iff](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/ext-iff--675e6fbb17665a58ca247d8b.md) | 174 | `result-track:675e6fbb17665a58ca247d8bf1ab161c44c4250db31880099358a2989ff9c935` |
| 15 | `theorem` | [congr_fun](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/congr-fun--deebefe0facfbc68e8106c91.md) | 180 | `result-track:deebefe0facfbc68e8106c913cd829e8b5933a222b25882cffd395e4a28853b0` |
| 16 | `theorem` | [coe_mk](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-mk--924f45dcd254684fa4698d7c.md) | 185 | `result-track:924f45dcd254684fa4698d7c118671eeb552f1a73d456bb95370422dc614a708` |
| 17 | `theorem` | [mk_coe](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/mk-coe--b9e705d05b0caaa9768788ce.md) | 190 | `result-track:b9e705d05b0caaa9768788ce25ea30b05156136e256cb1289a6188c2b026a640` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/instance--91c0e695876ee7dc81041470.md) | 194 | `declaration-track:91c0e695876ee7dc81041470ad3be0bc1c5bdcc272f9c601682573c5f11c81bb` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/instance--9bfaf44e44af69c3c2059ee6.md) | 197 | `declaration-track:9bfaf44e44af69c3c2059ee6afec6037aae75a32754689f37e9e91cbf35435ef` |
| 20 | `theorem` | [toDistribMulActionHom_eq_coe](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/todistribmulactionhom-eq-coe--e9be04e5f9f147b09f0709ed.md) | 201 | `result-track:e9be04e5f9f147b09f0709ed71a78dac6f689d815a9f35a8d4d39ad6fe7cdc30` |
| 21 | `theorem` | [toMulHom_eq_coe](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/tomulhom-eq-coe--14d865b1df6c2acc6e243942.md) | 206 | `result-track:14d865b1df6c2acc6e243942222e9f9602f48dddbe055f19bc4cca398ef78ade` |
| 22 | `theorem` | [coe_to_distribMulActionHom](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-to-distribmulactionhom--727b56f65ed913de84500203.md) | 211 | `result-track:727b56f65ed913de84500203380564ba2a340fe83fdca30c344747d6e017687c` |
| 23 | `theorem` | [coe_to_mulHom](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-to-mulhom--8dc7b3d50eae464fef62e483.md) | 216 | `result-track:8dc7b3d50eae464fef62e483ba37af20e02a89d4b785920d1a00f5e9c0976fa3` |
| 24 | `theorem` | [to_distribMulActionHom_injective](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/to-distribmulactionhom-injective--bc93a702dede8ab0c7618d33.md) | 220 | `result-track:bc93a702dede8ab0c7618d334d445f30b1067d1201f720c7a5b8c1006547113a` |
| 25 | `theorem` | [to_mulHom_injective](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/to-mulhom-injective--1ac67353da8fd8c408573da2.md) | 226 | `result-track:1ac67353da8fd8c408573da24ef3cf0de1e146147ea134aa4b8dc6fb36acc28f` |
| 26 | `theorem` | [coe_distribMulActionHom_mk](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-distribmulactionhom-mk--640ed54f9df6c38a75eadd81.md) | 232 | `result-track:640ed54f9df6c38a75eadd8125c8a578775b1397f63deaaa9c2c25b8339a2f87` |
| 27 | `theorem` | [coe_mulHom_mk](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-mulhom-mk--5bf5ff9ac52de20def6df5d1.md) | 238 | `result-track:5bf5ff9ac52de20def6df5d1b035197a838ddb14132e702e0fa8841f02fd88eb` |
| 28 | `theorem` | [map_smul](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/map-smul--c65be4100e37a30a96083d8e.md) | 244 | `result-track:c65be4100e37a30a96083d8e8025b1bd9c958fbff24882291d642cc239f4cd30` |
| 29 | `theorem` | [map_add](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/map-add--17188b083076d775a0404efa.md) | 249 | `result-track:17188b083076d775a0404efac16118b55121505cb77172d6c1f023db11160a8c` |
| 30 | `theorem` | [map_mul](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/map-mul--0c0a6dbd17b9574af419683c.md) | 254 | `result-track:0c0a6dbd17b9574af419683ccdbbcb3df89668b415a9446e2e019f3c01da12e4` |
| 31 | `theorem` | [map_zero](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/map-zero--19c3638b087bd4282390e507.md) | 259 | `result-track:19c3638b087bd4282390e507154b94ca53f4821ab428892f559c8bc0c59d8bfc` |
| 32 | `def` | [id](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/id--eb78be177bc312fb575fc001.md) | 264 | `declaration-track:eb78be177bc312fb575fc0010ae6294b6ae523a939166926b525b8fa2e44d276` |
| 33 | `theorem` | [coe_id](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-id--d2f8d10eb388c341855b51a2.md) | 271 | `result-track:d2f8d10eb388c341855b51a2c0c84612f4ef122f4cde847ab5c1d916e683c295` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/instance--28aeaae9a0ce2b8e1ded76c1.md) | 274 | `declaration-track:28aeaae9a0ce2b8e1ded76c16da926dc2d83700b70e286f59866ea0b2d63e2ee` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/instance--d2b175d1b1143575993b5f3d.md) | 277 | `declaration-track:d2b175d1b1143575993b5f3d2f7af9a81c21155c2b46830b05615ac0b229c04c` |
| 36 | `theorem` | [coe_zero](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-zero--9fdff315341f2942daffff62.md) | 281 | `result-track:9fdff315341f2942daffff62c9340ec3a93b7a9084fc350777a451a2548252c3` |
| 37 | `theorem` | [coe_one](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-one--9dad337183647c33be5e6b64.md) | 286 | `result-track:9dad337183647c33be5e6b64a737dbc358278facc9189e51ec4693791fd2064e` |
| 38 | `theorem` | [zero_apply](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/zero-apply--9c4ba08e790f7cc0415fc4a4.md) | 290 | `result-track:9c4ba08e790f7cc0415fc4a4a45fa3aabccecf143ee60f8ae59a54df0446adc9` |
| 39 | `theorem` | [one_apply](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/one-apply--fbab28117ae2c101eefdc96c.md) | 294 | `result-track:fbab28117ae2c101eefdc96cced32ea39bad042d295e0b53979b1edd3647c53c` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/instance--baf13eeb916a2f0ca8b8d83c.md) | 298 | `declaration-track:baf13eeb916a2f0ca8b8d83cc6be52da763a6586c1fd5bfdf4a8179db25b2ffc` |
| 41 | `def` | [comp](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/comp--2abcd459f2129d6901c2cf87.md) | 302 | `declaration-track:2abcd459f2129d6901c2cf87e3a9782086bd9934506e6668929d1a605c7b82f3` |
| 42 | `theorem` | [coe_comp](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-comp--9e74a3409bc342ae2dcc7b46.md) | 307 | `result-track:9e74a3409bc342ae2dcc7b46413a8aea02b82c0cfeff30449618d3e1f71cecbe` |
| 43 | `theorem` | [comp_apply](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/comp-apply--fd8ed3b4f5f7c5b3856c3dfe.md) | 312 | `result-track:fd8ed3b4f5f7c5b3856c3dfe835f3a365c1c90a27dbff8d03da93a19b2fae753` |
| 44 | `def` | [inverse](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/inverse--20ab309bbaf8dde34a4b3331.md) | 317 | `declaration-track:20ab309bbaf8dde34a4b33310baf2da6532893a481a4ee78fbd93cae5f2dc132` |
| 45 | `theorem` | [coe_inverse](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-inverse--9542ef3ac8c137f45fddbfc1.md) | 323 | `result-track:9542ef3ac8c137f45fddbfc1da07949ef071ee77980c6a5c675635cf3b518adf` |
| 46 | `def` | [fst](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/fst--212af42faa661bb553c93ccf.md) | 339 | `declaration-track:212af42faa661bb553c93ccfd8d8d826303d5613967218e58ef78907d953a981` |
| 47 | `def` | [snd](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/snd--22297046875f4ae9d4b8b689.md) | 349 | `declaration-track:22297046875f4ae9d4b8b689e6a425a0c759978a51867da998feff46146e1d55` |
| 48 | `def` | [prod](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/prod--6913d551d1a446e5c2684180.md) | 361 | `declaration-track:6913d551d1a446e5c2684180bb33883ed2d106b62cf1c6335538786792fa0cf1` |
| 49 | `theorem` | [coe_prod](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-prod--739a37f02bf3ee2b9588f20a.md) | 370 | `result-track:739a37f02bf3ee2b9588f20ad594c6469c6356479314565678a6a2282a200c9a` |
| 50 | `theorem` | [fst_prod](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/fst-prod--cee40ca48ea0192589e2eb61.md) | 375 | `result-track:cee40ca48ea0192589e2eb616b0b2f02abbb22259d56155bea327fd40219e063` |
| 51 | `theorem` | [snd_prod](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/snd-prod--8c2887e6ef9e86ec9b4916b8.md) | 380 | `result-track:8c2887e6ef9e86ec9b4916b8abb9c5251ff453ddacc8c108150656c3c281a55f` |
| 52 | `theorem` | [prod_fst_snd](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/prod-fst-snd--5c853b543c93ac468285eb33.md) | 385 | `result-track:5c853b543c93ac468285eb337c698ca6071fb0520272a3411638f5ff57eb4422` |
| 53 | `def` | [prodEquiv](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/prodequiv--931d376f75c78bd37f64344a.md) | 392 | `declaration-track:931d376f75c78bd37f64344a3a86f107400a3dd82d69946928e182b1b763ec6e` |
| 54 | `def` | [inl](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/inl--c2a6d75751c1d3e27cdcbc2a.md) | 403 | `declaration-track:c2a6d75751c1d3e27cdcbc2a8ad4a9201626432375728596e63e3311b71297c5` |
| 55 | `def` | [inr](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/inr--e90ffa0fd6e1999761e1c6ca.md) | 408 | `declaration-track:e90ffa0fd6e1999761e1c6ca312298e8db75fa05bb837386b288327acb51ad51` |
| 56 | `theorem` | [coe_inl](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-inl--240b997db4455be25aecb18c.md) | 415 | `result-track:240b997db4455be25aecb18c42af2292a1bdaf46632f61d46c8d5f834c9b67bb` |
| 57 | `theorem` | [inl_apply](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/inl-apply--ccaa284623c58d47e8f11443.md) | 419 | `result-track:ccaa284623c58d47e8f11443fb2b630a9d4ab8169d68b10e0f471837fb2047be` |
| 58 | `theorem` | [coe_inr](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-inr--3c9e717dbcdf55c2cc39302e.md) | 424 | `result-track:3c9e717dbcdf55c2cc39302e9fce976149bc1cb4dce54a95ff0e779405ec2256` |
| 59 | `theorem` | [inr_apply](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/inr-apply--b1a4a9d9e68590f2f6743abc.md) | 428 | `result-track:b1a4a9d9e68590f2f6743abc46d88da85d985466e3ff1a6ddbf9cecb77fa2b5f` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/instance--31b0140d122fb993e24f3137.md) | 445 | `declaration-track:31b0140d122fb993e24f31373e9c78f4995f82e527b0c72c3360c31d035e11d3` |
| 61 | `def` | [toNonUnitalAlgHom](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/tononunitalalghom--04545dad9aa98ef793f2f83b.md) | 450 | `declaration-track:04545dad9aa98ef793f2f83b3176a56c14e8764344a3fbb28bd80496cb9ae747` |
| 62 | `instance` | [NonUnitalAlgHom.hasCoe](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/nonunitalalghom-hascoe--ff26372af87b9c49306857d2.md) | 454 | `declaration-track:ff26372af87b9c49306857d2b3a3ee95c89fef7640387dbf5b629acb34f4fdf5` |
| 63 | `theorem` | [toNonUnitalAlgHom_eq_coe](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/tononunitalalghom-eq-coe--7cdf621f0705b9338b4d859a.md) | 459 | `result-track:7cdf621f0705b9338b4d859a24f8513a2e893ec4010cad383632a7c0b8a55abb` |
| 64 | `theorem` | [coe_to_nonUnitalAlgHom](../../../../mathematics/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/declarations/coe-to-nonunitalalghom--fb43db8ceee5f121dbc60901.md) | 464 | `result-track:fb43db8ceee5f121dbc60901b5ce52dc32d3e6b699ea5110f7521600a0954b6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
