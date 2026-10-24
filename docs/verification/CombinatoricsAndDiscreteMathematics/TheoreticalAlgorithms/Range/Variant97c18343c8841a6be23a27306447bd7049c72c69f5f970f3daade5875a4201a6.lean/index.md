# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variant97c18343c8841a6be23a27306447bd7049c72c69f5f970f3daade5875a4201a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "292a696ffb950cab5c21471a7d2cf84b4dd103a6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant97c18343c8841a6be23a27306447bd7049c72c69f5f970f3daade5875a4201a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant97c18343c8841a6be23a27306447bd7049c72c69f5f970f3daade5875a4201a6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant97c18343c8841a6be23a27306447bd7049c72c69f5f970f3daade5875a4201a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `292a696ffb950cab5c21471a7d2cf84b4dd103a6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant97c18343c8841a6be23a27306447bd7049c72c69f5f970f3daade5875a4201a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant97c18343c8841a6be23a27306447bd7049c72c69f5f970f3daade5875a4201a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Int` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant97c18343c8841a6be23a27306447bd7049c72c69f5f970f3daade5875a4201a6.lean/declarations/range--1f3cf9d05a7f35bbb64986fa.md) | 30 | `declaration-track:1f3cf9d05a7f35bbb64986fa4093837f04aac1a5d56a59146b1f663a1b4425c4` |
| 2 | `theorem` | [mem_range_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant97c18343c8841a6be23a27306447bd7049c72c69f5f970f3daade5875a4201a6.lean/declarations/mem-range-iff--64028797a916e840f76d79cc.md) | 33 | `result-track:64028797a916e840f76d79cc56a4d658a53b0affb71971e77be136e5fa6cfdec` |
| 3 | `instance` | [decidableLELT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant97c18343c8841a6be23a27306447bd7049c72c69f5f970f3daade5875a4201a6.lean/declarations/decidablelelt--b12043d74e8b3ffd12d3c010.md) | 38 | `declaration-track:b12043d74e8b3ffd12d3c0102685bc5339a434d7d6b74f32067cf09aef1801e8` |
| 4 | `instance` | [decidableLELE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant97c18343c8841a6be23a27306447bd7049c72c69f5f970f3daade5875a4201a6.lean/declarations/decidablelele--6a3f42e185faac0fd61138e8.md) | 42 | `declaration-track:6a3f42e185faac0fd61138e8b823281a66e981313f19a37eecb2f334eb2c5a81` |
| 5 | `instance` | [decidableLTLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant97c18343c8841a6be23a27306447bd7049c72c69f5f970f3daade5875a4201a6.lean/declarations/decidableltlt--429396af420a39b43420ece5.md) | 48 | `declaration-track:429396af420a39b43420ece54b281d3a21a1f0a8aa2da40c7999920cc48064fd` |
| 6 | `instance` | [decidableLTLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant97c18343c8841a6be23a27306447bd7049c72c69f5f970f3daade5875a4201a6.lean/declarations/decidableltle--6850e4fff49909c1daf42323.md) | 52 | `declaration-track:6850e4fff49909c1daf423233db6303e672faf67b06eea8d3a70b1572f737237` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
