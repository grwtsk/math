# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SolveByElim.Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5edc6405bb9d3379ec16ad71ee3afa318d241a43",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5edc6405bb9d3379ec16ad71ee3afa318d241a43`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Backtracking` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Apply` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.LocalContext` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Symm` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LabelAttr` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/initialize--7fd03a9943f42b0ad9f2d4de.md) | 20 | `declaration-track:7fd03a9943f42b0ad9f2d4dec661fbe304c293f0849f2cdf252db92ca719e464` |
| 2 | `def` | [applyTactics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/applytactics--075539633266fa1edc142b0d.md) | 34 | `declaration-track:075539633266fa1edc142b0d51c251d4da7c6c4406c6be7f36614a4515a1f366` |
| 3 | `def` | [applyFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/applyfirst--555963c6a9e823eb13086154.md) | 54 | `declaration-track:555963c6a9e823eb13086154f8b4d98de77526d75f1a725891b27f7ac7ad7b9c` |
| 4 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/config--cb404e461502050a0c707e24.md) | 65 | `declaration-track:cb404e461502050a0c707e2440358bc014b0df5068bb0f1a8ad52c148ee2afbf` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/instance--52b0f9ca0203d1fd91fa44a8.md) | 75 | `declaration-track:52b0f9ca0203d1fd91fa44a8c26da7b54f5255271aa295b742ca258cb9f1fee1` |
| 6 | `structure` | [ApplyRulesConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/applyrulesconfig--c808e1594422fd74dfd36fc8.md) | 78 | `declaration-track:c808e1594422fd74dfd36fc8637607b9be33f48d59d994c23dc2ab5a863f0e1e` |
| 7 | `def` | [accept](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/accept--98180ca79d7a02ce9e35db2c.md) | 98 | `declaration-track:98180ca79d7a02ce9e35db2c038f6954195a75f7c527fa08bf50fc8422d191aa` |
| 8 | `def` | [mainGoalProc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/maingoalproc--1d6cc9152876ffc58bdfcf9d.md) | 110 | `declaration-track:1d6cc9152876ffc58bdfcf9d570175076047c381081b5fa6ad404210195d2d1e` |
| 9 | `def` | [intros](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/intros--fbc535b794ee18399f71816c.md) | 122 | `declaration-track:fbc535b794ee18399f71816c12e725ea4d673604ebca8c9fb66abb21fcb0a4dd` |
| 10 | `def` | [synthInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/synthinstance--e3630e9f3e0234b99ba38316.md) | 129 | `declaration-track:e3630e9f3e0234b99ba38316bdf585c2b3e9c3043629aabc20cb9567a8a66782` |
| 11 | `def` | [withDischarge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/withdischarge--b0cf56e60f9376f6ca31a41e.md) | 134 | `declaration-track:b0cf56e60f9376f6ca31a41ece2fc0857d2fc5fa81ce37fa60efdca431a0508c` |
| 12 | `def` | [introsAfter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/introsafter--41f5de1779e9d7dcef3ae120.md) | 141 | `declaration-track:41f5de1779e9d7dcef3ae120fb279c33ba70b3203c6627edeb87b3d8173b9a75` |
| 13 | `def` | [synthInstanceAfter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/synthinstanceafter--fdfd11b0f9289d036838d231.md) | 146 | `declaration-track:fdfd11b0f9289d036838d2316430cc2cb2263af7d998180c205dbffbd9ed0074` |
| 14 | `def` | [testPartialSolutions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/testpartialsolutions--5d02b4ada3dbe2fb0fa50e27.md) | 153 | `declaration-track:5d02b4ada3dbe2fb0fa50e27301496bc52d1996d68765304b9fcec8fcf7085f3` |
| 15 | `def` | [testSolutions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/testsolutions--56de463e82212a01d9f9e5a8.md) | 163 | `declaration-track:56de463e82212a01d9f9e5a8a165c98943e6eae97d80b0927ca0e43ac1218c99` |
| 16 | `def` | [requireUsingAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/requireusingall--ff44fb7d86bae8eefbdc14cf.md) | 174 | `declaration-track:ff44fb7d86bae8eefbdc14cf3e0cc735b6009f507317ed1371beff4107b43d53` |
| 17 | `def` | [elabContextLemmas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/elabcontextlemmas--269fcd34162831baff236632.md) | 184 | `declaration-track:269fcd34162831baff2366322ac43dfcf3b8c47e3c5db2729d737472b8398b9a` |
| 18 | `def` | [applyLemmas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/applylemmas--77204bea5e63611495e525ac.md) | 189 | `declaration-track:77204bea5e63611495e525ac9ead67a285a9e2d09891ad6d74067353a29d4dbc` |
| 19 | `def` | [applyFirstLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/applyfirstlemma--c8a8abed38304b35aa0a0b16.md) | 198 | `declaration-track:c8a8abed38304b35aa0a0b16b095648cbf9c7015ee64ccf002264fb0936ec29a` |
| 20 | `def` | [solveByElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/solvebyelim--dc74ceff89a2e654dce483a4.md) | 222 | `declaration-track:dc74ceff89a2e654dce483a43c612d11f42686345da801fcff2370608f82d44e` |
| 21 | `def` | [_root_.Lean.MVarId.applyRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/root-lean-mvarid-applyrules--33484c118dd0d6f76d480d03.md) | 251 | `declaration-track:33484c118dd0d6f76d480d03c13482d741333eee929feb21a1834871d3a16995` |
| 22 | `def` | [mkAssumptionSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/mkassumptionset--dd230185ae4dc159b67c1744.md) | 307 | `declaration-track:dd230185ae4dc159b67c1744f2f0d4e2f06f6d7b0ba6974dc17748fa4d488a0b` |
| 23 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/syntax--6d2d19a997b4caa568a84acc.md) | 334 | `declaration-track:6d2d19a997b4caa568a84acc5604274d15bc2ddfdf47e5c15a9a91ea53f3a31a` |
| 24 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/syntax--45e7b78763821ed4da3ea76b.md) | 336 | `declaration-track:45e7b78763821ed4da3ea76b809c79e6d7fd1a0d49076fa861b98a32d3e78ef0` |
| 25 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/syntax--ebacc02fb6b890370ce52abb.md) | 338 | `declaration-track:ebacc02fb6b890370ce52abb64df41f1776b7348d43a078efcb876e4fcb61e82` |
| 26 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/syntax--12898d4000b9d5be1c13855d.md) | 340 | `declaration-track:12898d4000b9d5be1c13855daabbe27593eadbd4086153314377e581be70ace3` |
| 27 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/syntax--3f1929230ea8ea5b3ae800e4.md) | 342 | `declaration-track:3f1929230ea8ea5b3ae800e4b9587e8aeb52fe63d9bff570ec94a2ce52bbc153` |
| 28 | `def` | [parseArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/parseargs--a6d4cff80950583773510c31.md) | 352 | `declaration-track:a6d4cff80950583773510c3175030ac14759b4f7438f909ea416d9a95b8ed333` |
| 29 | `def` | [parseUsing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/parseusing--28c46c01c28e9c0a48531bf7.md) | 370 | `declaration-track:28c46c01c28e9c0a48531bf738f722be72c9950e8006afe01852a6494c7a27ac` |
| 30 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/syntax--02239806e931352fab5ff428.md) | 414 | `declaration-track:02239806e931352fab5ff428d1e9d284899037cdcdf29a5cea9920a698c5eaa8` |
| 31 | `def` | [solveByElim.processSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/solvebyelim-processsyntax--cd844347d35b81c0267e9245.md) | 419 | `declaration-track:cd844347d35b81c0267e9245252ba4a09961a0474b1c23698c3a1f91f5876404` |
| 32 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/elab-rules--913314e937adde0e0abce0cd.md) | 426 | `declaration-track:913314e937adde0e0abce0cd7dbdd85900710725a73341e13b45ec565878070a` |
| 33 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/syntax--5e9d3e634b394ad6f8798e69.md) | 459 | `declaration-track:5e9d3e634b394ad6f8798e69a15eab07d08610a765bc9a3ce27d09be1d39cc95` |
| 34 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/elab-rules--3fcf89597f06731df22d8009.md) | 462 | `declaration-track:3fcf89597f06731df22d80091f7520bf0912cc55714bd4ec81bcc37906e1a92f` |
| 35 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/syntax--4fa5d5669065a4ac6501e9cd.md) | 495 | `declaration-track:4fa5d5669065a4ac6501e9cd99c26482379cac9bd6aaa5ffffba42f299f40c54` |
| 36 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/declarations/elab-rules--418d333dfe8e83774ba66695.md) | 498 | `declaration-track:418d333dfe8e83774ba66695fba2d0849a7e5004eabc9ffe3952f08ced2670fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
