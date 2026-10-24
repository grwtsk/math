# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorEquivalence.Variantda9d1ea7a6f853db7f3a071481182d297a0468ac3c25bfbb4d90752de175d6d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43a520db6539a85dbeff157cce5954ed71490419",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variantda9d1ea7a6f853db7f3a071481182d297a0468ac3c25bfbb4d90752de175d6d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variantda9d1ea7a6f853db7f3a071481182d297a0468ac3c25bfbb4d90752de175d6d3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variantda9d1ea7a6f853db7f3a071481182d297a0468ac3c25bfbb4d90752de175d6d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43a520db6539a85dbeff157cce5954ed71490419`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variantda9d1ea7a6f853db7f3a071481182d297a0468ac3c25bfbb4d90752de175d6d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variantda9d1ea7a6f853db7f3a071481182d297a0468ac3c25bfbb4d90752de175d6d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variantda9d1ea7a6f853db7f3a071481182d297a0468ac3c25bfbb4d90752de175d6d3.lean/declarations/functor--0c854d7466a29522a9d247ba.md) | 39 | `declaration-track:0c854d7466a29522a9d247baa7097b5253c50b1cd942639bab362225f7ab79fb` |
| 2 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variantda9d1ea7a6f853db7f3a071481182d297a0468ac3c25bfbb4d90752de175d6d3.lean/declarations/inverse--cb0f06d92dcb438d2da610b1.md) | 48 | `declaration-track:cb0f06d92dcb438d2da610b1ea2c0fb3e1d6bca929910929dab5542afa1a1360` |
| 3 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variantda9d1ea7a6f853db7f3a071481182d297a0468ac3c25bfbb4d90752de175d6d3.lean/declarations/unitiso--09c29f29519181a4ddfb4491.md) | 59 | `declaration-track:09c29f29519181a4ddfb449158732e48ead2167b84d77dee0d11d4ee62a2d2fd` |
| 4 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variantda9d1ea7a6f853db7f3a071481182d297a0468ac3c25bfbb4d90752de175d6d3.lean/declarations/counitiso--82a6aa33f7407c6009c66415.md) | 69 | `declaration-track:82a6aa33f7407c6009c6641532a44462792ccbe59032c916f0779d6b0a84b574` |
| 5 | `def` | [functorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variantda9d1ea7a6f853db7f3a071481182d297a0468ac3c25bfbb4d90752de175d6d3.lean/declarations/functorequivalence--bc9d475d38fd35fe159369f0.md) | 78 | `declaration-track:bc9d475d38fd35fe159369f01c27d4d326ca1d7e4a4a5b91eba7842646edb890` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
