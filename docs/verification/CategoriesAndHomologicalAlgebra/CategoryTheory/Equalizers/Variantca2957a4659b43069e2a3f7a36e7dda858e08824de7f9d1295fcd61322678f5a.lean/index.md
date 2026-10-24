# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizers.Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e3b781aeb0d85b48bff9bbb3e09d37267e4bee6",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e3b781aeb0d85b48bff9bbb3e09d37267e4bee6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.SplitCoequalizer` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.SplitEqualizer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitMapConeForkEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/islimitmapconeforkequiv--3314888e4f8783839c470fbb.md) | 40 | `declaration-track:3314888e4f8783839c470fbbadfbe326f9c112a5d353999f5d09062ad23ca3b7` |
| 2 | `def` | [isLimitForkMapOfIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/islimitforkmapofislimit--89e75fc76c4daeb8796bf676.md) | 47 | `declaration-track:89e75fc76c4daeb8796bf676d171b8817d2f4e1f77c89f5bfdf6596609340d6c` |
| 3 | `def` | [isLimitOfIsLimitForkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/islimitofislimitforkmap--6949c5d7bc0d4e56d04c6fa8.md) | 52 | `declaration-track:6949c5d7bc0d4e56d04c6fa8bd6745347270ccf50ccd6247c4b627d9ff1cec30` |
| 4 | `def` | [isLimitOfHasEqualizerOfPreservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/islimitofhasequalizerofpreserveslimit--4c6a7075891011e3c255519b.md) | 64 | `declaration-track:4c6a7075891011e3c255519b6651a111aaaf7a139f7de846300e568cdc5f7955` |
| 5 | `lemma` | [PreservesEqualizer.of_iso_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/preservesequalizer-of-iso-comparison--01d3180cc28902571fa448d2.md) | 75 | `result-track:01d3180cc28902571fa448d2156060bcc7d3de8b03ad5a4c5d7d411264f589e7` |
| 6 | `def` | [PreservesEqualizer.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/preservesequalizer-iso--415e6077a0040586e77f1eeb.md) | 87 | `declaration-track:415e6077a0040586e77f1eeb38c0b2e77396a4156e17ac7b8aea78b5d4ba6929` |
| 7 | `theorem` | [PreservesEqualizer.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/preservesequalizer-iso-hom--2df348bc2b1fd83c02fa5391.md) | 91 | `result-track:2df348bc2b1fd83c02fa53913afc3df974d007d6972eb4b5488406ffc380a355` |
| 8 | `theorem` | [PreservesEqualizer.iso_inv_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/preservesequalizer-iso-inv--65b9e7a0398f888e390a77ed.md) | 96 | `result-track:65b9e7a0398f888e390a77eda3bffe60cb4cdacba1d9654a80584d1eb5719901` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/instance--527246f219adb875e4e8b768.md) | 102 | `declaration-track:527246f219adb875e4e8b76855ca9def1ef7be8fbc2d7d210c772cc905e69c8e` |
| 10 | `def` | [isColimitMapCoconeCoforkEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/iscolimitmapcoconecoforkequiv--9c9c98cedb418087462e957a.md) | 115 | `declaration-track:9c9c98cedb418087462e957a51d383a0ef7244b61db98028d7cc01ad433c19b0` |
| 11 | `def` | [isColimitCoforkMapOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/iscolimitcoforkmapofiscolimit--129e60f362c29abc9f46c87e.md) | 126 | `declaration-track:129e60f362c29abc9f46c87e55c9cc2847195753c0ded05ef0e88bf38d2902c6` |
| 12 | `def` | [isColimitOfIsColimitCoforkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/iscolimitofiscolimitcoforkmap--c64867c66e49bfd05114cccd.md) | 133 | `declaration-track:c64867c66e49bfd05114cccde7e7fe7e11257f4d90ce05594a243ba43981a895` |
| 13 | `def` | [isColimitOfHasCoequalizerOfPreservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/iscolimitofhascoequalizerofpreservescolimit--a0a031269d9671db8a1b1580.md) | 147 | `declaration-track:a0a031269d9671db8a1b15808450b062df688c3e2b36b6fc8e3f748405914cb3` |
| 14 | `lemma` | [of_iso_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/of-iso-comparison--e772ba29d93995dee11042c0.md) | 157 | `result-track:e772ba29d93995dee11042c09f74a7e9f62f98c99f6a7060e73f177103c0a5bd` |
| 15 | `def` | [PreservesCoequalizer.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/preservescoequalizer-iso--691943ac8f7e1653d84654e5.md) | 170 | `declaration-track:691943ac8f7e1653d84654e528f146c519f184a8e4864c36bc6e285d13406234` |
| 16 | `theorem` | [PreservesCoequalizer.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/preservescoequalizer-iso-hom--498d42e838bfc1b007d9cfcf.md) | 175 | `result-track:498d42e838bfc1b007d9cfcff849bfeee599c7390278f8102347d91052c0a1c3` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/instance--bfe4a72ffe842129c2fcaa23.md) | 179 | `declaration-track:bfe4a72ffe842129c2fcaa2330078845bef1d824a93153d3e0d1b63fbe813987` |
| 18 | `instance` | [map_π_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/map-epi--2b32584e18d98f76f468d624.md) | 183 | `declaration-track:2b32584e18d98f76f468d62442943270257c2f08a3a5b6505027755944bc0372` |
| 19 | `theorem` | [map_π_preserves_coequalizer_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/map-preserves-coequalizer-inv--5ee3268643b39258290b56b1.md) | 191 | `result-track:5ee3268643b39258290b56b18f46be92477ddb698796d893ba24e3ca2f5f6b7c` |
| 20 | `theorem` | [map_π_preserves_coequalizer_inv_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/map-preserves-coequalizer-inv-desc--c0c519154c0d3eadf42925af.md) | 198 | `result-track:c0c519154c0d3eadf42925afafdee2c03937b90f30c2b2072e7f57ce3630d59e` |
| 21 | `theorem` | [map_π_preserves_coequalizer_inv_colimMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/map-preserves-coequalizer-inv-colimmap--fc32e43a38b8d65650821243.md) | 204 | `result-track:fc32e43a38b8d6565082124375d3a99e64cc17be407038433dceee2a0b97fdde` |
| 22 | `theorem` | [map_π_preserves_coequalizer_inv_colimMap_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/map-preserves-coequalizer-inv-colimmap-desc--e700d68a86492e683cad4be3.md) | 214 | `result-track:e700d68a86492e683cad4be31130cd22a881ea1a21b1d5296fef677a88338656` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/instance--5d40bb1ba1d230ac83c9c7f6.md) | 225 | `declaration-track:5d40bb1ba1d230ac83c9c7f67fbb801f89e804e61f5ccab82d3fa06b2aef94dc` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/declarations/instance--9d4704523cceff52b2b7b067.md) | 234 | `declaration-track:9d4704523cceff52b2b7b06702b76dbcbd7f79a4e7845665eeec2b79e42d64ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
