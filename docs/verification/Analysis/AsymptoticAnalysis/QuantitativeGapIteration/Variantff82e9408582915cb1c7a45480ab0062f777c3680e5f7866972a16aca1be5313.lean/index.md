# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.QuantitativeGapIteration.Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eae41f0fdf6ab2636cf99253cfe204ef7b006e15",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eae41f0fdf6ab2636cf99253cfe204ef7b006e15`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuantitativeGap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lossProduct](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean/declarations/lossproduct--172f2e634c1a761f9b9cb72b.md) | 32 | `declaration-track:172f2e634c1a761f9b9cb72be3f0af98084d07190952e07b0a9485b3de4b36f7` |
| 2 | `theorem` | [lossProduct_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean/declarations/lossproduct-zero--51fbe11f16cbd59896d6e960.md) | 35 | `result-track:51fbe11f16cbd59896d6e96050a62adecbb37afff186ba5aef114c1b585f74c8` |
| 3 | `theorem` | [lossProduct_succ](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean/declarations/lossproduct-succ--dc9ed3f88d3d2579cf31092a.md) | 38 | `result-track:dc9ed3f88d3d2579cf31092a8db49ad065037b5677cc8434557d3d90034abdc6` |
| 4 | `theorem` | [lossProduct_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean/declarations/lossproduct-pos--6abaf43a8e1e8b344d6eaa08.md) | 42 | `result-track:6abaf43a8e1e8b344d6eaa08224c8726e4d7725506b2329b63ade591bad6b533` |
| 5 | `def` | [refinementBudget](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean/declarations/refinementbudget--4939d3fde96fe5f0f2b3dbbe.md) | 47 | `declaration-track:4939d3fde96fe5f0f2b3dbbe7f3f126b4cbb300fd5c7309a3016676ee9fc7c18` |
| 6 | `theorem` | [refinementBudget_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean/declarations/refinementbudget-eq--752768a87ad31fc0782d608f.md) | 52 | `result-track:752768a87ad31fc0782d608f2303ce1f23bf141d6cb13768069a84db870aa99f` |
| 7 | `theorem` | [refinement_lower_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean/declarations/refinement-lower-bound--4b1e5c32e365e6f901c29191.md) | 65 | `result-track:4b1e5c32e365e6f901c291916f1d2ba0f0cebf165dca11da96c2097f68845744` |
| 8 | `theorem` | [refinement_iteration](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean/declarations/refinement-iteration--4525fe9bef087f01f0717d94.md) | 74 | `result-track:4525fe9bef087f01f0717d9454398fa2c1eb406b09dfccfc41247ede6960def2` |
| 9 | `theorem` | [uniform_of_prefix_budget](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean/declarations/uniform-of-prefix-budget--51b736ffabb4b994a32be90d.md) | 82 | `result-track:51b736ffabb4b994a32be90dbbe46aa068e668fc4834cc57556a8753141d77bf` |
| 10 | `theorem` | [uniform_of_summable_budget](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean/declarations/uniform-of-summable-budget--522586c71c319a3207e81d01.md) | 96 | `result-track:522586c71c319a3207e81d019665d8690b4329127a60f8fa9cd8664bdbec8fb5` |
| 11 | `theorem` | [uniform_positive_certificate](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantff82e9408582915cb1c7a45480ab0062f777c3680e5f7866972a16aca1be5313.lean/declarations/uniform-positive-certificate--c6822e175b85ac7df2851618.md) | 110 | `result-track:c6822e175b85ac7df2851618ef36dc6a6de6381409ebbc8517d40a684e4c1659` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
