# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15774f5405f3328bbd769bc963fe95d6f608bb72",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15774f5405f3328bbd769bc963fe95d6f608bb72`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MiuAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/miuatom--1aa9dee8097cdec14b9b2401.md) | 81 | `declaration-track:1aa9dee8097cdec14b9b24013e875491c1897ee9e95498f6db817884559bce08` |
| 2 | `instance` | [miuAtomInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/miuatominhabited--bc9b013f6c9497b952b78c04.md) | 100 | `declaration-track:bc9b013f6c9497b952b78c04de07c6a21a03ed3935fcb58dcbf6fa6c6c232ff6` |
| 3 | `def` | [MiuAtom.repr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/miuatom-repr--84ba8d8ff0ce23266df23671.md) | 105 | `declaration-track:84ba8d8ff0ce23266df23671a4496535a778fb91a479268804f360943b1f7b95` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/instance--9c25890ee74cfdcc12511607.md) | 112 | `declaration-track:9c25890ee74cfdcc125116076166e1dacf41c469f29ae9e12bcb0532d8a5fae4` |
| 5 | `abbrev` | [Miustr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/miustr--978450dec1af648b7f2082dc.md) | 117 | `declaration-track:978450dec1af648b7f2082dca1de0c03312b027fe4d0c6b0ee86b2ba8f10b46e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/instance--5f9d3bc99bdf4f487b273cd8.md) | 119 | `declaration-track:5f9d3bc99bdf4f487b273cd84b610c75fe49250f7d135a1f81dd0232d34f959f` |
| 7 | `def` | [Miustr.mrepr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/miustr-mrepr--886372b60d89488d996d63a6.md) | 123 | `declaration-track:886372b60d89488d996d63a6ef324ffa1de338e9a113023e5b0ae2bffcee054c` |
| 8 | `instance` | [miurepr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/miurepr--2ff77732169fceec09542304.md) | 127 | `declaration-track:2ff77732169fceec09542304b90e750666410c09d11d523fabb5a7ce4d034200` |
| 9 | `def` | [lcharToMiustr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/lchartomiustr--14299540485824c17a610534.md) | 132 | `declaration-track:14299540485824c17a6105345ee5220eed24925be0e177bb8a6eb2eea3a554bf` |
| 10 | `instance` | [stringCoeMiustr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/stringcoemiustr--3b3c4541391a13807b718f27.md) | 142 | `declaration-track:3b3c4541391a13807b718f273850b515c7e8fd81a5d1ca7a50b2097f39b480b2` |
| 11 | `inductive` | [Derivable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/derivable--dedc71296fc5dc39dc3d833c.md) | 155 | `declaration-track:dedc71296fc5dc39dc3d833c5f2939f8a7a46cc2b778d29fa36df1af6cec315a` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/example--6dccdd4548712a6c2917c468.md) | 167 | `declaration-track:6dccdd4548712a6c2917c468d3793b869de7883ee6ce68a014bb2bc9649f967c` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/example--2beb446efa258b938e332a5d.md) | 171 | `declaration-track:2beb446efa258b938e332a5dbf353fff44263dde5a7cc1765f234bd5bc1de8ca` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/example--43800888d44f439ad07df19d.md) | 175 | `declaration-track:43800888d44f439ad07df19d7e5e9ee5bf0dd8b329b3994f211af6f057858891` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/example--24ebd24b0676e097a4fe91d3.md) | 179 | `declaration-track:24ebd24b0676e097a4fe91d34cfa150296f00df92d70617575ec6e1d277228f1` |
| 16 | `theorem` | [MIU_der](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/miu-der--8621cd6429e46b0ab6b38a52.md) | 188 | `result-track:8621cd6429e46b0ab6b38a52a8c23bbfa0c0cc85d423467c858f27ecd7d78ec6` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/example--38622fe20251cf44dc031508.md) | 193 | `declaration-track:38622fe20251cf44dc03150811416ff76dc8d7df763d8f0c411dd68e52737883` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant380f082573809f8e167ab6c8bf8f05d8d634989bbe42a3bd3a792659ab91c35c.lean/declarations/example--ffa33a20dd9e2e58eeea384c.md) | 197 | `declaration-track:ffa33a20dd9e2e58eeea384c6fcb4f6c0c44f6641e2bd94b056dcb927cb2c803` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
