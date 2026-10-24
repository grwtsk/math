# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CombinedProducts.Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35f714cf6690cc223b0543e5da33e5fcec5574f6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35f714cf6690cc223b0543e5da33e5fcec5574f6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [combPairHoms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b.lean/declarations/combpairhoms--2dfed42edd39fd2517a3c8a4.md) | 45 | `declaration-track:2dfed42edd39fd2517a3c8a4bb7aef1cd674b50f2cf316ee7fd77ccc1f69f758` |
| 2 | `def` | [combPairIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b.lean/declarations/combpairislimit--4ee79a301d64c7d3153fa35d.md) | 53 | `declaration-track:4ee79a301d64c7d3153fa35d5ad3ea4c0af6a0ac4c3127d899c8d6673567e9dc` |
| 3 | `abbrev` | [combPairHoms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b.lean/declarations/combpairhoms--ed48ef59d8983bf62ffdba4b.md) | 80 | `declaration-track:ed48ef59d8983bf62ffdba4b635eab58a5ebef221150a2ed70e1b9c74800f62a` |
| 4 | `def` | [combPairIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b.lean/declarations/combpairiscolimit--17cc58a2bc906b6729e9cc3e.md) | 88 | `declaration-track:17cc58a2bc906b6729e9cc3e30d28a5bc44d1e823132a5b66eac52b99efe34f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
