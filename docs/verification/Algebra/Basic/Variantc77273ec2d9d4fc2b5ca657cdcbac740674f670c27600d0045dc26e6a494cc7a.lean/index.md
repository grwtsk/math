# Verification target: GRWTSK.Algebra.Basic.Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ac0114b1e03d40f266eb5373f388d9ba55d7559",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ac0114b1e03d40f266eb5373f388d9ba55d7559`.

Source path: `GRWTSK/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Away](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/away--5dd665735443c8ff22c45c41.md) | 58 | `declaration-track:5dd665735443c8ff22c45c41fbff6b6ebbb48bc54346c826589e02537846b09c` |
| 2 | `def` | [invSelf](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/invself--3069e529233b1417b11a4d14.md) | 66 | `declaration-track:3069e529233b1417b11a4d14580957ffe8a8b3d58799029b3c7f88641e0964da` |
| 3 | `theorem` | [mul_invSelf](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/mul-invself--8de82ffe4a05407ec1881432.md) | 70 | `result-track:8de82ffe4a05407ec1881432c4b6003dd5f879ab0c82edcdd61de88b4464c78c` |
| 4 | `def` | [sec](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/sec--27db6b1d364f09c18b7e6606.md) | 77 | `declaration-track:27db6b1d364f09c18b7e6606b0fd769fd862e3229a34050c942b9ffba51513e3` |
| 5 | `lemma` | [sec_spec](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/sec-spec--af101638a9602316cd36a7c9.md) | 81 | `result-track:af101638a9602316cd36a7c92fc899d1d81df9f03f559af1eaacd094bf3e81de` |
| 6 | `lemma` | [algebraMap_pow_isUnit](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/algebramap-pow-isunit--7c283b44de057fdadd62538f.md) | 87 | `result-track:7c283b44de057fdadd62538f8fe32012d56be529a2167fd49a066840331391d0` |
| 7 | `lemma` | [algebraMap_isUnit](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/algebramap-isunit--485ca7afbb222d1abb5d9e04.md) | 90 | `result-track:485ca7afbb222d1abb5d9e04a78e91821e99453f82090a31577cfcffd3658df4` |
| 8 | `theorem` | [associated_sec_fst](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/associated-sec-fst--c2de6641aca0b8010f9a1382.md) | 93 | `result-track:c2de6641aca0b8010f9a1382e062371c0aea7f7ffe79356794b30b175c3f7eab` |
| 9 | `lemma` | [algebraMap_isUnit_iff](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/algebramap-isunit-iff--8245148b737998d0805a72d3.md) | 98 | `result-track:8245148b737998d0805a72d3e02025703cbb5ad322aa2f1f9186fa1e1ccd769a` |
| 10 | `lemma` | [surj](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/surj--fd9ac88a13c1005009b7128c.md) | 101 | `result-track:fd9ac88a13c1005009b7128c17c7acba9b39fde831a2f1352ee8a8b92e01c297` |
| 11 | `lemma` | [exists_of_eq](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/exists-of-eq--b69fa3e2aae2a20777ef63c1.md) | 106 | `result-track:b69fa3e2aae2a20777ef63c15d2d652723f15747883f5c06895b8b335c84977a` |
| 12 | `lemma` | [mk](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/mk--da94f831eaeb88c6e56c32f1.md) | 112 | `result-track:da94f831eaeb88c6e56c32f1ff161ae6767d7dc4b9be294fcd0184a64abdf9ac` |
| 13 | `lemma` | [of_associated](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/of-associated--32485970d849c2733b20d8f4.md) | 128 | `result-track:32485970d849c2733b20d8f4d51498c9eb4f221783844f9d46bbace5bc17163a` |
| 14 | `lemma` | [iff_of_associated](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/iff-of-associated--def08861f84b4c7236ad4149.md) | 143 | `result-track:def08861f84b4c7236ad4149130e2d032dbb5822312812dc33edcb583db062cf` |
| 15 | `lemma` | [isUnit_of_dvd](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/isunit-of-dvd--2e5c52e0dc578d434fb16ec2.md) | 147 | `result-track:2e5c52e0dc578d434fb16ec2848721f5646e1fc769a791ad977637b60548a380` |
| 16 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/lift--c07347dac31f3b78daa57ce1.md) | 155 | `declaration-track:c07347dac31f3b78daa57ce1529f364acd2bdbdfe8e092b0d4bb4e5e19a2321d` |
| 17 | `theorem` | [lift_eq](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/lift-eq--5249df941463a8033b7d1fcc.md) | 163 | `result-track:5249df941463a8033b7d1fcc669ed183cb01c0be830a258c73863d815ee2daf6` |
| 18 | `theorem` | [lift_comp](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/lift-comp--18eaab0a10de47489eb2d998.md) | 167 | `result-track:18eaab0a10de47489eb2d9982536f6b7a64e9984cc38ad4858a988cad6657f9c` |
| 19 | `def` | [liftAlgHom](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/liftalghom--5b1c17f8f590160402db0f10.md) | 177 | `declaration-track:5b1c17f8f590160402db0f1092977d0a1009f77b8cd95dc96507395202b7ff23` |
| 20 | `theorem` | [liftAlgHom_toRingHom](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/liftalghom-toringhom--71852fec421d862d0fbdc234.md) | 181 | `result-track:71852fec421d862d0fbdc234765fd3137625eb8d6e7a7ed30d1b7addb86c32db` |
| 21 | `theorem` | [coe_liftAlgHom](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/coe-liftalghom--079cc5a370b5854c00742d6a.md) | 184 | `result-track:079cc5a370b5854c00742d6aad293f8fdbd5b10648b6307ba7fe023db1b0a16c` |
| 22 | `theorem` | [liftAlgHom_apply](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/liftalghom-apply--73f12af8b74dbbb866c97b73.md) | 186 | `result-track:73f12af8b74dbbb866c97b73de6fa5ddba71979e439c3fd6fd4022a2d9439ec7` |
| 23 | `def` | [awayToAwayLeft](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/awaytoawayleft--e0194d11462f0c7e6f6745ae.md) | 192 | `declaration-track:e0194d11462f0c7e6f6745ae3a2b4aacbe559ed335fd2e01a8c0553da866e5c1` |
| 24 | `def` | [awayToAwayRight](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/awaytoawayright--892c5995a4f623209f35e053.md) | 197 | `declaration-track:892c5995a4f623209f35e05389993701e1a4528cfa0f740938b68df0dcb5c6e7` |
| 25 | `theorem` | [awayToAwayLeft_eq](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/awaytoawayleft-eq--1a201d29d036f5f5ddfc2bb1.md) | 200 | `result-track:1a201d29d036f5f5ddfc2bb18b0418291e67db492871a3360b5528ca4dd012b8` |
| 26 | `theorem` | [awayToAwayRight_eq](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/awaytoawayright-eq--0b84f7c3384201b268b8f809.md) | 204 | `result-track:0b84f7c3384201b268b8f8096e79b89b50f7b2c2dae26d8fd67dfec7971d790e` |
| 27 | `def` | [map](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/map--d2a21c7d0cb643e10f280a82.md) | 211 | `declaration-track:d2a21c7d0cb643e10f280a82a87fa93aee1d2db23c882bd4a694c1a3feb70e57` |
| 28 | `lemma` | [map_injective_iff](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/map-injective-iff--71fb4ccfe927fbf9d103f49e.md) | 219 | `result-track:71fb4ccfe927fbf9d103f49e216e28b6218252dfda879756a119e77c7d59b886` |
| 29 | `lemma` | [map_surjective_iff](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/map-surjective-iff--59f413b24901b4226a670bf0.md) | 231 | `result-track:59f413b24901b4226a670bf0a764458008eea7e1c758a1fb309bb5d749e29992` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/instance--f5ab91fc9097fb96da58393d.md) | 250 | `declaration-track:f5ab91fc9097fb96da58393d7380c9bb11b1aff26335d4fc84f84658b9c4acc0` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/instance--02839b5c26c843d3bd413f28.md) | 253 | `declaration-track:02839b5c26c843d3bd413f285236644dd17dbc5605d74c90a6c7ef2f8772f5e8` |
| 32 | `def` | [mapₐ](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/map--91d9dd1ec1a05834fb1807c7.md) | 260 | `declaration-track:91d9dd1ec1a05834fb1807c7d216651461c093868593c88f71a858378ad9b7fc` |
| 33 | `lemma` | [mapₐ_apply](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/map-apply--671e490ac70b67570e3bcd8a.md) | 267 | `result-track:671e490ac70b67570e3bcd8a111502bf72237e9e507d9679c40b0772674cea35` |
| 34 | `lemma` | [mapₐ_injective_of_injective](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/map-injective-of-injective--2030158d88f5fe3dcac46acc.md) | 273 | `result-track:2030158d88f5fe3dcac46acc7ab3b9c5e544131b2e94e00be5475ae575d09f0b` |
| 35 | `lemma` | [mapₐ_surjective_of_surjective](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/map-surjective-of-surjective--21dfa88e95b9a7754c45542e.md) | 277 | `result-track:21dfa88e95b9a7754c45542e20aa558b2bf32a8d0058f85509c511061bb28bf1` |
| 36 | `lemma` | [mul](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/mul--025d0b620bda5c7d412c4746.md) | 288 | `result-track:025d0b620bda5c7d412c47460202f94db5b3258a926e9503632013fbf3a79e93` |
| 37 | `lemma` | [mul'](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/mul--d71591faf1c3535f1ac23f0f.md) | 313 | `result-track:d71591faf1c3535f1ac23f0f71fc6baa4bc0185fc2696c857c2229384fca154a` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/instance--a3d986bedf57be81cfea0d0f.md) | 320 | `declaration-track:a3d986bedf57be81cfea0d0f3dbb2d08e919867691ca5c841559ad3df0cfe13b` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/instance--87e08a6d0ed9a3ef1e2dc98d.md) | 326 | `declaration-track:87e08a6d0ed9a3ef1e2dc98db7dc1db15bff477400f85c69c83b5b5c1e31c791` |
| 40 | `lemma` | [commutes](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/commutes--00d8fb83068586f60f22cd26.md) | 332 | `result-track:00d8fb83068586f60f22cd261e0b99569d2fd1ff70ec79aeb23c2991fe5276dd` |
| 41 | `theorem` | [isDomain](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/isdomain--c0557d2c0d253049f26bd353.md) | 342 | `result-track:c0557d2c0d253049f26bd35368dc9eec0fde667863acb4963b2df0d3c09cb8e2` |
| 42 | `def` | [atUnit](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/atunit--e774ac043f0407f88b9c289c.md) | 357 | `declaration-track:e774ac043f0407f88b9c289cb22902ef7881abc01be65fddca0acdce7709be9a` |
| 43 | `def` | [atOne](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/atone--f946417b473e9ec956e68fdc.md) | 362 | `declaration-track:f946417b473e9ec956e68fdc9ea38416da35802c31e39d2db6333e8ef208dcd7` |
| 44 | `theorem` | [away_of_isUnit_of_bijective](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/away-of-isunit-of-bijective--fa410d5d5366e707a9404cc6.md) | 365 | `result-track:fa410d5d5366e707a9404cc633c56a7909a9b43b50003e567a113338b919be57` |
| 45 | `lemma` | [Away.mul_of_isUnit](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/away-mul-of-isunit--20cf3e7b15271eaf05998694.md) | 372 | `result-track:20cf3e7b15271eaf059986945c832c01d048bca8029665b2212cc9c8a0c964a3` |
| 46 | `lemma` | [Away.mul_of_isUnit'](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/away-mul-of-isunit--755a14339dc0627431593edf.md) | 377 | `result-track:755a14339dc0627431593edf9bd78cdbce9a601b8a706ac757e95f58d069c227` |
| 47 | `lemma` | [Away.mul_of_associated](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/away-mul-of-associated--b3c65ddde69d641bc2087459.md) | 382 | `result-track:b3c65ddde69d641bc20874597d9cc7c3e079dec1ca21fcc5003e5dbbb85975e2` |
| 48 | `lemma` | [Away.algebraMap_surjective_of_isIdempotentElem](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/away-algebramap-surjective-of-isidempotentelem--5d1facb8845205a3447e62e9.md) | 393 | `result-track:5d1facb8845205a3447e62e9358b1631aef7ff1764acd75fe8aef9d0fa291b9c` |
| 49 | `lemma` | [away_of_isIdempotentElem_of_mul](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/away-of-isidempotentelem-of-mul--2f953f9f4dbd79b89fabb320.md) | 406 | `result-track:2f953f9f4dbd79b89fabb32090492116b3ebe5fa31408006bfc59938db0747b5` |
| 50 | `lemma` | [away_of_isIdempotentElem](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/away-of-isidempotentelem--86024b9b8c84b5d6d453fc70.md) | 419 | `result-track:86024b9b8c84b5d6d453fc709f581e59fae368bc4a57b5966c41a93ffffa525f` |
| 51 | `instance` | [away_fst](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/away-fst--f2054ea9fdc8e49ce4b4fdae.md) | 429 | `declaration-track:f2054ea9fdc8e49ce4b4fdaee1357589dae2eaf566adefc1d68553a8db9e1f42` |
| 52 | `instance` | [away_snd](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/away-snd--a2b9e89d2d997dc4e1deca41.md) | 436 | `declaration-track:a2b9e89d2d997dc4e1deca4190aa67c98b9af999e5b3e40d7f308c32e220d156` |
| 53 | `lemma` | [Away.of_surjective](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/away-of-surjective--cb2634d1da8cc44589ee44e7.md) | 454 | `result-track:cb2634d1da8cc44589ee44e735c2e2ae1e479bf39ad0e5dc4bf51e40c2b2a553` |
| 54 | `lemma` | [Away.of_surjective_of_isScalarTower](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/away-of-surjective-of-isscalartower--98c9438599949fd0f02e3516.md) | 468 | `result-track:98c9438599949fd0f02e3516d6816af5042beb5a61cd17c77a814fbfe95d61c6` |
| 55 | `abbrev` | [awayLift](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/awaylift--7b869a41558cf347cef825b3.md) | 493 | `declaration-track:7b869a41558cf347cef825b3d90c698452b0c0f0e0b3655acaa5a34c4880d44a` |
| 56 | `lemma` | [awayLift_mk](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/awaylift-mk--ba9c43ae0b4915bff0dba54b.md) | 497 | `result-track:ba9c43ae0b4915bff0dba54b6a076b549d631d377fa5c81bed2ba4a3bfb470f3` |
| 57 | `abbrev` | [awayMap](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/awaymap--5e8679a4bf3dea3998abb668.md) | 505 | `declaration-track:5e8679a4bf3dea3998abb66873573727bc5c634645d56e27f5477713021757ef` |
| 58 | `lemma` | [awayMap_injective_iff](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/awaymap-injective-iff--acdb5509689e19080bb70255.md) | 509 | `result-track:acdb5509689e19080bb702553f359b19b668c17e60064d4acff5f31af637ddd3` |
| 59 | `lemma` | [awayMap_surjective_iff](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/awaymap-surjective-iff--592a1f618cc9e63016c77933.md) | 514 | `result-track:592a1f618cc9e63016c779335a8ea9a3776a849c9279b9f8e7ab508bf940153d` |
| 60 | `lemma` | [awayMap_injective_of_dvd](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/awaymap-injective-of-dvd--af8890e62052a84eb089c245.md) | 518 | `result-track:af8890e62052a84eb089c2455a4f8bdb100b3797beaf372e5744a060512e7763` |
| 61 | `lemma` | [awayMap_surjective_of_dvd](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/awaymap-surjective-of-dvd--1d8addc28fd842d718d6e89a.md) | 528 | `result-track:1d8addc28fd842d718d6e89a3245da3fa6a36e57dceea2d1baf0f39f76e04659` |
| 62 | `lemma` | [awayMap_bijective_of_dvd](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/awaymap-bijective-of-dvd--05a6a3773c6358fa370a078b.md) | 537 | `result-track:05a6a3773c6358fa370a078bcf85010e9755453423be539016408458774f8458` |
| 63 | `lemma` | [awayMap_awayMap_surjective](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/awaymap-awaymap-surjective--262e225ccbcca02a6a39c611.md) | 543 | `result-track:262e225ccbcca02a6a39c611fb1f40b347b284559bb7dcbac912b2776d6a6f0d` |
| 64 | `abbrev` | [awayMapₐ](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/awaymap--79dd2e6749eade74102fab5d.md) | 562 | `declaration-track:79dd2e6749eade74102fab5ddea07b5d526d4efb7d4c5eece6d918b2b959b45a` |
| 65 | `theorem` | [algebraMap_injective_of_span_eq_top](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/algebramap-injective-of-span-eq-top--8b2ff885e96484a9cdd5956a.md) | 566 | `result-track:8b2ff885e96484a9cdd5956abc4b1e06582ca428397463240c3cb4c243045e05` |
| 66 | `theorem` | [existsUnique_algebraMap_eq_of_span_eq_top](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/existsunique-algebramap-eq-of-span-eq-top--ced18cfa783b1b6f49edf9f6.md) | 577 | `result-track:ced18cfa783b1b6f49edf9f65f298140fdd7d04c1caa2f15dcf514ac68ce860f` |
| 67 | `theorem` | [Away.isDomain](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/away-isdomain--c7b9c8b5e63b18f9154875a5.md) | 627 | `result-track:c7b9c8b5e63b18f9154875a58fa994dccdde6cd236e234eaf100aeeea00830fe` |
| 68 | `def` | [selfZPow](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/selfzpow--14842777004bca33509bb58b.md) | 644 | `declaration-track:14842777004bca33509bb58b83c35f6baff26c49a65bdc62ebf8dbcfed2f1d69` |
| 69 | `theorem` | [selfZPow_of_nonneg](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/selfzpow-of-nonneg--a5b2cf8ee2f0f8594f9ddbf6.md) | 647 | `result-track:a5b2cf8ee2f0f8594f9ddbf6692d12941d8e9667ddefb953a3c34249fc529854` |
| 70 | `theorem` | [selfZPow_natCast](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/selfzpow-natcast--f2e13c1f923aa2c8fc47bfa0.md) | 651 | `result-track:f2e13c1f923aa2c8fc47bfa010e7668458f34bc6669aaa13237346ac1c890a62` |
| 71 | `theorem` | [selfZPow_zero](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/selfzpow-zero--90c4e20b44ea798d1e59326e.md) | 655 | `result-track:90c4e20b44ea798d1e59326e893f20ebd3e37dafb88d23a737c3a0189f77bca3` |
| 72 | `theorem` | [selfZPow_of_neg](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/selfzpow-of-neg--6a55cb9aa0efe41017f3be08.md) | 658 | `result-track:6a55cb9aa0efe41017f3be08fb96c4712433e477d4e418f0acd810cd19e1b394` |
| 73 | `theorem` | [selfZPow_of_nonpos](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/selfzpow-of-nonpos--dc521143f0daac2587e6ed16.md) | 662 | `result-track:dc521143f0daac2587e6ed164045a121693a2f66debb0c833c804cef25b9e06c` |
| 74 | `theorem` | [selfZPow_neg_natCast](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/selfzpow-neg-natcast--ec1ab8050cf84c1953f57e84.md) | 669 | `result-track:ec1ab8050cf84c1953f57e84af262a590d51ebdaa8e440dbfae96e813b139f18` |
| 75 | `theorem` | [selfZPow_sub_natCast](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/selfzpow-sub-natcast--abb89f2d4dc857ef2d5bc1ef.md) | 674 | `result-track:abb89f2d4dc857ef2d5bc1efe0b0b2f8295f51678f575b39a5bc64dc0a92e365` |
| 76 | `theorem` | [selfZPow_add](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/selfzpow-add--25774852769dbf194babc4eb.md) | 683 | `result-track:25774852769dbf194babc4eb843617f401a99d659b4c065f4ddf0c207fd28730` |
| 77 | `theorem` | [selfZPow_mul_neg](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/selfzpow-mul-neg--c1ca52adf05f30853db047ad.md) | 702 | `result-track:c1ca52adf05f30853db047ade09dc2fcd840f29155bf9e8bbedc5b5ebdf62832` |
| 78 | `theorem` | [selfZPow_neg_mul](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/selfzpow-neg-mul--34d64bd154f1546860b07b8c.md) | 713 | `result-track:34d64bd154f1546860b07b8c019c1c2f421a23ec6359d12e1f9c8d466bf1953c` |
| 79 | `theorem` | [selfZPow_pow_sub](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/selfzpow-pow-sub--1159a6f3be277dfb7daf17ab.md) | 716 | `result-track:1159a6f3be277dfb7daf17ab2fdde39f611f2d7bc01bdcaabf3d8b26edaceef0` |
| 80 | `theorem` | [exists_reduced_fraction'](../../../../mathematics/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/declarations/exists-reduced-fraction--b20a5a437372e7261e1efbda.md) | 731 | `result-track:b20a5a437372e7261e1efbdad56f7afa5e6ec57e750b4c227bea3545ca6dff5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
