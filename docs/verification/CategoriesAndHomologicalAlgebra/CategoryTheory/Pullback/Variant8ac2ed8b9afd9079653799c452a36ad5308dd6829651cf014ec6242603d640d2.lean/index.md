# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullback.Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "677561904d108a2da2ed944f2ddaed335d0a9d28",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `677561904d108a2da2ed944f2ddaed335d0a9d28`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.Adjunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PullbackShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/pullbackshift--e550f360179ebfa7c9d683ff.md) | 43 | `declaration-track:e550f360179ebfa7c9d683ff5a583e2da60eefbe3afdc9b4e03ca7246ca7d579` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/instance--265d0503a39096578e44fc7e.md) | 45 | `declaration-track:265d0503a39096578e44fc7ea1a991330b5834ead0a90bc3c2f2a60607b48ad1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/instance--fd9484267c5d0da86a08a766.md) | 53 | `declaration-track:fd9484267c5d0da86a08a766877f97369d76158d44334ad940b03e58c87b241d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/instance--e1ae691ab0d55fe290a54de7.md) | 56 | `declaration-track:e1ae691ab0d55fe290a54de7ffd6c3f526008b526ee7407fbfb8f21054404687` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/instance--ef970a583a9ccdb7389abdfb.md) | 60 | `declaration-track:ef970a583a9ccdb7389abdfb393264768b1df8f46e6ce754bba8756a62d5edb0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/instance--c2ad80723a7d0e347488b1dd.md) | 64 | `declaration-track:c2ad80723a7d0e347488b1dd134e1381c4e29cd3b8b639a289a12e0a4c3b051a` |
| 7 | `def` | [pullbackShiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/pullbackshiftiso--7aacd1642161578f9fcf6180.md) | 71 | `declaration-track:7aacd1642161578f9fcf61807d53f4d6caf7a16a7feb1c1c2421d9d79c93f2a5` |
| 8 | `lemma` | [pullbackShiftFunctorZero_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/pullbackshiftfunctorzero-inv-app--d2ae5708a768d5d0bd904acd.md) | 78 | `result-track:d2ae5708a768d5d0bd904acd78896b0c35cfb6c7bd7f3fdb2fda74aea0e0f9f5` |
| 9 | `lemma` | [pullbackShiftFunctorZero_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/pullbackshiftfunctorzero-hom-app--d966b9c0a3ca416a85744ac9.md) | 86 | `result-track:d966b9c0a3ca416a85744ac995630e531c7ee37cbf93f2f4ed101e336ae71b50` |
| 10 | `lemma` | [pullbackShiftFunctorZero'_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/pullbackshiftfunctorzero-inv-app--efc58ad2d221fe3465f51749.md) | 93 | `result-track:efc58ad2d221fe3465f51749e4d2a1483b3bd73cb502866cf0b6958a8d04042d` |
| 11 | `lemma` | [pullbackShiftFunctorZero'_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/pullbackshiftfunctorzero-hom-app--4cbaf518e92d865040b15973.md) | 101 | `result-track:4cbaf518e92d865040b15973926b57c83824faef3925d739a2f83ed5da187738` |
| 12 | `lemma` | [pullbackShiftFunctorAdd'_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/pullbackshiftfunctoradd-inv-app--221816e30ba0d72d2968870b.md) | 108 | `result-track:221816e30ba0d72d2968870b723c37697b7f1ce9205cad8ac87ff8cd44e1ab7f` |
| 13 | `lemma` | [pullbackShiftFunctorAdd'_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/pullbackshiftfunctoradd-hom-app--3845d34568dc69343962f4e2.md) | 126 | `result-track:3845d34568dc69343962f4e242897c95512e6d55a405b0419d7a16c6cb4a1feb` |
| 14 | `def` | [PullbackShift.functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/pullbackshift-functor--7710e7d6e7738c5553438957.md) | 146 | `declaration-track:7710e7d6e7738c5553438957adc9caeb6ca5286311ec732045f1cd283ea396d3` |
| 15 | `def` | [PullbackShift.natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/pullbackshift-nattrans--5325ad1d36a37292666d48d3.md) | 155 | `declaration-track:5325ad1d36a37292666d48d386ef3317d5b426bf2d6b0d317d5845d9e7140b86` |
| 16 | `instance` | [commShiftPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/commshiftpullback--7f139e0322f39abc057994a8.md) | 163 | `declaration-track:7f139e0322f39abc057994a82db8cd7c9df188d96d139a2942b575c8a52fecc1` |
| 17 | `lemma` | [commShiftPullback_iso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/commshiftpullback-iso-eq--9fe63fedbe1beaad77165abd.md) | 194 | `result-track:9fe63fedbe1beaad77165abd6bcfb8158a96dc79ef04a2c0fe22e23d14da2a13` |
| 18 | `instance` | [commShiftPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/commshiftpullback--81c4baa214b5fe4583e1ba26.md) | 208 | `declaration-track:81c4baa214b5fe4583e1ba268c6620019b48ff1b3c8800d081250d22999df343` |
| 19 | `def` | [PullbackShift.natIsoId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/pullbackshift-natisoid--8fa43b4010c50a4d00fbfd28.md) | 223 | `declaration-track:8fa43b4010c50a4d00fbfd282e1707245e642d8021c4d8e55aabaf374119e02d` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/instance--72ac9b7c2a03a22ea9beb6f9.md) | 231 | `declaration-track:72ac9b7c2a03a22ea9beb6f951f092690d991ecd8ecd38f127f2dc720a81aabf` |
| 21 | `def` | [PullbackShift.natIsoComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/pullbackshift-natisocomp--7d05eb4c12b394ae8f21e15a.md) | 241 | `declaration-track:7d05eb4c12b394ae8f21e15a81bf0917cfce237a38dab82c086c9c0a1899c890` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/instance--23ada839f6c547f04f23160e.md) | 253 | `declaration-track:23ada839f6c547f04f23160eb0f17edf2532c0b78035138b4c3c00146f172880` |
| 23 | `def` | [PullbackShift.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/pullbackshift-adjunction--f3d7d7d3585a5bff1271ad8a.md) | 271 | `declaration-track:f3d7d7d3585a5bff1271ad8a19b8d89b18ef9984e6f0f6730cfbf9ab36fd5364` |
| 24 | `instance` | [commShiftPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/declarations/commshiftpullback--746dddd4553d49546fc07255.md) | 293 | `declaration-track:746dddd4553d49546fc07255b267cf6b40185a1ca951c1137cf4e53a08274b63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
