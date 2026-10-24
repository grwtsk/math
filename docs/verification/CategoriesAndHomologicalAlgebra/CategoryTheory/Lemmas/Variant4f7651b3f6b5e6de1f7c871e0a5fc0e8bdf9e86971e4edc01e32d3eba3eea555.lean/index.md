# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Lemmas.Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7883982a17a1c816bd3fc64af2c5a8f2e65120a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7883982a17a1c816bd3fc64af2c5a8f2e65120a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean.json)

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
| 1 | `def` | [PureTransformation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/puretransformation--8ce6cf1b0300d6fe8bab3f86.md) | 57 | `declaration-track:8ce6cf1b0300d6fe8bab3f868db09b36aeda6b372ccc2f017e229ea16f210bc7` |
| 2 | `theorem` | [pureTransformation_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/puretransformation-apply--9e3c66962200572cdd03ef17.md) | 67 | `result-track:9e3c66962200572cdd03ef17f4220acada1f158edb58400a27ba95abbd37f8a6` |
| 3 | `theorem` | [map_eq_traverse_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/map-eq-traverse-id--244bb15ef5cd9067fa9e68d3.md) | 74 | `result-track:244bb15ef5cd9067fa9e68d3e99259f1246d824e0dce605e48322b2bb768f0c9` |
| 4 | `theorem` | [map_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/map-traverse--673e0d5741fab65d93021d89.md) | 78 | `result-track:673e0d5741fab65d93021d8937fae45404518afcb4f2e9e91b7f23e5253ce986` |
| 5 | `theorem` | [traverse_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/traverse-map--31af4e77bc98948c22ee6e55.md) | 84 | `result-track:31af4e77bc98948c22ee6e55deccfcf9a2270b01060d14fa2c7a6ec103f32588` |
| 6 | `theorem` | [pure_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/pure-traverse--25530a68e17cd49d4fe32a15.md) | 91 | `result-track:25530a68e17cd49d4fe32a150ae9bd3e4770ad5b8a63d51a3af4d6cb00eb5429` |
| 7 | `theorem` | [id_sequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/id-sequence--86fec9d29eb9a655978939b7.md) | 97 | `result-track:86fec9d29eb9a655978939b72747b1ab0f9a3f65c47b9559ca10284bc878dffc` |
| 8 | `theorem` | [comp_sequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/comp-sequence--6de68fdc7e4239716b18cbbf.md) | 101 | `result-track:6de68fdc7e4239716b18cbbfdc6f36562e48c8faba18f6f008e6340699b6df69` |
| 9 | `theorem` | [naturality'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/naturality--39a372cf216e27b3f70de408.md) | 106 | `result-track:39a372cf216e27b3f70de4089eb9aeee727e0d23fb14ae4efe309640b130898f` |
| 10 | `theorem` | [traverse_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/traverse-id--da716e68c513792f0cc04cca.md) | 111 | `result-track:da716e68c513792f0cc04cca85ccc606aae29a8824e7b372888428cafc6b88c5` |
| 11 | `theorem` | [traverse_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/traverse-comp--35e62fdd95ef5a86d82b508c.md) | 117 | `result-track:35e62fdd95ef5a86d82b508c48af8a844ac96ca46545b9eab4404f0accde19be` |
| 12 | `theorem` | [traverse_eq_map_id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/traverse-eq-map-id--24e481655b9a2c2c26c1dd92.md) | 124 | `result-track:24e481655b9a2c2c26c1dd92789ca33e9a7eb3c18c17e4514079b547abdcb83d` |
| 13 | `theorem` | [traverse_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/traverse-map--d3676e52f1c918e936a5bdf3.md) | 131 | `result-track:d3676e52f1c918e936a5bdf39366711780200c84d96c9c066b7dddf18ba1f323` |
| 14 | `theorem` | [map_traverse'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/map-traverse--5cd184758ba2a9bb03cfa9c1.md) | 137 | `result-track:5cd184758ba2a9bb03cfa9c1bd3d66271735ef11ec6d2915fb2f595f8e8ff5af` |
| 15 | `theorem` | [naturality_pf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant4f7651b3f6b5e6de1f7c871e0a5fc0e8bdf9e86971e4edc01e32d3eba3eea555.lean/declarations/naturality-pf--53a900fc4e785737ab523677.md) | 143 | `result-track:53a900fc4e785737ab523677d4e9ab47e73b22fad416adf5b5244024a44a7b54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
