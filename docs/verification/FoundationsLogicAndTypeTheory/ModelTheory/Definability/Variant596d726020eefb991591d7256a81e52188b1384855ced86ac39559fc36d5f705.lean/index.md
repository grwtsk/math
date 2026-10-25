# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Definability.Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e29ad8390140bbfb9b59440b82191bbff13b9971",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e29ad8390140bbfb9b59440b82191bbff13b9971`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.SetLike.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Semantics` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Definable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable--0d9830aa1cca50f4e6a305c7.md) | 53 | `declaration-track:0d9830aa1cca50f4e6a305c71518f36e52c68e5e623867d9bbe80beee8cdb34f` |
| 2 | `theorem` | [Definable.map_expansion](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-map-expansion--c9c6bbdc0dd6b6f1d97e7625.md) | 59 | `result-track:c9c6bbdc0dd6b6f1d97e7625a9fbc94e913d30dd9a8ff0ebea3d91edbee852a8` |
| 3 | `theorem` | [empty_definable_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/empty-definable-iff--bb5042f6e091a9d9e04e3f93.md) | 67 | `result-track:bb5042f6e091a9d9e04e3f9321129316c901b68fe61939f263e8c12f5413d99c` |
| 4 | `theorem` | [definable_iff_empty_definable_with_params](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-iff-empty-definable-with-params--0b3025d3affb13324e33755b.md) | 73 | `result-track:0b3025d3affb13324e33755bb00aa70f5fe2f4d7a99c2066c4cc45c98230f32c` |
| 5 | `theorem` | [Definable.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-mono--b24e9d53c3d9c7c846aeb95c.md) | 78 | `result-track:b24e9d53c3d9c7c846aeb95c8acb38c205c31f12bce14f0baaca91567ef36439` |
| 6 | `theorem` | [definable_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-empty--f4dd17bc390941717425a64f.md) | 84 | `result-track:f4dd17bc390941717425a64f9d34b36296f1e9b3e50303173a735c05c20ad641` |
| 7 | `theorem` | [definable_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-univ--40186960355d7fb38eb49734.md) | 91 | `result-track:40186960355d7fb38eb4973492f0cb6b4e43502b67486af42ed1c2fea27add9f` |
| 8 | `theorem` | [Definable.inter](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-inter--b8c17547465be030ea23766c.md) | 98 | `result-track:b8c17547465be030ea23766c6906c8fccfb5715178a8e768e2f22df562e1a433` |
| 9 | `theorem` | [Definable.union](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-union--644bd02e1fe6a2fbfb0babdf.md) | 108 | `result-track:644bd02e1fe6a2fbfb0babdfdd9c6799fdeeac29835a9447322e8c9ea5e22310` |
| 10 | `theorem` | [definable_finset_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-finset-inf--c656aa544b2ff069c2b92d76.md) | 117 | `result-track:c656aa544b2ff069c2b92d7695975507062d73ac50a39ab4521b7b7a0462023d` |
| 11 | `theorem` | [definable_finset_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-finset-sup--c3efa6f0eb140ff945b27d5a.md) | 125 | `result-track:c3efa6f0eb140ff945b27d5a9b54d57544543950704d3e3ed98b2c42f26291d6` |
| 12 | `theorem` | [definable_finset_biInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-finset-biinter--f2c56d09c81418c760bbc8a3.md) | 133 | `result-track:f2c56d09c81418c760bbc8a32bc2234e0af9c8a6364a29437506ea36da5bc295` |
| 13 | `theorem` | [definable_finset_biUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-finset-biunion--f9475864561c6c9e396bc7dd.md) | 139 | `result-track:f9475864561c6c9e396bc7ddd2e3706103ccb8e40872a73ec2c4ae2cf1996fe2` |
| 14 | `theorem` | [Definable.compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-compl--095f95db5b98a3d7eab14b57.md) | 146 | `result-track:095f95db5b98a3d7eab14b57d509b93d4346f7c7d61394f855e3be8fcb8534b9` |
| 15 | `theorem` | [Definable.sdiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-sdiff--7ce15f9a1c39e08a31284b8e.md) | 154 | `result-track:7ce15f9a1c39e08a31284b8e83f664ac484d4c9415dced74b1df7898383c2ec5` |
| 16 | `theorem` | [Definable.preimage_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-preimage-comp--0a4197d529b96c03f3440f9b.md) | 159 | `result-track:0a4197d529b96c03f3440f9b0dfdda388c126ba1ca0cd2e46df37e21e97a1d77` |
| 17 | `theorem` | [Definable.image_comp_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-image-comp-equiv--fd3210211412116902bc46b2.md) | 167 | `result-track:fd3210211412116902bc46b21cba518675a3547d51b507034c492e6943181b0a` |
| 18 | `theorem` | [Definable.image_comp_sum_inl_fin](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-image-comp-sum-inl-fin--af4789f460ff7f40484a268b.md) | 180 | `result-track:af4789f460ff7f40484a268b7bee693b8e9f320544634025b881f43eacd3af5a` |
| 19 | `theorem` | [Definable.image_comp_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-image-comp-embedding--88ef335efa905e08eb701159.md) | 196 | `result-track:88ef335efa905e08eb70115965afd8a9ab147cf46b6035807f94e07189feacb0` |
| 20 | `theorem` | [Definable.image_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable-image-comp--344087cd02b4c5d992c53a24.md) | 212 | `result-track:344087cd02b4c5d992c53a248eeb61defb9d2d29f9420c6807d57bc43ce9f488` |
| 21 | `def` | [Definable₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable--484ded644440c011fc8214c1.md) | 251 | `declaration-track:484ded644440c011fc8214c165bfd9b491678e5c81f4496f31fd7ecd04db8223` |
| 22 | `def` | [Definable₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definable--e4e1fee478722a272303deb2.md) | 256 | `declaration-track:e4e1fee478722a272303deb20843caa482fcdb5dde38b538fc3815d74b43f67f` |
| 23 | `def` | [DefinableSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/definableset--cd0e0fcf69f82b981baaf963.md) | 272 | `declaration-track:cd0e0fcf69f82b981baaf963f7a015c9c9239084024df029e45254d1b7eccda1` |
| 24 | `instance` | [instSetLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/instsetlike--1d50c3244b73de9164478569.md) | 280 | `declaration-track:1d50c3244b73de91644785695b4d8f1cc8fa23e7a0e61c75c4cd064f6a452c37` |
| 25 | `instance` | [instTop](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/insttop--34a175b1f07097ffea5dc326.md) | 285 | `declaration-track:34a175b1f07097ffea5dc326873461f8cb48373d2aa1e982282bdddf92bce7ef` |
| 26 | `instance` | [instBot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/instbot--0cd119bb4bd51868bae27365.md) | 289 | `declaration-track:0cd119bb4bd51868bae2736598fb2ee6b0a315e76967c7d9592eb5d598e3be9b` |
| 27 | `instance` | [instSup](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/instsup--4a9396bf08fb22fd0e596e87.md) | 293 | `declaration-track:4a9396bf08fb22fd0e596e8753f17f7abd721c41e8fdb3633863bb179efc0dc6` |
| 28 | `instance` | [instInf](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/instinf--48cb1fc5752c77ae6754eb2e.md) | 297 | `declaration-track:48cb1fc5752c77ae6754eb2e40498cfdbc49ff3f73f62f3abc1618bb90d3fb60` |
| 29 | `instance` | [instHasCompl](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/insthascompl--10bc39f7bc434547102a6479.md) | 301 | `declaration-track:10bc39f7bc434547102a647990254f6c6e2f88d2044ce45d61f62aeae3416847` |
| 30 | `instance` | [instSDiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/instsdiff--72aad193188de7d663d70343.md) | 305 | `declaration-track:72aad193188de7d663d70343e770909237f08c81a077fe7e435c08b8644f1fdf` |
| 31 | `instance` | [instInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/instinhabited--ec863f8d5eba88092f646c58.md) | 309 | `declaration-track:ec863f8d5eba88092f646c58e75be9c265c77ad2402102ae6218fb1960c7d085` |
| 32 | `theorem` | [le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/le-iff--36993912d9b3cff61dcad112.md) | 313 | `result-track:36993912d9b3cff61dcad112f63d0c06a47cad8bf246881869e389f16d1f481d` |
| 33 | `theorem` | [mem_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/mem-top--d954f2e3dd9b015bf741b682.md) | 318 | `result-track:d954f2e3dd9b015bf741b68294611b47ec8124c01bfdc96fcd71e81c0c98cf29` |
| 34 | `theorem` | [not_mem_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/not-mem-bot--65d7f05434ea8766c63eeade.md) | 323 | `result-track:65d7f05434ea8766c63eeade39e6ce372105b14564ceefd0c57d5b1e83dbd7e7` |
| 35 | `theorem` | [mem_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/mem-sup--03b1d3c58f5696489fa2d751.md) | 328 | `result-track:03b1d3c58f5696489fa2d75177ef6080ea09bff5309cebef408dff86543a28be` |
| 36 | `theorem` | [mem_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/mem-inf--9fc02cc12c3cd4d62717a872.md) | 333 | `result-track:9fc02cc12c3cd4d62717a872f98f4687c6173fff610f755e5c0c70a0a8f41a67` |
| 37 | `theorem` | [mem_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/mem-compl--1201c82a3886d2f9b5de3078.md) | 338 | `result-track:1201c82a3886d2f9b5de3078989033618252e3affb8dd8574d08432135b55937` |
| 38 | `theorem` | [mem_sdiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/mem-sdiff--7644075c66df127999c1b545.md) | 343 | `result-track:7644075c66df127999c1b545cc8b35bdb7e3be169c284e4347a5c53a85333c4a` |
| 39 | `theorem` | [coe_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/coe-top--b902907d77b4ae6f4b3722cc.md) | 348 | `result-track:b902907d77b4ae6f4b3722cc42477c0bbc4512bbc037266d4a8f3e17e492b4b2` |
| 40 | `theorem` | [coe_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/coe-bot--aa56fa3c663de38e6f799fdf.md) | 353 | `result-track:aa56fa3c663de38e6f799fdf1321bb7ab285e9d9aa87074e61ccc03268db6d01` |
| 41 | `theorem` | [coe_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/coe-sup--ff139e887deacaabc007e2c8.md) | 358 | `result-track:ff139e887deacaabc007e2c814541536a4de1ce20b3bfa406b7fe8e43e64dc99` |
| 42 | `theorem` | [coe_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/coe-inf--2872f65ee003c6db6f0be07b.md) | 364 | `result-track:2872f65ee003c6db6f0be07b88b9957ba4d5372152f93038868984658cb10725` |
| 43 | `theorem` | [coe_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/coe-compl--8bed730a9714f014098a3eaf.md) | 370 | `result-track:8bed730a9714f014098a3eafc496b664d3e44c976c8c5ce234dad33a7d1c8186` |
| 44 | `theorem` | [coe_sdiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/coe-sdiff--b0f95c5a7d08afbf80f2bd93.md) | 376 | `result-track:b0f95c5a7d08afbf80f2bd93635fd457138ea2e1cb1c8aae2660f19eb6b3581b` |
| 45 | `instance` | [instBooleanAlgebra](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant596d726020eefb991591d7256a81e52188b1384855ced86ac39559fc36d5f705.lean/declarations/instbooleanalgebra--968c76bce8d14891514fa1ca.md) | 381 | `declaration-track:968c76bce8d14891514fa1ca22c17bdba672a840ea8a5fc3f038cd68d79f5d5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
