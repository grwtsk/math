# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Lemmas.Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8527f8cf7f8502bf6b7124be4ceb68a78239c1e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8527f8cf7f8502bf6b7124be4ceb68a78239c1e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Applicative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PureTransformation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/puretransformation--fb4d3b89235ab5227b08a845.md) | 46 | `declaration-track:fb4d3b89235ab5227b08a84536a7edd0d9c6232def12758097965ca7ed32b56a` |
| 2 | `theorem` | [pureTransformation_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/puretransformation-apply--9a9e5138df72171014a19b79.md) | 55 | `result-track:9a9e5138df72171014a19b793cf7231ae58440ff851c56fcfaf45c0b22fa2bb3` |
| 3 | `theorem` | [map_eq_traverse_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/map-eq-traverse-id--989e4da08f5829554f133dbd.md) | 60 | `result-track:989e4da08f5829554f133dbd7635af7215e7c55b2c0dd958c983d6aef7cdcc2b` |
| 4 | `theorem` | [map_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/map-traverse--1263970296cda9205cf964e0.md) | 63 | `result-track:1263970296cda9205cf964e08600bcb87f4057012b3a4492cc9188537b1c6cf7` |
| 5 | `theorem` | [traverse_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/traverse-map--29d0569a3be87b5dbef19494.md) | 68 | `result-track:29d0569a3be87b5dbef19494b2639976a2094ed58ef6778a14887465644c981d` |
| 6 | `theorem` | [pure_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/pure-traverse--9124bd1a434e865fd99cd96c.md) | 74 | `result-track:9124bd1a434e865fd99cd96c962a4f24cb7ad42e375c46c93c654375e2ac99a1` |
| 7 | `theorem` | [id_sequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/id-sequence--b10ea30dd64904509a800976.md) | 79 | `result-track:b10ea30dd64904509a80097665ac14df9e5943d7be0a93fe3a6513404f894bd6` |
| 8 | `theorem` | [comp_sequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/comp-sequence--35ca09571e13ec344f609f93.md) | 82 | `result-track:35ca09571e13ec344f609f93eb2467fa925b6979643e4dd47253a85f75b20670` |
| 9 | `theorem` | [naturality'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/naturality--0f92e22bf4fe9feec6e735f8.md) | 86 | `result-track:0f92e22bf4fe9feec6e735f83cc6f2bdace0abd5391f0adad6264ca4e4d92166` |
| 10 | `theorem` | [traverse_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/traverse-id--17054199bf2856d5a42ae8e0.md) | 90 | `result-track:17054199bf2856d5a42ae8e0ddbe4f3bf1c94397f9d5cc606ed9cb253bc2a83c` |
| 11 | `theorem` | [traverse_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/traverse-comp--1c08a6a262036eae6fdf1036.md) | 95 | `result-track:1c08a6a262036eae6fdf10363202ce57fce264a064d762c4e97be6b566853366` |
| 12 | `theorem` | [traverse_eq_map_id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/traverse-eq-map-id--997adc8d902982769f421438.md) | 101 | `result-track:997adc8d902982769f42143873229bdb9b83105aef1b5a486a96d9329f3b8665` |
| 13 | `theorem` | [traverse_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/traverse-map--91bba0373668cd5a025ecf83.md) | 107 | `result-track:91bba0373668cd5a025ecf833c82f3db45e8da9dcccf7eabbc07c243b5147fac` |
| 14 | `theorem` | [map_traverse'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/map-traverse--5159b90568a1488cb0cc0ca7.md) | 112 | `result-track:5159b90568a1488cb0cc0ca7725af02eeefcb054c568794198636d511a2076c9` |
| 15 | `theorem` | [naturality_pf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variantc7d469fe92f7d9ea9e6d8f8f0c6ae42c1b835921296c58b8c34e474fb2b615d4.lean/declarations/naturality-pf--6aead62847c7c52ba11f97d0.md) | 117 | `result-track:6aead62847c7c52ba11f97d0f6da34b72c565c94d8049cd093505d16efe787ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
