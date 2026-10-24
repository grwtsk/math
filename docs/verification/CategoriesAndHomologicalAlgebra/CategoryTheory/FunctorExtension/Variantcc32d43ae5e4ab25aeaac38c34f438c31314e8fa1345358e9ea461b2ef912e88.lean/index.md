# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorExtension.Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7fbd1d5adfffe679b160631fd8b3d788433963c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7fbd1d5adfffe679b160631fd8b3d788433963c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Idempotents.Karoubi` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natTrans_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/nattrans-eq--1809f27aaaf3b627f4c5d290.md) | 44 | `result-track:1809f27aaaf3b627f4c5d290c686b45099a6acfb0fe46d49f1abb2285ac121b4` |
| 2 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/obj--87bf2b4691a3b7206e78f815.md) | 59 | `declaration-track:87bf2b4691a3b7206e78f815ba13e48e822fdcc50423789d51c614c70a7d1370` |
| 3 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/map--4626c7c9b2d7282f3f4b7d7c.md) | 69 | `declaration-track:4626c7c9b2d7282f3f4b7d7ca5e9f4156e3185acce4999014410724511ea2a45` |
| 4 | `def` | [functorExtension₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/functorextension--500ee40c3931f0c04f20b724.md) | 96 | `declaration-track:500ee40c3931f0c04f20b724e02f53ea22178390a3850f7b954192e3fbb8f65c` |
| 5 | `theorem` | [functorExtension₁_comp_whiskeringLeft_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/functorextension-comp-whiskeringleft-tokaroubi--2d00f89e70799c8803ab9a60.md) | 113 | `result-track:2d00f89e70799c8803ab9a60696ee120af84c7e7b76302d5328628d077daa555` |
| 6 | `def` | [functorExtension₁_comp_whiskeringLeft_toKaroubi_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/functorextension-comp-whiskeringleft-tokaroubi-iso--51544f0251233bb953f5169c.md) | 131 | `declaration-track:51544f0251233bb953f5169c2ac556a8f6f5858ad9cdc50eae942fe4ad16ff4b` |
| 7 | `def` | [KaroubiUniversal₁.counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/karoubiuniversal-counitiso--21b1b61e3ff491ece6816717.md) | 138 | `declaration-track:21b1b61e3ff491ece6816717723d9b668b486ab5d77bd9ff41e8ff2db30dbfe8` |
| 8 | `def` | [karoubiUniversal₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/karoubiuniversal--9541383c697f77ba77bf0b7f.md) | 177 | `declaration-track:9541383c697f77ba77bf0b7f12b515e90055e66d09a9d60b75a897b938e12653` |
| 9 | `theorem` | [functorExtension₁_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/functorextension-comp--778b111472049ded988ff7d2.md) | 190 | `result-track:778b111472049ded988ff7d234d69e1346681cb40630496adea096dcfc7491df` |
| 10 | `def` | [functorExtension₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/functorextension--e8092070e4753430361d05b3.md) | 203 | `declaration-track:e8092070e4753430361d05b335ef925d519b72484da6df9eff000b5a07420211` |
| 11 | `theorem` | [functorExtension₂_comp_whiskeringLeft_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/functorextension-comp-whiskeringleft-tokaroubi--4308be264e6dace53abb8238.md) | 207 | `result-track:4308be264e6dace53abb8238a5ad3d68c76ecf0a4883475ff141773df094b403` |
| 12 | `def` | [functorExtension₂CompWhiskeringLeftToKaroubiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/functorextension-compwhiskeringlefttokaroubiiso--3c6a51c58823025e6eb91a20.md) | 217 | `declaration-track:3c6a51c58823025e6eb91a2008f3288a3b2150a4701d9ca3d92a1b58fe59742f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/instance--55e2518a41181ca23aaa6552.md) | 227 | `declaration-track:55e2518a41181ca23aaa65529e4cb781c858928ee1f535442c1f0937f73e0808` |
| 14 | `def` | [karoubiUniversal₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/karoubiuniversal--c960814654a77751666cb7b7.md) | 233 | `declaration-track:c960814654a77751666cb7b7a0be843c5b140428b7d95f1fd29dc295798cf381` |
| 15 | `theorem` | [karoubiUniversal₂_functor_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/karoubiuniversal-functor-eq--420847bf357836caa8cfd483.md) | 237 | `result-track:420847bf357836caa8cfd48383713e4371e992677fd07a5d7537338ed6ee9d20` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/instance--32d030a4dc5194963272f8f3.md) | 241 | `declaration-track:32d030a4dc5194963272f8f3be661a67519b32d4649c57b6b95c83038953d155` |
| 17 | `def` | [functorExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/functorextension--0bc7d096928afb9eec9fae58.md) | 248 | `declaration-track:0bc7d096928afb9eec9fae584987a7ddb2944a91bd97ad2b57a1ebe22a9ca13c` |
| 18 | `def` | [karoubiUniversal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/karoubiuniversal--368e8800ee7c591bf627189e.md) | 255 | `declaration-track:368e8800ee7c591bf627189e237e17cdf75ca967d214305b4dda05b5c8ebe460` |
| 19 | `theorem` | [karoubiUniversal_functor_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/karoubiuniversal-functor-eq--c41cb39c6472d846b245a344.md) | 259 | `result-track:c41cb39c6472d846b245a344f0aee5419a5973cde5a446e74ce09c3d0d5b21d5` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/instance--19fc4daf4576df5fee0798aa.md) | 263 | `declaration-track:19fc4daf4576df5fee0798aa16500f84217e0f6ecdf3c226b225a5653b20bd7d` |
| 21 | `lemma` | [isEquivalence_whiskeringLeft_obj_toKaroubi_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/isequivalence-whiskeringleft-obj-tokaroubi-aux--500057807dab1eaf07bc02d6.md) | 268 | `result-track:500057807dab1eaf07bc02d6e73f7fd20e1dbdea1d75fc31cbb8b3cfb2b0804b` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/instance--dbbf661af7cac8c6852de63f.md) | 275 | `declaration-track:dbbf661af7cac8c6852de63fd474bfd275acae944ea7ec2691409a89fe799204` |
| 23 | `theorem` | [whiskeringLeft_obj_preimage_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/declarations/whiskeringleft-obj-preimage-app--0a011e494413fe88614f9edc.md) | 286 | `result-track:0a011e494413fe88614f9edc2dd69f6d3241684f18eb5dfb140b9fc9d2bc4b08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
