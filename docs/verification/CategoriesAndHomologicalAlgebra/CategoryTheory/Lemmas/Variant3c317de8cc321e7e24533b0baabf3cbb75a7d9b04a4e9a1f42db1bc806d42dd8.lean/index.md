# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Lemmas.Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8307d4d33a498ebfb0912f0e910215e3a9d4eae",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8307d4d33a498ebfb0912f0e910215e3a9d4eae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Applicative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PureTransformation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/puretransformation--264ae536ce94474a2a1432b1.md) | 65 | `declaration-track:264ae536ce94474a2a1432b10ec5995d630df19e4e0865cd17ef590c0765be77` |
| 2 | `theorem` | [pureTransformation_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/puretransformation-apply--f034e7ea5f5fdc78450442f7.md) | 75 | `result-track:f034e7ea5f5fdc78450442f72cf495ba8d1a55ba3ecbfb563d28d8f2aec797ee` |
| 3 | `theorem` | [map_eq_traverse_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/map-eq-traverse-id--6701b0d4a1494a57461e2d06.md) | 82 | `result-track:6701b0d4a1494a57461e2d06bf44e92dd1d61f82fd777c84028e5e0f1d28a57f` |
| 4 | `theorem` | [map_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/map-traverse--7da93ae5add80ce8d00adba5.md) | 86 | `result-track:7da93ae5add80ce8d00adba512c66d37a7552159d1b18330afc92e04d20e74bc` |
| 5 | `theorem` | [traverse_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/traverse-map--7918a3ec75648bf7b4c3f7e8.md) | 92 | `result-track:7918a3ec75648bf7b4c3f7e89ac1a5f4933c738f8330fbe16fdd9afa7e29dd23` |
| 6 | `theorem` | [pure_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/pure-traverse--b46741a1881c3af5ddc0cd83.md) | 99 | `result-track:b46741a1881c3af5ddc0cd838783b19cd37835843df56e08743af89785573429` |
| 7 | `theorem` | [id_sequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/id-sequence--b7abb3197b4b2d8c71facb15.md) | 105 | `result-track:b7abb3197b4b2d8c71facb159fd68b96be8eee39313da9bd7f32b5bb469cc5ef` |
| 8 | `theorem` | [comp_sequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/comp-sequence--40f0283933dbac4a9c7ae7ed.md) | 109 | `result-track:40f0283933dbac4a9c7ae7edf9aad77958de8c7a48353ecce62893388cc57241` |
| 9 | `theorem` | [naturality'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/naturality--f9f9b4f304958eb873c76048.md) | 114 | `result-track:f9f9b4f304958eb873c76048edc50866a495552073ae6437952d5ec45cc21b8b` |
| 10 | `theorem` | [traverse_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/traverse-id--27c2f02339a05e12b1398ad6.md) | 119 | `result-track:27c2f02339a05e12b1398ad6f19ae1c02106db0d84004517255e2d373cce49c7` |
| 11 | `theorem` | [traverse_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/traverse-comp--1e76336244e306c0f635d4f0.md) | 125 | `result-track:1e76336244e306c0f635d4f02a662ac9d452bb8479d290b218f42231e75794dc` |
| 12 | `theorem` | [traverse_eq_map_id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/traverse-eq-map-id--6f6b080e3ddef2bb01ba3273.md) | 132 | `result-track:6f6b080e3ddef2bb01ba3273f82b08f064eb3743938dec5bbb809a983822ed24` |
| 13 | `theorem` | [traverse_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/traverse-map--0187c9bfae659b324a66747d.md) | 139 | `result-track:0187c9bfae659b324a66747dee4c1503cfc070e324591bbf948aaab91576773a` |
| 14 | `theorem` | [map_traverse'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/map-traverse--aaa123fbeb92ae87e929d774.md) | 145 | `result-track:aaa123fbeb92ae87e929d77429e1b3e31d64aed16e9494479b433042ae295e2b` |
| 15 | `theorem` | [naturality_pf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant3c317de8cc321e7e24533b0baabf3cbb75a7d9b04a4e9a1f42db1bc806d42dd8.lean/declarations/naturality-pf--d7b8e399fc242485863b878c.md) | 151 | `result-track:d7b8e399fc242485863b878cff3715bab7d014a0628a5b98f4b058259ce42a92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
