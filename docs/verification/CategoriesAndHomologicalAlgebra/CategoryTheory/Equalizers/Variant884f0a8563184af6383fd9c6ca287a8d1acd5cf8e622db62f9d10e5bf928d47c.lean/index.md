# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizers.Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73d519ebd521915fed9e46ce91a3241ab5af183a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73d519ebd521915fed9e46ce91a3241ab5af183a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Pullbacks` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [constructEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/declarations/constructequalizer--951325a59e4959cad90db2f6.md) | 37 | `declaration-track:951325a59e4959cad90db2f61a5476320f63219d833e5da36f07eb6a20ea18dd` |
| 2 | `abbrev` | [pullbackFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/declarations/pullbackfst--fd520cd44b87cb0a37e35dfd.md) | 42 | `declaration-track:fd520cd44b87cb0a37e35dfdf6584f8858e351a7e9923b5893634fd4029460af` |
| 3 | `theorem` | [pullbackFst_eq_pullback_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/declarations/pullbackfst-eq-pullback-snd--e7ef513bdb4296c563d6cb5e.md) | 46 | `result-track:e7ef513bdb4296c563d6cb5e93273fad015dae29bdb24b765087ffdd4f3d8469` |
| 4 | `abbrev` | [equalizerCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/declarations/equalizercone--e6d0c486e506c8afe0f2adc9.md) | 52 | `declaration-track:e6d0c486e506c8afe0f2adc9ed21e6c7521e5c6de09f74bb698c0d940f0d4c83` |
| 5 | `def` | [equalizerConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/declarations/equalizerconeislimit--8cce136e7aa3d4e89d03dbb1.md) | 61 | `declaration-track:8cce136e7aa3d4e89d03dbb1474f7a81d340f9da868c763b15e0ae24f2d5290b` |
| 6 | `theorem` | [hasEqualizers_of_hasPullbacks_and_binary_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/declarations/hasequalizers-of-haspullbacks-and-binary-products--c55b9ca7091167084d015f43.md) | 79 | `result-track:c55b9ca7091167084d015f431da53d4d1496a565e8cbfcd4581bd185620ef730` |
| 7 | `lemma` | [preservesEqualizers_of_preservesPullbacks_and_binaryProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/declarations/preservesequalizers-of-preservespullbacks-and-binaryproducts--c6590f0e8be2908d037c9450.md) | 89 | `result-track:c6590f0e8be2908d037c94507fc86e40045b271ad2ccd994dc47fd680d11332a` |
| 8 | `abbrev` | [constructCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/declarations/constructcoequalizer--bd4cc191caff1de0fa60dd43.md) | 129 | `declaration-track:bd4cc191caff1de0fa60dd43e2ce71ca1f94cd6fef64d499cd977a94890632ff` |
| 9 | `abbrev` | [pushoutInl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/declarations/pushoutinl--923d06414b61633c16860793.md) | 134 | `declaration-track:923d06414b61633c16860793a6ba99dd1c8920b50109bb72a19f66c6c4ad8605` |
| 10 | `theorem` | [pushoutInl_eq_pushout_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/declarations/pushoutinl-eq-pushout-inr--4a046ac161954b7904344db4.md) | 138 | `result-track:4a046ac161954b7904344db46e0c485712bddbb2e16273081916dff35133038d` |
| 11 | `abbrev` | [coequalizerCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/declarations/coequalizercocone--b8e2e047f087504174542487.md) | 144 | `declaration-track:b8e2e047f087504174542487348fb71628a46db846430ee2904afc1fd0271d0e` |
| 12 | `def` | [coequalizerCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/declarations/coequalizercoconeiscolimit--d14b30f78c4a2c17477ffd21.md) | 152 | `declaration-track:d14b30f78c4a2c17477ffd217e83777549c46c56df12935196d152b0fa095e82` |
| 13 | `theorem` | [hasCoequalizers_of_hasPushouts_and_binary_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/declarations/hascoequalizers-of-haspushouts-and-binary-coproducts--4a997435b7aab68f7c880433.md) | 173 | `result-track:4a997435b7aab68f7c88043387505e4fa313c253a037ad7593a74b752e133edf` |
| 14 | `lemma` | [preservesCoequalizers_of_preservesPushouts_and_binaryCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/declarations/preservescoequalizers-of-preservespushouts-and-binarycoproducts--55d51952c3e739c5ea591296.md) | 184 | `result-track:55d51952c3e739c5ea5912963b804f56e8582eb3d768aed69320866843edbb46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
