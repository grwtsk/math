# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Lemmas.Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d33ae6e0a608c61aa273192938058e8bdf7da2d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d33ae6e0a608c61aa273192938058e8bdf7da2d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean.json)

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
| 1 | `def` | [PureTransformation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/puretransformation--429bf0f0e4dd70e8353a9a2f.md) | 54 | `declaration-track:429bf0f0e4dd70e8353a9a2ff99d23e29651620156cd5408cbadcf4c9693201d` |
| 2 | `theorem` | [pureTransformation_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/puretransformation-apply--07cb9b06e141f5fb9ab857a1.md) | 63 | `result-track:07cb9b06e141f5fb9ab857a171a34da5d59f69a6332a04030e106b438cc3514c` |
| 3 | `theorem` | [map_eq_traverse_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/map-eq-traverse-id--7b77c28a4f3b5b8247fbe538.md) | 68 | `result-track:7b77c28a4f3b5b8247fbe538fe984a17ecb24141c95942def54ecb08d47fe53f` |
| 4 | `theorem` | [map_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/map-traverse--067e368671ec3e6b6877981a.md) | 71 | `result-track:067e368671ec3e6b6877981ac9100a678de014b0c81c027790c01bc248631791` |
| 5 | `theorem` | [traverse_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/traverse-map--80e2c31240a34f3b762c5c5e.md) | 76 | `result-track:80e2c31240a34f3b762c5c5ec935326b5adca26f0e0a84dceed423bffefc6dd7` |
| 6 | `theorem` | [pure_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/pure-traverse--ccbc43af44669ecfadf0ee16.md) | 82 | `result-track:ccbc43af44669ecfadf0ee1646de3ae19017527ea2a6f847a3e8b5d88bf6498c` |
| 7 | `theorem` | [id_sequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/id-sequence--73ab6701c6fdd65f1f3b330f.md) | 87 | `result-track:73ab6701c6fdd65f1f3b330f02d7efff76662704cf06651bb963c4b8b1ac8c4e` |
| 8 | `theorem` | [comp_sequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/comp-sequence--c7310d3ebaa0188a881a7cd9.md) | 90 | `result-track:c7310d3ebaa0188a881a7cd934f334d6016c7c0d8f560c79fbbed638c66046f4` |
| 9 | `theorem` | [naturality'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/naturality--07ac2405023495d075dc1293.md) | 94 | `result-track:07ac2405023495d075dc1293dc2eb2063121a1f04afb5001c9ead54c1bdb7d77` |
| 10 | `theorem` | [traverse_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/traverse-id--7257cb4e1ebc52f539178f75.md) | 98 | `result-track:7257cb4e1ebc52f539178f759ab8a97ecf922fe382b745039a4f4f81f6c4dbbd` |
| 11 | `theorem` | [traverse_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/traverse-comp--37e46ef4c18152fafa983e6a.md) | 103 | `result-track:37e46ef4c18152fafa983e6a569b4a48ab35f3afb36f806142143ca95db845d8` |
| 12 | `theorem` | [traverse_eq_map_id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/traverse-eq-map-id--f0fa5332e1dbb7173bd61578.md) | 109 | `result-track:f0fa5332e1dbb7173bd61578cd2afea3e71286c172c2928882e3529a08e219d4` |
| 13 | `theorem` | [traverse_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/traverse-map--92cc5920a2ed2191b58504d0.md) | 115 | `result-track:92cc5920a2ed2191b58504d07eaa5c637198bd3ba1f9434051b2cd6b5125005a` |
| 14 | `theorem` | [map_traverse'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/map-traverse--83a9b36405b0816e8571fc5f.md) | 120 | `result-track:83a9b36405b0816e8571fc5facec67b7bbfe5683d8bb9a83262f7d2692e7a389` |
| 15 | `theorem` | [naturality_pf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lemmas/Variant2818451e191cfa0b3e7d39ed7cf382527826b4c9470dcf195297e7a74c2ec81f.lean/declarations/naturality-pf--9607da3923145ef313e2fa6a.md) | 125 | `result-track:9607da3923145ef313e2fa6af69830f636801ac8b463c9fee9b5a6b9168be45b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
