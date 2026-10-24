# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preadditive.Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5431a9a57ef29f89eb1a332e2ad01e63224093c3",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5431a9a57ef29f89eb1a332e2ad01e63224093c3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.CalculusOfFractions.Fractions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.HasLocalization` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LeftFraction.neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/leftfraction-neg--60ad7c367927f58f08f44a86.md) | 52 | `declaration-track:60ad7c367927f58f08f44a86a60a8871ecd3f15a7e349ef2f0208b9cb0f1031b` |
| 2 | `abbrev` | [add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/add--32c4f4849cecbf17e6cdf977.md) | 64 | `declaration-track:32c4f4849cecbf17e6cdf977024fd9eb96d6beb59a1b7eb75fbe81bf17591d27` |
| 3 | `lemma` | [symm_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/symm-add--c8d06400ed7a76225fbc5bbe.md) | 71 | `result-track:c8d06400ed7a76225fbc5bbea3141c17e1e3b6774c5c657b403c6988a358e246` |
| 4 | `lemma` | [map_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/map-add--876eb2519aa6f5d7453d1a41.md) | 77 | `result-track:876eb2519aa6f5d7453d1a41df7b5792d2efd99505bfcb41f7e50fc8b885d43d` |
| 5 | `def` | [neg'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/neg--9cc81ea55461a0dcc100a60e.md) | 107 | `declaration-track:9cc81ea55461a0dcc100a60edca6b4feddefdf8ba9ad344598265b182792a64a` |
| 6 | `lemma` | [neg'_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/neg-eq--96d8896c8e590f57e25e9530.md) | 110 | `result-track:96d8896c8e590f57e25e953042e97a4f28aea09b8f52331792b9710cfb88b9f2` |
| 7 | `def` | [add'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/add--4a0e229db5d3ae5e6df95abb.md) | 128 | `declaration-track:4a0e229db5d3ae5e6df95abb8260cecbfeedf2785f8f73d1ab0e168225c4c24a` |
| 8 | `lemma` | [add'_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/add-eq--b165600bbbf53d3a0454e172.md) | 131 | `result-track:b165600bbbf53d3a0454e1721abd912a0e0601aac6dec094e0097780c9fdeaa7` |
| 9 | `lemma` | [add'_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/add-comm--8ee1f06ec843e01a0913e54d.md) | 150 | `result-track:8ee1f06ec843e01a0913e54d26f625e3eb715b42782521d137c50513f58092ed` |
| 10 | `lemma` | [add'_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/add-zero--9c5f87a53380b7f108ca0113.md) | 155 | `result-track:9c5f87a53380b7f108ca011318e6cda26e98354e6f14f95bca685aff4e03d0de` |
| 11 | `lemma` | [zero_add'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/zero-add--810e9ae86c2c3af8c62c72b2.md) | 165 | `result-track:810e9ae86c2c3af8c62c72b274275837440a5b8092e3701614b4c850b0a75be5` |
| 12 | `lemma` | [neg'_add'_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/neg-add-self--6659433957a0ede638862012.md) | 169 | `result-track:6659433957a0ede638862012f5f735ec9bd9102070bb9dfd1580e2646ea7398e` |
| 13 | `lemma` | [add'_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/add-assoc--12c9800a9c3ca1a2ae2a324a.md) | 177 | `result-track:12c9800a9c3ca1a2ae2a324aad5da275c70055de7dd3eca3040cbd0d12107b84` |
| 14 | `lemma` | [add'_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/add-comp--8bda8de9b50d8cc301e5763a.md) | 187 | `result-track:8bda8de9b50d8cc301e5763aedd20196fcfb4abb733277c88b796ca88a36bbbc` |
| 15 | `lemma` | [comp_add'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/comp-add--5447c607ce574a25b39512b1.md) | 205 | `result-track:5447c607ce574a25b39512b1eade91049928f65cae184b5c704ae24bb4e32e6f` |
| 16 | `lemma` | [add'_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/add-map--9a00e0f9d1ac29714b62c1de.md) | 221 | `result-track:9a00e0f9d1ac29714b62c1de1e7ab5f121d7c5424066516cc3fa1c4b481372af` |
| 17 | `def` | [addCommGroup'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/addcommgroup--fcd0f1586f150a38c8fce896.md) | 231 | `declaration-track:fcd0f1586f150a38c8fce8966e80ac06a0ac908d0ac80f04cff25c6c9ba8b410` |
| 18 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/homequiv--2cc1cc7fe67416c9c1110c66.md) | 252 | `declaration-track:2cc1cc7fe67416c9c1110c6658d9a2c8f4144b972f89611e4bcabec1edf0d3fa` |
| 19 | `def` | [add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/add--9e56adcd45039f8f23fe92ca.md) | 260 | `declaration-track:9e56adcd45039f8f23fe92cafcae075eff9e2ddef6f938f84d217aab771a2166` |
| 20 | `lemma` | [add_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/add-comp--e4626ce24b447c91189036dc.md) | 264 | `result-track:e4626ce24b447c91189036dc7aa42d8fb57e2223b2902bb464cf04f157bd1bbc` |
| 21 | `lemma` | [comp_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/comp-add--d73fc6d003d3f6fb0f13c643.md) | 272 | `result-track:d73fc6d003d3f6fb0f13c64370abff679c1322033f7c4e15d516755ba8400ccb` |
| 22 | `lemma` | [add_eq_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/add-eq-add--c2f48d0ec64eaa6861d2b1d6.md) | 279 | `result-track:c2f48d0ec64eaa6861d2b1d6ccca1e20e6b8327fa1dcbb4d63230e769c23a49d` |
| 23 | `def` | [addCommGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/addcommgroup--23cab7e68070af19b64ee52f.md) | 291 | `declaration-track:23cab7e68070af19b64ee52f10d8f72bbf9ef99b68e826eff5fd1f501a4887d4` |
| 24 | `lemma` | [add_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/add-eq--c1a0312eada507a1763314f7.md) | 296 | `result-track:c1a0312eada507a1763314f75409db58ce689a12eddda5b48ad4dd2747d09577` |
| 25 | `lemma` | [map_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/map-add--32e92ef0f634b988d9718802.md) | 303 | `result-track:32e92ef0f634b988d97188021d51b2cbd3ba02bfade06288e91ba0c2dd70f26b` |
| 26 | `def` | [preadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/preadditive--5d0e68ea395e463cd9cb1d53.md) | 317 | `declaration-track:5d0e68ea395e463cd9cb1d53d9ca23a8143f3b720e615f858dce75629f66ef4e` |
| 27 | `lemma` | [functor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/functor-additive--1f7ee5b70002968d8af1c38c.md) | 322 | `result-track:1f7ee5b70002968d8af1c38c6e2176b355bb58b1e1c6c1f443dd6efbf3cf2f9d` |
| 28 | `lemma` | [functor_additive_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/functor-additive-iff--4271474ae7bd2c996f03d350.md) | 330 | `result-track:4271474ae7bd2c996f03d35005f23e72f06db2215cca1d9ddbc8a010fea16ef6` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/instance--bcae96cb83df086c2e2fefd5.md) | 354 | `declaration-track:bcae96cb83df086c2e2fefd5e4462ee3e23a252eb4a226b0a034c4fa79cd2df5` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/instance--02c806680c24c8c744444971.md) | 355 | `declaration-track:02c806680c24c8c744444971dcbb52cf0dc48e26f9b7c474096affa13107b5fd` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/instance--1f5ba06863e8bc4c3ccf746c.md) | 356 | `declaration-track:1f5ba06863e8bc4c3ccf746ce484abde5a0eb043ce91bba3827dbb2e179c8bd9` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/instance--c48831512f52d6fd1f9e52a7.md) | 360 | `declaration-track:c48831512f52d6fd1f9e52a7b043197d7b38b56453b68ab30831313d4a117247` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/instance--7f9deaa368a2c053aee12741.md) | 361 | `declaration-track:7f9deaa368a2c053aee12741ef9dafa5e34f1c508930fb07d8ba5e379c92d8c1` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/declarations/instance--32322dd9e600b239fa730acd.md) | 362 | `declaration-track:32322dd9e600b239fa730acd5ce46848975bb9bc1e54b41b25824df649944905` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
