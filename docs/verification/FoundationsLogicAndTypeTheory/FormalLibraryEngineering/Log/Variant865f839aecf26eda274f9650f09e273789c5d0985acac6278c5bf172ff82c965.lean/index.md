# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Log.Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ae6aabb7f396d5077f3c080ab507508bcc89db9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ae6aabb7f396d5077f3c080ab507508bcc89db9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean.json)

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
| 1 | `class` | [MonadLog](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/monadlog--fb0adedc971cbaf83ac9b160.md) | 28 | `declaration-track:fb0adedc971cbaf83ac9b160ed0104a5cf27c4c446ec82d4fac3f94ef96279dd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/instance--8cb52515fe1a64993fb0d24a.md) | 40 | `declaration-track:8cb52515fe1a64993fb0d24a056ba2339db5052866d6613c68a81b047df0c81b` |
| 3 | `def` | [getRefPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/getrefpos--001f0a1b6269db965801a4de.md) | 52 | `declaration-track:001f0a1b6269db965801a4de8e23136f3a711410a79d1025e7d24cfe5ddb42be` |
| 4 | `def` | [getRefPosition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/getrefposition--7a5c9d47ad07d14461ad6883.md) | 59 | `declaration-track:7a5c9d47ad07d14461ad688368eb7d7ad688d5b6aa9f5b1468d7984cc24ae624` |
| 5 | `def` | [errorDescriptionWidget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/errordescriptionwidget--41623e7feab12e6f737b8cea.md) | 74 | `declaration-track:41623e7feab12e6f737b8cea05733e06ef30111de0517312680451903b86c6ab` |
| 6 | `def` | [MessageData.appendDescriptionWidgetIfNamed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/messagedata-appenddescriptionwidgetifnamed--c21f88d317b815db9d0f1020.md) | 96 | `declaration-track:c21f88d317b815db9d0f1020c799295f0349efae9e21d174760001d308d82293` |
| 7 | `def` | [logAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/logat--5247c4fcbb7e69674a8b1a1c.md) | 118 | `declaration-track:5247c4fcbb7e69674a8b1a1c17c827f9c71b1922bcc4da6c27c7049103b88aae` |
| 8 | `def` | [logErrorAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/logerrorat--1c3c8db30f4e9f28535eb8e7.md) | 137 | `declaration-track:1c3c8db30f4e9f28535eb8e7b0a21b4f7dc35ee1ed26090ece6eb277a37abaf0` |
| 9 | `def` | [«logNamedErrorAt»](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/lognamederrorat--85e76ce66f649c67b1728e46.md) | 146 | `declaration-track:85e76ce66f649c67b1728e46c692be18a4ec96325a61ce61d13a01a33250991f` |
| 10 | `def` | [logWarningAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/logwarningat--ca87a81422f69b4002d72f69.md) | 150 | `declaration-track:ca87a81422f69b4002d72f69474a4ad161bc3677163fc317ec8d6c49bd6f1c22` |
| 11 | `def` | [«logNamedWarningAt»](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/lognamedwarningat--5a0b00f53fbcdd3f05106cf4.md) | 159 | `declaration-track:5a0b00f53fbcdd3f05106cf4490251ad8be47112369fedf5282cbd27db619845` |
| 12 | `def` | [logInfoAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/loginfoat--ae6f17838b14ab1bf1705202.md) | 163 | `declaration-track:ae6f17838b14ab1bf17052021fee49fb3a262f6f0295e84af1e457763546037d` |
| 13 | `def` | [log](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/log--577b0ef10bd5b4171f80af75.md) | 167 | `declaration-track:577b0ef10bd5b4171f80af75763cf31c7e9f13caddf58876ae2707b6597b987d` |
| 14 | `def` | [logError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/logerror--2e6bb43ffc4bd9b2dc203acf.md) | 173 | `declaration-track:2e6bb43ffc4bd9b2dc203acf3c968213864008a8f7583480acde580f748524df` |
| 15 | `def` | [«logNamedError»](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/lognamederror--ee59ac51238f9bb9c5c098e5.md) | 182 | `declaration-track:ee59ac51238f9bb9c5c098e53f87cdb7869abc7f592b19c0a8445432119242e6` |
| 16 | `def` | [logWarning](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/logwarning--66443c5564c13c94e372537e.md) | 186 | `declaration-track:66443c5564c13c94e372537ecdc811910e3bec0a438e86a128cf37e74a452977` |
| 17 | `def` | [«logNamedWarning»](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/lognamedwarning--a7135d457dd670f4f33c86c5.md) | 195 | `declaration-track:a7135d457dd670f4f33c86c593b8f69f02264b9a2ea4a92c662411cb6a4f1e2e` |
| 18 | `def` | [logInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/loginfo--2e37a33aa3bd358aff78dc5b.md) | 199 | `declaration-track:2e37a33aa3bd358aff78dc5b9a53d27b1ea6c6e0f68469c3db04f6534ac061c8` |
| 19 | `def` | [logUnknownDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant865f839aecf26eda274f9650f09e273789c5d0985acac6278c5bf172ff82c965.lean/declarations/logunknowndecl--d386b0dcaf3af042de88bfc6.md) | 203 | `declaration-track:d386b0dcaf3af042de88bfc68db6b1c3fec2a102faa660677e34ddc14ffbf3d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
