# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variantb537eb6dd5fb9d406e2cc240021518fb3c18774089ff6c3aa422088b153fffcd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51cb16f60cba86adce3f42d2e2f0f42fd29ba616",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb537eb6dd5fb9d406e2cc240021518fb3c18774089ff6c3aa422088b153fffcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb537eb6dd5fb9d406e2cc240021518fb3c18774089ff6c3aa422088b153fffcd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb537eb6dd5fb9d406e2cc240021518fb3c18774089ff6c3aa422088b153fffcd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51cb16f60cba86adce3f42d2e2f0f42fd29ba616`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb537eb6dd5fb9d406e2cc240021518fb3c18774089ff6c3aa422088b153fffcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb537eb6dd5fb9d406e2cc240021518fb3c18774089ff6c3aa422088b153fffcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Combinators.FilterMap` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb537eb6dd5fb9d406e2cc240021518fb3c18774089ff6c3aa422088b153fffcd.lean/declarations/iter--2f887c29a1426fe70b2bbee3.md) | 30 | `declaration-track:2f887c29a1426fe70b2bbee33a3035be788da07aab88f336af8277e6459642f1` |
| 2 | `def` | [keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb537eb6dd5fb9d406e2cc240021518fb3c18774089ff6c3aa422088b153fffcd.lean/declarations/keysiter--b1c8d8df6d7a3745c47677f1.md) | 46 | `declaration-track:b1c8d8df6d7a3745c47677f1d777f992d064f16d2e080f97735b0bcf5fb5e3f9` |
| 3 | `def` | [valuesIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb537eb6dd5fb9d406e2cc240021518fb3c18774089ff6c3aa422088b153fffcd.lean/declarations/valuesiter--a8107f56c0d6edb7d4c4a930.md) | 62 | `declaration-track:a8107f56c0d6edb7d4c4a930276bbe82d80a4c7346ec38499edd4262ea6fdd27` |
| 4 | `theorem` | [toList_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb537eb6dd5fb9d406e2cc240021518fb3c18774089ff6c3aa422088b153fffcd.lean/declarations/tolist-iter--56eb92d4c664c107a833fc9f.md) | 67 | `result-track:56eb92d4c664c107a833fc9f18ddc8d100e65fec1a480ed63a50a1c605dfe380` |
| 5 | `theorem` | [keysIter_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb537eb6dd5fb9d406e2cc240021518fb3c18774089ff6c3aa422088b153fffcd.lean/declarations/keysiter-tolist--1945d9bd71b1402921986143.md) | 75 | `result-track:1945d9bd71b1402921986143aaaff757d1f83ebb9c41b9866029fc1fcc356138` |
| 6 | `theorem` | [valuesIter_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb537eb6dd5fb9d406e2cc240021518fb3c18774089ff6c3aa422088b153fffcd.lean/declarations/valuesiter-tolist--a4626d4b2878849ec62d0a9e.md) | 80 | `result-track:a4626d4b2878849ec62d0a9e74e84bdad88771818bf2076397a1471088411d0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
