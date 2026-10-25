# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ee4ae2190c0a241742e2e2aab4c61227bd96bb8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ee4ae2190c0a241742e2e2aab4c61227bd96bb8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4.lean.json)

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
| 1 | `def` | [iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4.lean/declarations/iter--72bb3f828a1fa90f3c640859.md) | 30 | `declaration-track:72bb3f828a1fa90f3c64085935c76796a2460e723863c91a8b9574f7631c9a77` |
| 2 | `def` | [keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4.lean/declarations/keysiter--9c08466e9616d66478edc3bf.md) | 46 | `declaration-track:9c08466e9616d66478edc3bf1839ab5b5e8b31e4a07c175e822053a555ca9270` |
| 3 | `def` | [valuesIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4.lean/declarations/valuesiter--9e8aba4504bc5de5018680a2.md) | 62 | `declaration-track:9e8aba4504bc5de5018680a28cbc54dd8a5b649dd6b7d109d36e9a222a32aeb0` |
| 4 | `theorem` | [toList_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4.lean/declarations/tolist-iter--f8b15adca0906831d9a885c8.md) | 67 | `result-track:f8b15adca0906831d9a885c8ec9d68e96967d4a9e0939ebf99a3067351ae2509` |
| 5 | `theorem` | [keysIter_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4.lean/declarations/keysiter-tolist--8aa482df7fd71ce0ac08af8d.md) | 74 | `result-track:8aa482df7fd71ce0ac08af8d57217e5d299ec1037e70d430567f3ccd76cfa848` |
| 6 | `theorem` | [valuesIter_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4.lean/declarations/valuesiter-tolist--eeef7c0110a5e5511a63d70d.md) | 79 | `result-track:eeef7c0110a5e5511a63d70d84836eaef6770d9e746da65a48f58e95538051f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
