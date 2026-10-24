# Verification target: GRWTSK.Algebra.GroupTheory.Submonoid.Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "429bc4e199cf96b3ff1c543ec7f14b06f5596d7a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `429bc4e199cf96b3ff1c543ec7f14b06f5596d7a`.

Source path: `GRWTSK/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Submonoid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Deprecated.Group` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAddSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/isaddsubmonoid--4e694ed1707442f013c1ecd6.md) | 43 | `declaration-track:4e694ed1707442f013c1ecd6ad7e74c4d2563e4e60632f67a332850bc9b6d1a7` |
| 2 | `structure` | [IsSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/issubmonoid--c88b0a2c17453a4a7a64bba7.md) | 54 | `declaration-track:c88b0a2c17453a4a7a64bba732a25a1bef0d145dd250913e2bdb4026ffc08976` |
| 3 | `theorem` | [Additive.isAddSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/additive-isaddsubmonoid--0ee45d84db51d452c28e5600.md) | 61 | `result-track:0ee45d84db51d452c28e560052f89004e4c37a8a84c4f9952d737764874ce6cf` |
| 4 | `theorem` | [Additive.isAddSubmonoid_iff](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/additive-isaddsubmonoid-iff--9a8bcd250f988e7949b53b51.md) | 66 | `result-track:9a8bcd250f988e7949b53b5159c439e0bc0c041a1d409b0ce350a90e7dcb09aa` |
| 5 | `theorem` | [Multiplicative.isSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/multiplicative-issubmonoid--114597ce3d689c79bb755579.md) | 71 | `result-track:114597ce3d689c79bb755579ced8cdcd8ba3dd28c71ede2e7b8e0fed60c4100b` |
| 6 | `theorem` | [Multiplicative.isSubmonoid_iff](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/multiplicative-issubmonoid-iff--d37c1aa2fc5d676cf371bb58.md) | 76 | `result-track:d37c1aa2fc5d676cf371bb5807cbf8e6006e21515f2900e829fa00ef245aae9e` |
| 7 | `theorem` | [IsSubmonoid.inter](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/issubmonoid-inter--c8ed2b0640b35c227128c545.md) | 84 | `result-track:c8ed2b0640b35c227128c54573630082ba456cee9fb47571c43df51eb4bb870c` |
| 8 | `theorem` | [IsSubmonoid.iInter](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/issubmonoid-iinter--d196de6346bb482c33b69bfd.md) | 95 | `result-track:d196de6346bb482c33b69bfd5e4bca84efda547523a949f089307f9a2ff221fe` |
| 9 | `theorem` | [isSubmonoid_iUnion_of_directed](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/issubmonoid-iunion-of-directed--a4c2d3a582e235c6832e1911.md) | 108 | `result-track:a4c2d3a582e235c6832e191165dde488c225c401a275bb8c161436bf60a95dbb` |
| 10 | `def` | [powers](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/powers--3561b7ccdf11cf56c54a9da9.md) | 127 | `declaration-track:3561b7ccdf11cf56c54a9da9f3cda0040651668619f8a548da7789293ad9e756` |
| 11 | `theorem` | [powers.one_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/powers-one-mem--ece0cc6c30e71acec005d247.md) | 134 | `result-track:ece0cc6c30e71acec005d2478ba2ff4a94cfa5f9bc05c45631ca87a5d6f16111` |
| 12 | `theorem` | [powers.self_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/powers-self-mem--a9ccb161bb5326f48cee5470.md) | 142 | `result-track:a9ccb161bb5326f48cee547048270ddddd833c9eedbcd3f8e4350355da7d2ccd` |
| 13 | `theorem` | [powers.mul_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/powers-mul-mem--de0ee4b1e9d81c62d758625a.md) | 151 | `result-track:de0ee4b1e9d81c62d758625a7f000216395111260fdee1611dc149fdf786d6fb` |
| 14 | `theorem` | [powers.isSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/powers-issubmonoid--51093290b51b7c82d7cf35a1.md) | 160 | `result-track:51093290b51b7c82d7cf35a17ff7650125b68346077b18e5420250f4e7a2ef5c` |
| 15 | `theorem` | [Univ.isSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/univ-issubmonoid--ed9638ee57047ba8501d238e.md) | 168 | `result-track:ed9638ee57047ba8501d238ea1d5f99d6bc9e6b310f4a2f40e90debc127891a8` |
| 16 | `theorem` | [IsSubmonoid.preimage](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/issubmonoid-preimage--18824f5a0944eeaae91cf732.md) | 176 | `result-track:18824f5a0944eeaae91cf732aa198d19889bb20da28dbe483086424c32c5f86a` |
| 17 | `theorem` | [IsSubmonoid.image](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/issubmonoid-image--4e1a90ba7fe331e7d80574fc.md) | 188 | `result-track:4e1a90ba7fe331e7d80574fc9607c125b9c23096810ca7edeeef5dc11fdc1dc7` |
| 18 | `theorem` | [Range.isSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/range-issubmonoid--7792bdcca28e2db9d7e83efe.md) | 198 | `result-track:7792bdcca28e2db9d7e83efeb3a31b58ff01e578adcf97408493b15e1d6b2b72` |
| 19 | `theorem` | [IsSubmonoid.pow_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/issubmonoid-pow-mem--2acc077982501b4b4a63d03e.md) | 208 | `result-track:2acc077982501b4b4a63d03ed62b0b0afa5ed785315bab8399f0e8de4ec4285d` |
| 20 | `theorem` | [IsSubmonoid.power_subset](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/issubmonoid-power-subset--add0a25a35ca68eae7d31ab7.md) | 221 | `result-track:add0a25a35ca68eae7d31ab7b0f7d3df51fc661466f4c9b0a687c331a3b0be14` |
| 21 | `theorem` | [list_prod_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/list-prod-mem--33f2c1b2d40e0a133afddc6a.md) | 233 | `result-track:33f2c1b2d40e0a133afddc6a7f895bee4257d5054ac17a53645aecfd9c0baae0` |
| 22 | `theorem` | [multiset_prod_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/multiset-prod-mem--02099295e95e00f95728e103.md) | 247 | `result-track:02099295e95e00f95728e1036f1d5a817e2cc5c62b571c8b29c048b469e61a14` |
| 23 | `theorem` | [finset_prod_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/finset-prod-mem--000d3df053b070d19f2eb858.md) | 260 | `result-track:000d3df053b070d19f2eb85817bfcad4a8e5411c391577ed3635aba683128f8e` |
| 24 | `inductive` | [InClosure](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/inclosure--338d22c71337fdeed437aee1.md) | 272 | `declaration-track:338d22c71337fdeed437aee11d697f3544acd7d1706623d2a27c1fed368b51b5` |
| 25 | `inductive` | [InClosure](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/inclosure--62c372c788bfa91f90378969.md) | 285 | `declaration-track:62c372c788bfa91f90378969ade7108e65a70b46ef58e4a1258157a6005ec6be` |
| 26 | `def` | [Closure](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/closure--907e2162d9d361e5fcbbc364.md) | 294 | `declaration-track:907e2162d9d361e5fcbbc364f76e2b3c8eb0ec71fa80f905ea9df130ff5cae3a` |
| 27 | `theorem` | [closure.isSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/closure-issubmonoid--49aad90c711232c78f422b19.md) | 300 | `result-track:49aad90c711232c78f422b19d458f6ace61858bd5022d0f7dd86eea50c870afe` |
| 28 | `theorem` | [subset_closure](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/subset-closure--138b7364ba0972ba30da686a.md) | 309 | `result-track:138b7364ba0972ba30da686af1efcca7e99dcac81fbd2f6bcf0629e3857ea707` |
| 29 | `theorem` | [closure_subset](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/closure-subset--a4a49db914563f4f9ae33d3b.md) | 317 | `result-track:a4a49db914563f4f9ae33d3b271016e5d739e9d16632acb17a17168a71b5b005` |
| 30 | `theorem` | [closure_mono](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/closure-mono--999e6e2d4f93b55ad25e1b14.md) | 327 | `result-track:999e6e2d4f93b55ad25e1b1488d964bc701324ffae0ceb84774f66cfa8abdbd3` |
| 31 | `theorem` | [closure_singleton](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/closure-singleton--8f29c654d88cc766733405eb.md) | 337 | `result-track:8f29c654d88cc766733405ebf368d1bfe63189e62854941bb6b9f6624ad1c747` |
| 32 | `theorem` | [image_closure](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/image-closure--52f7adfa69cb24bbfec68e45.md) | 350 | `result-track:52f7adfa69cb24bbfec68e45f4c03904fd7521d02129741495ccdc50fe553665` |
| 33 | `theorem` | [exists_list_of_mem_closure](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/exists-list-of-mem-closure--e920059404d2fd319f8e105e.md) | 371 | `result-track:e920059404d2fd319f8e105e91e2ea0b8dab20ff992a5404ae865e762c0886da` |
| 34 | `theorem` | [mem_closure_union_iff](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/mem-closure-union-iff--5346dc275a1e652aa6d475fa.md) | 392 | `result-track:5346dc275a1e652aa6d475faf0cbe7308e0161c7abd585e46c5dadef5dd8b431` |
| 35 | `def` | [Submonoid.of](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/submonoid-of--786c31c8588a21652506e9fd.md) | 421 | `declaration-track:786c31c8588a21652506e9fdc6fc763b9a5ffd81d34a6c4b350e1f53d98e862a` |
| 36 | `theorem` | [Submonoid.isSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/declarations/submonoid-issubmonoid--4b83f7dc846bd9074f3073f6.md) | 427 | `result-track:4b83f7dc846bd9074f3073f6ecac1366f147c6cfad2f5eeab7e82436d88516fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
