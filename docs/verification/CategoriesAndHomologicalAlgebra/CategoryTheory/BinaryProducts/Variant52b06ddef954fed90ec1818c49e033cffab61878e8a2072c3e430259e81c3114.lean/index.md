# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BinaryProducts.Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "712d55806a5f3a7e5d62d35624ed8dd3b9edb091",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `712d55806a5f3a7e5d62d35624ed8dd3b9edb091`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Pullbacks` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isBinaryProductOfIsTerminalIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/isbinaryproductofisterminalispullback--be99b6252a8c6332f2ed0510.md) | 28 | `declaration-track:be99b6252a8c6332f2ed0510d1795bf3b09d6c69a45fddc5b3984ad9c5f05178` |
| 2 | `def` | [isProductOfIsTerminalIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/isproductofisterminalispullback--fce399729237ca3b84f9218d.md) | 50 | `declaration-track:fce399729237ca3b84f9218d34823416980cca05b72e8f2ac40fe4506f3710d4` |
| 3 | `def` | [isPullbackOfIsTerminalIsProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/ispullbackofisterminalisproduct--ca27b9fd950f0125f774ca51.md) | 58 | `declaration-track:ca27b9fd950f0125f774ca51167effdfcd6a1429e3b36cfab9579407864a8884` |
| 4 | `def` | [limitConeOfTerminalAndPullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/limitconeofterminalandpullbacks--8431f2ca99838bdea2e76ff3.md) | 73 | `declaration-track:8431f2ca99838bdea2e76ff3fa1f0a67e45934eae42c441220a2afe7bbeb7ed7` |
| 5 | `theorem` | [hasBinaryProducts_of_hasTerminal_and_pullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/hasbinaryproducts-of-hasterminal-and-pullbacks--a1e535ed5f7cc69bf683455c.md) | 88 | `result-track:a1e535ed5f7cc69bf683455cbbfaf9bfa67c249b54d57ad81e957a085297df12` |
| 6 | `lemma` | [preservesBinaryProducts_of_preservesTerminal_and_pullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/preservesbinaryproducts-of-preservesterminal-and-pullbacks--e7fc9f35e05f0e3ab96c28d4.md) | 93 | `result-track:e7fc9f35e05f0e3ab96c28d4cbc095086f9eb9446ad316f0ed3c1e8b0b8d77b9` |
| 7 | `def` | [prodIsoPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/prodisopullback--34ebacbbe99ee45c8f3a4375.md) | 105 | `declaration-track:34ebacbbe99ee45c8f3a4375853c580fdfda0deedc573a8c03bcbcf0f22fc26c` |
| 8 | `lemma` | [prodIsoPullback_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/prodisopullback-hom-fst--161b87f58d635891cf9c232b.md) | 110 | `result-track:161b87f58d635891cf9c232bc5f7f1122e5c2624c9535c12d86099bdecb47400` |
| 9 | `lemma` | [prodIsoPullback_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/prodisopullback-hom-snd--811bf8f692409a5a23ce503a.md) | 115 | `result-track:811bf8f692409a5a23ce503a2ca329eb13c96d61e2bc10b88e37c2331973f307` |
| 10 | `lemma` | [prodIsoPullback_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/prodisopullback-inv-fst--063405e284dca72695ee6f3b.md) | 120 | `result-track:063405e284dca72695ee6f3bc5b8b379b15fa943acc6a6b3c69f763ef435748e` |
| 11 | `lemma` | [prodIsoPullback_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/prodisopullback-inv-snd--cbe54b0c1a4bffcd0cd6b634.md) | 125 | `result-track:cbe54b0c1a4bffcd0cd6b63459314c1e1ca54557af5a68c72db168d00e937dd7` |
| 12 | `def` | [isBinaryCoproductOfIsInitialIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/isbinarycoproductofisinitialispushout--05632f5b39ee90ea273c885b.md) | 130 | `declaration-track:05632f5b39ee90ea273c885b9ac164f1b472616880d6db221c28512885d90327` |
| 13 | `def` | [isCoproductOfIsInitialIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/iscoproductofisinitialispushout--c22fb26ca7e31163b63ba3fd.md) | 156 | `declaration-track:c22fb26ca7e31163b63ba3fd5b67be8e105e905f2b88c279e988151163343836` |
| 14 | `def` | [isPushoutOfIsInitialIsCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/ispushoutofisinitialiscoproduct--4631e6bd9041bd69f248bedc.md) | 164 | `declaration-track:4631e6bd9041bd69f248bedcf5eba876f40f4010575f810d2946fda7e1be5f2e` |
| 15 | `def` | [colimitCoconeOfInitialAndPushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/colimitcoconeofinitialandpushouts--ffd53e9c74bb4adc989a8eaa.md) | 179 | `declaration-track:ffd53e9c74bb4adc989a8eaad6124a09460e6e0e12d1b66a049e258c4241b90e` |
| 16 | `theorem` | [hasBinaryCoproducts_of_hasInitial_and_pushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/hasbinarycoproducts-of-hasinitial-and-pushouts--b2db3153479722643b80fe4b.md) | 191 | `result-track:b2db3153479722643b80fe4bcbe530cd3d02c99259d38773aeb207ceaa56374d` |
| 17 | `lemma` | [preservesBinaryCoproducts_of_preservesInitial_and_pushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/preservesbinarycoproducts-of-preservesinitial-and-pushouts--329889d76b4c7ebf065f942d.md) | 196 | `result-track:329889d76b4c7ebf065f942d8b666112613173a8f28c73fee55291f1791bf577` |
| 18 | `def` | [coprodIsoPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/coprodisopushout--327ea67e5b4d523acf544d03.md) | 208 | `declaration-track:327ea67e5b4d523acf544d03a69117e2cc7853e83104385e4fc5eb31ed665245` |
| 19 | `lemma` | [inl_coprodIsoPushout_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/inl-coprodisopushout-hom--495b47edbbf677c661b507a7.md) | 213 | `result-track:495b47edbbf677c661b507a76d0e17c36a199365e0c2c53e8c804b360e63e7dd` |
| 20 | `lemma` | [inr_coprodIsoPushout_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/inr-coprodisopushout-hom--5c860ae3c843632ee7d0a4ce.md) | 218 | `result-track:5c860ae3c843632ee7d0a4ce9f1b585f1d112e74ca6c81c81e8dde6aacc15dec` |
| 21 | `lemma` | [inl_coprodIsoPushout_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/inl-coprodisopushout-inv--6d9c8eb3f380a8afefdaf455.md) | 223 | `result-track:6d9c8eb3f380a8afefdaf4559e763fb843d0a590676ab30ee6438f507f59062d` |
| 22 | `lemma` | [inr_coprodIsoPushout_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/declarations/inr-coprodisopushout-inv--90e32fdec17aa8a6b7b55924.md) | 228 | `result-track:90e32fdec17aa8a6b7b55924afc4fa8b5a9ff6670d91144a17ccbd123b7316b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
