# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Associator.Variantf5660eedb3e44defac15c7dee0a3239c314aee14325710ce05e04f89a66a82f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c74587aaeb973d1e0ff87f7cc39fe9441e96b95",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantf5660eedb3e44defac15c7dee0a3239c314aee14325710ce05e04f89a66a82f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantf5660eedb3e44defac15c7dee0a3239c314aee14325710ce05e04f89a66a82f7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantf5660eedb3e44defac15c7dee0a3239c314aee14325710ce05e04f89a66a82f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c74587aaeb973d1e0ff87f7cc39fe9441e96b95`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantf5660eedb3e44defac15c7dee0a3239c314aee14325710ce05e04f89a66a82f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantf5660eedb3e44defac15c7dee0a3239c314aee14325710ce05e04f89a66a82f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Products.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantf5660eedb3e44defac15c7dee0a3239c314aee14325710ce05e04f89a66a82f7.lean/declarations/associator--b949e9b1140a8121a4bc126e.md) | 25 | `declaration-track:b949e9b1140a8121a4bc126eead54194b79f8de65611361404c0194fb53faa8d` |
| 2 | `def` | [inverseAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantf5660eedb3e44defac15c7dee0a3239c314aee14325710ce05e04f89a66a82f7.lean/declarations/inverseassociator--b8447069cedc28f5a7b2d42f.md) | 32 | `declaration-track:b8447069cedc28f5a7b2d42f98c5b8dd709738b1c6f44ee4168af5a6268026b6` |
| 3 | `def` | [associativity](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantf5660eedb3e44defac15c7dee0a3239c314aee14325710ce05e04f89a66a82f7.lean/declarations/associativity--a92f62eda08ede7e84cbd186.md) | 39 | `declaration-track:a92f62eda08ede7e84cbd1861bb610c78f470443ca4d139e9c5792893642582d` |
| 4 | `instance` | [associatorIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantf5660eedb3e44defac15c7dee0a3239c314aee14325710ce05e04f89a66a82f7.lean/declarations/associatorisequivalence--270315f3fea6ce5c262cbb69.md) | 45 | `declaration-track:270315f3fea6ce5c262cbb69beb753943edf1a0178c402cae173a8cc0f525566` |
| 5 | `instance` | [inverseAssociatorIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantf5660eedb3e44defac15c7dee0a3239c314aee14325710ce05e04f89a66a82f7.lean/declarations/inverseassociatorisequivalence--0584c16865f2c11ff3314872.md) | 48 | `declaration-track:0584c16865f2c11ff33148720c0014eda40ebfd4a8bd1e5eb3d353d42751457e` |
| 6 | `def` | [prodFunctorToFunctorProdAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantf5660eedb3e44defac15c7dee0a3239c314aee14325710ce05e04f89a66a82f7.lean/declarations/prodfunctortofunctorprodassociator--70fdfc6e8215d5cbd47260d5.md) | 57 | `declaration-track:70fdfc6e8215d5cbd47260d577093e193a83b2bedbf94f0463b1237c12900f1b` |
| 7 | `def` | [functorProdToProdFunctorAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantf5660eedb3e44defac15c7dee0a3239c314aee14325710ce05e04f89a66a82f7.lean/declarations/functorprodtoprodfunctorassociator--3df16a2e1fcecb0510e7cb7f.md) | 66 | `declaration-track:3df16a2e1fcecb0510e7cb7f652abaaaa003ac19c2a45745ebbcadc83083e370` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
