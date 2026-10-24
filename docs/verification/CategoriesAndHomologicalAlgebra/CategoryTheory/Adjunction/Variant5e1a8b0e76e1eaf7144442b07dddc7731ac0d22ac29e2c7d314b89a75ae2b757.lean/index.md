# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db6baaf90d080e99c82890c3a64ff48bd5f2a8d3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db6baaf90d080e99c82890c3a64ff48bd5f2a8d3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Whiskering` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [sheafForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/declarations/sheafforget--1a597c8af9c404bc2a227732.md) | 40 | `declaration-track:1a597c8af9c404bc2a227732d2992e4e0b31f669d7fd79b281efeb7839554151` |
| 2 | `abbrev` | [composeAndSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/declarations/composeandsheafify--a9d2eada7dd1af5e46b05b4f.md) | 56 | `declaration-track:a9d2eada7dd1af5e46b05b4f3772cdc41dd52329b68746815473228709bc2b2b` |
| 3 | `def` | [composeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/declarations/composeequiv--3af6f267d9c3d6e1b11b45c5.md) | 63 | `declaration-track:3af6f267d9c3d6e1b11b45c57c8b9d4615177c16851e6b4e6149dd465ff76c84` |
| 4 | `def` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/declarations/adjunction--0a1d5b59eca8a53ae56ff0f4.md) | 87 | `declaration-track:0a1d5b59eca8a53ae56ff0f4d93f28e985144f8c22f3efaf52da274a6fb1e988` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/declarations/instance--1b1bb614b1b2be7d8c240e46.md) | 106 | `declaration-track:1b1bb614b1b2be7d8c240e4671ebf904caad2bb55478deacca8f27f4e1948a8b` |
| 6 | `abbrev` | [composeAndSheafifyFromTypes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/declarations/composeandsheafifyfromtypes--01bcd58f042a7b350adfea87.md) | 112 | `declaration-track:01bcd58f042a7b350adfea87b002cffca7a2e077eaebe70a53c9e576c918618f` |
| 7 | `def` | [adjunctionToTypes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/declarations/adjunctiontotypes--aff1369492cc65a2918465e0.md) | 119 | `declaration-track:aff1369492cc65a2918465e03a4df8c9cc9a86d4d746323bf1f3c23e414daebc` |
| 8 | `theorem` | [adjunctionToTypes_unit_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/declarations/adjunctiontotypes-unit-app-val--6558fe1068150f18e1de322a.md) | 126 | `result-track:6558fe1068150f18e1de322ac2d1e3609105104fcede9652db4a2289ab48a586` |
| 9 | `theorem` | [adjunctionToTypes_counit_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/declarations/adjunctiontotypes-counit-app-val--8a9f5dfaa82020a234428de9.md) | 138 | `result-track:8a9f5dfaa82020a234428de91242d4c2cd4358bbb91dab57d48a358e57e366a9` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/declarations/instance--2da2b1dc6ffb9ccf6a7542c9.md) | 155 | `declaration-track:2da2b1dc6ffb9ccf6a7542c90eaf0f59020dee82df880fa40246cbc61290bcfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
