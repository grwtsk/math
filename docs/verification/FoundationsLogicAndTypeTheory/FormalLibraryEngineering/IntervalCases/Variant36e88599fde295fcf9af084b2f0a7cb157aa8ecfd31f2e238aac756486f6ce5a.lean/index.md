# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalCases.Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1fdf7b7d018cdc1bf84f43fa53b17bf5d338608",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1fdf7b7d018cdc1bf84f43fa53b17bf5d338608`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean.json)

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
| 1 | `structure` | [IntervalCasesSubgoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/intervalcasessubgoal--0677c6cd9e8b512a73aa5f7a.md) | 38 | `declaration-track:0677c6cd9e8b512a73aa5f7a4c8ed6889dccdb4db38f8185dbd6ac82bc2b3514` |
| 2 | `inductive` | [Bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/bound--7b110927fff57587c0d77c90.md) | 52 | `declaration-track:7b110927fff57587c0d77c902ad0c6534447766685e5c94e6279d50a61821a82` |
| 3 | `def` | [Bound.asLower](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/bound-aslower--101cb2586b814defafed91ae.md) | 65 | `declaration-track:101cb2586b814defafed91ae56584bf066b38775cc53d9343da1f1a6656dff62` |
| 4 | `def` | [Bound.asUpper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/bound-asupper--91cdec53005a81ca6d2d04f3.md) | 77 | `declaration-track:91cdec53005a81ca6d2d04f3aca1950c35e61bc4b07b4388b9fc194d1d1ee881` |
| 5 | `def` | [parseBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/parsebound--7e8068a96db0e0797c14a0e4.md) | 87 | `declaration-track:7e8068a96db0e0797c14a0e410ce5340c5a79fa5a6842ed901261b402b367814` |
| 6 | `structure` | [Methods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/methods--2bf0a84faf149ec05d01915e.md) | 105 | `declaration-track:2bf0a84faf149ec05d01915ecf85625998a2d3f167ed286a1968874c136c98d9` |
| 7 | `theorem` | [of_not_lt_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/of-not-lt-left--88e64f80cc79a2194a7b017c.md) | 128 | `result-track:88e64f80cc79a2194a7b017c554a32a56f47dc8dffacf70a04049f6a8f24310f` |
| 8 | `theorem` | [of_not_lt_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/of-not-lt-right--a1da6a188e5be6dd0fe11347.md) | 129 | `result-track:a1da6a188e5be6dd0fe11347f47ceb80edf905f6132391b71a9285cf2a00cf1b` |
| 9 | `theorem` | [of_not_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/of-not-le-left--553c4f8eef8dede871764035.md) | 130 | `result-track:553c4f8eef8dede871764035ebe7a1915c4a2581be21a059568322a7b981e4a3` |
| 10 | `theorem` | [of_not_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/of-not-le-right--1fc1a6d1c470d08f387009a3.md) | 131 | `result-track:1fc1a6d1c470d08f387009a3a082c85b21657718c951b51bd16503388635d033` |
| 11 | `theorem` | [of_lt_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/of-lt-left--b72933039fabcde4e9fbfe03.md) | 132 | `result-track:b72933039fabcde4e9fbfe03fc4c6b9cfead6a9923561d08cf72b75d8003e13a` |
| 12 | `theorem` | [of_lt_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/of-lt-right--aff231f0d4c66d70f0e71a21.md) | 133 | `result-track:aff231f0d4c66d70f0e71a219a4f01a78cb605b18834743664d2f76db2f6a271` |
| 13 | `theorem` | [of_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/of-le-left--effbb5ff4f55e739fe7663c8.md) | 134 | `result-track:effbb5ff4f55e739fe7663c8dbef2f3eec79be8fdf6bd36141fac4007aa02cd8` |
| 14 | `theorem` | [of_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/of-le-right--097ef0ed80a96ea41e86dc46.md) | 135 | `result-track:097ef0ed80a96ea41e86dc467c0775601ca71b01501a16ffc2c6fdfeeb3f22d2` |
| 15 | `def` | [Methods.getBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/methods-getbound--0fda513d29dc008554e4552f.md) | 142 | `declaration-track:0fda513d29dc008554e4552f47fd8cd3d3ccdb0aba186293ae8d6f5e1c049f2b` |
| 16 | `theorem` | [le_of_not_le_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/le-of-not-le-of-le--1095b2cf62a9562b66a056ff.md) | 164 | `result-track:1095b2cf62a9562b66a056ffa19278ded34420f9f997c7fa3fab4f6badcf976c` |
| 17 | `def` | [Methods.inconsistentBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/methods-inconsistentbounds--858896df60e78c01be1f7fd6.md) | 172 | `declaration-track:858896df60e78c01be1f7fd6bc72911916f7c3bf9a266fd64683a1d3fd8c84a3` |
| 18 | `def` | [Methods.bisect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/methods-bisect--ee444084971261cb76c047a9.md) | 195 | `declaration-track:ee444084971261cb76c047a904dd5f9e297ed61e8374c3bac32b35eaa5a88d08` |
| 19 | `def` | [natMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/natmethods--2d664b3b31eecdfb1441d5e0.md) | 219 | `declaration-track:2d664b3b31eecdfb1441d5e03bc368408fa41c377b8819809d67e193d00bd9ee` |
| 20 | `theorem` | [_root_.Int.add_one_le_of_not_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/root-int-add-one-le-of-not-le--b13b002dc442e2be9fc38bcd.md) | 233 | `result-track:b13b002dc442e2be9fc38bcdfeed8b5d02e47fd4b9db16a2d3f5480237df5e1b` |
| 21 | `theorem` | [_root_.Int.le_sub_one_of_not_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/root-int-le-sub-one-of-not-le--8af2a3288b08e9030fe27af7.md) | 235 | `result-track:8af2a3288b08e9030fe27af73cbb779136fc162980513c6a74fb3a6f1be04953` |
| 22 | `def` | [intMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/intmethods--38edeceb89ca1ad12d67c063.md) | 240 | `declaration-track:38edeceb89ca1ad12d67c06305cabc7ba8011f2ea875b1818e1bc80c461fbf56` |
| 23 | `def` | [intervalCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/intervalcases--72297846eb627e99245ff1c2.md) | 278 | `declaration-track:72297846eb627e99245ff1c21ca15dc0969f91e8e921922edd16276ed8494ad7` |
| 24 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/syntax--511e21702d37dd4e0dd93e03.md) | 347 | `declaration-track:511e21702d37dd4e0dd93e03251840f75b3fd08ee8741fa0d981737d3f5eb5d3` |
| 25 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/declarations/elab-rules--9013a183c2e9140919cbc7cb.md) | 350 | `declaration-track:9013a183c2e9140919cbc7cbc753ff64f820507908eb9fa5a0cf3aca929f70f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
