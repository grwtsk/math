# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BinaryProducts.Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5521a1cab6bad0e8cfdec54efa4913f0c3dc771b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5521a1cab6bad0e8cfdec54efa4913f0c3dc771b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Pullbacks` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isBinaryProductOfIsTerminalIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/isbinaryproductofisterminalispullback--4157be404e8aefa0a7d69fd7.md) | 36 | `declaration-track:4157be404e8aefa0a7d69fd7698f96c2293365f43975c0ef7c566c1d34ed7c8a` |
| 2 | `def` | [isProductOfIsTerminalIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/isproductofisterminalispullback--ddf7779d41a15f09e8edff1c.md) | 58 | `declaration-track:ddf7779d41a15f09e8edff1c89c65f6ed6b0722a1b23fe79da02f75032feb8d4` |
| 3 | `def` | [isPullbackOfIsTerminalIsProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/ispullbackofisterminalisproduct--2f33bbe865e0845ccd7c8498.md) | 66 | `declaration-track:2f33bbe865e0845ccd7c849863ab8575b9a1612456dce985f2ea292e625cee2c` |
| 4 | `def` | [limitConeOfTerminalAndPullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/limitconeofterminalandpullbacks--9fbc689413f4c228958daaea.md) | 81 | `declaration-track:9fbc689413f4c228958daaea2d2bbf5b241d9d94ea95e0f40298eafa33d92db7` |
| 5 | `theorem` | [hasBinaryProducts_of_hasTerminal_and_pullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/hasbinaryproducts-of-hasterminal-and-pullbacks--c3457b70f5c09fbd847de700.md) | 96 | `result-track:c3457b70f5c09fbd847de700278c19b7dda07a8eeaa96a971bd43be81ea4a125` |
| 6 | `lemma` | [preservesBinaryProducts_of_preservesTerminal_and_pullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/preservesbinaryproducts-of-preservesterminal-and-pullbacks--090f198b786f9bd623dc06d7.md) | 101 | `result-track:090f198b786f9bd623dc06d727eea55f59da9dc522b68ed1c0b8316890e65255` |
| 7 | `def` | [prodIsoPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/prodisopullback--552630a8510a4051259fdba9.md) | 113 | `declaration-track:552630a8510a4051259fdba9eb31f8cee616ac3368f1388b6f0cf2cc668e82c5` |
| 8 | `lemma` | [prodIsoPullback_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/prodisopullback-hom-fst--cdf65ed63471db0c521cea3b.md) | 118 | `result-track:cdf65ed63471db0c521cea3b227dba35574ffac784845f61642a3664b9c5eae6` |
| 9 | `lemma` | [prodIsoPullback_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/prodisopullback-hom-snd--e1836d105f9756f3e9c63e13.md) | 123 | `result-track:e1836d105f9756f3e9c63e131af2d0bd5dac768f8a57d70b8c3fc30e5fe9322a` |
| 10 | `lemma` | [prodIsoPullback_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/prodisopullback-inv-fst--4bf8c0c7df86405181a8f57f.md) | 128 | `result-track:4bf8c0c7df86405181a8f57ff1ce07f6416b392813073eb4c39fee3bb39999b6` |
| 11 | `lemma` | [prodIsoPullback_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/prodisopullback-inv-snd--bf645215ecf9db6b2f156a0c.md) | 133 | `result-track:bf645215ecf9db6b2f156a0c36cc006bc498ad5592ed4723d35967937c9b0d83` |
| 12 | `def` | [isBinaryCoproductOfIsInitialIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/isbinarycoproductofisinitialispushout--84a6135a2a0378ce75dc6a03.md) | 138 | `declaration-track:84a6135a2a0378ce75dc6a03115fab0bc5bccf32e6deccf2ea246d1336568331` |
| 13 | `def` | [isCoproductOfIsInitialIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/iscoproductofisinitialispushout--f77ba39104e9ff84639a6794.md) | 164 | `declaration-track:f77ba39104e9ff84639a6794d96076b88b1364c5ee4d03f5fbc848e874fd3be2` |
| 14 | `def` | [isPushoutOfIsInitialIsCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/ispushoutofisinitialiscoproduct--8a538b9500d876e7bb33a034.md) | 172 | `declaration-track:8a538b9500d876e7bb33a03471bc9d4e8fc82c95e3a934acd5905ab504a349e4` |
| 15 | `def` | [colimitCoconeOfInitialAndPushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/colimitcoconeofinitialandpushouts--3fe5e8909e4632b46cef7a1d.md) | 187 | `declaration-track:3fe5e8909e4632b46cef7a1d1b7adfad1b0cf04f20f68a8dc29ea9706fe9a953` |
| 16 | `theorem` | [hasBinaryCoproducts_of_hasInitial_and_pushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/hasbinarycoproducts-of-hasinitial-and-pushouts--c635f364e9d027e80b84d4a7.md) | 199 | `result-track:c635f364e9d027e80b84d4a76b14cc122f8ce8e18ff6e597f538b14833c63143` |
| 17 | `lemma` | [preservesBinaryCoproducts_of_preservesInitial_and_pushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/preservesbinarycoproducts-of-preservesinitial-and-pushouts--81236d27733592f8e5efd2c6.md) | 204 | `result-track:81236d27733592f8e5efd2c672f494ce7c8e119ac7c462aedba36352b239d193` |
| 18 | `def` | [coprodIsoPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/coprodisopushout--7baa616352fde580c50bc969.md) | 216 | `declaration-track:7baa616352fde580c50bc9691b3c9353deda2b6d4734b40c558a31efc387e615` |
| 19 | `lemma` | [inl_coprodIsoPushout_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/inl-coprodisopushout-hom--6b1d4e35a35a52eff489cc5d.md) | 221 | `result-track:6b1d4e35a35a52eff489cc5d6e3e93367682a58b15bc792f6590eb71fd4e1dc9` |
| 20 | `lemma` | [inr_coprodIsoPushout_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/inr-coprodisopushout-hom--478ac83eaa79b81014633ff1.md) | 226 | `result-track:478ac83eaa79b81014633ff1d504b94ac2ac132785612a4b5db138c8e6070c42` |
| 21 | `lemma` | [inl_coprodIsoPushout_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/inl-coprodisopushout-inv--253f0e097e238a582ea29f34.md) | 231 | `result-track:253f0e097e238a582ea29f34bde4b97b73e8fe06ee95e2646806dda6ed8377f1` |
| 22 | `lemma` | [inr_coprodIsoPushout_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/declarations/inr-coprodisopushout-inv--ecd486ce7a46646bb25c6363.md) | 236 | `result-track:ecd486ce7a46646bb25c636326e94c7f47500998427b1915472f415d3d7b09e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
