# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToIterator.Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a365afe4972ef51df7e70df05c32ed327087ec1c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIterator/Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIterator/Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIterator/Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a365afe4972ef51df7e70df05c32ed327087ec1c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIterator/Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIterator/Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20.lean.json)

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
| 1 | `class` | [ToIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIterator/Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20.lean/declarations/toiterator--12376638330d96b64cf18bc4.md) | 21 | `declaration-track:12376638330d96b64cf18bc4921f5007720bd61dc06e141457c679f7f6e778d7` |
| 2 | `def` | [ToIterator.iterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIterator/Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20.lean/declarations/toiterator-iterm--2aa0ec710431ac99380e063c.md) | 26 | `declaration-track:2aa0ec710431ac99380e063c983d1417f2dcb704d7962ee5994a8428226bc8a4` |
| 3 | `def` | [ToIterator.iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIterator/Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20.lean/declarations/toiterator-iter--fd730e2f565b64730a4a97a8.md) | 31 | `declaration-track:fd730e2f565b64730a4a97a8394763eda5d60d7d1efd0226d2afc58f5f1b7bfe` |
| 4 | `def` | [ToIterator.ofM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIterator/Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20.lean/declarations/toiterator-ofm--54a57b458c760fac6ce37220.md) | 36 | `declaration-track:54a57b458c760fac6ce372203b124af8f9ab672459a49d6c32d1ec3e384fc631` |
| 5 | `def` | [ToIterator.of](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIterator/Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20.lean/declarations/toiterator-of--d1bb3342b8d2c378a70e83d0.md) | 43 | `declaration-track:d1bb3342b8d2c378a70e83d087e2b7934befa1ef2a147e97903da11bdebedba0` |
| 6 | `theorem` | [ToIterator.iterM_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIterator/Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20.lean/declarations/toiterator-iterm-eq--938e862cb227cf9f38a1fd29.md) | 49 | `result-track:938e862cb227cf9f38a1fd2910196ed587daf07145ca781a0946319a9d57f3bd` |
| 7 | `theorem` | [ToIterator.iter_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIterator/Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20.lean/declarations/toiterator-iter-eq--965f2cd7d4ff23ad07f7751d.md) | 56 | `result-track:965f2cd7d4ff23ad07f7751d70c4d9168a2cdc8abea6fbed95a09a6c9bdcaf99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
