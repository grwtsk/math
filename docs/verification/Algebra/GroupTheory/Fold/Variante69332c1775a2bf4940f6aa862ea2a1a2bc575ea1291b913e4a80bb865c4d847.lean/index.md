# Verification target: GRWTSK.Algebra.GroupTheory.Fold.Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "683dd10d7f72399a7543ecb3199e11d699bc34c1",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `683dd10d7f72399a7543ecb3199e11d699bc34c1`.

Source path: `GRWTSK/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean.json)

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
| 1 | `abbrev` | [Foldl](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldl--98ca7e20f023226770425a6f.md) | 118 | `declaration-track:98ca7e20f023226770425a6f98812ff124e3bad948cd052af3c5f6750976a927` |
| 2 | `def` | [Foldl.mk](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldl-mk--1c2534f44118874cbb15e680.md) | 121 | `declaration-track:1c2534f44118874cbb15e68090f34f29821fbed27248151220fd563b2952f115` |
| 3 | `def` | [Foldl.get](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldl-get--18aaca958896eab5adf8ba17.md) | 124 | `declaration-track:18aaca958896eab5adf8ba17bd59c28084918bf400a6bff5e2ef5e7ae0751146` |
| 4 | `def` | [Foldl.ofFreeMonoid](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldl-offreemonoid--0277d0092118ca0240087e68.md) | 128 | `declaration-track:0277d0092118ca0240087e681cabf552c9f1282401eb073270dc2ed5600c339d` |
| 5 | `abbrev` | [Foldr](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldr--f1c7c7ff2b3795004c7d0a4e.md) | 136 | `declaration-track:f1c7c7ff2b3795004c7d0a4e821feccd70ae5e30a2263123ac104ddfad4177db` |
| 6 | `def` | [Foldr.mk](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldr-mk--4f88fe990d88ee85d9928198.md) | 139 | `declaration-track:4f88fe990d88ee85d992819867795d171066d9f4b4b8d753b90a677838b77ef8` |
| 7 | `def` | [Foldr.get](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldr-get--e89691108c4503ea1c2aa05f.md) | 142 | `declaration-track:e89691108c4503ea1c2aa05fbe02433d5a3144b2e5c162287b1208233c6d7d74` |
| 8 | `def` | [Foldr.ofFreeMonoid](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldr-offreemonoid--e8833b932e7bb5a32f45e985.md) | 146 | `declaration-track:e8833b932e7bb5a32f45e985b7a10150fb21c3d5a42087369f797ab2f78f7fca` |
| 9 | `abbrev` | [foldlM](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldlm--7161d47e0b9e1a50a8cffb71.md) | 154 | `declaration-track:7161d47e0b9e1a50a8cffb71703a808c0ef1cbd925aa65b3f54e93218e745593` |
| 10 | `def` | [foldlM.mk](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldlm-mk--41f16e74c22982350f281c64.md) | 157 | `declaration-track:41f16e74c22982350f281c64a18906edbb3f309d153dc01a43b19dd9cff94ebd` |
| 11 | `def` | [foldlM.get](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldlm-get--6292ccdb4837129af0dcd19b.md) | 160 | `declaration-track:6292ccdb4837129af0dcd19bbf3b3ed3245824c845473e4dde7a661e27d01900` |
| 12 | `def` | [foldlM.ofFreeMonoid](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldlm-offreemonoid--d0ad48ecf7c5c4f25b91a59e.md) | 164 | `declaration-track:d0ad48ecf7c5c4f25b91a59efbb07210df764a61b61f0a90cab2be52160a35c8` |
| 13 | `abbrev` | [foldrM](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldrm--d00bc9582c86aaf1d47b07b7.md) | 173 | `declaration-track:d00bc9582c86aaf1d47b07b775fee8468785224bc95a708682503de251a2cdfa` |
| 14 | `def` | [foldrM.mk](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldrm-mk--2b7c39e1c99e1ed276fc8745.md) | 176 | `declaration-track:2b7c39e1c99e1ed276fc8745e89f284fc034ad6d3b1db5423e1b16c66cc3be81` |
| 15 | `def` | [foldrM.get](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldrm-get--4793039ae72ccf5f1ed19b4e.md) | 179 | `declaration-track:4793039ae72ccf5f1ed19b4ea19a4e1c0bb14e98ffbfb98a716d398ca9c87640` |
| 16 | `def` | [foldrM.ofFreeMonoid](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldrm-offreemonoid--d1e4b3c264a20f21e571f004.md) | 183 | `declaration-track:d1e4b3c264a20f21e571f0045e796dbaba988a27ecf882bba2fb9b75873f8aa4` |
| 17 | `def` | [foldMap](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldmap--c698000246f0ac36305d2cf1.md) | 198 | `declaration-track:c698000246f0ac36305d2cf1e3ad93df8ebf16f41a3c2bb37413d288873522c2` |
| 18 | `def` | [foldl](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldl--1ad9efb035d73370c140ec5f.md) | 201 | `declaration-track:1ad9efb035d73370c140ec5f04ad01d207c0c57656dd35814bc237972cd09931` |
| 19 | `def` | [foldr](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldr--1f6ca5083d7ebd3f6692f30c.md) | 204 | `declaration-track:1f6ca5083d7ebd3f6692f30c59d3ec46b82968c1524701c82dfc2b4725ea2ae2` |
| 20 | `def` | [toList](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/tolist--088beb59af8d3da586aa799c.md) | 223 | `declaration-track:088beb59af8d3da586aa799c3256cb41eb956a7c52f818d9f556df65ba1bee12` |
| 21 | `def` | [length](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/length--ab51b9a560b155f0d68e9a50.md) | 226 | `declaration-track:ab51b9a560b155f0d68e9a5002452db9a17a97c1d86ee060384774414ff1d312` |
| 22 | `def` | [foldlm](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldlm--f1054ba0a6588afe035f1940.md) | 231 | `declaration-track:f1054ba0a6588afe035f19405f3703e0c58ae28e84a4a142bed531c2cb8a28ad` |
| 23 | `def` | [foldrm](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldrm--32a3f7f1c99f1499ef64226c.md) | 234 | `declaration-track:32a3f7f1c99f1499ef64226c62eef1dca2009da7e9932a64d6dc453136434592` |
| 24 | `def` | [mapFold](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/mapfold--22263bf3c2247528b1a57cf0.md) | 246 | `declaration-track:22263bf3c2247528b1a57cf073745b42947cf3be84daeb2fe662b8077f520e93` |
| 25 | `theorem` | [Free.map_eq_map](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/free-map-eq-map--72cd79568f883c1cc898fd32.md) | 251 | `result-track:72cd79568f883c1cc898fd329734e7f1e00cd5105a73d60b1e3c3629161c4c57` |
| 26 | `theorem` | [foldl.unop_ofFreeMonoid](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldl-unop-offreemonoid--2ec26ce4376c20bab96fa448.md) | 255 | `result-track:2ec26ce4376c20bab96fa448c02c0e6c07c616cc4018018ad8968a523731819c` |
| 27 | `theorem` | [foldMap_hom](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldmap-hom--571fd8f6157a8dd9a738c144.md) | 265 | `result-track:571fd8f6157a8dd9a738c144823a254d0a601a17ca17265de787e64824f0edbd` |
| 28 | `theorem` | [foldMap_hom_free](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldmap-hom-free--635e48a2c96ee09fce430a2d.md) | 273 | `result-track:635e48a2c96ee09fce430a2d3f907d9d89c79f4fb20ad91fe8f0623bd7328699` |
| 29 | `theorem` | [foldl.ofFreeMonoid_comp_of](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldl-offreemonoid-comp-of--b16548dcdf2c72f5731a19fc.md) | 289 | `result-track:b16548dcdf2c72f5731a19fccb9ad987eeaa595f4c102a54a4dbfec200fa157a` |
| 30 | `theorem` | [foldr.ofFreeMonoid_comp_of](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldr-offreemonoid-comp-of--78823b58feeccb3ac9d8f3b4.md) | 294 | `result-track:78823b58feeccb3ac9d8f3b4664b5a5da34c6e1f58a13ecb635f87ec2a707302` |
| 31 | `theorem` | [foldlm.ofFreeMonoid_comp_of](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldlm-offreemonoid-comp-of--229472c368a94e84273ec8b1.md) | 300 | `result-track:229472c368a94e84273ec8b108aa8ceb185ecf1b8216812efa579f796630ae17` |
| 32 | `theorem` | [foldrm.ofFreeMonoid_comp_of](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldrm-offreemonoid-comp-of--55b1ae36021b057496db8c31.md) | 310 | `result-track:55b1ae36021b057496db8c3184d603d2b0023ca8c55fc42379cc14ccf762ac30` |
| 33 | `theorem` | [toList_spec](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/tolist-spec--a97b79414f14e90eab1c8b6b.md) | 315 | `result-track:a97b79414f14e90eab1c8b6b0c847f2b2737cc6edcd7ebf72c3960d21a9c4413` |
| 34 | `theorem` | [foldMap_map](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldmap-map--88de6e883fdfdb214bd292c3.md) | 331 | `result-track:88de6e883fdfdb214bd292c3f21dcf8d4d157972b8c4459ee2ecbefd33b8394d` |
| 35 | `theorem` | [foldl_toList](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldl-tolist--4bf9450ac5c9ee79b6aa0d56.md) | 335 | `result-track:4bf9450ac5c9ee79b6aa0d56617605edb041cab10cd2dfafa7e2abd5556eeecc` |
| 36 | `theorem` | [foldr_toList](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldr-tolist--70d32ce8800c84073cd3150b.md) | 341 | `result-track:70d32ce8800c84073cd3150b79391448f29456c4480a6ff734070dc2884036b3` |
| 37 | `theorem` | [toList_map](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/tolist-map--63ec5df5af348757879ab14a.md) | 347 | `result-track:63ec5df5af348757879ab14a261d408725fa093c855ae9b4a7c04d422c923ced` |
| 38 | `theorem` | [foldl_map](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldl-map--41ab899521f4fe4eba8849ab.md) | 352 | `result-track:41ab899521f4fe4eba8849ab2a60b49a7fd4c65afcf5620922150f2ef25115e2` |
| 39 | `theorem` | [foldr_map](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldr-map--3d7d3dc7dfd3f86bd1e9717b.md) | 357 | `result-track:3d7d3dc7dfd3f86bd1e9717bd15fbdaa5368d321b6b2879dafb5c76ec766d54b` |
| 40 | `theorem` | [toList_eq_self](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/tolist-eq-self--aabdfb9797448fe0d848990a.md) | 362 | `result-track:aabdfb9797448fe0d848990a4eea2483612936dc8aacb032458bdc2d3d424a29` |
| 41 | `theorem` | [length_toList](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/length-tolist--96719add8814f59c579a8925.md) | 368 | `result-track:96719add8814f59c579a8925a08514998bba68e4c9ee1facfe9e381437350fa4` |
| 42 | `theorem` | [foldlm_toList](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldlm-tolist--ecaeb2af67147bb57595ab92.md) | 381 | `result-track:ecaeb2af67147bb57595ab929012333f151699b36c860e28baedec2d197faf76` |
| 43 | `theorem` | [foldrm_toList](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldrm-tolist--6965457e4ce666c1a4eb6269.md) | 389 | `result-track:6965457e4ce666c1a4eb6269b6b6e7f7113c5eb96a3326ea9b50175e2045259e` |
| 44 | `theorem` | [foldlm_map](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldlm-map--7abd5540b3a5b8d51d7c82f7.md) | 396 | `result-track:7abd5540b3a5b8d51d7c82f715459a7ba03725583cc5c17cf5aed818ff9af5ff` |
| 45 | `theorem` | [foldrm_map](../../../../../mathematics/Algebra/GroupTheory/Fold/Variante69332c1775a2bf4940f6aa862ea2a1a2bc575ea1291b913e4a80bb865c4d847.lean/declarations/foldrm-map--7b28373a6b21033f348d9928.md) | 401 | `result-track:7b28373a6b21033f348d99284ca31ffae48ff98e955d5997060a37081516cde6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
