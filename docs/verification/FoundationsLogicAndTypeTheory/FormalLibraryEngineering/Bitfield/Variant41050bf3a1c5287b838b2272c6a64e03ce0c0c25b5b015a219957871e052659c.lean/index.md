# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitfield.Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d1f86ec987529d6de6a25f82b2eed097300a09e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d1f86ec987529d6de6a25f82b2eed097300a09e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.PartialBitfield.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Completion.Core` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FullBitfield](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean/declarations/fullbitfield--206c064771d3351789e37773.md) | 22 | `declaration-track:206c064771d3351789e37773964b57b26f12a2ba59fe5e93aaeabaaf1da2ae9b` |
| 2 | `def` | [ExtendsPartialBitfield](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean/declarations/extendspartialbitfield--5121545a0e3c3c1b469536d0.md) | 25 | `declaration-track:5121545a0e3c3c1b469536d0270766b6c5b8306ea6aa94d22b52067d3426d4b3` |
| 3 | `def` | [bitfieldCompletionSemantics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean/declarations/bitfieldcompletionsemantics--b756a8c3de05d962301d2598.md) | 35 | `declaration-track:b756a8c3de05d962301d259864cae1a42d31cff45e10d79c1223448c602940dc` |
| 4 | `def` | [resolveAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean/declarations/resolveat--4ea8f6e619eada14e409f584.md) | 81 | `declaration-track:4ea8f6e619eada14e409f5843780e68da38dc3aee230432113ebbee5e7d59881` |
| 5 | `def` | [resolveAt_is_oneCoordinateResolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean/declarations/resolveat-is-onecoordinateresolution--2d8c0afa021c2fa69e54c922.md) | 93 | `declaration-track:2d8c0afa021c2fa69e54c92258f779c2962c7b886507d135a6c7b56035d81fbb` |
| 6 | `theorem` | [completeSplit_siblings_differ_exactly_once](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean/declarations/completesplit-siblings-differ-exactly-once--7ad1a54a99e482c65f2d2832.md) | 111 | `result-track:7ad1a54a99e482c65f2d2832313872bda42cd1f35c418874b0beb7e0f2e8fa5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
