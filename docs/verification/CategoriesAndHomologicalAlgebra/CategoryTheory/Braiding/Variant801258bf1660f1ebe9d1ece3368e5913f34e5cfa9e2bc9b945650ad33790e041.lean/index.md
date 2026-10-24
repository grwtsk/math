# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Braiding.Variant801258bf1660f1ebe9d1ece3368e5913f34e5cfa9e2bc9b945650ad33790e041

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3765e3f5237b17263a952c8f9b14bbbec0f132c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant801258bf1660f1ebe9d1ece3368e5913f34e5cfa9e2bc9b945650ad33790e041.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant801258bf1660f1ebe9d1ece3368e5913f34e5cfa9e2bc9b945650ad33790e041.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant801258bf1660f1ebe9d1ece3368e5913f34e5cfa9e2bc9b945650ad33790e041.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3765e3f5237b17263a952c8f9b14bbbec0f132c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant801258bf1660f1ebe9d1ece3368e5913f34e5cfa9e2bc9b945650ad33790e041.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant801258bf1660f1ebe9d1ece3368e5913f34e5cfa9e2bc9b945650ad33790e041.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GradedObject.Monoidal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant801258bf1660f1ebe9d1ece3368e5913f34e5cfa9e2bc9b945650ad33790e041.lean/declarations/braiding--7011bc221c55504d6b234013.md) | 47 | `declaration-track:7011bc221c55504d6b234013b720edee51c67f486fe2b4ed84108bdd0a43aa67` |
| 2 | `lemma` | [braiding_naturality_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant801258bf1660f1ebe9d1ece3368e5913f34e5cfa9e2bc9b945650ad33790e041.lean/declarations/braiding-naturality-right--3699c831d53580d0f6eee53d.md) | 54 | `result-track:3699c831d53580d0f6eee53df06ea9c5a6ca9981d328e05030871e79385d84ed` |
| 3 | `lemma` | [braiding_naturality_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant801258bf1660f1ebe9d1ece3368e5913f34e5cfa9e2bc9b945650ad33790e041.lean/declarations/braiding-naturality-left--bc8d02eac480fcfce6495bec.md) | 61 | `result-track:bc8d02eac480fcfce6495bec239191d911131d1deabad65e3372bf5185bae019` |
| 4 | `lemma` | [hexagon_forward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant801258bf1660f1ebe9d1ece3368e5913f34e5cfa9e2bc9b945650ad33790e041.lean/declarations/hexagon-forward--9b6e92527eaa9aaee87a8a2a.md) | 67 | `result-track:9b6e92527eaa9aaee87a8a2a12f289fd46ccff0a1ad8d259f1cfd60a0abd4b76` |
| 5 | `lemma` | [hexagon_reverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant801258bf1660f1ebe9d1ece3368e5913f34e5cfa9e2bc9b945650ad33790e041.lean/declarations/hexagon-reverse--6bbcc3e2ea15231ac54e3d52.md) | 105 | `result-track:6bbcc3e2ea15231ac54e3d5226ecd4388832d58a40dac87e5bbe517bc40277f1` |
| 6 | `lemma` | [symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant801258bf1660f1ebe9d1ece3368e5913f34e5cfa9e2bc9b945650ad33790e041.lean/declarations/symmetry--5d3d6ad642cf5f3850443d8a.md) | 144 | `result-track:5d3d6ad642cf5f3850443d8a594d517d3053cdc81554cc7b73aec3007a2257a9` |
| 7 | `instance` | [braidedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant801258bf1660f1ebe9d1ece3368e5913f34e5cfa9e2bc9b945650ad33790e041.lean/declarations/braidedcategory--b83d737c53b8b37f3640c71e.md) | 164 | `declaration-track:b83d737c53b8b37f3640c71e1f1f9df05681c43de1257e48a040901adbfd978f` |
| 8 | `instance` | [symmetricCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant801258bf1660f1ebe9d1ece3368e5913f34e5cfa9e2bc9b945650ad33790e041.lean/declarations/symmetriccategory--55e34aa7e500e66ecf559dfe.md) | 172 | `declaration-track:55e34aa7e500e66ecf559dfef724a5474859bd10566487c1cd706fc37a8b3982` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
