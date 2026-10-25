# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variantb2ce040e0c478cf9e0673247c6e4d3c47a8f0793feb580f18080fe824348da7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb429dfe075e4d4e3769536685d13c8d3ffbc79c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb2ce040e0c478cf9e0673247c6e4d3c47a8f0793feb580f18080fe824348da7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb2ce040e0c478cf9e0673247c6e4d3c47a8f0793feb580f18080fe824348da7a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb2ce040e0c478cf9e0673247c6e4d3c47a8f0793feb580f18080fe824348da7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb429dfe075e4d4e3769536685d13c8d3ffbc79c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb2ce040e0c478cf9e0673247c6e4d3c47a8f0793feb580f18080fe824348da7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb2ce040e0c478cf9e0673247c6e4d3c47a8f0793feb580f18080fe824348da7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Combinators.FilterMap` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb2ce040e0c478cf9e0673247c6e4d3c47a8f0793feb580f18080fe824348da7a.lean/declarations/iter--fd60f9d9b63eb0e1a2dd80aa.md) | 39 | `declaration-track:fd60f9d9b63eb0e1a2dd80aaf64fd8028ea4ef750d759a85525ac10359d6edc7` |
| 2 | `def` | [keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb2ce040e0c478cf9e0673247c6e4d3c47a8f0793feb580f18080fe824348da7a.lean/declarations/keysiter--3b72f6dfc789a2e9cf143f92.md) | 54 | `declaration-track:3b72f6dfc789a2e9cf143f92572fe62db31da949e7583b9a2aafebf056a09693` |
| 3 | `def` | [valuesIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb2ce040e0c478cf9e0673247c6e4d3c47a8f0793feb580f18080fe824348da7a.lean/declarations/valuesiter--f5525268137257b948d81195.md) | 69 | `declaration-track:f5525268137257b948d81195f331166fc76d0fc2867f05432be11923bc22222f` |
| 4 | `def` | [iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb2ce040e0c478cf9e0673247c6e4d3c47a8f0793feb580f18080fe824348da7a.lean/declarations/iter--5a157cd4c099854e62c6b2ea.md) | 77 | `declaration-track:5a157cd4c099854e62c6b2ead2f9d4ae0cef498c9cc9391c84f4cd52f12fb6d4` |
| 5 | `def` | [keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb2ce040e0c478cf9e0673247c6e4d3c47a8f0793feb580f18080fe824348da7a.lean/declarations/keysiter--6c30381e5b7d23422d540d29.md) | 81 | `declaration-track:6c30381e5b7d23422d540d29533c163a449f1d6e3edb0b00e02d91bb4665a76e` |
| 6 | `def` | [valuesIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantb2ce040e0c478cf9e0673247c6e4d3c47a8f0793feb580f18080fe824348da7a.lean/declarations/valuesiter--1864292c49d0eb777b8f3e6d.md) | 85 | `declaration-track:1864292c49d0eb777b8f3e6dad9bb63641d8e4f3e32b5fa3f63662c8cd76a786` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
