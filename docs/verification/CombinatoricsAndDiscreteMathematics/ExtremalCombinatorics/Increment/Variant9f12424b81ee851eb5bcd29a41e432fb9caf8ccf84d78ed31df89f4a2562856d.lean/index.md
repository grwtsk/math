# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics.Increment.Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c75d9f087c903034ba442eae9a5d851e66bc26d2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c75d9f087c903034ba442eae9a5d851e66bc26d2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Regularity.Chunk` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Energy` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean/declarations/macro-rules--fa33004cd54432d2bc2276c8.md) | 41 | `declaration-track:fa33004cd54432d2bc2276c892c2bd1a1aebaff7fa2d6bf9c3be9f926d900027` |
| 2 | `def` | [increment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean/declarations/increment--9e4d6e481bb89a943e03592c.md) | 59 | `declaration-track:9e4d6e481bb89a943e03592c40f01c4ec4219371ec950fb7b8bb5c81b018d770` |
| 3 | `theorem` | [card_increment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean/declarations/card-increment--b7b255971e8dc8813d701810.md) | 68 | `result-track:b7b255971e8dc8813d701810e71d5231385dd36c971b5c79fa9a84f175acd329` |
| 4 | `theorem` | [increment_isEquipartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean/declarations/increment-isequipartition--fa9721f6caf29dda0b639786.md) | 83 | `result-track:fa9721f6caf29dda0b639786a68f8b9f7442ece27e12d9def89c18c52f31a468` |
| 5 | `theorem` | [distinct_pairs_increment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean/declarations/distinct-pairs-increment--2da39136f121967b0b2052f5.md) | 92 | `result-track:2da39136f121967b0b2052f59b8483a1bd1341752a8728c99e4dcb9f50f65073` |
| 6 | `def` | [pairContrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean/declarations/paircontrib--35214f760e17037d43569abd.md) | 108 | `declaration-track:35214f760e17037d43569abd04522e8cfa1e1cf69842a63005697c7dd9f1dea3` |
| 7 | `theorem` | [offDiag_pairs_le_increment_energy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean/declarations/offdiag-pairs-le-increment-energy--df800a527f01d4a269cef774.md) | 113 | `result-track:df800a527f01d4a269cef774e9b59ea07b632967fc672334c7d4ea1d8713615a` |
| 8 | `theorem` | [pairContrib_lower_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean/declarations/paircontrib-lower-bound--6ba17fe51a54e991f9bfd74b.md) | 133 | `result-track:6ba17fe51a54e991f9bfd74bd68cc1cc11949125f4506a162b44dc5b720670d1` |
| 9 | `theorem` | [uniform_add_nonuniform_eq_offDiag_pairs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean/declarations/uniform-add-nonuniform-eq-offdiag-pairs--c90843026ded23bb2e9b7bc6.md) | 146 | `result-track:c90843026ded23bb2e9b7bc6260630d2d888fd266b2da77068217f6c3fe53d90` |
| 10 | `theorem` | [energy_increment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean/declarations/energy-increment--26adc2179646057703463887.md) | 189 | `result-track:26adc21796460577034638877b5572f6cd5196db1868899cb8c50752e5f89dcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
