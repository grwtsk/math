# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CombinedProducts.Variant4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4563605f05c2426d9f414eeca8eb8ee96598255d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variant4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variant4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variant4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4563605f05c2426d9f414eeca8eb8ee96598255d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variant4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variant4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [combPairHoms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variant4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d.lean/declarations/combpairhoms--65677adbf5d92aadc61167c2.md) | 37 | `declaration-track:65677adbf5d92aadc61167c270a803321c341bcf2ff20ffb9b3661086e171ecb` |
| 2 | `def` | [combPairIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variant4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d.lean/declarations/combpairislimit--638342f8280f856c6577820d.md) | 45 | `declaration-track:638342f8280f856c6577820df46ae9d2fbddb5e7a5049dd2625c843ad6a3e520` |
| 3 | `abbrev` | [combPairHoms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variant4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d.lean/declarations/combpairhoms--ed889084057bc9a99f2b2dd5.md) | 72 | `declaration-track:ed889084057bc9a99f2b2dd52ba429c8bf1379056de87d4bd20b861ed95d0f25` |
| 4 | `def` | [combPairIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variant4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d.lean/declarations/combpairiscolimit--3117f9685bc9c7e1440dacbd.md) | 80 | `declaration-track:3117f9685bc9c7e1440dacbd5b1809ab467fed0fba01f2a2a274d7cd947e051e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
