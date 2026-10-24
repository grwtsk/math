# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyInjective.Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "470b94e1e10ed7363f371806c591ece3d5ceb289",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `470b94e1e10ed7363f371806c591ece3d5ceb289`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.LeftExact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.PreservesSheafification` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Subsheaf` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equalizerSieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/equalizersieve--3651f5ab6d94beb3063d7011.md) | 42 | `declaration-track:3651f5ab6d94beb3063d7011c26d06401adf7a3b3327208614b1ddbf735cdb92` |
| 2 | `lemma` | [equalizerSieve_self_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/equalizersieve-self-eq-top--94f3dc152dfc4a909884e3c4.md) | 49 | `result-track:94f3dc152dfc4a909884e3c46d5e7ce37af7b9c6dd0f78c9f5de5a6ec36637b4` |
| 3 | `lemma` | [equalizerSieve_eq_top_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/equalizersieve-eq-top-iff--4a76160bd8dca55da7dc88ed.md) | 53 | `result-track:4a76160bd8dca55da7dc88eddad004e896b5d54998a8b3a8783f3db6d941ad61` |
| 4 | `class` | [IsLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective--bff8dfa6e5e4f8af1e939fac.md) | 67 | `declaration-track:bff8dfa6e5e4f8af1e939fac4e809431a5a443f09cc0e6bd1b9759c2dbd302ee` |
| 5 | `lemma` | [equalizerSieve_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/equalizersieve-mem--3300b07d68eff6941a3ca8b0.md) | 71 | `result-track:3300b07d68eff6941a3ca8b021c8fb095cf72a73ed3f49f6a1c1bc4630f14ed1` |
| 6 | `lemma` | [isLocallyInjective_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-of-injective--0ec3faa0ab7490272bd48738.md) | 76 | `result-track:0ec3faa0ab7490272bd4873869525e09f0475ca0d1691dac9c4f04a773f57821` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/instance--676c8182d289fb1a9ae8ba63.md) | 85 | `declaration-track:676c8182d289fb1a9ae8ba632e1881261e0f1ee79dc696f0061ee75d3d4c70b9` |
| 8 | `instance` | [isLocallyInjective_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-forget--b2eb267eedd5be41a009a49d.md) | 92 | `declaration-track:b2eb267eedd5be41a009a49daaac71f70b7c35a542cd3d324afa049f4077048e` |
| 9 | `lemma` | [isLocallyInjective_forget_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-forget-iff--94986c072c2299747a226c63.md) | 97 | `result-track:94986c072c2299747a226c6376340bbdc7928680d3a1bdf340c26d8c12c86b7c` |
| 10 | `lemma` | [isLocallyInjective_iff_equalizerSieve_mem_imp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-iff-equalizersieve-mem-imp--d7b9d8ba7159ea1c24bef008.md) | 105 | `result-track:d7b9d8ba7159ea1c24bef0084ab643349e0aa682f6e3e77c29b87f87bcfef5dc` |
| 11 | `lemma` | [equalizerSieve_mem_of_equalizerSieve_app_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/equalizersieve-mem-of-equalizersieve-app-mem--777d244b2d58f84256718bf2.md) | 124 | `result-track:777d244b2d58f84256718bf2bd679766acc0a782e08ef935c46d4c4600769b9d` |
| 12 | `instance` | [isLocallyInjective_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-comp--948924e1d72877dd5bafc902.md) | 130 | `declaration-track:948924e1d72877dd5bafc9023a3386cb9a4d25a624652b86d82055609acc2321` |
| 13 | `lemma` | [isLocallyInjective_of_isLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-of-islocallyinjective--00df8e39d3ebac6f20903aa2.md) | 136 | `result-track:00df8e39d3ebac6f20903aa2a0337b6d8cde59978648c38ce78424fc152e24aa` |
| 14 | `lemma` | [isLocallyInjective_of_isLocallyInjective_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-of-islocallyinjective-fac--c0ba2fd3d0d931d14c17887d.md) | 142 | `result-track:c0ba2fd3d0d931d14c17887d45ef76207a04b5b6e8f04e77e6ec2e35b369e744` |
| 15 | `lemma` | [isLocallyInjective_iff_of_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-iff-of-fac--e8f4f2d2f672065cfb3b9845.md) | 147 | `result-track:e8f4f2d2f672065cfb3b984582e28b369a925a34fc2cfcb1994a594e01807c30` |
| 16 | `lemma` | [isLocallyInjective_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-comp-iff--dbf68f7f50bf476b3121ebf8.md) | 158 | `result-track:dbf68f7f50bf476b3121ebf8bb1116d7e42268c9501f5066b5e6f65394688d05` |
| 17 | `lemma` | [isLocallyInjective_iff_injective_of_separated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-iff-injective-of-separated--17f6c1b959bef52099cd32c8.md) | 162 | `result-track:17f6c1b959bef52099cd32c87aaeca79a97df0559220732a171b6e4f6b497cbb` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/instance--e37bba602a2d641b80cc0720.md) | 171 | `declaration-track:e37bba602a2d641b80cc0720729cf66b0d56c2d5fd4ad41b7e19f1293242789c` |
| 19 | `instance` | [isLocallyInjective_toPlus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-toplus--9d1991bc29af881b60b59c64.md) | 183 | `declaration-track:9d1991bc29af881b60b59c6470a49ccf82ed88fc9d85fbdf755f6e60b341cc97` |
| 20 | `instance` | [isLocallyInjective_toSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-tosheafify--2e6afd1ef80092d69d42ed81.md) | 190 | `declaration-track:2e6afd1ef80092d69d42ed81984fbf5e9843a4d93b5d0fc91790df40d5bdc1bb` |
| 21 | `instance` | [isLocallyInjective_toSheafify'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-tosheafify--0ff05a94de606623aba63dfa.md) | 196 | `declaration-track:0ff05a94de606623aba63dfa5dea003ee863e7b78ca8f51e355b72ba2bb93725` |
| 22 | `abbrev` | [IsLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective--f5d6e0ca4ecc7646892e0170.md) | 218 | `declaration-track:f5d6e0ca4ecc7646892e0170e2901855083b98afa17fff0ff56a52ba0cc143ca` |
| 23 | `lemma` | [isLocallyInjective_sheafToPresheaf_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-sheaftopresheaf-map-iff--61f9dc5b8c5dbc5e3b4c7d7a.md) | 220 | `result-track:61f9dc5b8c5dbc5e3b4c7d7ac72d75d3063af53fccd9cb1bb35c8dc3c216be2b` |
| 24 | `instance` | [isLocallyInjective_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-of-iso--fc6e0674e6f9835cb3ccedd6.md) | 223 | `declaration-track:fc6e0674e6f9835cb3ccedd6d70b4bd7290bfd16fcd9e64169f3dd2d87ce086e` |
| 25 | `lemma` | [mono_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/mono-of-injective--6f3f9ee6fb8e7402e64aac12.md) | 227 | `result-track:6f3f9ee6fb8e7402e64aac128b1c5eee4dcad3ea35d52071242e3872093ddacc` |
| 26 | `instance` | [isLocallyInjective_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-forget--094fe40ca4b5e7e7d739e144.md) | 235 | `declaration-track:094fe40ca4b5e7e7d739e1444b46920fb8974d9a3b1c374c50d070c38d4a5173` |
| 27 | `lemma` | [isLocallyInjective_iff_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/islocallyinjective-iff-injective--f902643d8df58fb7b7ace26f.md) | 239 | `result-track:f902643d8df58fb7b7ace26fde50c4bf6d2686d4bac6968d1ba135dd1ed2960c` |
| 28 | `lemma` | [mono_of_isLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/mono-of-islocallyinjective--d60febda0e79e395d51984a0.md) | 246 | `result-track:d60febda0e79e395d51984a0c4ea11e81efe2959cde1a4988f743ce5ab69c2c2` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/declarations/instance--cc9651205b74a80003014396.md) | 252 | `declaration-track:cc9651205b74a80003014396f156d9dd206c40e555ca36e4956429ef0e96c57f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
