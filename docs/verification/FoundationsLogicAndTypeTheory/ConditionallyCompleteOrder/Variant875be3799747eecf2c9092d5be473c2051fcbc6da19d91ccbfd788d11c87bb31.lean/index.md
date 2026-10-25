# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ConditionallyCompleteOrder.Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee6efddafa1434d2c7adbb9a60131a132d8393ec",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee6efddafa1434d2c7adbb9a60131a132d8393ec`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean/declarations/instance--34f35d60555a6e3069b5669d.md) | 29 | `declaration-track:34f35d60555a6e3069b5669d758bddcc19963516fea58224551e1edeff7efc56` |
| 2 | `theorem` | [csSup_eq_greatestOfBdd](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean/declarations/cssup-eq-greatestofbdd--e75eef717934a9b9d43c7bad.md) | 50 | `result-track:e75eef717934a9b9d43c7bad0aea20c9bc6403935610bf0d9e5d2c5dcdffcc91` |
| 3 | `theorem` | [csSup_empty](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean/declarations/cssup-empty--b84a4bc68da9b1ec34c79295.md) | 57 | `result-track:b84a4bc68da9b1ec34c792952b8fd42b2fa11302ea5aa4dc8ab9cc51b0f3721f` |
| 4 | `theorem` | [csSup_of_not_bddAbove](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean/declarations/cssup-of-not-bddabove--dc88521f2b69082c45cfb7e0.md) | 60 | `result-track:dc88521f2b69082c45cfb7e0e74e950f850323b1c561a5d1b818658514f470ff` |
| 5 | `theorem` | [csInf_eq_leastOfBdd](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean/declarations/csinf-eq-leastofbdd--d96961db1fdcbf05f89be667.md) | 64 | `result-track:d96961db1fdcbf05f89be667054ff27cf4ab3c255e2e8776144b4e77ed13f857` |
| 6 | `theorem` | [csInf_empty](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean/declarations/csinf-empty--d5ef5d5f01b2a78a0e7d4ec2.md) | 71 | `result-track:d5ef5d5f01b2a78a0e7d4ec2b88ece29d3c0df9bdb17910e0e93b63de5804f76` |
| 7 | `theorem` | [csInf_of_not_bddBelow](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean/declarations/csinf-of-not-bddbelow--cfb530c5055ef0bb78cd00c6.md) | 74 | `result-track:cfb530c5055ef0bb78cd00c6be56ddc46984e72572f6c49d0537b5fc91c9c3ac` |
| 8 | `theorem` | [csSup_mem](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean/declarations/cssup-mem--9b3b53f765588c077d46b5de.md) | 77 | `result-track:9b3b53f765588c077d46b5dee1d1a9a8cf01cd6e91130683fbc8e686c859fe1b` |
| 9 | `theorem` | [csInf_mem](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean/declarations/csinf-mem--26420380040954ee5260e321.md) | 81 | `result-track:26420380040954ee5260e321517c1b565b95823a9042accf483d54cbfaceb64e` |
| 10 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31.lean/declarations/example--450731030f90a86dfbef674b.md) | 91 | `declaration-track:450731030f90a86dfbef674bfb973157dff46bace865842eb1dd163d79a1ec21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
