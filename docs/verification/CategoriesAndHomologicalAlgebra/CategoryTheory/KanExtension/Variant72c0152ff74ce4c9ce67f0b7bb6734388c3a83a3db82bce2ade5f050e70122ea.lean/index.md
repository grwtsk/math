# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KanExtension.Variant72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8cd7405d080f47d1d4055f6d40ec7e3a20c1cb4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8cd7405d080f47d1d4055f6d40ec7e3a20c1cb4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LeftKanExtensionDatum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea.lean/declarations/leftkanextensiondatum--33145939becaca19540e067a.md) | 22 | `declaration-track:33145939becaca19540e067a6029625186e166f1601a200621596e0ec55b5a09` |
| 2 | `structure` | [DerivedLeftKanExtensionDatum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea.lean/declarations/derivedleftkanextensiondatum--c4eea82d328f8dcaabf785aa.md) | 44 | `declaration-track:c4eea82d328f8dcaabf785aa25765695ae4fe1ab8d7510433c06059d1ba798f0` |
| 3 | `structure` | [SimplicialResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea.lean/declarations/simplicialresolution--b025dcdcb8c2a76dd2043fc3.md) | 51 | `declaration-track:b025dcdcb8c2a76dd2043fc3997e429c1d6b210d60fb2ec89c8e54a1cc4eee6d` |
| 4 | `structure` | [ResolutionFormula](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea.lean/declarations/resolutionformula--b58c9bb2acc4c1ff4dcc6cd3.md) | 63 | `declaration-track:b58c9bb2acc4c1ff4dcc6cd3e26c7c2a8165d5cbf999f7ba9657f67cfdb577f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
