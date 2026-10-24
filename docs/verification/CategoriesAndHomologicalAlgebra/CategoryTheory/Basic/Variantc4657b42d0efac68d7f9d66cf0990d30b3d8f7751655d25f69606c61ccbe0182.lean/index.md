# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "111879269b87c7bc726bfdd7df1781a1f8385000",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `111879269b87c7bc726bfdd7df1781a1f8385000`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coalgebra.Equiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoalgCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/coalgcat--c2d1cc6ba4abcc03a84be35f.md) | 34 | `declaration-track:c2d1cc6ba4abcc03a84be35f55bb1c386a2fd53d36e79de3db31808523c2e430` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/instance--da4fcad8184be6c4f3408759.md) | 45 | `declaration-track:da4fcad8184be6c4f340875958932a1dea7d41f716c53e659b2eaf0b213cdde7` |
| 3 | `theorem` | [moduleCat_of_toModuleCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/modulecat-of-tomodulecat--a4f70782944dcadb74f4ae8d.md) | 48 | `result-track:a4f70782944dcadb74f4ae8d3ef9a3ea41cfc0fd2290acb7563fdcaffc91c076` |
| 4 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/of--3a57dee8331db4f9de4ced5b.md) | 54 | `declaration-track:3a57dee8331db4f9de4ced5bf1689d87bf2fa0e8878f27a94bbd3ff2dd6ae669` |
| 5 | `lemma` | [of_comul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/of-comul--c7b53843c1e5f5f80fa623ef.md) | 60 | `result-track:c7b53843c1e5f5f80fa623eff05aaaa97d250fc30b32955c86910ab4f5cf19b1` |
| 6 | `lemma` | [of_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/of-counit--16b1952162f1b5646a4edff8.md) | 64 | `result-track:16b1952162f1b5646a4edff8081c257a4b43fc4ea3d36f3a8d8c31a4b3586ef7` |
| 7 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/hom--2d002ef7d7ac34393356f045.md) | 70 | `declaration-track:2d002ef7d7ac34393356f0451eb2b5ec7b81f8608a58b6d01d6025b61999bc7e` |
| 8 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/category--4e4dafc34ea260f2c3ca1eb6.md) | 74 | `declaration-track:4e4dafc34ea260f2c3ca1eb6d7c200ffed0309d76a402dae7db36509050e184e` |
| 9 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/concretecategory--d6ffb69747254b79f292c41c.md) | 79 | `declaration-track:d6ffb69747254b79f292c41cd836e42a5cfa950a88e4c066962827b1f41e56ec` |
| 10 | `abbrev` | [Hom.toCoalgHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/hom-tocoalghom--7a37659cdd0ec322ef5c205e.md) | 84 | `declaration-track:7a37659cdd0ec322ef5c205ed4c22820678f521ef3fe9ed61d3d5b436f029e55` |
| 11 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/ofhom--86216bcc77a9c76593b873eb.md) | 88 | `declaration-track:86216bcc77a9c76593b873ebbb1089c43b307c8649887c287e8f43a5a1709931` |
| 12 | `lemma` | [Hom.toCoalgHom_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/hom-tocoalghom-injective--f9ae6f1923cb1aaa8d96573c.md) | 93 | `result-track:f9ae6f1923cb1aaa8d96573c27f3ba38b2f640aba62da50b5a5f3bd01fcc2aa4` |
| 13 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/hom-ext--ae982fe505b6194b27fb5425.md) | 98 | `result-track:ae982fe505b6194b27fb5425988127a833f753ea77c51e2b5340ad6f9c41e0e3` |
| 14 | `theorem` | [toCoalgHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/tocoalghom-comp--bcfbeb21515ddf7650f992c0.md) | 102 | `result-track:bcfbeb21515ddf7650f992c0c1ed62105a19bdc6a03e8dd5b5a58b9cdce2275f` |
| 15 | `theorem` | [toCoalgHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/tocoalghom-id--0eabbe9ae47a3674b2b43d30.md) | 106 | `result-track:0eabbe9ae47a3674b2b43d30f047e81be2173e1dcb8ddb85bb137d6cc6bd2894` |
| 16 | `instance` | [hasForgetToModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/hasforgettomodule--cac019a852545e4487c6dd93.md) | 110 | `declaration-track:cac019a852545e4487c6dd93f1f266063aabfdf2764e7df01b310872d53f7f44` |
| 17 | `theorem` | [forget₂_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/forget-obj--e2a7348558f171389970ee7f.md) | 116 | `result-track:e2a7348558f171389970ee7fba873343f1b8badf5b1268c36e67b1fd1fe5853d` |
| 18 | `theorem` | [forget₂_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/forget-map--01af9f8b74ab1561ca805322.md) | 121 | `result-track:01af9f8b74ab1561ca8053229aa4b60cc8c1b3529aaa3a2117f9305ba440959c` |
| 19 | `def` | [toCoalgIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/tocoalgiso--a30328148aafff5fd8dcca4b.md) | 138 | `declaration-track:a30328148aafff5fd8dcca4ba2c9b5079b5cf9121dc486aac8eb3c8f892bb1e1` |
| 20 | `theorem` | [toCoalgIso_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/tocoalgiso-refl--81978eaee1abb88f434e8c8c.md) | 144 | `result-track:81978eaee1abb88f434e8c8c208f91e8eb8e0485d236f35f01e8b4c879a5ee42` |
| 21 | `theorem` | [toCoalgIso_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/tocoalgiso-symm--d6170b7a5a9fe7a8c4c5b0aa.md) | 148 | `result-track:d6170b7a5a9fe7a8c4c5b0aa9e66f57f0a4ad0d59eaea5c1f515862db8a9ab19` |
| 22 | `theorem` | [toCoalgIso_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/tocoalgiso-trans--9a1c180b3ba45b45feb8b2de.md) | 152 | `result-track:9a1c180b3ba45b45feb8b2deabe9200af31d6c12353a7a17c842ad3e5be34519` |
| 23 | `def` | [toCoalgEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/tocoalgequiv--1eb6acc662a08255a3cfe0b5.md) | 166 | `declaration-track:1eb6acc662a08255a3cfe0b54812cad9f3cfcf14e7834a25e7f6ffef091ebf52` |
| 24 | `theorem` | [toCoalgEquiv_toCoalgHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/tocoalgequiv-tocoalghom--183ea7e76caae2ad3d5956e2.md) | 172 | `result-track:183ea7e76caae2ad3d5956e27d06082764d38d267c1b7e95a3dc538edcb42e95` |
| 25 | `theorem` | [toCoalgEquiv_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/tocoalgequiv-refl--24bf2afc7f7bcabeac3004de.md) | 175 | `result-track:24bf2afc7f7bcabeac3004de231392b7fb4de91a5d678f2e4c1d4cca2a9bd5e7` |
| 26 | `theorem` | [toCoalgEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/tocoalgequiv-symm--f7f877dcac48eb85bb2c4f53.md) | 178 | `result-track:f7f877dcac48eb85bb2c4f53cadec9ce7d6d9380bf74a7377dc475d44722e0b1` |
| 27 | `theorem` | [toCoalgEquiv_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/tocoalgequiv-trans--c6da6e3f5090bc68964e4d6e.md) | 182 | `result-track:c6da6e3f5090bc68964e4d6e80f057bec88fbb091d3be0824e8a0464581ec339` |
| 28 | `instance` | [CoalgCat.forget_reflects_isos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc4657b42d0efac68d7f9d66cf0990d30b3d8f7751655d25f69606c61ccbe0182.lean/declarations/coalgcat-forget-reflects-isos--cd14354e888bea49ec77699c.md) | 188 | `declaration-track:cd14354e888bea49ec77699c480121053e7983d83b851c5d5e72729f3feec6a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
