# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Left.Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e793c694ff0d61fb9fb4246b2d0d38f2b621bc90",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e793c694ff0d61fb9fb4246b2d0d38f2b621bc90`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Adjunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Coequalizer` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [counitCoequalises](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean/declarations/counitcoequalises--62857cf038e9d36a62c03a40.md) | 77 | `declaration-track:62857cf038e9d36a62c03a4079bd5d65f4440c596c4809bc8acc67dd0e8fb135` |
| 2 | `def` | [otherMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean/declarations/othermap--d14b74d16bccd61adee35967.md) | 100 | `declaration-track:d14b74d16bccd61adee3596773239cf11d64d679a02233a029d8572483884a66` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean/declarations/instance--55d726a089e695bb8199864f.md) | 106 | `declaration-track:55d726a089e695bb8199864f3483480a67269377ad6ebd9df629dc3a21824442` |
| 4 | `def` | [constructLeftAdjointObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean/declarations/constructleftadjointobj--edfd4842cbd86e3c9c43dd7b.md) | 122 | `declaration-track:edfd4842cbd86e3c9c43dd7b5df85a919672f97959e8d31763a42c010bca270b` |
| 5 | `def` | [constructLeftAdjointEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean/declarations/constructleftadjointequiv--372c4f3f1cebfdd4f597645b.md) | 127 | `declaration-track:372c4f3f1cebfdd4f597645ba805573adc3c8a33ab0dea586058f46f4909f3e3` |
| 6 | `def` | [constructLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean/declarations/constructleftadjoint--e1c86a31c6a6670b9734bafc.md) | 156 | `declaration-track:e1c86a31c6a6670b9734bafca15f690b960b8333700ee51d345ce06a49e3b38c` |
| 7 | `lemma` | [isRightAdjoint_triangle_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean/declarations/isrightadjoint-triangle-lift--d8483a41a24a0a537aef2301.md) | 178 | `result-track:d8483a41a24a0a537aef2301e623563ddd7bd4afb7840f9353555a74f4c82bcf` |
| 8 | `lemma` | [isRightAdjoint_triangle_lift_monadic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean/declarations/isrightadjoint-triangle-lift-monadic--9f58a4608977c945078a1363.md) | 189 | `result-track:9f58a4608977c945078a136321275e1b1bc81b7937cdb03159f82338a9dd7a88` |
| 9 | `lemma` | [isRightAdjoint_square_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean/declarations/isrightadjoint-square-lift--21fa182ed3a39c92a1be0b0f.md) | 226 | `result-track:21fa182ed3a39c92a1be0b0fca1a1ed0d410c6db542e17f543456f0131542433` |
| 10 | `lemma` | [isRightAdjoint_square_lift_monadic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant1d1121111dce510ad0ed28931afe173f9e7a6795a0917da4c0ed35cf01118ff6.lean/declarations/isrightadjoint-square-lift-monadic--376142cca82ecfdb2cd1b4e0.md) | 248 | `result-track:376142cca82ecfdb2cd1b4e0615ac556344eb3d8f11f1e5de012175eac72ebf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
