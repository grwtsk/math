# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Diagonal.Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8003fbd15489cd5aa93c9dc48e864453a98e0d65",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8003fbd15489cd5aa93c9dc48e864453a98e0d65`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Over.Pullback` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.KernelPair` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Assoc` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [diagonalObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/diagonalobj--42e105be239083cffc823c83.md) | 43 | `declaration-track:42e105be239083cffc823c8362c0aa9a5ef610f74b94c71932e49afc3aaea4de` |
| 2 | `def` | [diagonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/diagonal--865e2b0235b9d69cd41ca977.md) | 47 | `declaration-track:865e2b0235b9d69cd41ca9773f0c7ee502c512dc9ab371ab7d5b4f86ceb14003` |
| 3 | `theorem` | [diagonal_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/diagonal-fst--25a4d0cc82f1e196820dc287.md) | 51 | `result-track:25a4d0cc82f1e196820dc2870630f70412d7ee81bbf9f03e992e95159c3d33a9` |
| 4 | `theorem` | [diagonal_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/diagonal-snd--049580bae05606a3c43807db.md) | 55 | `result-track:049580bae05606a3c43807db3d8a293a5458fd348cfa414c5cc6abae0448987f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/instance--80d1a445849d28eca80ebd17.md) | 58 | `declaration-track:80d1a445849d28eca80ebd17780d23f5084e04429f874f60105cec57392f18c9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/instance--409f9ab74e93880b536e81e6.md) | 61 | `declaration-track:409f9ab74e93880b536e81e6774bd9c5c03d2e7b1bf2b60df3dd1583dbada537` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/instance--5deaef1fe9cfd4d6657b7240.md) | 64 | `declaration-track:5deaef1fe9cfd4d6657b72403b4e3e6d630197187214e4d6c8117697fa4e0ce4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/instance--e1f0baff2ba601826b26206b.md) | 67 | `declaration-track:e1f0baff2ba601826b26206baa8c40b58b506b6981303416f4587ad819db1622` |
| 9 | `lemma` | [isIso_diagonal_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/isiso-diagonal-iff--db945f25c9cbda0788bd2dfc.md) | 71 | `result-track:db945f25c9cbda0788bd2dfc1490f5450aef7886d5e498eeef53cd7f2a2244c5` |
| 10 | `theorem` | [diagonal_isKernelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/diagonal-iskernelpair--caff900ac2f742392115e8df.md) | 76 | `result-track:caff900ac2f742392115e8df8ba7f2121e4d7fa9c74acac32c84d35c3e548fd8` |
| 11 | `theorem` | [pullback_diagonal_map_snd_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullback-diagonal-map-snd-fst-fst--c3609fa8cb722b15a0536df9.md) | 93 | `result-track:c3609fa8cb722b15a0536df9578517ff48f6c86e77170eb6e776b7181cc0a9e9` |
| 12 | `theorem` | [pullback_diagonal_map_snd_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullback-diagonal-map-snd-snd-fst--1fd41e7fc43bc913c32a2a50.md) | 103 | `result-track:1fd41e7fc43bc913c32a2a500a78fffc722064179df09fe087f69bc826ea87a1` |
| 13 | `abbrev` | [pullbackDiagonalMapIso.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackdiagonalmapiso-hom--704b0a9688b15482520991a1.md) | 115 | `declaration-track:704b0a9688b15482520991a102c2db0051062e0baa7e68a44e0b79a4f4cf67a0` |
| 14 | `abbrev` | [pullbackDiagonalMapIso.inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackdiagonalmapiso-inv--a24f866f89696ac453acd79a.md) | 128 | `declaration-track:a24f866f89696ac453acd79a0d25c92a75c80f69a8502544cc89b94b11c413b8` |
| 15 | `def` | [pullbackDiagonalMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackdiagonalmapiso--c44ec234e5039f08f3b64576.md) | 156 | `declaration-track:c44ec234e5039f08f3b645762a893118ebc9bc0750412f93b5ad1b21361b7996` |
| 16 | `theorem` | [pullbackDiagonalMapIso.hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackdiagonalmapiso-hom-fst--e3d2a52befd6eae165d02cb2.md) | 166 | `result-track:e3d2a52befd6eae165d02cb2841e99c0f9da6f3ac18173e4c81e0998d67b723e` |
| 17 | `theorem` | [pullbackDiagonalMapIso.hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackdiagonalmapiso-hom-snd--76f95c8b28354b2033dc64dc.md) | 173 | `result-track:76f95c8b28354b2033dc64dcd4bc3c78e30d5d04c81a416efc383bebac185ce3` |
| 18 | `theorem` | [pullbackDiagonalMapIso.inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackdiagonalmapiso-inv-fst--4e2ec875d551d3e570e75ae2.md) | 180 | `result-track:4e2ec875d551d3e570e75ae2422b172f62f175f09d7f3a25790f8b75b4819204` |
| 19 | `theorem` | [pullbackDiagonalMapIso.inv_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackdiagonalmapiso-inv-snd-fst--1dc91234603d36601927b517.md) | 187 | `result-track:1dc91234603d36601927b517a2b4a71daf0fc7080e2b5d6652e72a92176217f9` |
| 20 | `theorem` | [pullbackDiagonalMapIso.inv_snd_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackdiagonalmapiso-inv-snd-snd--ff37402dd36a2aba0c032927.md) | 194 | `result-track:ff37402dd36a2aba0c0329274fe5a8d622d9daf0e920228f35aa9fade9c833a5` |
| 21 | `theorem` | [pullback_fst_map_snd_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullback-fst-map-snd-ispullback--d6e87e2947f47355bd72d61b.md) | 200 | `result-track:d6e87e2947f47355bd72d61ba863a53e6ef08bbf91ecec1523441d97e054f8b4` |
| 22 | `def` | [pullbackDiagonalMapIdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackdiagonalmapidiso--d1cc022da2689c9983d2db3d.md) | 235 | `declaration-track:d1cc022da2689c9983d2db3da6de08a6a5f0d3661fae80a2b0f43bad38dc3b71` |
| 23 | `theorem` | [pullbackDiagonalMapIdIso_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackdiagonalmapidiso-hom-fst--9cb362a94304a6226a5acdac.md) | 254 | `result-track:9cb362a94304a6226a5acdac65cadcf2ff0408298e0b18d23084a0621474ec3b` |
| 24 | `theorem` | [pullbackDiagonalMapIdIso_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackdiagonalmapidiso-hom-snd--6ae599f87fc06cc69a751aa3.md) | 261 | `result-track:6ae599f87fc06cc69a751aa3880309655e47301cfdbf427281f231c08d0f44e8` |
| 25 | `theorem` | [pullbackDiagonalMapIdIso_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackdiagonalmapidiso-inv-fst--9a718a2ddf768276c14cb844.md) | 268 | `result-track:9a718a2ddf768276c14cb84415790a7fb50bc6bc18fe09c15170fe55aa263ad9` |
| 26 | `theorem` | [pullbackDiagonalMapIdIso_inv_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackdiagonalmapidiso-inv-snd-fst--728abd572e7ef2b71951fb12.md) | 275 | `result-track:728abd572e7ef2b71951fb127d5eece53037293fdce96fc7716b24662b0f3657` |
| 27 | `theorem` | [pullbackDiagonalMapIdIso_inv_snd_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackdiagonalmapidiso-inv-snd-snd--00d34ddfb237a8913f424514.md) | 282 | `result-track:00d34ddfb237a8913f4245147c20fbdcfb30cadb0f9a4c653a8ccbbe154803d6` |
| 28 | `theorem` | [pullback.diagonal_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullback-diagonal-comp--3d650d75b6f33bacdf8f78c8.md) | 288 | `result-track:3d650d75b6f33bacdf8f78c89bc1a56be5a5025b275307a7af46b1e65ee22e0d` |
| 29 | `lemma` | [pullback.comp_diagonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullback-comp-diagonal--db4a274a769e65c09c4788d1.md) | 293 | `result-track:db4a274a769e65c09c4788d1c92f5e50abc10055198faabecb0762caabd37e71` |
| 30 | `theorem` | [pullback_map_diagonal_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullback-map-diagonal-ispullback--7e42ffbf46c8d780bff2aa3c.md) | 298 | `result-track:7e42ffbf46c8d780bff2aa3cc0345ccb48691be01e30d4b87cf61743711ac900` |
| 31 | `def` | [diagonalObjPullbackFstIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/diagonalobjpullbackfstiso--5fff08a3f1be9f410ba6b6fa.md) | 310 | `declaration-track:5fff08a3f1be9f410ba6b6fac7f20e1ee9bb9ac00eeebc9eb6deb2ed312b9075` |
| 32 | `theorem` | [diagonalObjPullbackFstIso_hom_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/diagonalobjpullbackfstiso-hom-fst-fst--99e679d597ce79a27e6094af.md) | 318 | `result-track:99e679d597ce79a27e6094af7dca7b6e2aa88f04584a0890762561f0e9e3f92a` |
| 33 | `theorem` | [diagonalObjPullbackFstIso_hom_fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/diagonalobjpullbackfstiso-hom-fst-snd--190fbab022008222d96d8d1c.md) | 325 | `result-track:190fbab022008222d96d8d1cca79d75063645e9a10a4b9f0be13ab6b78e836fa` |
| 34 | `theorem` | [diagonalObjPullbackFstIso_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/diagonalobjpullbackfstiso-hom-snd--1a032d8925672f31ae3cea90.md) | 332 | `result-track:1a032d8925672f31ae3cea900a5e8ce974130649fe3abfce160dbcfdcb011afe` |
| 35 | `theorem` | [diagonalObjPullbackFstIso_inv_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/diagonalobjpullbackfstiso-inv-fst-fst--5853e3308bc7208e12ef0343.md) | 339 | `result-track:5853e3308bc7208e12ef0343bf4904554233d9a84abfc8f5ba93aeadfa282f66` |
| 36 | `theorem` | [diagonalObjPullbackFstIso_inv_fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/diagonalobjpullbackfstiso-inv-fst-snd--e488f6d2716be49eaac4a6a3.md) | 346 | `result-track:e488f6d2716be49eaac4a6a39fdeb77bb49e0900f120dfa07cec4fbf46d48c08` |
| 37 | `theorem` | [diagonalObjPullbackFstIso_inv_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/diagonalobjpullbackfstiso-inv-snd-fst--bbd8a81e19df257c869e9b98.md) | 353 | `result-track:bbd8a81e19df257c869e9b981da28b50c177b48d604329720f8a633f1a3e4121` |
| 38 | `theorem` | [diagonalObjPullbackFstIso_inv_snd_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/diagonalobjpullbackfstiso-inv-snd-snd--8190a07484942e8580d0a0e4.md) | 360 | `result-track:8190a07484942e8580d0a0e4291017848ec406ebfa5fe37b5c386f0a49d32e81` |
| 39 | `theorem` | [diagonal_pullback_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/diagonal-pullback-fst--751474b33ac49281299dcd77.md) | 366 | `result-track:751474b33ac49281299dcd77a9ac75cdd7d6135c30e97363a49d14bdc6ab86f0` |
| 40 | `lemma` | [pullback_lift_diagonal_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullback-lift-diagonal-ispullback--fce2074bdf579c49571ddeae.md) | 375 | `result-track:fce2074bdf579c49571ddeae0040ecf3ac7cadaa6b6206f5e615ec8afb31b73f` |
| 41 | `def` | [pullbackFstFstIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullbackfstfstiso--890433266ed004e527c5a156.md) | 415 | `declaration-track:890433266ed004e527c5a1563210ecbd30b548c6c18e1e13764054e6e3c8d62e` |
| 42 | `theorem` | [pullback_map_eq_pullbackFstFstIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullback-map-eq-pullbackfstfstiso-inv--ffe25700fd529ceec7156b71.md) | 454 | `result-track:ffe25700fd529ceec7156b71aede97280afc0a3a8985341c3ccdea7fed615b28` |
| 43 | `theorem` | [pullback_lift_map_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/declarations/pullback-lift-map-ispullback--14eb231c852d68cc74f9bb19.md) | 461 | `result-track:14eb231c852d68cc74f9bb19ce9189769f437940b79b7a71c1c1710b005f78cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
