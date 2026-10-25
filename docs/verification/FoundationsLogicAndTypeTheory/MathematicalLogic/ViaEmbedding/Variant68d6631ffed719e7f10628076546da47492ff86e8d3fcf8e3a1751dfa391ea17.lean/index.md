# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ViaEmbedding.Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27bb199e7959bf9cdd50a401962efea240b7d48a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27bb199e7959bf9cdd50a401962efea240b7d48a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [viaEmbedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean/declarations/viaembedding--d9e22a07aa2e218f3f68674c.md) | 33 | `declaration-track:d9e22a07aa2e218f3f68674cecdea7dd7bff20a63a90650547f0596a2b4344e5` |
| 2 | `theorem` | [viaEmbedding_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean/declarations/viaembedding-apply--996777c83f2233a6c524abab.md) | 37 | `result-track:996777c83f2233a6c524abab9f87f1e51866680738891f05a8e54a7bddd9c71c` |
| 3 | `theorem` | [viaEmbedding_apply_of_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean/declarations/viaembedding-apply-of-notmem--e777bc39b7918dfe9ae8db57.md) | 41 | `result-track:e777bc39b7918dfe9ae8db57c33f6d7eb82810cd38a35719c0648f0954829a19` |
| 4 | `def` | [viaEmbeddingHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean/declarations/viaembeddinghom--aedf4e689585744beadd60e6.md) | 49 | `declaration-track:aedf4e689585744beadd60e666afd96bc2fe950f2d0ea22464540dd8a7cc3c27` |
| 5 | `theorem` | [viaEmbeddingHom_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean/declarations/viaembeddinghom-apply--cd52d5109c9493801b363072.md) | 52 | `result-track:cd52d5109c9493801b3630722a6453f1a95a4429dd6ae31d026c04298193ade1` |
| 6 | `theorem` | [viaEmbeddingHom_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean/declarations/viaembeddinghom-injective--d8c67d200c31a95fb31bb04a.md) | 56 | `result-track:d8c67d200c31a95fb31bb04a215ce02b212830aa9877c18aa7b6d1f16a4d15dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
