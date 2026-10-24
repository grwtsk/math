# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Induction.Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a4c12f994ad8869c8bf4fcaa254374e357de266",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a4c12f994ad8869c8bf4fcaa254374e357de266`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reverseRecOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean/declarations/reverserecon--ce49c4bbcb858e94b1251c3a.md) | 26 | `declaration-track:ce49c4bbcb858e94b1251c3ab878f094fabe5ec794ec6be12927d274d2c9a375` |
| 2 | `theorem` | [reverseRecOn_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean/declarations/reverserecon-nil--5205decee66fef35cb6e25c9.md) | 41 | `result-track:5205decee66fef35cb6e25c9154b1db47af96e9f3335d5c8459bfaefb17265d3` |
| 3 | `theorem` | [reverseRecOn_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean/declarations/reverserecon-concat--b5d08b98e43e84d19152b059.md) | 47 | `result-track:b5d08b98e43e84d19152b059984e093f2e43072d43dfe744ba5296476507474a` |
| 4 | `def` | [bidirectionalRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean/declarations/bidirectionalrec--2c5c9eea83308868e089d7e8.md) | 72 | `declaration-track:2c5c9eea83308868e089d7e8868da0d6100cef9788237dac19405311e439540f` |
| 5 | `theorem` | [bidirectionalRec_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean/declarations/bidirectionalrec-nil--7b03d875a9c8ca7a8cb93de4.md) | 85 | `result-track:7b03d875a9c8ca7a8cb93de4473825afe19af58575001e712dca95ea27ecc62d` |
| 6 | `theorem` | [bidirectionalRec_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean/declarations/bidirectionalrec-singleton--f4321b63961e08f1fdb67c37.md) | 92 | `result-track:f4321b63961e08f1fdb67c37f10cb4f94a8a3a44928295dc7d487efaf93af350` |
| 7 | `theorem` | [bidirectionalRec_cons_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean/declarations/bidirectionalrec-cons-append--59ee6aaed3862e1b880d2647.md) | 99 | `result-track:59ee6aaed3862e1b880d26473bcf7fa9ddb2ca19e7f0fca2c68e41c83ff9728e` |
| 8 | `abbrev` | [bidirectionalRecOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean/declarations/bidirectionalrecon--a5bf35d00ce7a65b67c6cb80.md) | 123 | `declaration-track:a5bf35d00ce7a65b67c6cb8005959e5601620dce9bb822a9a1811db54a4973bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
