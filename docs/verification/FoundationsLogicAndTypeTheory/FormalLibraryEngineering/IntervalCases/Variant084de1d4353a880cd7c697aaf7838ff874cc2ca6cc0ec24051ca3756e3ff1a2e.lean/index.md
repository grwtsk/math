# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalCases.Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "010740ceebf31650bfd954c627bfdd4d12b5a583",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `010740ceebf31650bfd954c627bfdd4d12b5a583`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean.json)

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
| 1 | `structure` | [IntervalCasesSubgoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/intervalcasessubgoal--bb401e321b1e7b30d431ba5c.md) | 46 | `declaration-track:bb401e321b1e7b30d431ba5c59db0940d2b14eca5fc1c4098cd2738231b63a02` |
| 2 | `inductive` | [Bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/bound--bd24104a3dfbe53e6e4fcc3d.md) | 60 | `declaration-track:bd24104a3dfbe53e6e4fcc3d1a10623e2243f57da14cf30cc05cfb7e83cac726` |
| 3 | `def` | [Bound.asLower](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/bound-aslower--412bb5b93f459c90bb223bce.md) | 73 | `declaration-track:412bb5b93f459c90bb223bce91a986bdc995a75cca865314f4a61ee7ae962f09` |
| 4 | `def` | [Bound.asUpper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/bound-asupper--d9e2a84edd059037f73b6ab0.md) | 85 | `declaration-track:d9e2a84edd059037f73b6ab086ca665eb8f6ab7894d2abb25a52489e92604c17` |
| 5 | `def` | [parseBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/parsebound--996365535bf055e619f7b846.md) | 95 | `declaration-track:996365535bf055e619f7b846163400eca7390610f13ca12393f64042a309b157` |
| 6 | `structure` | [Methods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/methods--e7efed42fcbd6cab7ed3cd23.md) | 113 | `declaration-track:e7efed42fcbd6cab7ed3cd238adf673fa67d5b8542c58998b70e93514d3418b1` |
| 7 | `theorem` | [of_not_lt_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/of-not-lt-left--831fdc18a50f4b49d741d6c7.md) | 136 | `result-track:831fdc18a50f4b49d741d6c743db417a452201575804821e9aea9550c091c0b6` |
| 8 | `theorem` | [of_not_lt_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/of-not-lt-right--b5f04ddfbadde48b6acb5574.md) | 137 | `result-track:b5f04ddfbadde48b6acb5574694c879643202c8fec6f264f7b3712d3f281e913` |
| 9 | `theorem` | [of_not_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/of-not-le-left--6c80ec8700c760417517d651.md) | 138 | `result-track:6c80ec8700c760417517d6518b96f528dcded8dc20155b03ecb82b991383e599` |
| 10 | `theorem` | [of_not_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/of-not-le-right--394227150b8eecbd413af40f.md) | 139 | `result-track:394227150b8eecbd413af40f48659c65eb6b5ff4972568b177e71ee508abb1f0` |
| 11 | `theorem` | [of_lt_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/of-lt-left--67752763bffd29fe56fc5e06.md) | 140 | `result-track:67752763bffd29fe56fc5e061fb6e32051b5799e1236ef3ab3c43c4703d299ba` |
| 12 | `theorem` | [of_lt_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/of-lt-right--8976d45f5c81c4feb6bd7a1e.md) | 141 | `result-track:8976d45f5c81c4feb6bd7a1eda2fc39a8ed04c1b6bb3439ce944a769acc65c37` |
| 13 | `theorem` | [of_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/of-le-left--2517802cb4a5ae6f6556ac07.md) | 142 | `result-track:2517802cb4a5ae6f6556ac074f2e6e0205844dac1a08868f5d06e313a5e6b8c3` |
| 14 | `theorem` | [of_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/of-le-right--d45ed17782ee991fe74a101c.md) | 143 | `result-track:d45ed17782ee991fe74a101cee56b5a287875e5a75e707d98099fef4c45372d4` |
| 15 | `def` | [Methods.getBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/methods-getbound--0c86597ac510568e758a0fa8.md) | 150 | `declaration-track:0c86597ac510568e758a0fa8431d6dc5eee67e429066ca890b47960323792523` |
| 16 | `theorem` | [le_of_not_le_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/le-of-not-le-of-le--80cee146ff850d68c372b928.md) | 172 | `result-track:80cee146ff850d68c372b9284d411ae433c967e15f3cefb7ab6485d2a87657dc` |
| 17 | `def` | [Methods.inconsistentBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/methods-inconsistentbounds--e2cadc893f3b85e00f323c53.md) | 180 | `declaration-track:e2cadc893f3b85e00f323c536e2ba9ed3940bfbad92c87f2ffb9261bdae0c33e` |
| 18 | `def` | [Methods.bisect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/methods-bisect--4c1a14723ce7fb52ae1ba17d.md) | 203 | `declaration-track:4c1a14723ce7fb52ae1ba17d8dab46ffbf37183083b8e9a6284f6e7409f45250` |
| 19 | `def` | [natMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/natmethods--bf7c0188cac3d0f6862efaa8.md) | 227 | `declaration-track:bf7c0188cac3d0f6862efaa8c35e3714c16036b9cea0b10deb4541c760d18cec` |
| 20 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalCasesSubgoal.Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.Int.add_one_le_of_not_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-inter--fbc5caaebf611e9ccfaae8a3.md) | 241 | `result-track:fbc5caaebf611e9ccfaae8a34dc1c0d03010d61f03f67bfd16c5c89d22caf40c` |
| 21 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalCasesSubgoal.Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.Int.le_sub_one_of_not_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-inter--b125f99d2e3855e1bf2bf2f0.md) | 243 | `result-track:b125f99d2e3855e1bf2bf2f0298b5e898db9709ba8908091b85c9dbee3b1e792` |
| 22 | `def` | [intMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/intmethods--e86332199f785c02586f7d70.md) | 248 | `declaration-track:e86332199f785c02586f7d709208b6868b826cfb701ba68dddba845424aea2e5` |
| 23 | `def` | [intervalCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/intervalcases--4c8c94296e107285b1c46bf1.md) | 286 | `declaration-track:4c8c94296e107285b1c46bf1c0620fa0c9cff73eab197bc74d2f237a84e2321a` |
| 24 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/syntax--3b5f5c7dec6556fe1142b3a9.md) | 355 | `declaration-track:3b5f5c7dec6556fe1142b3a978ab2dfe506fc19bad6eea8b0768b3e2d4536327` |
| 25 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/declarations/elab-rules--db5cf0120ade803448cdf440.md) | 358 | `declaration-track:db5cf0120ade803448cdf44020317a92056966a1a278d667d5fbf44f6360bc97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
