# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Oplax.Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e96f46366f895da4064200ba3ad5d5477b9ce490",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e96f46366f895da4064200ba3ad5d5477b9ce490`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor.Prelax` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.ToApp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OplaxFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean/declarations/oplaxfunctor--6ca77cbb739d91327670234f.md) | 51 | `declaration-track:6ca77cbb739d91327670234f73ddf8a555f3f0a65ebe3c5b9b737c5e9fe85730` |
| 2 | `lemma` | [mapComp_assoc_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean/declarations/mapcomp-assoc-right--cbaba7d18d6f64ee39552784.md) | 100 | `result-track:cbaba7d18d6f64ee395527840d4314eb3c5e7791f13fbda64708819d0451d831` |
| 3 | `lemma` | [mapComp_assoc_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean/declarations/mapcomp-assoc-left--904039ff511428983e351690.md) | 108 | `result-track:904039ff511428983e351690826b1000acbdf3e71b83a4394787aaa878cd26a8` |
| 4 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean/declarations/id--2b4a22e3c1c6a4474be6388c.md) | 116 | `declaration-track:2b4a22e3c1c6a4474be6388c93e6177104f42b007a8c6ad6644aea21ea77dc55` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean/declarations/instance--715c3b6f04b76ff123dce2e1.md) | 121 | `declaration-track:715c3b6f04b76ff123dce2e1f8759d9b8df4b6eff52d4ced809bc37fac529bcc` |
| 6 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean/declarations/comp--274655713c8d6dbb45210f4b.md) | 126 | `declaration-track:274655713c8d6dbb45210f4b2123cffd41ba6ec1430fea9662f6d89a758438ce` |
| 7 | `structure` | [PseudoCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean/declarations/pseudocore--66cff2ea51bda37923e22bd7.md) | 157 | `declaration-track:66cff2ea51bda37923e22bd71c0fae7c343a5fc17bfe909254bf0cd5c8772996` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
