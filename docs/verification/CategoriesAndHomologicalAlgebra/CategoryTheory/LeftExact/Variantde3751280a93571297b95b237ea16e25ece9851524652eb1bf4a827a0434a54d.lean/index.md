# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftExact.Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cccf51dded6e2371f0db2072e026e38a58eb2da",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cccf51dded6e2371f0db2072e026e38a58eb2da`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Kernels` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitMapConeBinaryFanOfPreservesKernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/declarations/islimitmapconebinaryfanofpreserveskernels--4c38b8932a7189afd4f37ad9.md) | 48 | `declaration-track:4c38b8932a7189afd4f37ad9b40d9a33d01a00e7c2180f56424465650e76d47c` |
| 2 | `lemma` | [preservesBinaryProduct_of_preservesKernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/declarations/preservesbinaryproduct-of-preserveskernels--29d90d503689527b4c77e1e2.md) | 59 | `result-track:29d90d503689527b4c77e1e26cadc74e1c737fbe18bd112867bfdcd2ddbb920e` |
| 3 | `lemma` | [preservesBinaryProducts_of_preservesKernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/declarations/preservesbinaryproducts-of-preserveskernels--61f038765035e4b3594fc78a.md) | 70 | `result-track:61f038765035e4b3594fc78a026adf63701ef35bcb71846eb5cdbdebe9bbd198` |
| 4 | `lemma` | [preservesEqualizer_of_preservesKernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/declarations/preservesequalizer-of-preserveskernels--5c2effd9b3324adfe99e092d.md) | 81 | `result-track:5c2effd9b3324adfe99e092d31fd7965c20dec9cf96267d2f3359b78219a1d66` |
| 5 | `lemma` | [preservesEqualizers_of_preservesKernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/declarations/preservesequalizers-of-preserveskernels--0e2be3a75e4018219200c620.md) | 102 | `result-track:0e2be3a75e4018219200c6200645113770871a97bdf523d966849581537bb05b` |
| 6 | `lemma` | [preservesFiniteLimits_of_preservesKernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/declarations/preservesfinitelimits-of-preserveskernels--8bbc67fdaac65035c3e22c43.md) | 112 | `result-track:8bbc67fdaac65035c3e22c4341a758dfec7b3d9b02a3c637226751e582f9addb` |
| 7 | `def` | [isColimitMapCoconeBinaryCofanOfPreservesCokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/declarations/iscolimitmapcoconebinarycofanofpreservescokernels--e034fe4606dba4affab0d22b.md) | 127 | `declaration-track:e034fe4606dba4affab0d22b700d07670dcd04be1567710ea8edcf7e26f169a4` |
| 8 | `lemma` | [preservesCoproduct_of_preservesCokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/declarations/preservescoproduct-of-preservescokernels--cd80c3f35774b8d4562e8f34.md) | 140 | `result-track:cd80c3f35774b8d4562e8f342dd24357881f99a8c001983b4597d09d55b64425` |
| 9 | `lemma` | [preservesBinaryCoproducts_of_preservesCokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/declarations/preservesbinarycoproducts-of-preservescokernels--88e971cea7e25e7ef006488b.md) | 152 | `result-track:88e971cea7e25e7ef006488b2954a14118e59bfe2c613bd077ddc61d15d01569` |
| 10 | `lemma` | [preservesCoequalizer_of_preservesCokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/declarations/preservescoequalizer-of-preservescokernels--a837ba8e1c1edd1087ec0cff.md) | 163 | `result-track:a837ba8e1c1edd1087ec0cffd411c29984b0adc55c80374436e0dfb17035f1a3` |
| 11 | `lemma` | [preservesCoequalizers_of_preservesCokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/declarations/preservescoequalizers-of-preservescokernels--ebf6d21759c80f2e6a02d331.md) | 186 | `result-track:ebf6d21759c80f2e6a02d3316d5f25a1fcde5a593e5413884b21e25d2c14434a` |
| 12 | `lemma` | [preservesFiniteColimits_of_preservesCokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/declarations/preservesfinitecolimits-of-preservescokernels--b987e03fdfb5e048913ca0e5.md) | 196 | `result-track:b987e03fdfb5e048913ca0e5cad6824f7e8d5f3acdbd8059d3022f9521ef2642` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
