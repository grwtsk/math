# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToNat.Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ceda6d0614e06b8acbfe872921378edaa442f5f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ceda6d0614e06b8acbfe872921378edaa442f5f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean.json)

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
| 1 | `def` | [roundToInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean/declarations/roundtoint--5f8a2f22dd5f443cb0c900c3.md) | 22 | `declaration-track:5f8a2f22dd5f443cb0c900c399c215e5c8ca42bfa51d81d3ce635388ff66ba9b` |
| 2 | `def` | [toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean/declarations/toint--a9d0e78f712393358e2b0399.md) | 31 | `declaration-track:a9d0e78f712393358e2b03993094cd73bebafecac110e9b595e30c5bab8b2a0d` |
| 3 | `def` | [toUInt8](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean/declarations/touint8--163a1df44162145587e62961.md) | 42 | `declaration-track:163a1df44162145587e62961dcf3580c7a180bd9cea28b69b0d2593b2bcc5b81` |
| 4 | `def` | [toUInt16](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean/declarations/touint16--05da90f6edf94d0d4dc6bf04.md) | 49 | `declaration-track:05da90f6edf94d0d4dc6bf04a81303ff665ca3b7624f6436c9d675a1ccac0754` |
| 5 | `def` | [toUInt32](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean/declarations/touint32--daa8c203f091835d9d729ca8.md) | 56 | `declaration-track:daa8c203f091835d9d729ca8be5ddd98280fced7955f7ac0d9761b1363fb0547` |
| 6 | `def` | [toUInt64](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean/declarations/touint64--cf62534a59d1251e8c91812b.md) | 63 | `declaration-track:cf62534a59d1251e8c91812b4695468ddba6e9f87a0dca6b9268d8ba85a69d7a` |
| 7 | `def` | [toUSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean/declarations/tousize--9ca6c00fc8f435351141cf41.md) | 70 | `declaration-track:9ca6c00fc8f435351141cf41381011405ea7c3bd971c48b9c0cc6b70b1885ad0` |
| 8 | `def` | [toInt8](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean/declarations/toint8--37b531ad0b3a13bddd81d151.md) | 77 | `declaration-track:37b531ad0b3a13bddd81d15146a7ff6f10e8c9dcc640dda512fce4fa88e04068` |
| 9 | `def` | [toInt16](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean/declarations/toint16--78cd95a4b3f57648672a3226.md) | 84 | `declaration-track:78cd95a4b3f57648672a3226c1ea5383c9f804e030fa001f2ccf6ae1fbb90fdb` |
| 10 | `def` | [toInt32](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean/declarations/toint32--db5e4bd087b37e367d42f778.md) | 91 | `declaration-track:db5e4bd087b37e367d42f778bba395b32754e7d992a4cf69f6bd855f2e099b89` |
| 11 | `def` | [toInt64](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean/declarations/toint64--3d0ac96b29926c3ec531c9c4.md) | 98 | `declaration-track:3d0ac96b29926c3ec531c9c4bf5ada1ab5aab437f4b4caad2e663815a94ecbe6` |
| 12 | `def` | [toISize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant895edd1c3e2056afd9b64507b2d81d02097f2af078b0478bc3ee6d17b2dc7a3b.lean/declarations/toisize--5d51730a34ad33f8f949a650.md) | 105 | `declaration-track:5d51730a34ad33f8f949a6500fa5cba00a19946f1164ba79c7ed0ce6aa468be4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
