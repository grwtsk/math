# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitfield.Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6b9898d5396cc439435639c793715211307740c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6b9898d5396cc439435639c793715211307740c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.PartialBitfield.Order` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Completion.Core` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FullBitfield](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean/declarations/fullbitfield--90a9cbdd8011031280bb2c05.md) | 14 | `declaration-track:90a9cbdd8011031280bb2c053da93190fea6f4a32482b9a6c84990b58f510a15` |
| 2 | `def` | [ExtendsPartialBitfield](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean/declarations/extendspartialbitfield--3f4d974427d8cbb1a1b0e6da.md) | 17 | `declaration-track:3f4d974427d8cbb1a1b0e6daa1e1b4dcd0cef9f3259c45b1607bfdfa06b720c3` |
| 3 | `def` | [bitfieldCompletionSemantics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean/declarations/bitfieldcompletionsemantics--99f611434e9dee022bc27875.md) | 27 | `declaration-track:99f611434e9dee022bc27875e4dc46d61767a3f278cbe02dfd9f2ddf9c75cb06` |
| 4 | `def` | [resolveAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean/declarations/resolveat--74ad6468466806d6fdfcc7cd.md) | 73 | `declaration-track:74ad6468466806d6fdfcc7cd8417f18b1b5232698aa77ff8e64c3b4ff4060da2` |
| 5 | `def` | [resolveAt_is_oneCoordinateResolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean/declarations/resolveat-is-onecoordinateresolution--a2e17caaa50a914087d814ed.md) | 85 | `declaration-track:a2e17caaa50a914087d814ed71e4d616d99c8f684476547cdfaae58fa3b5768f` |
| 6 | `theorem` | [completeSplit_siblings_differ_exactly_once](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean/declarations/completesplit-siblings-differ-exactly-once--c35bfb5e0ac5addbe471bd5b.md) | 103 | `result-track:c35bfb5e0ac5addbe471bd5b45a1e13639a4762c70028e810e136fd4822f3aa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
