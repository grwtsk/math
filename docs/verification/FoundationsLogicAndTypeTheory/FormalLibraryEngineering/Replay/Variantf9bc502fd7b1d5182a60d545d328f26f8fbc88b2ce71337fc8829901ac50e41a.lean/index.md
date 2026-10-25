# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replay.Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afd003460ac2aa745a3016e0b24a5ab5ec0502c2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afd003460ac2aa745a3016e0b24a5ab5ec0502c2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.CoreM` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean/declarations/context--6983db5ff1290ca0c53498fe.md) | 41 | `declaration-track:6983db5ff1290ca0c53498fe882b81a5849b9307506e02d2c72033081423190d` |
| 2 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean/declarations/state--f8ff35d182f85acac37299d6.md) | 44 | `declaration-track:f8ff35d182f85acac37299d65cb55db3e4c5b1bcc0860bccfda913e507e0b93d` |
| 3 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean/declarations/m--3a3657bdcee4ea3859af9a31.md) | 51 | `declaration-track:3a3657bdcee4ea3859af9a313af8e39f38f7b9fdaf0b58de50ceaf48ab6441c6` |
| 4 | `def` | [isTodo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean/declarations/istodo--d1694d35b0dc6df454726470.md) | 54 | `declaration-track:d1694d35b0dc6df4547264707dd04064d4e0c49dd432d3c3cb41d3659015e5db` |
| 5 | `def` | [throwKernelException](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean/declarations/throwkernelexception--66067bf51329a7a7a6e1c58d.md) | 63 | `declaration-track:66067bf51329a7a7a6e1c58dc4e041bc481b0433482301b39c8dc720840cd946` |
| 6 | `def` | [addDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean/declarations/adddecl--b5389176e08ee2f071410188.md) | 67 | `declaration-track:b5389176e08ee2f07141018879c55ea65ab3292cc5c3726f7b926a2d27bf53c0` |
| 7 | `def` | [replayConstant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean/declarations/replayconstant--f06e407e3cc924c220e9c3a6.md) | 82 | `declaration-track:f06e407e3cc924c220e9c3a616d3a17dafb65cca951c9ed7f43b7d8898cbb9de` |
| 8 | `def` | [replayConstants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean/declarations/replayconstants--1d5516061150f9b0429eb1ce.md) | 147 | `declaration-track:1d5516061150f9b0429eb1ce2308d86b4783a8e9db0fced71976a9209587efd5` |
| 9 | `def` | [checkPostponedConstructors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean/declarations/checkpostponedconstructors--7e7c5776380c446e243c4b6d.md) | 156 | `declaration-track:7e7c5776380c446e243c4b6da7f8f0f2859b3e7f817bc1595374072d316e5cfb` |
| 10 | `def` | [checkPostponedRecursors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean/declarations/checkpostponedrecursors--7bde7b450d22ab368b04eab3.md) | 167 | `declaration-track:7bde7b450d22ab368b04eab34e544f23bb9b68dad0a0b56c4f5a543728c36fdb` |
| 11 | `def` | [replay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variantf9bc502fd7b1d5182a60d545d328f26f8fbc88b2ce71337fc8829901ac50e41a.lean/declarations/replay--dff2055cb23ef965771139e4.md) | 184 | `declaration-track:dff2055cb23ef965771139e41ca4256ede6a1c3b1e5f2ea490f892f11202675a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
