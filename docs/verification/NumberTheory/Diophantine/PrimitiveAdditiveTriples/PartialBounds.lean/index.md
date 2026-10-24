# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.PartialBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3cc4af782b99b8cbe45654195ee0b6cf05fbdf0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/PartialBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/PartialBounds.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/PartialBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3cc4af782b99b8cbe45654195ee0b6cf05fbdf0`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/PartialBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/PartialBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.EquivalentForms`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/EquivalentForms.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [radical_eq_product_of_squarefree](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/PartialBounds.lean/declarations/radical-eq-product-of-squarefree--b919271d98e63993fdade794.md) | 13 | `result-track:b919271d98e63993fdade794025f0cd6d9e9591d2b90374a73b0254aa88062a7` |
| 2 | `theorem` | [height_le_radical_of_squarefree](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/PartialBounds.lean/declarations/height-le-radical-of-squarefree--1e21f0e4b47884ecaf82baff.md) | 19 | `result-track:1e21f0e4b47884ecaf82baff259c58a5036c31da36e0b2a9aaf8cb8c40e378a9` |
| 3 | `theorem` | [bound_of_squarefree](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/PartialBounds.lean/declarations/bound-of-squarefree--7a2578d9682b0bef3dfa02f4.md) | 26 | `result-track:7a2578d9682b0bef3dfa02f48c4cee09dd23ad4ef3124ac4c61ad4a74578a8be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
