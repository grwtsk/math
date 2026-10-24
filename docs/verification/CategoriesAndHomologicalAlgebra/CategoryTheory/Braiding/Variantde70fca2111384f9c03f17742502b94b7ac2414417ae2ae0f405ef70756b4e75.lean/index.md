# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Braiding.Variantde70fca2111384f9c03f17742502b94b7ac2414417ae2ae0f405ef70756b4e75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c1d88a9af522e60ee4211e038abc5d4b4266923",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variantde70fca2111384f9c03f17742502b94b7ac2414417ae2ae0f405ef70756b4e75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variantde70fca2111384f9c03f17742502b94b7ac2414417ae2ae0f405ef70756b4e75.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variantde70fca2111384f9c03f17742502b94b7ac2414417ae2ae0f405ef70756b4e75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c1d88a9af522e60ee4211e038abc5d4b4266923`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variantde70fca2111384f9c03f17742502b94b7ac2414417ae2ae0f405ef70756b4e75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variantde70fca2111384f9c03f17742502b94b7ac2414417ae2ae0f405ef70756b4e75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GradedObject.Monoidal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variantde70fca2111384f9c03f17742502b94b7ac2414417ae2ae0f405ef70756b4e75.lean/declarations/braiding--c01b9ed1e89789fc62da759d.md) | 39 | `declaration-track:c01b9ed1e89789fc62da759df4f25ddbf8d41987c6f71af03c8c7b054326dd03` |
| 2 | `lemma` | [braiding_naturality_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variantde70fca2111384f9c03f17742502b94b7ac2414417ae2ae0f405ef70756b4e75.lean/declarations/braiding-naturality-right--c7f1e5d663b78ca013f62003.md) | 46 | `result-track:c7f1e5d663b78ca013f62003823998b590e5d425cf3e36f3065941d8dd02d5ee` |
| 3 | `lemma` | [braiding_naturality_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variantde70fca2111384f9c03f17742502b94b7ac2414417ae2ae0f405ef70756b4e75.lean/declarations/braiding-naturality-left--cd1c3335ada15dd56455bb92.md) | 53 | `result-track:cd1c3335ada15dd56455bb924b453ee2a0cc97baacb41b55d53faf6524aa3c49` |
| 4 | `lemma` | [hexagon_forward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variantde70fca2111384f9c03f17742502b94b7ac2414417ae2ae0f405ef70756b4e75.lean/declarations/hexagon-forward--f4b1b1055ac664d2572ca331.md) | 59 | `result-track:f4b1b1055ac664d2572ca331deab586d6b70daa78ef4d615db16f22c5a558cc9` |
| 5 | `lemma` | [hexagon_reverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variantde70fca2111384f9c03f17742502b94b7ac2414417ae2ae0f405ef70756b4e75.lean/declarations/hexagon-reverse--a0f55ff94bc910ae0b52ab86.md) | 97 | `result-track:a0f55ff94bc910ae0b52ab86eb697cb65ac86e27b8b5d0f493210b8dd684105e` |
| 6 | `lemma` | [symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variantde70fca2111384f9c03f17742502b94b7ac2414417ae2ae0f405ef70756b4e75.lean/declarations/symmetry--6fc188bf3a69f60bef8d1876.md) | 136 | `result-track:6fc188bf3a69f60bef8d1876389e22f22489a4429ee1732a4a54e9b359143de3` |
| 7 | `instance` | [braidedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variantde70fca2111384f9c03f17742502b94b7ac2414417ae2ae0f405ef70756b4e75.lean/declarations/braidedcategory--0ede10ac865bdbe90410b68a.md) | 156 | `declaration-track:0ede10ac865bdbe90410b68ae2d1f8d052663c8e79dac056363bc6bc4541db9e` |
| 8 | `instance` | [symmetricCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variantde70fca2111384f9c03f17742502b94b7ac2414417ae2ae0f405ef70756b4e75.lean/declarations/symmetriccategory--9eff9dcdc529d174119ae0c0.md) | 164 | `declaration-track:9eff9dcdc529d174119ae0c0448fe449a4317d90ec933fd93b4eee91ce181115` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
