# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unitor.Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04727dd044e1faaa63704bb68988b16525752ef7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04727dd044e1faaa63704bb68988b16525752ef7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Products.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80.lean/declarations/leftunitor--176bab76c18dd38ab9c5192c.md) | 31 | `declaration-track:176bab76c18dd38ab9c5192c1268dbd834ec7bbd7f6d292cde6b941300d28852` |
| 2 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80.lean/declarations/rightunitor--d6b14b9660d60081050f0719.md) | 37 | `declaration-track:d6b14b9660d60081050f0719fc0e0daa4bef607003acd83f7a45d6a4f3c61bfc` |
| 3 | `def` | [leftInverseUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80.lean/declarations/leftinverseunitor--8d5b0c6f4093f0ac75f2f268.md) | 43 | `declaration-track:8d5b0c6f4093f0ac75f2f268bf985f6f18dede88770e202d03085b5215937b16` |
| 4 | `def` | [rightInverseUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80.lean/declarations/rightinverseunitor--29c3f49545e8f93a4a727001.md) | 49 | `declaration-track:29c3f49545e8f93a4a7270017e4b5bc925e27d3080869f0c61760dc39603ab95` |
| 5 | `def` | [leftUnitorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80.lean/declarations/leftunitorequivalence--cac6a34b7115e444b4810ee4.md) | 55 | `declaration-track:cac6a34b7115e444b4810ee4f42ad428df8ef9dcb11a346d36f678a099c22759` |
| 6 | `def` | [rightUnitorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80.lean/declarations/rightunitorequivalence--5b52ecc53e97b9c9220a60c3.md) | 63 | `declaration-track:5b52ecc53e97b9c9220a60c3bc275406237b56213e889c715d337e579f177f87` |
| 7 | `instance` | [leftUnitor_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80.lean/declarations/leftunitor-isequivalence--56e6195286cc92f3e3b50206.md) | 69 | `declaration-track:56e6195286cc92f3e3b502060a536f503fd8efb4212dc45a7761b878b7fd75b8` |
| 8 | `instance` | [rightUnitor_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80.lean/declarations/rightunitor-isequivalence--425876e2f0a1feb10fa64ee0.md) | 72 | `declaration-track:425876e2f0a1feb10fa64ee06b9741ec6d708c0081dd829d7107c89909068523` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
