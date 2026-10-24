# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Konigsberg.Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09fdc2b79cec77ce50cb82e36170db18bb0334aa",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09fdc2b79cec77ce50cb82e36170db18bb0334aa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Verts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean/declarations/verts--d21311271ea1fba6d510c081.md) | 34 | `declaration-track:d21311271ea1fba6d510c081c9a83e285299b7bd9ef1c3673800aa837deaaaf4` |
| 2 | `def` | [edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean/declarations/edges--e9ad0a79cd004b5c98f95155.md) | 45 | `declaration-track:e9ad0a79cd004b5c98f95155b31baad8717725c2f45283af6ba69765d502f415` |
| 3 | `def` | [adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean/declarations/adj--23119ccf281bcb41ed264428.md) | 52 | `declaration-track:23119ccf281bcb41ed264428c5d2b608ac2777bd9e34013e421262519412dc72` |
| 4 | `def` | [graph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean/declarations/graph--b8f62de7882024eb9e1105b6.md) | 62 | `declaration-track:b8f62de7882024eb9e1105b6945e4556b943749412705d5dd13f901c7fdaca62` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean/declarations/instance--287fa7ed21dabae86a2e7c83.md) | 67 | `declaration-track:287fa7ed21dabae86a2e7c83eea18c90e596b13192a9677e1ba9d44ac7a223df` |
| 6 | `def` | [degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean/declarations/degree--844cbd75751c7426fc36a8d1.md) | 71 | `declaration-track:844cbd75751c7426fc36a8d18d8c3900f9fd6dfe334c0e214189f975ee396327` |
| 7 | `lemma` | [degree_eq_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean/declarations/degree-eq-degree--7afb13e2b6cd6e1cc7016091.md) | 76 | `result-track:7afb13e2b6cd6e1cc7016091a507bdbeea9e6b8850ce55966ffc2bddfeecd5aa` |
| 8 | `lemma` | [not_even_degree_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean/declarations/not-even-degree-iff--87461273b16c047afa5b110d.md) | 78 | `result-track:87461273b16c047afa5b110d6bc47aa20addc8a8fad7780f0139e9f49f62dc3c` |
| 9 | `lemma` | [setOfPred_odd_degree_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean/declarations/setofpred-odd-degree-eq--0f2faee8608f5d5e21feffe7.md) | 81 | `result-track:0f2faee8608f5d5e21feffe7a0d7457ad858eba39f46c7e7e973a4d02731ba37` |
| 10 | `theorem` | [not_isEulerian](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantb9ab1b475152aa9e34a9f3bc9c16151effd6d06ddce08ea75bdf82dbfe63bcb3.lean/declarations/not-iseulerian--f82aeb80e9c2fdcbc05858dd.md) | 89 | `result-track:f82aeb80e9c2fdcbc05858ddfd16831d30e508beb87877e8b79bf4b0ee268a2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
