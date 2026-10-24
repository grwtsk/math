# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EnoughInjectives.Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f22186bb1930e25951b6b323618ef628d94132d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f22186bb1930e25951b6b323618ef628d94132d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean.json)

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
| 1 | `def` | [generatingMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/generatingmonomorphisms--b8b26eda1dace8dd467953c1.md) | 80 | `declaration-track:b8b26eda1dace8dd467953c1bf727528959031ee8a4494d8e2b811071f80b078` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/instance--c867659541df6ae7ea704b15.md) | 83 | `declaration-track:c867659541df6ae7ea704b15aaa9ca06b9f2dd58ed40109bb17b4dec86fd025e` |
| 3 | `lemma` | [generatingMonomorphisms_le_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/generatingmonomorphisms-le-monomorphisms--f4f9215d83d8e584419ed5f2.md) | 88 | `result-track:f4f9215d83d8e584419ed5f29c4b2d86ca36035d3edfa979a616a5f364841597` |
| 4 | `lemma` | [isomorphisms_le_pushouts_generatingMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/isomorphisms-le-pushouts-generatingmonomorphisms--cd59c78bcc09848a57ee1d6b.md) | 95 | `result-track:cd59c78bcc09848a57ee1d6bb9267ec70c7e9b80f647ad369415de8ae87110a8` |
| 5 | `lemma` | [exists_pushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/exists-pushouts--48e1ff1fd3f7123fcab4dad4.md) | 113 | `result-track:48e1ff1fd3f7123fcab4dad4663742bcb55ffc0f9d9c81e415e7b6c6705d5bdf` |
| 6 | `lemma` | [exists_larger_subobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/exists-larger-subobject--48b031b4d07467eb3bf568dc.md) | 139 | `result-track:48b031b4d07467eb3bf568dcf0441f35939c094e5b0a76157a434120a7fcc080` |
| 7 | `def` | [largerSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/largersubobject--4170b79d3f20bc256835ef38.md) | 161 | `declaration-track:4170b79d3f20bc256835ef3827393cc9212a7fa5616ea095499779e06d479497` |
| 8 | `lemma` | [largerSubobject_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/largersubobject-top--5446307f0ff3a58871ae49e9.md) | 166 | `result-track:5446307f0ff3a58871ae49e951d0321b3ab5113bc86cf3e4007b991a8165c1bf` |
| 9 | `lemma` | [lt_largerSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/lt-largersubobject--38704a92aea75a81ebd8091f.md) | 168 | `result-track:38704a92aea75a81ebd8091ff86069f57d5411b430b1d03f898d2d240f13e941` |
| 10 | `lemma` | [le_largerSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/le-largersubobject--8047a1f23380751374f69fce.md) | 174 | `result-track:8047a1f23380751374f69fce78bf9b318f707908e6f1126bfa9e66f01503d11a` |
| 11 | `lemma` | [pushouts_ofLE_le_largerSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/pushouts-ofle-le-largersubobject--801f30e9afcf6350a5dd052c.md) | 183 | `result-track:801f30e9afcf6350a5dd052cb2be048ae03868392ee8729ee06b02120a6f723c` |
| 12 | `lemma` | [top_mem_range](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/top-mem-range--37cd791fd6dce2f9c0c3ffcc.md) | 200 | `result-track:37cd791fd6dce2f9c0c3ffcca711f3f26595ae929769d62c288ff5e021dc655b` |
| 13 | `lemma` | [exists_ordinal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/exists-ordinal--81efefb5d8d6cd42ec1c0055.md) | 206 | `result-track:81efefb5d8d6cd42ec1c00556aea54be8cde78346702a4f901e412e56ee0f675` |
| 14 | `def` | [functorToMonoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/functortomonoover--5f11a7e55310fc1fbfdc33f6.md) | 224 | `declaration-track:5f11a7e55310fc1fbfdc33f674708c4d49d9c49723c6d1a47cca75cb1f1f6408` |
| 15 | `abbrev` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/functor--66733906a0840e1387b7ff7d.md) | 230 | `declaration-track:66733906a0840e1387b7ff7d5f3b8751129b2305b4e086c43947b713d086bb93` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/instance--9b67574fff0f53f8bd6688fb.md) | 234 | `declaration-track:9b67574fff0f53f8bd6688fbe0708f7a4070bb556e3ad8fd11c20fc014b1009d` |
| 17 | `def` | [transfiniteCompositionOfShapeMapFromBot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/transfinitecompositionofshapemapfrombot--ec57d34226c175682a568eda.md) | 251 | `declaration-track:ec57d34226c175682a568eda4cbfe959dc81ea6d928cdeec11109eb76f131cd4` |
| 18 | `def` | [transfiniteCompositionOfShapeOfEqTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/transfinitecompositionofshapeofeqtop--ec61c22f4e72cd9d2fdb53e5.md) | 277 | `declaration-track:ec61c22f4e72cd9d2fdb53e56efb5f9e6a36c268bb6ca3431ff543d9ab7e074b` |
| 19 | `lemma` | [exists_transfiniteCompositionOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/exists-transfinitecompositionofshape--2dc9b6c239c98afba6cb1cab.md) | 296 | `result-track:2dc9b6c239c98afba6cb1cab7377d760adc01208ba020a907b1ca15e67151805` |
| 20 | `lemma` | [generatingMonomorphisms_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/generatingmonomorphisms-rlp--6a26b6ff549ec23cb64b06f2.md) | 311 | `result-track:6a26b6ff549ec23cb64b06f2d2dcc3ad2668495b2050ae9a16794af9e15cdac7` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/instance--5f105fd2ac75113b49fa2e2c.md) | 324 | `declaration-track:5f105fd2ac75113b49fa2e2c9ac67285ce6ea99dfd061f3b3a16c0f7da0aeb32` |
| 22 | `lemma` | [llp_rlp_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/llp-rlp-monomorphisms--f48cb5c79d11b7bec007d769.md) | 344 | `result-track:f48cb5c79d11b7bec007d769bd2780bc144d5a17903afe9b2dc446cbf61ca781` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/instance--019ef37ffc4820369db839ca.md) | 356 | `declaration-track:019ef37ffc4820369db839ca308bd7083e7e0265820e491c4e121e37ecd81dd2` |
| 24 | `abbrev` | [monoMapFactorizationDataRlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/monomapfactorizationdatarlp--f289d1f0facab6373564480d.md) | 365 | `declaration-track:f289d1f0facab6373564480d630d19c65a8946b12f0b226ce348b63f25ddf8c1` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/instance--0ee4abcaf35f894e56862cfd.md) | 369 | `declaration-track:0ee4abcaf35f894e56862cfd2591500e6c8851d50d42aacf945c88f76f9a68c9` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/instance--4f598af84adae021f820c1ba.md) | 373 | `declaration-track:4f598af84adae021f820c1ba89c7b56188b0b6728a7d572a64ad0242e3c94dc3` |
| 27 | `instance` | [enoughInjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/declarations/enoughinjectives--af5866335c93e1fc01290ab3.md) | 380 | `declaration-track:af5866335c93e1fc01290ab35b42882f3ac5386805db6e60d0b430bf1492789a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
