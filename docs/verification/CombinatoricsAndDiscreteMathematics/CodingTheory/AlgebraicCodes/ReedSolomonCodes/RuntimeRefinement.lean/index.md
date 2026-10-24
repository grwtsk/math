# Verification target: GRWTSK.InformationTheory.ReedSolomon.RuntimeRefinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b00c77d6b24178256ad1a03c26213718fecccad6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/ReedSolomon/RuntimeRefinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/RuntimeRefinement.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/RuntimeRefinement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b00c77d6b24178256ad1a03c26213718fecccad6`.

Source path: `GRWTSK/InformationTheory/ReedSolomon/RuntimeRefinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/ReedSolomon/RuntimeRefinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.ReedSolomon.Runtime`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Runtime.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [selectedNodes_injective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/RuntimeRefinement.lean/declarations/selectednodes-injective--674e1aab77cac64112b21dad.md) | 12 | `result-track:674e1aab77cac64112b21dadd210be0205f6c9457cb5a9e67c2349bd25ba52ad` |
| 2 | `theorem` | [numerator_at_node](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/RuntimeRefinement.lean/declarations/numerator-at-node--00966416f5788a16e1e7d4d9.md) | 16 | `result-track:00966416f5788a16e1e7d4d95bd17eb11bc57ea0a00af5fab6168bfcca9f9334` |
| 3 | `theorem` | [runtime_coefficient_at_node](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/RuntimeRefinement.lean/declarations/runtime-coefficient-at-node--8313a047d17a00fd17b56d64.md) | 20 | `result-track:8313a047d17a00fd17b56d64b2f12ac24a31894c1bc491b6589af5a9956d025d` |
| 4 | `def` | [rustCoefficient](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/RuntimeRefinement.lean/declarations/rustcoefficient--f18d678cc35620414a0d45e5.md) | 34 | `declaration-track:f18d678cc35620414a0d45e5e8cc664f77ad7a35db30c27e5b34073a8ff9b277` |
| 5 | `theorem` | [rustCoefficient_eq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/RuntimeRefinement.lean/declarations/rustcoefficient-eq--e65717377be2c888866550b4.md) | 41 | `result-track:e65717377be2c888866550b4a1fd984906a5a530b77b09627600df5c0e73dbb5` |
| 6 | `theorem` | [rowEval_delta](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/RuntimeRefinement.lean/declarations/roweval-delta--86541d8a6e046515aa88edb6.md) | 62 | `result-track:86541d8a6e046515aa88edb6606ccae9793d72824f871d8a11d5e6dd41caebad` |
| 7 | `theorem` | [get_slot_delta](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/RuntimeRefinement.lean/declarations/get-slot-delta--757ffb3a478756b56f9ab8d7.md) | 70 | `result-track:757ffb3a478756b56f9ab8d7ab36d24897dfa1cb5ef0c0416f1367d585e30772` |
| 8 | `theorem` | [runtimeEval_at_node](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/RuntimeRefinement.lean/declarations/runtimeeval-at-node--2cf8aa4e17602ae45271e2b3.md) | 74 | `result-track:2cf8aa4e17602ae45271e2b3a9cd43bbce5b9c05321dd11cfa0b07d711dcf32c` |
| 9 | `theorem` | [ordered_product3](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/RuntimeRefinement.lean/declarations/ordered-product3--38f12005b73f5a06b3968bf3.md) | 82 | `result-track:38f12005b73f5a06b3968bf34baeee644f13d95b5f8b9a9b652c1c96774f0f5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
