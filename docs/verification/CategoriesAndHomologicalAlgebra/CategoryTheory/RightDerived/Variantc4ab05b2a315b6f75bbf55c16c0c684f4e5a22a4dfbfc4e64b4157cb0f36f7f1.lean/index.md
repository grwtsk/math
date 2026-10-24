# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RightDerived.Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3158eac0e080d1c3105e3afa1059920f448fe13d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3158eac0e080d1c3105e3afa1059920f448fe13d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.KanExtension.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Predicate` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsRightDerivedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/isrightderivedfunctor--2dabcc2f2d2c20599ded1025.md) | 59 | `declaration-track:2dabcc2f2d2c20599ded1025bc88048fc8b505ff8c72756fa14016fb033f9d8a` |
| 2 | `lemma` | [isRightDerivedFunctor_iff_isLeftKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/isrightderivedfunctor-iff-isleftkanextension--d72d8edfe58683891860d0fb.md) | 63 | `result-track:d72d8edfe58683891860d0fb3df46af67ed14ccf8d9111ae7753155a58bd1ba0` |
| 3 | `lemma` | [isRightDerivedFunctor_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/isrightderivedfunctor-iff-of-iso--82aa47ae73e60351bd1dae4c.md) | 70 | `result-track:82aa47ae73e60351bd1dae4c1802bae8e5a0a4856addcf17ed9ae4043dacaccb` |
| 4 | `def` | [rightDerivedDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/rightderiveddesc--7f61e0a96817c6b86fe2089d.md) | 81 | `declaration-track:7f61e0a96817c6b86fe2089dc397597b69074978f325dee62f355f2d9e563699` |
| 5 | `lemma` | [rightDerived_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/rightderived-fac--2ec4e1441722ce312c344291.md) | 86 | `result-track:2ec4e1441722ce312c34429193e83dbb77b0bcba5b3cf21b3791056f35636bac` |
| 6 | `lemma` | [rightDerived_fac_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/rightderived-fac-app--f7a7179fb07c48a505b5a57e.md) | 92 | `result-track:f7a7179fb07c48a505b5a57ea6305ef952edd72567061e94993ba1a4967f0cf9` |
| 7 | `lemma` | [rightDerived_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/rightderived-ext--f3255c6be79fcf79ac4858f7.md) | 98 | `result-track:f3255c6be79fcf79ac4858f72ab860194e84b45094157720d00e75a7c94b1a95` |
| 8 | `def` | [rightDerivedNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/rightderivednattrans--f93318880cbb7d5296751eec.md) | 105 | `declaration-track:f93318880cbb7d5296751eecc568994af5b207a8815180b4ecf63963208fdefa` |
| 9 | `lemma` | [rightDerivedNatTrans_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/rightderivednattrans-fac--de77428045c360c210ea032a.md) | 109 | `result-track:de77428045c360c210ea032aaef425b04da59a43b0fb2df140ea22a20080d913` |
| 10 | `lemma` | [rightDerivedNatTrans_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/rightderivednattrans-app--eda8eb4f643d49a3fa585663.md) | 115 | `result-track:eda8eb4f643d49a3fa58566309412e2892482485c3f35a49fa39ff0c8297fd82` |
| 11 | `lemma` | [rightDerivedNatTrans_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/rightderivednattrans-id--da71a6dc61768a29d25f2252.md) | 122 | `result-track:da71a6dc61768a29d25f2252631fc7800b57dba5054e435f4a918279db0628f1` |
| 12 | `lemma` | [rightDerivedNatTrans_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/rightderivednattrans-comp--2aaf926a71f6b9ffee4183ad.md) | 129 | `result-track:2aaf926a71f6b9ffee4183ad1878a94e6fc7d443ce54dc974cfc7fae41b93dba` |
| 13 | `def` | [rightDerivedNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/rightderivednatiso--de04293cb764ee5ce53d0e58.md) | 137 | `declaration-track:de04293cb764ee5ce53d0e58624dd99a2fe67bb6b7191cb5b5df55b02cd9aa12` |
| 14 | `abbrev` | [rightDerivedUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/rightderivedunique--098a07e8983699fc21c4500c.md) | 143 | `declaration-track:098a07e8983699fc21c4500c1795a5a7c47f9613b7a6a2a5297bc5b302eb5ad4` |
| 15 | `lemma` | [isRightDerivedFunctor_iff_isIso_rightDerivedDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/isrightderivedfunctor-iff-isiso-rightderiveddesc--6b878092718f40a553837a3b.md) | 146 | `result-track:6b878092718f40a553837a3bca4a6c8ee2bb863806ee420c2f156fc1bbdfc1d1` |
| 16 | `class` | [HasRightDerivedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/hasrightderivedfunctor--50d9c61dd36a2cd348c7f0a0.md) | 160 | `declaration-track:50d9c61dd36a2cd348c7f0a0a2ad9c5729b4b9e33c877f8a7dd585c724441244` |
| 17 | `lemma` | [hasRightDerivedFunctor_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/hasrightderivedfunctor-iff--dfbc2e5815e7566f674ff79b.md) | 166 | `result-track:dfbc2e5815e7566f674ff79b43d4fc2228b015efb549ee04ff2695e7e074c469` |
| 18 | `lemma` | [hasRightDerivedFunctor_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/hasrightderivedfunctor-iff-of-iso--1885b6267b4fd517dafada0d.md) | 175 | `result-track:1885b6267b4fd517dafada0d6028b9f41cb17a911d7645afee1bc5c9c06be862` |
| 19 | `lemma` | [HasRightDerivedFunctor.hasLeftKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/hasrightderivedfunctor-hasleftkanextension--0438c096dd5d08deadac6b97.md) | 182 | `result-track:0438c096dd5d08deadac6b97218002625a48a7d8a94898ae698c06834d317c03` |
| 20 | `lemma` | [HasRightDerivedFunctor.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/hasrightderivedfunctor-mk--732460d92b157bf566a71418.md) | 188 | `result-track:732460d92b157bf566a714180d715c23be2c26d4d127cfb78107d7c2d9e83fc1` |
| 21 | `def` | [totalRightDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/totalrightderived--4351c57b13322ebb83c1b300.md) | 200 | `declaration-track:4351c57b13322ebb83c1b300bfb35048d9a09ffb0533b8e9844220366abaf2d0` |
| 22 | `def` | [totalRightDerivedUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/totalrightderivedunit--3580861dd7bcba53b6a4ef65.md) | 205 | `declaration-track:3580861dd7bcba53b6a4ef65f1af5b735530102e86e3e43a044477a60f1a9784` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc4ab05b2a315b6f75bbf55c16c0c684f4e5a22a4dfbfc4e64b4157cb0f36f7f1.lean/declarations/instance--3274a6f7289388c487a8689a.md) | 209 | `declaration-track:3274a6f7289388c487a8689af59fb926bbc9240e4fec27d78a74944f87cc3533` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
