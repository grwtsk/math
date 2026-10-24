# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Factorisation.Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1edc2397633419965939818eaadf62dbbb0be27e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1edc2397633419965939818eaadf62dbbb0be27e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Arrow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Factorisation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/factorisation--bdfd2c68e8fb8f5e3509e72b.md) | 30 | `declaration-track:bdfd2c68e8fb8f5e3509e72b3acf2789a5fae41f1dd8508e188c06cb69b26e3b` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/hom--b6e8e1e306bc7826b1210061.md) | 49 | `declaration-track:b6e8e1e306bc7826b12100611b6a1a435f7c7bced7d606940fb4c3acf5bd1ca6` |
| 3 | `def` | [Hom.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/hom-id--704142bcfe9b15e0137a8721.md) | 61 | `declaration-track:704142bcfe9b15e0137a8721f25759340a68c549bfaf0209db4f5cc59bac7041` |
| 4 | `def` | [Hom.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/hom-comp--f52250eeaa4895d8fa8a7856.md) | 66 | `declaration-track:f52250eeaa4895d8fa8a78566e331e499c446369667c2278d9a2d764632ca91a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/instance--38a6ff1cad3d480a06cbd7b3.md) | 72 | `declaration-track:38a6ff1cad3d480a06cbd7b3d691eac5f9b790fa3942d9001da2a97f7aa22446` |
| 6 | `def` | [initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/initial--8e39a6cf8591f01b0087c4a4.md) | 81 | `declaration-track:8e39a6cf8591f01b0087c4a4dd20250dc1a90293ebba4f7edaccbe53b7acd3fc` |
| 7 | `def` | [initialHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/initialhom--3dbab4a6dc4a4376a6740ace.md) | 88 | `declaration-track:3dbab4a6dc4a4376a6740aceaaac8df5ba33c08f40b7e9c2e8699bdb3de244b3` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/instance--95985a55fd413f9bedab6d95.md) | 92 | `declaration-track:95985a55fd413f9bedab6d9539f3aaa0363e28bf479c7a7ab255467751f4c1da` |
| 9 | `def` | [terminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/terminal--795ab003bb82f1a61bf0354c.md) | 98 | `declaration-track:795ab003bb82f1a61bf0354c7abb76bfb62115bdd5fd404359856f739ce9d79f` |
| 10 | `def` | [terminalHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/terminalhom--dbc2e68b42c522858ff26328.md) | 105 | `declaration-track:dbc2e68b42c522858ff26328b74f8a5288831716b53f8d1da19835b1b1c32e3a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/instance--266dc3fde459aa33d3d6dca3.md) | 109 | `declaration-track:266dc3fde459aa33d3d6dca3570e25a9f6550d0ae0cdf278fdfa7407fc2b5a79` |
| 12 | `def` | [IsInitial_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/isinitial-initial--a2d33782b83b8731320bbad7.md) | 116 | `declaration-track:a2d33782b83b8731320bbad7869192e2f2c15c94c3661cad4fc38826f863a030` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/instance--b78054fbf601b424af05719e.md) | 118 | `declaration-track:b78054fbf601b424af05719e45fbfccae9d59308ba36dfd9f0b85887d696b21f` |
| 14 | `def` | [IsTerminal_terminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/isterminal-terminal--b295e52d9c2a335e764b3324.md) | 121 | `declaration-track:b295e52d9c2a335e764b3324f0a1c47291c311137321cbb5433400911c0cc942` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/instance--eca4435bc6a841ca5897b463.md) | 124 | `declaration-track:eca4435bc6a841ca5897b4632a4068368b1893c729485ddd76c11b266c9e956f` |
| 16 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4f3aa834b23580d3c6e05bfc98192cdf2852388a7a5a60347979b21fa5d324e0.lean/declarations/forget--df1b7ae9ec9c420b57ca72cd.md) | 128 | `declaration-track:df1b7ae9ec9c420b57ca72cd4614e0008cfbbb48d3df94e0dfbaa91ee406704d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
