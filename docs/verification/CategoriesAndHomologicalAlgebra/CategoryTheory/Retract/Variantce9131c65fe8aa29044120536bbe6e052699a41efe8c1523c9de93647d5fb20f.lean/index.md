# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Retract.Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7fdb8b1581116310379d91ca3e120a630e5b816",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7fdb8b1581116310379d91ca3e120a630e5b816`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Retract` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsStableUnderRetracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/declarations/isstableunderretracts--65f83a5d78e40c13a96f9b29.md) | 28 | `declaration-track:65f83a5d78e40c13a96f9b29c902bf410198dc4dc7c62dd420431711b2a62f2a` |
| 2 | `lemma` | [of_retract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/declarations/of-retract--331a179f0fd1a62c93c77c92.md) | 31 | `result-track:331a179f0fd1a62c93c77c92a2b77a39defff4a95578ec80bf2957f1b2dbadba` |
| 3 | `instance` | [IsStableUnderRetracts.monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/declarations/isstableunderretracts-monomorphisms--156a065d3a54c27624918945.md) | 35 | `declaration-track:156a065d3a54c2762491894505f18a3e7e68f6195f09fa91fdf799a9e13e5a03` |
| 4 | `instance` | [IsStableUnderRetracts.epimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/declarations/isstableunderretracts-epimorphisms--4794770415ccf40009d8d184.md) | 40 | `declaration-track:4794770415ccf40009d8d184a9a7b826217f5c7806c72a75592808532b5c871b` |
| 5 | `instance` | [IsStableUnderRetracts.isomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/declarations/isstableunderretracts-isomorphisms--3112bbbb7d61941cae454317.md) | 45 | `declaration-track:3112bbbb7d61941cae4543177f95a4bc105bd5058756584a7be9eb710aa34577` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/declarations/instance--fa819e9af9c4c5a1308468ff.md) | 51 | `declaration-track:fa819e9af9c4c5a1308468ff735d260d60ee51c1bc12208d33a5b1f9a1a421d6` |
| 7 | `def` | [retracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/declarations/retracts--e6269ef8120f0b88eee27fd5.md) | 58 | `declaration-track:e6269ef8120f0b88eee27fd5dfac22ba14a1812de823a7c56d4d2924897dd884` |
| 8 | `lemma` | [le_retracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/declarations/le-retracts--0b4e90c3e235881ee08f77c5.md) | 61 | `result-track:0b4e90c3e235881ee08f77c5bfdf11c7aaa9461d30bd79f91d941f1dcead78d5` |
| 9 | `lemma` | [retracts_monotone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/declarations/retracts-monotone--7a469cc262648708770c42da.md) | 65 | `result-track:7a469cc262648708770c42daccf2e750559f3a7aa2e2efb1ec83a02b3c878559` |
| 10 | `lemma` | [isStableUnderRetracts_iff_retracts_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/declarations/isstableunderretracts-iff-retracts-le--6af30f35d8a5223d88baf01d.md) | 69 | `result-track:6af30f35d8a5223d88baf01d348cb0de28355aacbd5af59db74489e50fff11cf` |
| 11 | `lemma` | [retracts_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/declarations/retracts-le--f4e08df8f254f07135edd34f.md) | 78 | `result-track:f4e08df8f254f07135edd34fcac21c8bf589eed0655fa33ade8c5d5c67864a06` |
| 12 | `lemma` | [retracts_le_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/declarations/retracts-le-iff--94ad1093034a04c459de38f0.md) | 83 | `result-track:94ad1093034a04c459de38f07a06a0340bd5a962c5be742b32133ad6683a1410` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variantce9131c65fe8aa29044120536bbe6e052699a41efe8c1523c9de93647d5fb20f.lean/declarations/instance--91e0193b3f8b22b448cab7a6.md) | 90 | `declaration-track:91e0193b3f8b22b448cab7a6c7bffb3f0a17a83b9901df373fa7fe880b4d2c5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
