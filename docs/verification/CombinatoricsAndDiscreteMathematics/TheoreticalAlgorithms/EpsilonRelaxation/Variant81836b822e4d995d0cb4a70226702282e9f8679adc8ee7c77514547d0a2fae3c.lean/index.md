# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpsilonRelaxation.Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2490a9c71aa9671b87c31c40edf590f5112fc83e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2490a9c71aa9671b87c31c40edf590f5112fc83e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Stream.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteEpsilon](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c.lean/declarations/finiteepsilon--87b4367274004620809da3e7.md) | 7 | `declaration-track:87b4367274004620809da3e7e8c03376ef51d9647852de3c7529fd098ac52b29` |
| 2 | `structure` | [FiniteRelaxedValue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c.lean/declarations/finiterelaxedvalue--0716657439392e6905b469b6.md) | 14 | `declaration-track:0716657439392e6905b469b62c1ea000a097a97f1d0727d243672f3801f9a09c` |
| 3 | `inductive` | [PolarBaseBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c.lean/declarations/polarbasebit--ff01349868af5286dac5ae79.md) | 20 | `declaration-track:ff01349868af5286dac5ae79408f139853c60d87ec1a35efe57ffd011bcc83d2` |
| 4 | `def` | [relaxedValueOfBase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c.lean/declarations/relaxedvalueofbase--96ade4d3c81b41aa16c78efe.md) | 25 | `declaration-track:96ade4d3c81b41aa16c78efe96063bff7147ffd7ad055b4534443f07e9ccd424` |
| 5 | `theorem` | [relaxedValue_denominator_positive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c.lean/declarations/relaxedvalue-denominator-positive--158e88182205e0406767103b.md) | 51 | `result-track:158e88182205e0406767103bf254af418840b50a560750dd7a3ac840c10856cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
