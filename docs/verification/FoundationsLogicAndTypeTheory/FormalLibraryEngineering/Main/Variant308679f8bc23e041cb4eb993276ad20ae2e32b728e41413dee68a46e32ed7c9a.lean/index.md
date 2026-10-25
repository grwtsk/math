# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df120e845f040340f8a0d12afd3754fac549981a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df120e845f040340f8a0d12afd3754fac549981a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Cbv.BuiltinCbvSimprocs.Core` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cbv.BuiltinCbvSimprocs.Array` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cbv.BuiltinCbvSimprocs.String` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cbv.Util` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cbv.TheoremsLookup` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cbv.CbvEvalExt` — import line 23; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cbv.CbvSimproc` — import line 24; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym` — import line 25; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Refl` — import line 26; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Replace` — import line 27; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Assert` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tryEquations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/tryequations--3ff3826cb6fa35ce8046ee4d.md) | 121 | `declaration-track:3ff3826cb6fa35ce8046ee4dc184fad5471c093b6a1eb711104dde9d91fef344` |
| 2 | `def` | [tryUnfold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/tryunfold--f9a3b9b8dccbada4b986e112.md) | 131 | `declaration-track:f9a3b9b8dccbada4b986e1124b90513a42e4bcca771e3b1668e000c1e8a455f8` |
| 3 | `def` | [betaReduce](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/betareduce--893c507d63fb48f1b01c2b6c.md) | 141 | `declaration-track:893c507d63fb48f1b01c2b6c4c65eeb89b09cf3fad3db54b60d63ace82da48e5` |
| 4 | `def` | [tryCbvTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/trycbvtheorems--753c0e1f292124548e884f47.md) | 148 | `declaration-track:753c0e1f292124548e884f4722a8e2bc7576d372e2a626c79e1e63a037683b9a` |
| 5 | `def` | [handleConstApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/handleconstapp--6804593facdad147ae0853df.md) | 157 | `declaration-track:6804593facdad147ae0853dfaafb7f884505a5b8bd6fe23c557558876301c75e` |
| 6 | `def` | [handleApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/handleapp--c56e25595dab45dda5c70b2b.md) | 166 | `declaration-track:c56e25595dab45dda5c70b2bd903847c8c9627b4549572f2677b921942383b3a` |
| 7 | `def` | [handleOpaqueConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/handleopaqueconst--661b2408a346a3d415318fbb.md) | 178 | `declaration-track:661b2408a346a3d415318fbb2661096306ccae8cea97c2dea96544fc1343904a` |
| 8 | `def` | [foldLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/foldlit--04afb28a5857e93bf1b0c250.md) | 184 | `declaration-track:04afb28a5857e93bf1b0c2505f80f7a862d4ccc1433b6c9706c70c247393d027` |
| 9 | `def` | [zetaReduce](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/zetareduce--b51c9d4ed488e0a81d4a3a03.md) | 191 | `declaration-track:b51c9d4ed488e0a81d4a3a03ab05d1f9bf5330c5557de871ecf1fad395faf8cf` |
| 10 | `def` | [handleProj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/handleproj--0c9834e069727889d07472b0.md) | 205 | `declaration-track:0c9834e069727889d07472b0e2674154de67b482153a676f5108d9ae173c8c22` |
| 11 | `def` | [simplifyAppFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/simplifyappfn--e2f9efb6c2b69a6ee765fac1.md) | 256 | `declaration-track:e2f9efb6c2b69a6ee765fac191a4597ac4e2e2865d249ec810a30a2ccc0cd6dd` |
| 12 | `def` | [handleConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/handleconst--3e6a7f850e4db8b9ea37877b.md) | 276 | `declaration-track:3e6a7f850e4db8b9ea37877b259fc01d3b13c948d7bd5302c388019e41813ff4` |
| 13 | `def` | [cbvPreStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/cbvprestep--b37ce7a7d812afe15acc4263.md) | 298 | `declaration-track:b37ce7a7d812afe15acc4263a8fed0243f8c9b232879e64010b3db9ca72fb10d` |
| 14 | `def` | [cbvPre](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/cbvpre--3ad258262a51dd3b1e74fa6d.md) | 314 | `declaration-track:3ad258262a51dd3b1e74fa6d6537b69a14212d6156ddb0a5cc91061b3bbc6209` |
| 15 | `def` | [cbvPost](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/cbvpost--fa6b8933786ece514bd3da29.md) | 318 | `declaration-track:fa6b8933786ece514bd3da29673be9731485e16c33279baf4b3840f50afdca4e` |
| 16 | `def` | [mkCbvMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/mkcbvmethods--f2ee1bd539cc08a2868bda4a.md) | 321 | `declaration-track:f2ee1bd539cc08a2868bda4ac508ba25cfdc415ddda49731f39d3bc4406a562d` |
| 17 | `def` | [cbvCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/cbvcore--7a30fe9d798ed8c8c0fadb5d.md) | 334 | `declaration-track:7a30fe9d798ed8c8c0fadb5d6b5fbdd31adcb24111436911e26f00d73a2f1a9c` |
| 18 | `def` | [cbvEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/cbventry--0f1d20e53200da218263148f.md) | 343 | `declaration-track:0f1d20e53200da218263148f1db00ea70d7549ab4c805f67fe002eea704c04a4` |
| 19 | `def` | [cbvGoalCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/cbvgoalcore--36e70d518d3ec2d2b632c4a1.md) | 362 | `declaration-track:36e70d518d3ec2d2b632c4a121e15d51834f11faabc8c0757ac04314f7415e19` |
| 20 | `def` | [cbvGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/cbvgoal--ea695ae6243550b0b331e3db.md) | 430 | `declaration-track:ea695ae6243550b0b331e3dba3d66525e7908f1010b692c5f810eb9076c2b95d` |
| 21 | `def` | [cbvDecideGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/declarations/cbvdecidegoal--1b53bd5d806bf7011ba1dcc8.md) | 441 | `declaration-track:1b53bd5d806bf7011ba1dcc830f7fd49c75f4096072d8fea340a917b7ed0b1e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
