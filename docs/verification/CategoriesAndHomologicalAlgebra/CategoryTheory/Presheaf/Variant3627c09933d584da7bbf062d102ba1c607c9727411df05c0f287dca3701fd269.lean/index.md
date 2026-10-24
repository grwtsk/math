# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1067050962b3ed8a1c422a4d1641abcce571a338",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1067050962b3ed8a1c422a4d1641abcce571a338`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Opposites` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elements` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.KanExtension` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictedYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/restrictedyoneda--cdf80fa1a953ad49b9b909a8.md) | 81 | `declaration-track:cdf80fa1a953ad49b9b909a8e86427ae7ed4e6deb16be7e4089ce8e4e0e941f2` |
| 2 | `def` | [restrictedYonedaYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/restrictedyonedayoneda--a931d572a8d90e690fefa7b7.md) | 89 | `declaration-track:a931d572a8d90e690fefa7b7bdcfb247cc5e721053310b6721a692a22bf01278` |
| 3 | `def` | [restrictYonedaHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/restrictyonedahomequiv--d1c970562d1286d65840caa2.md) | 106 | `declaration-track:d1c970562d1286d65840caa298affa7bb190f62c1d63dbbd79bd0061eb543e1e` |
| 4 | `theorem` | [restrictYonedaHomEquiv_natural](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/restrictyonedahomequiv-natural--c5908564df6f56bd3f181d39.md) | 135 | `result-track:c5908564df6f56bd3f181d39dad6428c88d5e5556b75f99513552c2c8dc513e7` |
| 5 | `def` | [extendAlongYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/extendalongyoneda--c60951d738232c0052b93fcf.md) | 150 | `declaration-track:c60951d738232c0052b93fcff658c1379d1a6494a9cd1612f200874c2d4d2a97` |
| 6 | `theorem` | [extendAlongYoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/extendalongyoneda-obj--969cd85ea513f10f4ae135be.md) | 156 | `result-track:969cd85ea513f10f4ae135beb4d35d2304afe87e1e395b92d8a261084e1fcc41` |
| 7 | `lemma` | [extendAlongYoneda_obj.hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/extendalongyoneda-obj-hom-ext--355f5c3b450ad9775b381e9c.md) | 166 | `result-track:355f5c3b450ad9775b381e9c5e202f3fadc461525eb4442560a208b61f3b39ff` |
| 8 | `theorem` | [extendAlongYoneda_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/extendalongyoneda-map--f8046ca5ea5c3614b3d09552.md) | 172 | `result-track:f8046ca5ea5c3614b3d09552cc6c11ee2bf6465d4680f703fd1c73f0a2686ef2` |
| 9 | `def` | [yonedaAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/yonedaadjunction--d1dc2a64beaa65a978f7b6c1.md) | 196 | `declaration-track:d1dc2a64beaa65a978f7b6c1e7628d7e0a7d484aa0a2798362d60543e8e823fd` |
| 10 | `def` | [Elements.initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/elements-initial--5ac4b7cf7a96356a29a0fd0e.md) | 204 | `declaration-track:5ac4b7cf7a96356a29a0fd0e4335c0cd110e9e51ff1015b18daa9d6dcf7dd8fc` |
| 11 | `def` | [isInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/isinitial--30beea2d042ad9e176a6cea5.md) | 210 | `declaration-track:30beea2d042ad9e176a6cea52ee11278baeb213bf4da6351d618288642571db8` |
| 12 | `def` | [isExtensionAlongYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/isextensionalongyoneda--11cda3e0544467aba3a0af31.md) | 227 | `declaration-track:11cda3e0544467aba3a0af31287069272c53e96d88462f415eccff3520005854` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/instance--72265b4ade9c2b537d587b83.md) | 248 | `declaration-track:72265b4ade9c2b537d587b83b6bef875330999677c8d1cc47ea7abeb5a195c26` |
| 14 | `def` | [extendAlongYonedaIsoKanApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/extendalongyonedaisokanapp--ee0eb517e113413a0d5acaeb.md) | 255 | `declaration-track:ee0eb517e113413a0d5acaeb65438a4c05e747255fecf78d8ab3a6fea1b9728f` |
| 15 | `def` | [extendAlongYonedaIsoKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/extendalongyonedaisokan--00a01e575d17bc6df29682bc.md) | 284 | `declaration-track:00a01e575d17bc6df29682bc5eaa0b41960609ed822f84d1b5bb50cd29e3cc96` |
| 16 | `def` | [extendOfCompYonedaIsoLan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/extendofcompyonedaisolan--f7abca6152c379924abbd050.md) | 298 | `declaration-track:f7abca6152c379924abbd050c0ff14a89ab3a21f2633007e216973d123cdfffa` |
| 17 | `def` | [compYonedaIsoYonedaCompLan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/compyonedaisoyonedacomplan--fdd0a619e603797a53bdd803.md) | 315 | `declaration-track:fdd0a619e603797a53bdd803c919f33adbfe7dc1d653ad1adc58b984d4a4f421` |
| 18 | `def` | [extendAlongYonedaYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/extendalongyonedayoneda--9a8e3fa3e57a99bb195df6e4.md) | 324 | `declaration-track:9a8e3fa3e57a99bb195df6e4e5aa190f9889d48fef1207dadd690d68e6e9406b` |
| 19 | `def` | [functorToRepresentables](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/functortorepresentables--dd1743ccec4360d4eac8a535.md) | 333 | `declaration-track:dd1743ccec4360d4eac8a535629f0df6f427e8582f7d4d72555d06f95dfdbbfc` |
| 20 | `def` | [coconeOfRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/coconeofrepresentable--1235b8ad42d46f779ccac9ff.md) | 343 | `declaration-track:1235b8ad42d46f779ccac9ff17bbb7acd097eb0cb657b0caed5d7f5d139e9962` |
| 21 | `theorem` | [coconeOfRepresentable_pt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/coconeofrepresentable-pt--9cbb9a8ab3f0b88372fcac97.md) | 348 | `result-track:9cbb9a8ab3f0b88372fcac974015748673c8b1a7372508fee82ac151b7ef3b9d` |
| 22 | `theorem` | [coconeOfRepresentable_ι_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/coconeofrepresentable-app--7dffa9dc520d285369104b8e.md) | 355 | `result-track:7dffa9dc520d285369104b8e8e6b62fb93b0e882751cb875ceccf6f539bc483b` |
| 23 | `theorem` | [coconeOfRepresentable_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/coconeofrepresentable-naturality--6c602550f02b760fd5e4920d.md) | 361 | `result-track:6c602550f02b760fd5e4920d2ef1cde5a0464665988f1c0a2c3d6cf0685a523f` |
| 24 | `def` | [colimitOfRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/colimitofrepresentable--937dd0b7cfdca13569a402c0.md) | 373 | `declaration-track:937dd0b7cfdca13569a402c0d43f70c88a927d69e3d5a900909039de810b4b8d` |
| 25 | `def` | [natIsoOfNatIsoOnRepresentables](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/natisoofnatisoonrepresentables--df2bab758ad1438427250080.md) | 390 | `declaration-track:df2bab758ad1438427250080c0d16ca6eaaf0c4cef05732951bd8fc8380fb968` |
| 26 | `def` | [uniqueExtensionAlongYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/uniqueextensionalongyoneda--f4fa25db611ca369916d8706.md) | 424 | `declaration-track:f4fa25db611ca369916d8706fc1c37e4f97132d8cc98f6ba59755b54ea2f7f47` |
| 27 | `def` | [isLeftAdjointOfPreservesColimitsAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/isleftadjointofpreservescolimitsaux--a0d05dbb8490e34334231cf9.md) | 432 | `declaration-track:a0d05dbb8490e34334231cf9c13cf6a38b6e48fcfe910dc39f9fd2ca92ddd09b` |
| 28 | `def` | [isLeftAdjointOfPreservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/isleftadjointofpreservescolimits--dd222ede78aeccdc7aaf59fa.md) | 441 | `declaration-track:dd222ede78aeccdc7aaf59fa647da0204617ad12909c7c549be6f0a51c9ce3ba` |
| 29 | `def` | [tautologicalCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/tautologicalcocone--e77a1f78ea935265fdaa6553.md) | 459 | `declaration-track:e77a1f78ea935265fdaa655388f8e008e3c44a3115bd6e8fa280ee056655f371` |
| 30 | `def` | [isColimitTautologicalCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/declarations/iscolimittautologicalcocone--de7bd9ba1bdaf52ceb99a19e.md) | 465 | `declaration-track:de7bd9ba1bdaf52ceb99a19ea40c53a8b3a535277bd8039cee7e434552c30e49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
