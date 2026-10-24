# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorExtension.Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a01661590488458e07e60176fbdda7acd5987bbe",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a01661590488458e07e60176fbdda7acd5987bbe`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Idempotents.Karoubi` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natTrans_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/nattrans-eq--6c8fac83a6e14caf53d19482.md) | 52 | `result-track:6c8fac83a6e14caf53d19482e375d013826159be2614156070143d392be9ae7e` |
| 2 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/obj--bc099370b0ab501e11cb3469.md) | 67 | `declaration-track:bc099370b0ab501e11cb3469419889558b1f769f69f4ec2645296067759d1861` |
| 3 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/map--599aca019f7ac17e095ccaf4.md) | 77 | `declaration-track:599aca019f7ac17e095ccaf4b6b280304ae086f1004b949763db767890e690b8` |
| 4 | `def` | [functorExtension₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/functorextension--a53455cd761e4dd4228fbd83.md) | 104 | `declaration-track:a53455cd761e4dd4228fbd8354164594a7f35a47d3695586d41dc889064da236` |
| 5 | `theorem` | [functorExtension₁_comp_whiskeringLeft_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/functorextension-comp-whiskeringleft-tokaroubi--436a26fb6a5af9c664c8f782.md) | 121 | `result-track:436a26fb6a5af9c664c8f7827cfd7c3bef6f7eda65b9b680273fd5fcfad280c9` |
| 6 | `def` | [functorExtension₁_comp_whiskeringLeft_toKaroubi_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/functorextension-comp-whiskeringleft-tokaroubi-iso--3ab78bc81816ebe33076bbd7.md) | 139 | `declaration-track:3ab78bc81816ebe33076bbd7467e8c8e31916f626bb98afc6a3dab39d6aac95a` |
| 7 | `def` | [KaroubiUniversal₁.counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/karoubiuniversal-counitiso--2505509315759f9867673a5c.md) | 146 | `declaration-track:2505509315759f9867673a5ce75d9ae32f9f922fbb1a39b142c12bb42c6a5cb5` |
| 8 | `def` | [karoubiUniversal₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/karoubiuniversal--06af04f47a1620d93ab7a903.md) | 185 | `declaration-track:06af04f47a1620d93ab7a903b688b62d0a03d9e7213097502aa4fdbb05bf031a` |
| 9 | `theorem` | [functorExtension₁_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/functorextension-comp--874552f09f25ca4437ecf630.md) | 198 | `result-track:874552f09f25ca4437ecf630185bfed966cf2323958b21cf648d93b4be71eb3b` |
| 10 | `def` | [functorExtension₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/functorextension--0ea81266b6c66e4560372e60.md) | 211 | `declaration-track:0ea81266b6c66e4560372e6008c9c756f7b691e00f594d237abd8c8c207096a1` |
| 11 | `theorem` | [functorExtension₂_comp_whiskeringLeft_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/functorextension-comp-whiskeringleft-tokaroubi--068afd17ab285a27fce8a37b.md) | 215 | `result-track:068afd17ab285a27fce8a37bd9decb14143b5220080a4868930699eb55c848cb` |
| 12 | `def` | [functorExtension₂CompWhiskeringLeftToKaroubiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/functorextension-compwhiskeringlefttokaroubiiso--fd2ad67bf1feba563d283b00.md) | 225 | `declaration-track:fd2ad67bf1feba563d283b0087b0cdfa4b7fa2f36b91814fc6776bb167331ced` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/instance--438e6371f5b905beadeca5f6.md) | 235 | `declaration-track:438e6371f5b905beadeca5f6999ebfed3be13f16ed62490ffb36f0279df85667` |
| 14 | `def` | [karoubiUniversal₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/karoubiuniversal--0eb6ead6e89b39fa2c6dda2b.md) | 241 | `declaration-track:0eb6ead6e89b39fa2c6dda2ba969f0272c942617beb15f8529a377e43ab8af36` |
| 15 | `theorem` | [karoubiUniversal₂_functor_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/karoubiuniversal-functor-eq--38d4a09594a4cc6fd8a10236.md) | 245 | `result-track:38d4a09594a4cc6fd8a10236839dc03f7753432fed563c0722d65f451de875b9` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/instance--fa5906a2599e9a4f52308df3.md) | 249 | `declaration-track:fa5906a2599e9a4f52308df3ae30184008fa38b78854ec7a0b0df76b7148d668` |
| 17 | `def` | [functorExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/functorextension--3ebc1d304956cba8a1fe548a.md) | 256 | `declaration-track:3ebc1d304956cba8a1fe548a57e09928c6deca7e0b30759b3852848387099c1f` |
| 18 | `def` | [karoubiUniversal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/karoubiuniversal--79609f9e5d70cb8815e18dd6.md) | 263 | `declaration-track:79609f9e5d70cb8815e18dd64ab829a9a321a98af88789991f94f8832c04ca92` |
| 19 | `theorem` | [karoubiUniversal_functor_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/karoubiuniversal-functor-eq--232be6eb8b7cd8354bb234ab.md) | 267 | `result-track:232be6eb8b7cd8354bb234ab61c9e7f51d9ee02422c0a62c4828af9fe899601c` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/instance--fa1500933e4bcd4e42fdefff.md) | 271 | `declaration-track:fa1500933e4bcd4e42fdefff66c754a414cef22a8df2b3dec363aa7409304e84` |
| 21 | `lemma` | [isEquivalence_whiskeringLeft_obj_toKaroubi_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/isequivalence-whiskeringleft-obj-tokaroubi-aux--5c4bf4891468cdd99a45ed37.md) | 276 | `result-track:5c4bf4891468cdd99a45ed37dba14964bc3a93b0bedbb52ec9d11f6c61c68288` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/instance--06c70c57b0aec01d1fa91925.md) | 283 | `declaration-track:06c70c57b0aec01d1fa919251f89dc432075e78a2e3b60dd54cc98eb87156130` |
| 23 | `theorem` | [whiskeringLeft_obj_preimage_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/declarations/whiskeringleft-obj-preimage-app--4787e6fb48a37a8342cba2c9.md) | 294 | `result-track:4787e6fb48a37a8342cba2c93875b2226596feae05fd9dd8625b87e54c815d9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
