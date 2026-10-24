# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DisjointCoproduct.Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a3b6c61cf048c32ba476786aa8bac6bb1403f88",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a3b6c61cf048c32ba476786aa8bac6bb1403f88`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CoproductDisjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean/declarations/coproductdisjoint--060000a2df06a0f6ad67af91.md) | 47 | `declaration-track:060000a2df06a0f6ad67af91be29c4d4718f2b7f99f47860e0c5e0da5d95af2d` |
| 2 | `def` | [isInitialOfIsPullbackOfIsCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean/declarations/isinitialofispullbackofiscoproduct--81a72f075439e1d72dc92798.md) | 66 | `declaration-track:81a72f075439e1d72dc92798ef6cca4b16ea8dd990638e4d3acd213f5fe358cc` |
| 3 | `def` | [isInitialOfIsPullbackOfCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean/declarations/isinitialofispullbackofcoproduct--2809a8c1a6728999319f5fdd.md) | 81 | `declaration-track:2809a8c1a6728999319f5fdd6d4b265f369f62623a88295656d06cc11f824249` |
| 4 | `def` | [isInitialOfPullbackOfIsCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean/declarations/isinitialofpullbackofiscoproduct--0d8ee21f25e89b7de2e3dbf2.md) | 96 | `declaration-track:0d8ee21f25e89b7de2e3dbf2ab3133a74d630b2446c8329e93c8c07c09d29307` |
| 5 | `def` | [isInitialOfPullbackOfCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean/declarations/isinitialofpullbackofcoproduct--b7eaff30cf544c5c61f7bd39.md) | 104 | `declaration-track:b7eaff30cf544c5c61f7bd39e5fae69ed1837dc511fad576017532f302c384f1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean/declarations/instance--8ba13175562bca509d7c49e2.md) | 109 | `declaration-track:8ba13175562bca509d7c49e2b429ebb347a3cef2f49892e15d8b2bfcce7b5090` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean/declarations/instance--0316e81a9555d41d56491c55.md) | 113 | `declaration-track:0316e81a9555d41d56491c554491b92055fd9028210d432dd351cb61b6bdacda` |
| 8 | `class` | [CoproductsDisjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean/declarations/coproductsdisjoint--2b366b059efd5b1c54c94186.md) | 118 | `declaration-track:2b366b059efd5b1c54c941867409472b88a499a7f02f1741664c7fda199188df` |
| 9 | `theorem` | [initialMonoClass_of_disjoint_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean/declarations/initialmonoclass-of-disjoint-coproducts--dc4715ebf45630387e39116a.md) | 126 | `result-track:dc4715ebf45630387e39116a16afdb47deca574f9cf07374518f15591f7fb3a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
