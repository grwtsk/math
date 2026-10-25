# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stream.Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8faa73c3aef2fff51691c959b99fd816e41344b0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8faa73c3aef2fff51691c959b99fd816e41344b0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean.json)

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
| 1 | `def` | [drop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/declarations/drop--2800e44f1c5085b772830f6e.md) | 13 | `declaration-track:2800e44f1c5085b772830f6edefeafee240ea5da982b1d0b090bb6f401ad7e05` |
| 2 | `def` | [take](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/declarations/take--b9ba509fb728e9432e3ba94e.md) | 21 | `declaration-track:b9ba509fb728e9432e3ba94e0950d4f1d1364024ba9720d6761b520312ce8d36` |
| 3 | `theorem` | [fst_take_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/declarations/fst-take-zero--073960a8e145a19d882d11bb.md) | 30 | `result-track:073960a8e145a19d882d11bb45da4587387df9a5657159dbb43569da7569f6e5` |
| 4 | `theorem` | [fst_take_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/declarations/fst-take-succ--9a0f180beb9cdb3d81835bea.md) | 33 | `result-track:9a0f180beb9cdb3d81835bea60d865d78790b8dbf242a08a1108af5d944ffc21` |
| 5 | `theorem` | [snd_take_eq_drop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/declarations/snd-take-eq-drop--d9d158cdb923a47a4dc2a3eb.md) | 39 | `result-track:d9d158cdb923a47a4dc2a3eb102c1da89b147dcf84f5d561a0b5570c2a66afce` |
| 6 | `def` | [takeTR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/declarations/taketr--00f7b24feb11013c8d983287.md) | 48 | `declaration-track:00f7b24feb11013c8d98328756110a247d5f119c450537a73055dfbf466dc90d` |
| 7 | `theorem` | [fst_takeTR_loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/declarations/fst-taketr-loop--80ccd953de7e391c81a8cc76.md) | 58 | `result-track:80ccd953de7e391c81a8cc7624e104561ab8403a7f34d2e3aba38257b9cd3bbc` |
| 8 | `theorem` | [fst_takeTR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/declarations/fst-taketr--a6af6f9f9627ddc2c8b1f68f.md) | 64 | `result-track:a6af6f9f9627ddc2c8b1f68ff58ddc32de0c56e3544786e303c13829e13ade69` |
| 9 | `theorem` | [snd_takeTR_loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/declarations/snd-taketr-loop--f3f12754b19f034372721857.md) | 67 | `result-track:f3f12754b19f034372721857bdcf4616e3327cc4181534ea3dc09e1c3075beb4` |
| 10 | `theorem` | [snd_takeTR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/declarations/snd-taketr--d8eca49eb8f011b1c8a10a49.md) | 73 | `result-track:d8eca49eb8f011b1c8a10a49e46b101966cb40c5dfd2265647ca1cc4f9624414` |
| 11 | `theorem` | [take_eq_takeTR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/declarations/take-eq-taketr--500c76603440e35684b48339.md) | 76 | `result-track:500c76603440e35684b4833914a88b271224703d630d06234a87258c2c717bd6` |
| 12 | `theorem` | [List.stream_drop_eq_drop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/declarations/list-stream-drop-eq-drop--e46ada17a5cd07f8b5239148.md) | 81 | `result-track:e46ada17a5cd07f8b5239148bde70ef816c12c6375f0683ede3fb5e78bb87b50` |
| 13 | `theorem` | [List.stream_take_eq_take_drop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3.lean/declarations/list-stream-take-eq-take-drop--9cd667d1d290bb5d0c98ca96.md) | 89 | `result-track:9cd667d1d290bb5d0c98ca9698537e2a1e7a3bddea23892ba218c7b561cf166d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
