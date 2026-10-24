# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoCoprod.Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00db21af17c26019142eb4df62a1eec13de8ae5d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00db21af17c26019142eb4df62a1eec13de8ae5d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MonoCoprod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/monocoprod--f579ef07d041f3f07e0bfea0.md) | 53 | `declaration-track:f579ef07d041f3f07e0bfea00452b0fecd1e2a8297eac7043d376fbde501d603` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/instance--c691beada31fdd417d7b7327.md) | 59 | `declaration-track:c691beada31fdd417d7b7327515d745c5ddd5c94dbdb454d708354bb99662b2b` |
| 3 | `theorem` | [binaryCofan_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/binarycofan-inr--5b45f4a68262744e44f4c454.md) | 67 | `result-track:5b45f4a68262744e44f4c454cb1473433983cdb7d24dae147db0657845448e06` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/instance--55a4b5dfe38d5661e1aef0f8.md) | 75 | `declaration-track:55a4b5dfe38d5661e1aef0f8447b10f6f46e864f7456ed0b7c9202e041400ad5` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/instance--0360cb979996635cd5564ff5.md) | 78 | `declaration-track:0360cb979996635cd5564ff5578abaa00ff5cb841c908676fc6e0f81857923b6` |
| 6 | `theorem` | [mono_inl_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/mono-inl-iff--13ec8b060147265837597c0c.md) | 81 | `result-track:13ec8b060147265837597c0cfd05b50b703938a96c8c11eea757e0566a229ffd` |
| 7 | `theorem` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/mk--2e0e011fbebe382588475dc0.md) | 92 | `result-track:2e0e011fbebe382588475dc001e4cbaeec0ff4c11b0775345eb88b14de97acb2` |
| 8 | `instance` | [monoCoprodType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/monocoprodtype--43ea6967b025c804ad6c38a0.md) | 97 | `declaration-track:43ea6967b025c804ad6c38a08c1b641ef22c1ec3dc654dfe0fb6df20e3485a31` |
| 9 | `def` | [binaryCofanSum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/binarycofansum--6cd09204c6c3fa1fe8873b48.md) | 126 | `declaration-track:6cd09204c6c3fa1fe8873b4813e9a0005ec8bbce4b248a0261f63254bfedfa3e` |
| 10 | `def` | [isColimitBinaryCofanSum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/iscolimitbinarycofansum--66224378d2f91da0530931c3.md) | 131 | `declaration-track:66224378d2f91da0530931c3f88d3031664bd36f703181bd4282ff46f9238c94` |
| 11 | `lemma` | [mono_binaryCofanSum_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/mono-binarycofansum-inl--e3c771ef7f545c740fdaa2ba.md) | 141 | `result-track:e3c771ef7f545c740fdaa2ba297b9cbe7f253c86df871cfdc39f755e1f923b84` |
| 12 | `lemma` | [mono_binaryCofanSum_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/mono-binarycofansum-inr--0e7a17f112867bbe94a664a5.md) | 145 | `result-track:0e7a17f112867bbe94a664a5082c47d506bfe278e080c2f26ad0be87a4ac20c7` |
| 13 | `lemma` | [mono_binaryCofanSum_inl'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/mono-binarycofansum-inl--b7a1b450aa1dc91aee2914bc.md) | 149 | `result-track:b7a1b450aa1dc91aee2914bcd3a3b521ec41ae2d22d73e02a45daa79eaa00f1b` |
| 14 | `lemma` | [mono_binaryCofanSum_inr'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/mono-binarycofansum-inr--22a07e1b14abc7d0cc4ff427.md) | 157 | `result-track:22a07e1b14abc7d0cc4ff427b7bd99ac3fb794ddcf0cc890dd8609ccf78e03d6` |
| 15 | `lemma` | [mono_of_injective_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/mono-of-injective-aux--79bc6e41d383fb308ab8b1d0.md) | 171 | `result-track:79bc6e41d383fb308ab8b1d0be22c1cdb9985b9eca63a69797e0300eb1df0afe` |
| 16 | `lemma` | [mono_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/mono-of-injective--2ade7cd59654e7b06fcfa483.md) | 187 | `result-track:2ade7cd59654e7b06fcfa4836bffdb0c3726744a3901a9bbc0af8abba491b16a` |
| 17 | `lemma` | [mono_of_injective'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/mono-of-injective--a59034b73a32a7472004328f.md) | 191 | `result-track:a59034b73a32a7472004328f1a44402228b23e934ce75067f35ef92ce93befa3` |
| 18 | `lemma` | [mono_map'_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/mono-map-of-injective--d9a952d93cf702b48db667cf.md) | 196 | `result-track:d9a952d93cf702b48db667cf972ef4b97a5dda02c1c6e7407b4da203fc97c610` |
| 19 | `lemma` | [mono_inj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/mono-inj--25d7f7937de64b9b9d338bd6.md) | 211 | `result-track:25d7f7937de64b9b9d338bd6c89ba42abab61882a6b9191340fdd975e4833bdb` |
| 20 | `instance` | [mono_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/mono--0be708308a33bd9bfc84eb60.md) | 219 | `declaration-track:0be708308a33bd9bfc84eb60274a7e18ecbcfef264421a8073394e747abcfd54` |
| 21 | `theorem` | [monoCoprod_of_preservesCoprod_of_reflectsMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/monocoprod-of-preservescoprod-of-reflectsmono--d81937a063eda55736966cba.md) | 232 | `result-track:d81937a063eda55736966cbaef987da68da758c3e50cf7c15549958a308a78f7` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/instance--39b16207fb5d633031ee9800.md) | 250 | `declaration-track:39b16207fb5d633031ee98009d9c1916c26b02e0330327663646cd6a2226f6fd` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/declarations/instance--5a89f53cf01cc0d21d6f7564.md) | 258 | `declaration-track:5a89f53cf01cc0d21d6f75649df92edb3bf88104c0a78f26e23a8ef553a68dca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
