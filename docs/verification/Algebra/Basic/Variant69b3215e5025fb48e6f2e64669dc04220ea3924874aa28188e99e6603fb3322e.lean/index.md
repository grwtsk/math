# Verification target: GRWTSK.Algebra.Basic.Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79b7dc287e9a233d4450b501ab1b3e873d4c06bd",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79b7dc287e9a233d4450b501ab1b3e873d4c06bd`.

Source path: `GRWTSK/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Forall2` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Defs` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_eq_foldl](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-eq-foldl--760ca41c580cd4fc7fc6db9e.md) | 44 | `result-track:760ca41c580cd4fc7fc6db9e65a84a5b500a78ad84890c90c52649852a05b9d1` |
| 2 | `theorem` | [prod_append](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-append--628ca7e5f1962d11e948ea4f.md) | 51 | `result-track:628ca7e5f1962d11e948ea4f83d5126206b29fd50ef862e71facea224df62a91` |
| 3 | `theorem` | [prod_concat](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-concat--6e2465e9c57f94b9805b5d23.md) | 57 | `result-track:6e2465e9c57f94b9805b5d2388a08009ba07ab8e44e568c7ab7552f4733b41fa` |
| 4 | `theorem` | [prod_flatten](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-flatten--fe70134f074f51478487b1ee.md) | 61 | `result-track:fe70134f074f51478487b1ee84bfced09d85224edb675f8c9d2bdf46e952227f` |
| 5 | `theorem` | [rel_prod](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/rel-prod--c7adb0b61351962528de5791.md) | 68 | `result-track:c7adb0b61351962528de5791e2a819a4db5c25161af5c12554a68b01609e0f5d` |
| 6 | `theorem` | [prod_hom_nonempty](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-hom-nonempty--236d6cd406f2ea37ed171517.md) | 73 | `result-track:236d6cd406f2ea37ed1715173a40f138f5b9bacc5106587678638136fc1a9e12` |
| 7 | `theorem` | [prod_hom](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-hom--0f6ae554c47705729aea9337.md) | 78 | `result-track:0f6ae554c47705729aea93370825c0b5899d8c06609e7709fab1b8366dc4b630` |
| 8 | `theorem` | [prod_hom₂_nonempty](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-hom-nonempty--21c846b0aafe5d23fcb063bf.md) | 84 | `result-track:21c846b0aafe5d23fcb063bf8fe89070b23039bbac4c3e71e227625a37872a56` |
| 9 | `theorem` | [prod_hom₂](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-hom--07d5b9fb8fd05b61064d0c0a.md) | 90 | `result-track:07d5b9fb8fd05b61064d0c0a4b51ad784521d278d9c1ba6ace1a6458a49e5eee` |
| 10 | `theorem` | [prod_map_mul](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-map-mul--765eceaf9d4e7c3d40e23b39.md) | 97 | `result-track:765eceaf9d4e7c3d40e23b3922ae5c9393093bf14438af4b3417e77217df4356` |
| 11 | `theorem` | [prod_map_hom](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-map-hom--34865c7737d697a6d92d9257.md) | 102 | `result-track:34865c7737d697a6d92d92574bb3d69b7d3538b47dd3a78f6235fd6ceb3d1dd9` |
| 12 | `theorem` | [prod_take_mul_prod_drop](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-take-mul-prod-drop--a1e278c57df9b62accfbdf2c.md) | 107 | `result-track:a1e278c57df9b62accfbdf2c9cc1c62ed9f29392f2a2dc2e1cd6f53e0ab481aa` |
| 13 | `theorem` | [prod_take_succ](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-take-succ--11c30baa110ca03731408424.md) | 112 | `result-track:11c30baa110ca0373140842477e108c76e52caa8d12dad858eff3c36370c5b36` |
| 14 | `theorem` | [length_pos_of_prod_ne_one](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/length-pos-of-prod-ne-one--ee850e986ecc8d04ecaa0355.md) | 119 | `result-track:ee850e986ecc8d04ecaa035585ff8befe7cfb2d4db812165d7442272b49a0249` |
| 15 | `theorem` | [length_pos_of_one_lt_prod](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/length-pos-of-one-lt-prod--8fe52f3421ec3b12466515f3.md) | 126 | `result-track:8fe52f3421ec3b12466515f352bd5632f534a61878365092248314c3fbd0d538` |
| 16 | `theorem` | [length_pos_of_prod_lt_one](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/length-pos-of-prod-lt-one--a37c394541dfffef5f2abbe3.md) | 131 | `result-track:a37c394541dfffef5f2abbe3d25ef08a1fe202607ac25e3493b00b642704a7e5` |
| 17 | `theorem` | [prod_set](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-set--90fd02cbaca0bf090e74e6af.md) | 135 | `result-track:90fd02cbaca0bf090e74e6af1a774aeff5afbb50afc289324be5b8e2bddbe5b0` |
| 18 | `theorem` | [getElem?_zero_mul_tail_prod](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/getelem-zero-mul-tail-prod--c1f6ae943744c31e025998e7.md) | 151 | `result-track:c1f6ae943744c31e025998e76274192a05b558997e78cae5a7627b69c607c22f` |
| 19 | `theorem` | [headI_mul_tail_prod_of_ne_nil](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/headi-mul-tail-prod-of-ne-nil--01d449684ff9471f1ce1c0ed.md) | 161 | `result-track:01d449684ff9471f1ce1c0ed071eae1fe3fe9cac10ba3a671430e82c06a8aec3` |
| 20 | `theorem` | [_root_.GRWTSK.Algebra.ProdEqFoldl.Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.Commute.list_prod_right](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/root-grwtsk-algebra-prodeqfoldl-variant3ab8db08e4648019c0508b8c0a6a18845--14b83a614529b02fca5b1a10.md) | 165 | `result-track:14b83a614529b02fca5b1a103a15c54112e6a8c8f2830d5b4fb8d3c4e56477e8` |
| 21 | `theorem` | [_root_.GRWTSK.Algebra.ProdEqFoldl.Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.Commute.list_prod_left](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/root-grwtsk-algebra-prodeqfoldl-variant3ab8db08e4648019c0508b8c0a6a18845--856db2e018a247905e8d4d23.md) | 175 | `result-track:856db2e018a247905e8d4d2393dbaf63c94328920f0cc4a5c88d6ea36d690064` |
| 22 | `lemma` | [prod_range_succ](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-range-succ--92b11a6484b46ade256a1c6a.md) | 179 | `result-track:92b11a6484b46ade256a1c6ad1c18b0ccf48f58f9b9a8d42a74405fa91f6f685` |
| 23 | `lemma` | [prod_range_succ'](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-range-succ--4475c5e04839f06ec2db0ee5.md) | 187 | `result-track:4475c5e04839f06ec2db0ee5721ae9f1033a05ad54feeb60aebd3f6b00b643ce` |
| 24 | `lemma` | [prod_eq_one](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-eq-one--4585b3ce2f9582ffb2525f19.md) | 192 | `result-track:4585b3ce2f9582ffb2525f19df8db5c388dcf90ba38392051c210bfc0b17710b` |
| 25 | `lemma` | [exists_mem_ne_one_of_prod_ne_one](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/exists-mem-ne-one-of-prod-ne-one--a547131ba6134c1c71530825.md) | 199 | `result-track:a547131ba6134c1c715308259bfd8ff346b510fbdc67286fb267edc39e0b24bc` |
| 26 | `lemma` | [prod_erase_of_comm](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-erase-of-comm--f7a24acf846e5cd77466d82c.md) | 203 | `result-track:f7a24acf846e5cd77466d82cf9f569f4e3eea1a4ea9e6e2df08acde13d1bda90` |
| 27 | `lemma` | [prod_map_eq_pow_single](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-map-eq-pow-single--5cafa916e788104f3e142165.md) | 215 | `result-track:5cafa916e788104f3e142165018271395f0b53241408031582ee4ceb1a117f23` |
| 28 | `lemma` | [prod_eq_pow_single](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-eq-pow-single--9c9a51c1637c3ae50b80919e.md) | 228 | `result-track:9c9a51c1637c3ae50b80919e96d68b33482ba5ea6d1fee9f8444a7f84deeda15` |
| 29 | `lemma` | [prod_erase](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-erase--d10407094f949bf47bb97a28.md) | 238 | `result-track:d10407094f949bf47bb97a28edc96ad9a2c52aa7450aadb092df417fb31de600` |
| 30 | `lemma` | [prod_map_erase](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-map-erase--6b32c2344f13ff59d0bbe5be.md) | 242 | `result-track:6b32c2344f13ff59d0bbe5be096099c63c4e3686f581578eb7f383974d020c93` |
| 31 | `lemma` | [Perm.prod_eq](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/perm-prod-eq--7c38a186853b56a92ea188cb.md) | 250 | `result-track:7c38a186853b56a92ea188cbec8a679c6630002216c8d4c7f535eb61992163f1` |
| 32 | `lemma` | [prod_reverse](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-reverse--a0ffab55f22b143abddba21c.md) | 253 | `result-track:a0ffab55f22b143abddba21c89f41ea09f1430affd828e53ae2d84b6794aea56` |
| 33 | `lemma` | [prod_mul_prod_eq_prod_zipWith_mul_prod_drop](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-mul-prod-eq-prod-zipwith-mul-prod-drop--107d21d78d03b884144d1016.md) | 256 | `result-track:107d21d78d03b884144d101693f9fcef8a3b0c1e254e42baf818c99841f21431` |
| 34 | `lemma` | [prod_mul_prod_eq_prod_zipWith_of_length_eq](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-mul-prod-eq-prod-zipwith-of-length-eq--cd31ea26063107f6fa052064.md) | 270 | `result-track:cd31ea26063107f6fa05206485edc652c7346714a49bf88ddc6034c997d0c29c` |
| 35 | `lemma` | [prod_map_ite](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-map-ite--4f4b78780f5e347e367d971e.md) | 276 | `result-track:4f4b78780f5e347e367d971e15a9f26134a4b85f1de6266d06cf135e12b33029` |
| 36 | `lemma` | [prod_map_filter_mul_prod_map_filter_not](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-map-filter-mul-prod-map-filter-not--2d3d9491ef345f752d196515.md) | 292 | `result-track:2d3d9491ef345f752d1965154144b8b5f511f0df93d0e76802f134508c3c3efc` |
| 37 | `lemma` | [eq_of_prod_take_eq](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/eq-of-prod-take-eq--4d92d32c60671d4e0e52d731.md) | 301 | `result-track:4d92d32c60671d4e0e52d731c0d4d077e70669fb7b2738e1b27beb1b3bf4da8a` |
| 38 | `theorem` | [prod_inv_reverse](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-inv-reverse--c0f24a4f6a0e7ffd28d5cae1.md) | 314 | `result-track:c0f24a4f6a0e7ffd28d5cae15e29981ff5e6dfaec750d78aff73699e53b30f23` |
| 39 | `theorem` | [prod_reverse_noncomm](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-reverse-noncomm--8cdba90e110e6735ecc59d10.md) | 320 | `result-track:8cdba90e110e6735ecc59d10acc1aeb60536731959938a622ba4c91d3a06dc19` |
| 40 | `theorem` | [prod_drop_succ](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-drop-succ--a3f32d4dad890cc5ea7552b4.md) | 326 | `result-track:a3f32d4dad890cc5ea7552b452763d7f7c949f3f2a13e0abc6a0a5c8c7c2cc3b` |
| 41 | `theorem` | [prod_range_div'](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-range-div--942ac7294b26237ab25f9e11.md) | 334 | `result-track:942ac7294b26237ab25f9e11b2da2ad27f5132385fc4bb12f59c91291045ae0e` |
| 42 | `theorem` | [prod_inv](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-inv--c85f754f309aa45ebb7a45e1.md) | 349 | `result-track:c85f754f309aa45ebb7a45e1df6f3df70b4cb5ea68ac2a09cfa13b345651ebb2` |
| 43 | `theorem` | [prod_range_div](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-range-div--79e48427499e4788e2b0acc0.md) | 355 | `result-track:79e48427499e4788e2b0acc0483b43ed06f7bf95963a70697b63a6deed87a2ec` |
| 44 | `theorem` | [prod_set'](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-set--f5e48d0f5b9bc8dfb7184a2a.md) | 362 | `result-track:f5e48d0f5b9bc8dfb7184a2a3d16ad7ee426420cd5608645c4967b35ecb08fcd` |
| 45 | `lemma` | [prod_map_ite_eq](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-map-ite-eq--1773e7a867d7ba5160da8c99.md) | 372 | `result-track:1773e7a867d7ba5160da8c9951d118d29a04c192440dd16964a560af2b2e386f` |
| 46 | `theorem` | [sum_const_nat](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/sum-const-nat--2a533b0a1e0787bf8226b7f5.md) | 388 | `result-track:2a533b0a1e0787bf8226b7f5445ac9be9aab0bd630afd6e71bbf6270ec68a4ab` |
| 47 | `theorem` | [headI_add_tail_sum](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/headi-add-tail-sum--ba82018d4181aac291271154.md) | 398 | `result-track:ba82018d4181aac2912711546236d1c7d679f619cdacd4a9b992ed0397c450ac` |
| 48 | `theorem` | [headI_le_sum](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/headi-le-sum--549727e06b155f7cd3764212.md) | 402 | `result-track:549727e06b155f7cd3764212ecdb4debd79e0f21bee58ead3f1b133ac290cfbd` |
| 49 | `theorem` | [tail_sum](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/tail-sum--a047f020bb43e30887246ab8.md) | 406 | `result-track:a047f020bb43e30887246ab899c969dbed6ed32c79825aed730cb5c7e3b991fb` |
| 50 | `theorem` | [alternatingProd_nil](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/alternatingprod-nil--cc6f636d51b36a6e3a1849e1.md) | 416 | `result-track:cc6f636d51b36a6e3a1849e1ce0eb74520737b8dfed2fb2fd29ca6f3d15f7586` |
| 51 | `theorem` | [alternatingProd_singleton](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/alternatingprod-singleton--0d092bb4fadf42c3e0296920.md) | 420 | `result-track:0d092bb4fadf42c3e0296920061e85a5ea4df468dff8837911bc8dff22986a48` |
| 52 | `theorem` | [alternatingProd_cons_cons'](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/alternatingprod-cons-cons--2e6a8d2ee972b2677f59e9c1.md) | 424 | `result-track:2e6a8d2ee972b2677f59e9c19ef8258e199ee3b17155cc889fc91bf6a952edf7` |
| 53 | `theorem` | [alternatingProd_cons_cons](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/alternatingprod-cons-cons--735ad3b0f6b5d7415a25f7ad.md) | 431 | `result-track:735ad3b0f6b5d7415a25f7ada8344282eb3d823ba919057cd64fd30e82105c0a` |
| 54 | `theorem` | [alternatingProd_cons'](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/alternatingprod-cons--d6121f7300a0fa1ffef0e807.md) | 438 | `result-track:d6121f7300a0fa1ffef0e8072c0a21505e20bb7864432622478c586bff874492` |
| 55 | `theorem` | [alternatingProd_cons](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/alternatingprod-cons--14a15ed33b130a2e4ae60bff.md) | 445 | `result-track:14a15ed33b130a2e4ae60bff942024bd713d642d05bbebbb9b0c177bfc36c194` |
| 56 | `lemma` | [sum_nat_mod](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/sum-nat-mod--45d23dd96527efaa58851be5.md) | 451 | `result-track:45d23dd96527efaa58851be59bac0fd2dd9d0fca7f35dd38e39edc12ad5cc550` |
| 57 | `lemma` | [prod_nat_mod](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-nat-mod--958ffd4f637417804ea370f1.md) | 457 | `result-track:958ffd4f637417804ea370f1d011505fea170333a4e827530f19071b688bf8ed` |
| 58 | `lemma` | [sum_int_mod](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/sum-int-mod--5a8543e0a032870c735f81aa.md) | 463 | `result-track:5a8543e0a032870c735f81aa199417362a7484443869fe663dc88e6c299ad3ed` |
| 59 | `lemma` | [prod_int_mod](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/prod-int-mod--be660e4f5a03f5f300bd8e96.md) | 466 | `result-track:be660e4f5a03f5f300bd8e96ab74708ee1f6fea5bccbba0493931a25a3ad8ebf` |
| 60 | `theorem` | [map_list_prod](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/map-list-prod--ba9d887fa8f12b8dc5df573a.md) | 476 | `result-track:ba9d887fa8f12b8dc5df573a67aa64faa5dafcfb0a8b72a134ab97552747ad56` |
| 61 | `theorem` | [map_list_prod](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/map-list-prod--ab7489d39c7b2988737eea03.md) | 483 | `result-track:ab7489d39c7b2988737eea039db4a4a05b3cf48360468d01d81c38ba1891be21` |
| 62 | `lemma` | [take_sum_flatten](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/take-sum-flatten--af4a8c6916d7b019ddf5d37d.md) | 494 | `result-track:af4a8c6916d7b019ddf5d37d1f763b3b9d8b801f91eeffbeb29a2f94e6ad3ff6` |
| 63 | `lemma` | [drop_sum_flatten](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/drop-sum-flatten--17f2618f74d4d2de78297e85.md) | 502 | `result-track:17f2618f74d4d2de78297e8590559317de293a072d547cc129ac21797c206599` |
| 64 | `theorem` | [length_le_sum_of_one_le](../../../../mathematics/Algebra/Basic/Variant69b3215e5025fb48e6f2e64669dc04220ea3924874aa28188e99e6603fb3322e.lean/declarations/length-le-sum-of-one-le--d31b1a5b37f900d43276987b.md) | 518 | `result-track:d31b1a5b37f900d43276987b633e84e7f234594859be78c6496f98adbc47a816` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
