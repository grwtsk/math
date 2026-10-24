# Verification target: GRWTSK.Algebra.LinearAlgebra.Bilinear.Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98a72d1cb67623ef9b550674ee29cb515e020c71",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98a72d1cb67623ef9b550674ee29cb515e020c71`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Span.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map₂](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map--d75dc84c08a1a7f2adf758bf.md) | 49 | `declaration-track:d75dc84c08a1a7f2adf758bf3394545dc64d8692456ca946bd8a7c15b8931081` |
| 2 | `theorem` | [apply_mem_map₂](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/apply-mem-map--3aeb92efe0feff03a1d01107.md) | 52 | `result-track:3aeb92efe0feff03a1d011076f874ac7d2cd063204978ffc53bbb99101d22d9d` |
| 3 | `theorem` | [map₂_le](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-le--ec952a46e09f2c699d66f1cb.md) | 56 | `result-track:ec952a46e09f2c699d66f1cbcc5c1ca4a5dbaae796705fb5b997bcebb9394645` |
| 4 | `theorem` | [map₂_span_span](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-span-span--841c645840240f48a1576397.md) | 62 | `result-track:841c645840240f48a1576397a57901240288f259b3d773bb8b7f9152f21d7e1f` |
| 5 | `theorem` | [map₂_bot_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-bot-right--e02a4373d1303dd03c255ccc.md) | 80 | `result-track:e02a4373d1303dd03c255cccd4143f358b89cd1a89ed78e787464157856b6ff9` |
| 6 | `theorem` | [map₂_bot_left](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-bot-left--341343383cfa6b8e5fd2ff01.md) | 87 | `result-track:341343383cfa6b8e5fd2ff01a4bb002d2723725e41fd0bc6d1ee041b4aacafe8` |
| 7 | `theorem` | [map₂_le_map₂](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-le-map--d110f3d5edb6dc1d9edff07d.md) | 94 | `result-track:d110f3d5edb6dc1d9edff07de03add58ab5f3dd129356b08f31c7c26e53d7995` |
| 8 | `theorem` | [map₂_le_map₂_left](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-le-map-left--bb4f10f822f882e3ecc04a91.md) | 98 | `result-track:bb4f10f822f882e3ecc04a91de4f06271e858a8a6c51c49010efe7fddda9f181` |
| 9 | `theorem` | [map₂_le_map₂_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-le-map-right--eabd0750e70a52372095cb3b.md) | 102 | `result-track:eabd0750e70a52372095cb3bac4d03deaf42e57ac9c1cbc5d4070976ee657dc3` |
| 10 | `theorem` | [map₂_sup_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-sup-right--7988551256db9e5b4f02fb5d.md) | 106 | `result-track:7988551256db9e5b4f02fb5d2d949579cf9bac0b4c465b96d9d559adb911d071` |
| 11 | `theorem` | [map₂_sup_left](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-sup-left--7a7d8b6875f201431d72e086.md) | 114 | `result-track:7a7d8b6875f201431d72e086d944900a7d63f57827eb3fe9ae82132afbe71682` |
| 12 | `theorem` | [image2_subset_map₂](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/image2-subset-map--fe69c5cc0c65c5d0dead4ff5.md) | 124 | `result-track:fe69c5cc0c65c5d0dead4ff5beff5d73446f7799eddf5470e05d5eec7931cba3` |
| 13 | `theorem` | [map₂_eq_span_image2](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-eq-span-image2--a736c6aa2d7b36ce229b0238.md) | 129 | `result-track:a736c6aa2d7b36ce229b02387db51658c9a2e013d37c58202d33f8011f08e3e6` |
| 14 | `theorem` | [map₂_flip](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-flip--ff0cb7fb5b55dba5c85c6444.md) | 133 | `result-track:ff0cb7fb5b55dba5c85c6444a5ab7603eae6dc3da0b67a0707c846b5151110a5` |
| 15 | `theorem` | [map₂_iSup_left](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-isup-left--bbf74aa0d10621f3437afa7d.md) | 138 | `result-track:bbf74aa0d10621f3437afa7d69f688e65fb2cb9996c54b9246e43f494323d770` |
| 16 | `theorem` | [map₂_iSup_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-isup-right--e53154386ecefefed3f48a36.md) | 144 | `result-track:e53154386ecefefed3f48a36431b07a7f7590559480b1debacf7329da6238e6c` |
| 17 | `theorem` | [map₂_span_singleton_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-span-singleton-eq-map--ab3f11556a358325ef607e4b.md) | 150 | `result-track:ab3f11556a358325ef607e4bd9591d34cbd56711bd63e1c70effcb2fc388ec5a` |
| 18 | `theorem` | [map₂_span_singleton_eq_map_flip](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant2a33f8be1cbc02e34dc27b49b5d726019568e5c110be693ec9e172edeab1d09d.lean/declarations/map-span-singleton-eq-map-flip--a74da6103d66df57faeb2512.md) | 155 | `result-track:a74da6103d66df57faeb25122af55cd02caa9b992797ed21ccfef37560ce086d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
