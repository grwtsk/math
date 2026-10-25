# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunctionData.Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ec269e3d60f47de00f4940f803e13a6bd6abee6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ec269e3d60f47de00f4940f803e13a6bd6abee6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Qq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.Mor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FunctionData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/functiondata--7e19b6dd95e37e9b58e2cc55.md) | 23 | `declaration-track:7e19b6dd95e37e9b58e2cc55b4128230638407d85e80c0b5b73e3ed05e676bc3` |
| 2 | `def` | [FunctionData.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/functiondata-toexpr--36c648ecb38679d5130f5908.md) | 38 | `declaration-track:36c648ecb38679d5130f5908e9b70a742d22f321e200dc2439b6588dd377906c` |
| 3 | `def` | [FunctionData.isIdentityFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/functiondata-isidentityfun--2b97106fd595d5a3fd43b349.md) | 44 | `declaration-track:2b97106fd595d5a3fd43b349cb9b3b0d514fa0a64446cef0eff443daa15064f4` |
| 4 | `def` | [FunctionData.isConstantFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/functiondata-isconstantfun--53ab805eac7b1e89a7de4f1a.md) | 48 | `declaration-track:53ab805eac7b1e89a7de4f1ae0a84eb8345e1449a631b9e3761ba22d95d499ae` |
| 5 | `def` | [FunctionData.domainType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/functiondata-domaintype--722f1d36f14e18275c86df89.md) | 52 | `declaration-track:722f1d36f14e18275c86df899eb785558d653319d69222dfcf5a0f551fd73ceb` |
| 6 | `def` | [FunctionData.getFnConstName?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/functiondata-getfnconstname--2200b5474d58081029930257.md) | 59 | `declaration-track:2200b5474d58081029930257429f9a508ec394dbc2d5260cb11afac5a1bb3b5a` |
| 7 | `def` | [getFunctionData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/getfunctiondata--73041c21b2fe3d1cc13a8da7.md) | 71 | `declaration-track:73041c21b2fe3d1cc13a8da71af38438f8f1a1dd540f94ca66bc266badd35f1f` |
| 8 | `inductive` | [MaybeFunctionData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/maybefunctiondata--7ceb84d2d15a431c8050ae86.md) | 104 | `declaration-track:7ceb84d2d15a431c8050ae862b7f151d5a7c43b22056a5a4babfd8e400a7a150` |
| 9 | `def` | [MaybeFunctionData.get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/maybefunctiondata-get--fc175de60e8998ceceb6b315.md) | 113 | `declaration-track:fc175de60e8998ceceb6b3157941cfac4cb65ac491e8fffe1108e18446282475` |
| 10 | `def` | [getFunctionData?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/getfunctiondata--30aeeda9bccadf917ae1dae6.md) | 119 | `declaration-track:30aeeda9bccadf917ae1dae6ff4edb9f9a68c64a8282a09b89d6037d06816720` |
| 11 | `def` | [FunctionData.unfoldHeadFVar?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/functiondata-unfoldheadfvar--44f0fc2dfa35835e365af7c3.md) | 143 | `declaration-track:44f0fc2dfa35835e365af7c3dd78cf7efd3fc8d89400e8a4c63fbb35b9411ceb` |
| 12 | `inductive` | [MorApplication](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/morapplication--1830613743325abaedfc966d.md) | 151 | `declaration-track:1830613743325abaedfc966d45b5df4d807a9bbfa392fc94b44cbc2d8cc244cf` |
| 13 | `def` | [FunctionData.isMorApplication](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/functiondata-ismorapplication--46d83538b57d6e7fea08e8d7.md) | 163 | `declaration-track:46d83538b57d6e7fea08e8d7f526a99241243826b2b3ff26a3f6e8d869032471` |
| 14 | `def` | [FunctionData.peeloffArgDecomposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/functiondata-peeloffargdecomposition--9865fe70e568085a97d0bd63.md) | 189 | `declaration-track:9865fe70e568085a97d0bd63ab32cd58339e8d98f785eae7d6c36c6133be0353` |
| 15 | `def` | [FunctionData.nontrivialDecomposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/functiondata-nontrivialdecomposition--eea0c867dd5e08c38d4baf94.md) | 213 | `declaration-track:eea0c867dd5e08c38d4baf94b07d9fb2c27739bd2c511fe32afe0c0860bc19c5` |
| 16 | `def` | [FunctionData.decompositionOverArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/declarations/functiondata-decompositionoverargs--b1d32bd7a00954bee9a8925b.md) | 270 | `declaration-track:b1d32bd7a00954bee9a8925b07d850573715ce0412133f26750b148913f09b5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
