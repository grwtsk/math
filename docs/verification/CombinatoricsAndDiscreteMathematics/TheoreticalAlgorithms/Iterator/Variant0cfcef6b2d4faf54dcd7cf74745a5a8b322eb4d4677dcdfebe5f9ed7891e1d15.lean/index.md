# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterator.Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c34f46d2a9668c76bef93693df86aa9e63b4c48",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c34f46d2a9668c76bef93693df86aa9e63b4c48`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Combinators.FilterMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15.lean/declarations/iter--e18d65d5639e566865a8df05.md) | 30 | `declaration-track:e18d65d5639e566865a8df055a77ca7e296f854f4c6b047fd170377e244eccc5` |
| 2 | `def` | [keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15.lean/declarations/keysiter--752f3a55f41d2f5f83f10b67.md) | 45 | `declaration-track:752f3a55f41d2f5f83f10b67dc2c6b7521a4ab5e004a7439ebb1caeb72b5728a` |
| 3 | `def` | [valuesIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15.lean/declarations/valuesiter--b6787ae356f74411e983ee7e.md) | 60 | `declaration-track:b6787ae356f74411e983ee7e694bbec7c10b2c99a7ff12c3c60d98d58a1c5ab1` |
| 4 | `def` | [iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15.lean/declarations/iter--b707276e71866f0f032c6849.md) | 68 | `declaration-track:b707276e71866f0f032c6849b6ed7267b16a487e1a7e86ef2f177d8c47993a44` |
| 5 | `def` | [keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15.lean/declarations/keysiter--f45dda695d5e0d0ef0f4b096.md) | 72 | `declaration-track:f45dda695d5e0d0ef0f4b096d7d077f409452a1bfab811ec86129c2dc8003a16` |
| 6 | `def` | [valuesIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15.lean/declarations/valuesiter--e2ff17eeb86e2df7542c8a3b.md) | 76 | `declaration-track:e2ff17eeb86e2df7542c8a3b948bc72dc27bc34b576ce25f70e642655a6d3b58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
