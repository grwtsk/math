# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftExact.Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9dcf810fd9e046432342a674d48ee1510f76e2a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9dcf810fd9e046432342a674d48ee1510f76e2a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Kernels` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitMapConeBinaryFanOfPreservesKernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/declarations/islimitmapconebinaryfanofpreserveskernels--bf61167af12119a3a3ae91c2.md) | 56 | `declaration-track:bf61167af12119a3a3ae91c2427ac66edac2594059962c3531c301fe1d53a4a1` |
| 2 | `lemma` | [preservesBinaryProduct_of_preservesKernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/declarations/preservesbinaryproduct-of-preserveskernels--c31c42915f46131ba03b5289.md) | 67 | `result-track:c31c42915f46131ba03b5289a11fb568a3018cb68be4d7319db67f005745a849` |
| 3 | `lemma` | [preservesBinaryProducts_of_preservesKernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/declarations/preservesbinaryproducts-of-preserveskernels--370a243dbb933b48b5648219.md) | 78 | `result-track:370a243dbb933b48b56482196b0039973f73574e12185958c542345bc4b9566e` |
| 4 | `lemma` | [preservesEqualizer_of_preservesKernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/declarations/preservesequalizer-of-preserveskernels--8d36da847cb1d8bac4c945e6.md) | 89 | `result-track:8d36da847cb1d8bac4c945e6541b9343f141ea7fa6da6c57f668d460d8669348` |
| 5 | `lemma` | [preservesEqualizers_of_preservesKernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/declarations/preservesequalizers-of-preserveskernels--86e9874dcedfb16b84af2c79.md) | 110 | `result-track:86e9874dcedfb16b84af2c793e307654857ae110b4cc10b6dadeb71e39398b1b` |
| 6 | `lemma` | [preservesFiniteLimits_of_preservesKernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/declarations/preservesfinitelimits-of-preserveskernels--8eae15c1325f922452b5016c.md) | 120 | `result-track:8eae15c1325f922452b5016c4dde0aef96bd1f01f003ef0345451ee05cc33f23` |
| 7 | `def` | [isColimitMapCoconeBinaryCofanOfPreservesCokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/declarations/iscolimitmapcoconebinarycofanofpreservescokernels--135c4d39d4aa995c827b01b7.md) | 135 | `declaration-track:135c4d39d4aa995c827b01b7deb8bd6424b97eb091b9e3b058d9a3c32feca6c1` |
| 8 | `lemma` | [preservesCoproduct_of_preservesCokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/declarations/preservescoproduct-of-preservescokernels--4345b0b3506213be3f4696c1.md) | 148 | `result-track:4345b0b3506213be3f4696c1e360659e2623e0c850f61d69504d942de25bcbaf` |
| 9 | `lemma` | [preservesBinaryCoproducts_of_preservesCokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/declarations/preservesbinarycoproducts-of-preservescokernels--7d53422c37ad0aa094540613.md) | 160 | `result-track:7d53422c37ad0aa0945406138f5a43e5c2f3fa01032f55bf2e2ca39432144bc9` |
| 10 | `lemma` | [preservesCoequalizer_of_preservesCokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/declarations/preservescoequalizer-of-preservescokernels--f88caa330753c939bcc1c9ec.md) | 171 | `result-track:f88caa330753c939bcc1c9ec3e32dda6b3027d8477c17afe6ffb036e6bfcb72e` |
| 11 | `lemma` | [preservesCoequalizers_of_preservesCokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/declarations/preservescoequalizers-of-preservescokernels--89be4ea0d967a03efe048b48.md) | 194 | `result-track:89be4ea0d967a03efe048b48c3a3259a515fe4284274422ef61651bc768c427e` |
| 12 | `lemma` | [preservesFiniteColimits_of_preservesCokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/declarations/preservesfinitecolimits-of-preservescokernels--39776ccde1ce6a284ca92078.md) | 204 | `result-track:39776ccde1ce6a284ca920784251019646a1b7caa063fc79fa3b0dd9e8c1c2ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
