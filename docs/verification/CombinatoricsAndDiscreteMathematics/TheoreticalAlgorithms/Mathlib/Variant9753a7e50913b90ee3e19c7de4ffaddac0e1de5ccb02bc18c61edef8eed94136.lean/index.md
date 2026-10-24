# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Mathlib.Variant9753a7e50913b90ee3e19c7de4ffaddac0e1de5ccb02bc18c61edef8eed94136

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a37aaa3513cd5f378e58f7abc1866ed7ea020e2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variant9753a7e50913b90ee3e19c7de4ffaddac0e1de5ccb02bc18c61edef8eed94136.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variant9753a7e50913b90ee3e19c7de4ffaddac0e1de5ccb02bc18c61edef8eed94136.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variant9753a7e50913b90ee3e19c7de4ffaddac0e1de5ccb02bc18c61edef8eed94136.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a37aaa3513cd5f378e58f7abc1866ed7ea020e2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variant9753a7e50913b90ee3e19c7de4ffaddac0e1de5ccb02bc18c61edef8eed94136.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variant9753a7e50913b90ee3e19c7de4ffaddac0e1de5ccb02bc18c61edef8eed94136.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Prismatic.MathlibAdapters` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DeltaRingMathlibAdapter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variant9753a7e50913b90ee3e19c7de4ffaddac0e1de5ccb02bc18c61edef8eed94136.lean/declarations/deltaringmathlibadapter--d162d4cd4678e701fad9a675.md) | 32 | `declaration-track:d162d4cd4678e701fad9a6750dce9c73f7ebbf20c23577f0b5a054bfb20b9241` |
| 2 | `def` | [DeltaRingMathlibAdapter.usableForFinalTheorem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variant9753a7e50913b90ee3e19c7de4ffaddac0e1de5ccb02bc18c61edef8eed94136.lean/declarations/deltaringmathlibadapter-usableforfinaltheorem--0aa0b7502871eb777e4e9b2d.md) | 56 | `declaration-track:0aa0b7502871eb777e4e9b2d30c44ee39c571ffb44ba3d8039e93cd558bead9c` |
| 3 | `theorem` | [DeltaRingMathlibAdapter.unavailable_not_usableForFinalTheorem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variant9753a7e50913b90ee3e19c7de4ffaddac0e1de5ccb02bc18c61edef8eed94136.lean/declarations/deltaringmathlibadapter-unavailable-not-usableforfinaltheorem--dfc6c1881906c306ca3af7d5.md) | 63 | `result-track:dfc6c1881906c306ca3af7d542a4e56244594d900c022f46fe383a1f4e251c93` |
| 4 | `theorem` | [DeltaRingMathlibAdapter.finalTheorem_requires_importedMathlib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variant9753a7e50913b90ee3e19c7de4ffaddac0e1de5ccb02bc18c61edef8eed94136.lean/declarations/deltaringmathlibadapter-finaltheorem-requires-importedmathlib--55b7ba9fa5b3ebfed91d22e4.md) | 73 | `result-track:55b7ba9fa5b3ebfed91d22e4ea74b274947559d1f369cf2335c3298f82fe77d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
