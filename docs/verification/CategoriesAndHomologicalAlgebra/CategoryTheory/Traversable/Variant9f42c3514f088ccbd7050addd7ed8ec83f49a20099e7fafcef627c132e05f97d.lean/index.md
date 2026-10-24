# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Traversable.Variant9f42c3514f088ccbd7050addd7ed8ec83f49a20099e7fafcef627c132e05f97d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0e5a9a179d2278f0bf4e6a337037c96e8c6f882",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant9f42c3514f088ccbd7050addd7ed8ec83f49a20099e7fafcef627c132e05f97d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant9f42c3514f088ccbd7050addd7ed8ec83f49a20099e7fafcef627c132e05f97d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant9f42c3514f088ccbd7050addd7ed8ec83f49a20099e7fafcef627c132e05f97d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0e5a9a179d2278f0bf4e6a337037c96e8c6f882`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant9f42c3514f088ccbd7050addd7ed8ec83f49a20099e7fafcef627c132e05f97d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant9f42c3514f088ccbd7050addd7ed8ec83f49a20099e7fafcef627c132e05f97d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Tree.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Applicative` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant9f42c3514f088ccbd7050addd7ed8ec83f49a20099e7fafcef627c132e05f97d.lean/declarations/instance--f5c2bb8681065587d9832e36.md) | 23 | `declaration-track:f5c2bb8681065587d9832e3660ba18dbbbfe98d68e535a4c72a3ce2a5085cb29` |
| 2 | `lemma` | [comp_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant9f42c3514f088ccbd7050addd7ed8ec83f49a20099e7fafcef627c132e05f97d.lean/declarations/comp-traverse--b4571a63f01b17959b2e4443.md) | 27 | `result-track:b4571a63f01b17959b2e4443ae3161b41fffc63525528c82d762cc19d8dc0b1c` |
| 3 | `lemma` | [traverse_eq_map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant9f42c3514f088ccbd7050addd7ed8ec83f49a20099e7fafcef627c132e05f97d.lean/declarations/traverse-eq-map-id--fced2542b95167dc6338005a.md) | 40 | `result-track:fced2542b95167dc6338005aec3ea355dbd52c05738583f1f14108243bfadf01` |
| 4 | `lemma` | [naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant9f42c3514f088ccbd7050addd7ed8ec83f49a20099e7fafcef627c132e05f97d.lean/declarations/naturality--783d815213225a08c34ab3f6.md) | 48 | `result-track:783d815213225a08c34ab3f6e4c493688e8c5e411193d15d00133ef79f3779ab` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Traversable/Variant9f42c3514f088ccbd7050addd7ed8ec83f49a20099e7fafcef627c132e05f97d.lean/declarations/instance--3342cd02904f2a348aba7ecb.md) | 57 | `declaration-track:3342cd02904f2a348aba7ecb32258b5df366b6f654ec76b289e46c1cfb5bfef8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
