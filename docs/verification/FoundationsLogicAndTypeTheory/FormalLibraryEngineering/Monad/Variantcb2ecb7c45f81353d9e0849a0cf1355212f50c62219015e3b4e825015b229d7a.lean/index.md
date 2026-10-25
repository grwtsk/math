# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Monad.Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c5272f517af14fadd7aebf72fbfd88045f2614b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c5272f517af14fadd7aebf72fbfd88045f2614b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean.json)

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
| 1 | `class` | [WPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/declarations/wpmonad--ee9f22b9b174e8712ee560cd.md) | 36 | `declaration-track:ee9f22b9b174e8712ee560cd97941b1df265d49fed1e48d075a203a6c75d037e` |
| 2 | `theorem` | [WPMonad.wp_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/declarations/wpmonad-wp-map--ec32ae9e7b24bf963dafa20f.md) | 44 | `result-track:ec32ae9e7b24bf963dafa20f5feb876fafc148516ec4db464bff289c57d5dc22` |
| 3 | `theorem` | [WPMonad.wp_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/declarations/wpmonad-wp-seq--d57185de465acc502883cff2.md) | 48 | `result-track:d57185de465acc502883cff245120143deb2bbccfadbbf4a0936018708dcf877` |
| 4 | `instance` | [Id.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/declarations/id-instwpmonad--e620ed1940a0a1535f9819a5.md) | 53 | `declaration-track:e620ed1940a0a1535f9819a547f6a18d6581651c1b2ad683a3ed0f6ff97e1dc1` |
| 5 | `instance` | [StateT.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/declarations/statet-instwpmonad--eebd9fdb38f0097e0c87edf7.md) | 57 | `declaration-track:eebd9fdb38f0097e0c87edf730427cb436a8f79c31c0f44eb2227cd7a88f0509` |
| 6 | `instance` | [ReaderT.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/declarations/readert-instwpmonad--bd9dd0cf90d42d875196fe2d.md) | 61 | `declaration-track:bd9dd0cf90d42d875196fe2d3759eae79e5447afd9bcb0facbca788067647957` |
| 7 | `instance` | [ExceptT.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/declarations/exceptt-instwpmonad--9c01ce93270229c1e0619938.md) | 65 | `declaration-track:9c01ce93270229c1e06199380326cf7746b3ef27988b4c40635f77924a811fee` |
| 8 | `instance` | [OptionT.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/declarations/optiont-instwpmonad--b16f421996dbfad764c9d9e6.md) | 76 | `declaration-track:b16f421996dbfad764c9d9e6cc4f18128a3f2012099252e536e0d174dbb7a0b8` |
| 9 | `instance` | [EStateM.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/declarations/estatem-instwpmonad--4acf312d975eb684b75cdbf2.md) | 87 | `declaration-track:4acf312d975eb684b75cdbf27d2cb6e1eaa8e18a4ce287fed6ecee04ca225938` |
| 10 | `instance` | [Except.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/declarations/except-instwpmonad--1b9ede00aff64ca16f2deb92.md) | 95 | `declaration-track:1b9ede00aff64ca16f2deb92ec4ff7c5b274c003edf02b3f744305173ee90de3` |
| 11 | `instance` | [Option.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/declarations/option-instwpmonad--4d817ad1a1aff822efc49fa1.md) | 99 | `declaration-track:4d817ad1a1aff822efc49fa1f3b21ac37f0821b20a00e8468ddd3710d86dd451` |
| 12 | `instance` | [State.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/declarations/state-instwpmonad--53c79c30500c0664677cb13b.md) | 103 | `declaration-track:53c79c30500c0664677cb13bb5bffae5befcc82a54d5fc4d4376e210086b21a3` |
| 13 | `instance` | [Reader.instWPMonad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcb2ecb7c45f81353d9e0849a0cf1355212f50c62219015e3b4e825015b229d7a.lean/declarations/reader-instwpmonad--b4664244454fac5250091867.md) | 105 | `declaration-track:b4664244454fac5250091867acb3d03346dd2739195f187e6833cb5ea5a1740c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
