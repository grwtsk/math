# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoConfusion.Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22cac14cf82b8c20dc75c36b705e00f1dade1df3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22cac14cf82b8c20dc75c36b705e00f1dade1df3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.AddDecl` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.CompletionName` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CtorIdx` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CtorElim` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Subst` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkNoConfusionCtorArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/declarations/mknoconfusionctorarg--2d7a834bb0e5f07e1c43377d.md) | 37 | `declaration-track:2d7a834bb0e5f07e1c43377d4379a772a90093bb550c0535d4a1c1cb623b7e54` |
| 2 | `def` | [mkNoConfusionTypeName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/declarations/mknoconfusiontypename--2850dcc989cdb81f35a770b3.md) | 61 | `declaration-track:2850dcc989cdb81f35a770b3e6a60022a86d63e890a82e415029ad76fd228b8b` |
| 3 | `def` | [canUseLinear](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/declarations/canuselinear--24b5ed0e7db7327fd2fa9776.md) | 64 | `declaration-track:24b5ed0e7db7327fd2fa9776268a400920a5edadf11ae12f2b82fd6fe44518a0` |
| 4 | `def` | [mkIfNatEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/declarations/mkifnateq--09402d8b9ad87ee87c218ae4.md) | 72 | `declaration-track:09402d8b9ad87ee87c218ae4d9c6f5d6e69076db942163856ddd4278fc2356a5` |
| 5 | `def` | [mkNoConfusionType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/declarations/mknoconfusiontype--422e3e97342081a403c161ee.md) | 80 | `declaration-track:422e3e97342081a403c161eed7484c75bcddd9c05e378e7d737131b7d9d298fc` |
| 6 | `def` | [withEqTelescope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/declarations/witheqtelescope--6d09b8d31f1366a16622c6d7.md) | 159 | `declaration-track:6d09b8d31f1366a16622c6d7267682047d083eb4822f267d3620fc52a7807431` |
| 7 | `def` | [withNeededEqTelescope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/declarations/withneededeqtelescope--dcd0e68ed3e03bdfedde730d.md) | 175 | `declaration-track:dcd0e68ed3e03bdfedde730dc41e8cace66c7b64102ba443aa392f568fd968cc` |
| 8 | `def` | [mkEqNDRecTelescope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/declarations/mkeqndrectelescope--3606fff5e0b551f50eda7e6b.md) | 198 | `declaration-track:3606fff5e0b551f50eda7e6b3b4637803776cbd604b594f6d91eadcee1e1ce4c` |
| 9 | `def` | [mkNoConfusionCoreImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/declarations/mknoconfusioncoreimp--40b8ce3179286750415a1265.md) | 218 | `declaration-track:40b8ce3179286750415a126535d6e14c91726e2924b6285198db6cb6dc720d4b` |
| 10 | `def` | [mkNoConfusionCtors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/declarations/mknoconfusionctors--e80939364d185639d76093bc.md) | 297 | `declaration-track:e80939364d185639d76093bc49597084a311d17f5552bda7e555ff7a401cd962` |
| 11 | `def` | [mkNoConfusionCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/declarations/mknoconfusioncore--a588a3788cb79f5e11b84cd2.md) | 364 | `declaration-track:a588a3788cb79f5e11b84cd2fb8f3cd174a0326a71fc89df0ecfd43e5d0ac509` |
| 12 | `def` | [mkNoConfusionEnum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/declarations/mknoconfusionenum--89994640e370914409a6d5f5.md) | 375 | `declaration-track:89994640e370914409a6d5f53be43a8e7d4919aff3d84d9ada010d08d7d763c7` |
| 13 | `def` | [mkNoConfusion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/declarations/mknoconfusion--955986c7cf486a30496a9d97.md) | 440 | `declaration-track:955986c7cf486a30496a9d97bdaf99330997851f2fb102ee53ef93739ebb4094` |
| 14 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/declarations/builtin-initialize--6fad7022434fe945762f6d89.md) | 448 | `declaration-track:6fad7022434fe945762f6d894269c1153bc7a00da97b97d186bcc77c06e699d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
