# Verification target: GRWTSK.Algebra.GroupTheory.Cardinality.Variant9208da7b08c8c877d61f5ed77c5dd4b7fedb6664c2f03d0f3772cc03adc2f5ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4278858f80752eeedb4c18f0fef1e3ab9b3d5bf3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Cardinality/Variant9208da7b08c8c877d61f5ed77c5dd4b7fedb6664c2f03d0f3772cc03adc2f5ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variant9208da7b08c8c877d61f5ed77c5dd4b7fedb6664c2f03d0f3772cc03adc2f5ee.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variant9208da7b08c8c877d61f5ed77c5dd4b7fedb6664c2f03d0f3772cc03adc2f5ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4278858f80752eeedb4c18f0fef1e3ab9b3d5bf3`.

Source path: `GRWTSK/Algebra/GroupTheory/Cardinality/Variant9208da7b08c8c877d61f5ed77c5dd4b7fedb6664c2f03d0f3772cc03adc2f5ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Cardinality/Variant9208da7b08c8c877d61f5ed77c5dd4b7fedb6664c2f03d0f3772cc03adc2f5ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Pigeonhole` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OreLocalization.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [oreDiv_one_surjective_of_finite_left](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variant9208da7b08c8c877d61f5ed77c5dd4b7fedb6664c2f03d0f3772cc03adc2f5ee.lean/declarations/orediv-one-surjective-of-finite-left--086a35df7c1e8f48f946eb6e.md) | 41 | `result-track:086a35df7c1e8f48f946eb6e61e411fcadf45c562e53b71ff9604aac0445debf` |
| 2 | `theorem` | [oreDiv_one_surjective_of_finite_right](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variant9208da7b08c8c877d61f5ed77c5dd4b7fedb6664c2f03d0f3772cc03adc2f5ee.lean/declarations/orediv-one-surjective-of-finite-right--789b334f8dc9bc26dca232e6.md) | 55 | `result-track:789b334f8dc9bc26dca232e67bd1b64891ca45c5940a7b10a31c27e673fecb12` |
| 3 | `theorem` | [numeratorHom_surjective_of_finite](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variant9208da7b08c8c877d61f5ed77c5dd4b7fedb6664c2f03d0f3772cc03adc2f5ee.lean/declarations/numeratorhom-surjective-of-finite--efcba54d07f502fa041a3b2b.md) | 69 | `result-track:efcba54d07f502fa041a3b2bebcecabd609b6e7cde1af63317bf80b5c5a7a34b` |
| 4 | `theorem` | [cardinalMk_le_max](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variant9208da7b08c8c877d61f5ed77c5dd4b7fedb6664c2f03d0f3772cc03adc2f5ee.lean/declarations/cardinalmk-le-max--57bd2559f41f41b3e2d5e8f9.md) | 73 | `result-track:57bd2559f41f41b3e2d5e8f960d80ca3a5ad5510ee535f495425a91a50dab9f8` |
| 5 | `theorem` | [cardinalMk_le](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variant9208da7b08c8c877d61f5ed77c5dd4b7fedb6664c2f03d0f3772cc03adc2f5ee.lean/declarations/cardinalmk-le--e47ea1cbd01ce0a12436e4bf.md) | 88 | `result-track:e47ea1cbd01ce0a12436e4bf13dc80194a4e61d46da79322f21780fe3d4c4402` |
| 6 | `theorem` | [cardinalMk_le_lift_cardinalMk_of_commute](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variant9208da7b08c8c877d61f5ed77c5dd4b7fedb6664c2f03d0f3772cc03adc2f5ee.lean/declarations/cardinalmk-le-lift-cardinalmk-of-commute--cb834c1da06e9ccde47c14ae.md) | 94 | `result-track:cb834c1da06e9ccde47c14aeaf9d98f3a2646653cb594250d4edfb3a975c9acf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
