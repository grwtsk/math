# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.TruthTables.NandGateExpressions.Variant692bc8380d51d5d1.NegationConjunctionDisjunction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7abd1ddde558071524783fdd565ed7e5919aef22",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/NegationConjunctionDisjunction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/NegationConjunctionDisjunction.lean/index.md) · [Full source](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/NegationConjunctionDisjunction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7abd1ddde558071524783fdd565ed7e5919aef22`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/NegationConjunctionDisjunction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/NegationConjunctionDisjunction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.FormulasAndValuations.NandSyntaxAndEvaluation.Variant692bc8380d51d5d1.SyntaxAndEvaluation`](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/FormulasAndValuations/NandSyntaxAndEvaluation/Variant692bc8380d51d5d1/SyntaxAndEvaluation.lean/index.md) — import line 17; pinned internal source present.
- `Folder.Boolean.Semantics` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nandNot](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/NegationConjunctionDisjunction.lean/declarations/nandnot--4cc462a9c333190d9dd69e92.md) | 40 | `declaration-track:4cc462a9c333190d9dd69e921b7fb29275c8560de8430caa6aafdf5481dac126` |
| 2 | `def` | [nandAnd](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/NegationConjunctionDisjunction.lean/declarations/nandand--735226d7a88633e1b04b2019.md) | 43 | `declaration-track:735226d7a88633e1b04b20193bb6b3523bebbdc0c2e3162220ca0720a9497057` |
| 3 | `def` | [nandOr](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/NegationConjunctionDisjunction.lean/declarations/nandor--515f6bd1030d85ee45092053.md) | 46 | `declaration-track:515f6bd1030d85ee45092053bcbb32d375c1550423b2e3083f078175c0b60371` |
| 4 | `theorem` | [eval_nandNot](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/NegationConjunctionDisjunction.lean/declarations/eval-nandnot--74316cba8e85851637dff599.md) | 50 | `result-track:74316cba8e85851637dff5997f6324bfd1dfa4a843d70b88f6f8b2b3c1b9f8d3` |
| 5 | `theorem` | [eval_nandAnd](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/NegationConjunctionDisjunction.lean/declarations/eval-nandand--7c0521572788c6f7bad0c650.md) | 55 | `result-track:7c0521572788c6f7bad0c650a9a55a7f9fe75ae7f08c387b37a4f9bf6fa163a8` |
| 6 | `theorem` | [eval_nandOr](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/NegationConjunctionDisjunction.lean/declarations/eval-nandor--0f4ea0381337b2eeec155558.md) | 61 | `result-track:0f4ea0381337b2eeec155558e799c504431b2e46e411a6fa1f8ea3418c369be4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
