# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dc21ef7ee4cff1ba3334f64a71e6c31f095668f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dc21ef7ee4cff1ba3334f64a71e6c31f095668f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/declarations/functor--e6fc8a3c3aabc6b64e19b1a8.md) | 46 | `declaration-track:e6fc8a3c3aabc6b64e19b1a839bdf2cd4384c02a304949dc810a1d58a0a42813` |
| 2 | `lemma` | [Functor.map_comp_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/declarations/functor-map-comp-assoc--14a81242f388cf1a250f675a.md) | 72 | `result-track:14a81242f388cf1a250f675a48e14200524608b90dc4494562f2cabb20ed86aa` |
| 3 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/declarations/id--d680c74e82efca76f4fb328f.md) | 89 | `declaration-track:d680c74e82efca76f4fb328ffcfaec74a4a70e7e5bf860765afd266c1b4cf203` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/declarations/instance--5e1df8b561819b5830dd75be.md) | 97 | `declaration-track:5e1df8b561819b5830dd75be0931060886961a4985893e7af6e0797797721e8b` |
| 5 | `theorem` | [id_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/declarations/id-obj--e532ea5864c9f67a14e95686.md) | 103 | `result-track:e532ea5864c9f67a14e95686f51900e88b4d7ec76d0b16c36c612e9e893af035` |
| 6 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/declarations/id-map--7d07455aea4dcd7cd1be4774.md) | 107 | `result-track:7d07455aea4dcd7cd1be4774b7ab2aba16ee92f525cd58dc3e7f7225ce8a62b6` |
| 7 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/declarations/comp--19fc595f52bd149f0c3ac8cd.md) | 120 | `declaration-track:19fc595f52bd149f0c3ac8cd6fba99eed26666d956c22c8b5297c516e7cc276f` |
| 8 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/declarations/comp-map--2b7404214aeefc2ce4714a85.md) | 131 | `result-track:2b7404214aeefc2ce4714a855f3d8db5a4f5cb888302dbd5eb6f1171444ed886` |
| 9 | `theorem` | [comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/declarations/comp-id--421f71810a2832a9efe0c2c0.md) | 138 | `result-track:421f71810a2832a9efe0c2c0aa7760f3f7af621d10c9e94cadb9b9f092e6a277` |
| 10 | `theorem` | [id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/declarations/id-comp--c279cf63f1206f9680b3b3b4.md) | 141 | `result-track:c279cf63f1206f9680b3b3b499501b90830658d6c048cd39088ce9e69ebfe18d` |
| 11 | `theorem` | [map_dite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/declarations/map-dite--514f064abef9ddaead7319ec.md) | 145 | `result-track:514f064abef9ddaead7319ecff020f17273b8a989febebb4b668491c1e0b63d9` |
| 12 | `theorem` | [toPrefunctor_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc360993a6f0e5848c33ab3fcf5a6284b3e3c73ec5b1d23ae87fa4abb5cd1059b.lean/declarations/toprefunctor-comp--e9cdd4815eacf54e6acd7ca5.md) | 155 | `result-track:e9cdd4815eacf54e6acd7ca5d1ec648d0ad20f61f0bdc8dc5dc2c0c10d062177` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
