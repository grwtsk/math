# Verification target: GRWTSK.Logic.PortPureTypeSystem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbfb7fd638b499ac1f2793a26a7ad0b26379d92d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/PortPureTypeSystem.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbfb7fd638b499ac1f2793a26a7ad0b26379d92d`.

Source path: `GRWTSK/Logic/PortPureTypeSystem.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/PortPureTypeSystem.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Logic.ExternalPTSBridge`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expr](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/expr--0aa9e2e0058c257cdc810728.md) | 9 | `declaration-track:0aa9e2e0058c257cdc8107288e4f005c7017a798e0eb42791cacefa6457b881a` |
| 2 | `def` | [liftRen](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/liftren--0c93268d873e9b6b60751112.md) | 22 | `declaration-track:0c93268d873e9b6b60751112745fa2a38a66a7035009fdd67c2e4e03209317f9` |
| 3 | `def` | [rename](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/rename--68424ea718ef5656261f4b9b.md) | 27 | `declaration-track:68424ea718ef5656261f4b9bd02869bcebe7cda799ee0360a4d075b29d22ba0d` |
| 4 | `def` | [liftSub](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/liftsub--fe2db44a841b5ff72f5eeef0.md) | 35 | `declaration-track:fe2db44a841b5ff72f5eeef0e1b00e09d4f950ee7df4e7aae220401d996e7c75` |
| 5 | `def` | [subst](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/subst--c5bb235c8952e1fa2dbe6e8d.md) | 40 | `declaration-track:c5bb235c8952e1fa2dbe6e8da943ba683c2e77428960973d896f391344ccc80c` |
| 6 | `def` | [single](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/single--71956c2604d896372cd29275.md) | 48 | `declaration-track:71956c2604d896372cd29275938ee9de380a273851a957d9c533f8cdc9b6858c` |
| 7 | `def` | [instantiate](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/instantiate--35391f77e34d9322e0572b72.md) | 53 | `declaration-track:35391f77e34d9322e0572b721a73910a2be9d5e6539208bc394f61f18e75a227` |
| 8 | `theorem` | [liftRen_id](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/liftren-id--1e2d0760d94875e5723ff38e.md) | 57 | `result-track:1e2d0760d94875e5723ff38e3684a82c177d4341af54cd20e504ab5cb9d5f337` |
| 9 | `theorem` | [rename_id](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/rename-id--89c0311c0548c2ac5cf90f0e.md) | 62 | `result-track:89c0311c0548c2ac5cf90f0eebcca6cbbf9c5fb4cf06af56ea9b60598da635a8` |
| 10 | `theorem` | [liftSub_var](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/liftsub-var--222175507e62e06ca9cb5eb0.md) | 71 | `result-track:222175507e62e06ca9cb5eb0c6564d0986b000b1bf3012015382df3ccfb99a79` |
| 11 | `theorem` | [subst_var](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/subst-var--cd67880ed9b7fdde9219520c.md) | 76 | `result-track:cd67880ed9b7fdde9219520cd7282625c46fb3db5fc31b94691d401139eab3ad` |
| 12 | `structure` | [Specification](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/specification--49542f9ab7cee59affbee69e.md) | 87 | `declaration-track:49542f9ab7cee59affbee69eac9a1aa01299b8f61de0ed131e35dbcc87c49ebd` |
| 13 | `axioms` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/axioms--8ebe0836405e1c4d2aed0164.md) | 88 | `declaration-track:8ebe0836405e1c4d2aed0164496cb1398f2968fc2e4d209e77f39354b6373fae` |
| 14 | `inductive` | [Beta](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/beta--04bc7895bd7a09f6cbc6b2b1.md) | 92 | `declaration-track:04bc7895bd7a09f6cbc6b2b1ec091f7b0714741d48ecd74e95700490f41ad8c1` |
| 15 | `def` | [Converts](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/converts--05acd6706dbc07b5c636bb04.md) | 102 | `declaration-track:05acd6706dbc07b5c636bb0487c5c552fcbfb239e9075870e7f7e555272c23c5` |
| 16 | `inductive` | [HasType](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/hastype--623a36ad3087d957c219b8cb.md) | 106 | `declaration-track:623a36ad3087d957c219b8cb66ecf4220872c41760b97898ea10cb1d4e162939` |
| 17 | `inductive` | [ValidContext](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/validcontext--8b6333e5eb9c36c17d1755c3.md) | 133 | `declaration-track:8b6333e5eb9c36c17d1755c34f194703ea19165dc84837932623d94feb258d5c` |
| 18 | `def` | [Legal](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/legal--cd84c67b18f315a62a2d0588.md) | 140 | `declaration-track:cd84c67b18f315a62a2d058800aee962ac2a90ff9a288862cdb0c5d99c8ed13e` |
| 19 | `def` | [SystemWeaklyNormalizing](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/systemweaklynormalizing--7bb7f0904690daf1756d6d13.md) | 145 | `declaration-track:7bb7f0904690daf1756d6d13ccbf636a9b635053d990452131d9266c2a01d654` |
| 20 | `def` | [SystemStronglyNormalizing](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/systemstronglynormalizing--5f68c9bb73af65fef7f3d8c1.md) | 150 | `declaration-track:5f68c9bb73af65fef7f3d8c1fdfa8e8c1229f818121ed069f5f0a45a45819483` |
| 21 | `structure` | [WeakToStrongAdmission](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/weaktostrongadmission--a225a5a139b41a48a336a7b2.md) | 155 | `declaration-track:a225a5a139b41a48a336a7b25f8b1a563fe103fa2d1f5c2a4e76751d8d81e41d` |
| 22 | `theorem` | [strong_of_admission](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/strong-of-admission--90b23a89684a0fcce6e91542.md) | 160 | `result-track:90b23a89684a0fcce6e91542cb017ec44459c16241e92d33794adf4410d50128` |
| 23 | `inductive` | [PortSort](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/portsort--1cb6a84c5039412a4d0dfecb.md) | 167 | `declaration-track:1cb6a84c5039412a4d0dfecb508e2f01d9a83ba6f9188c9eb6d3811fa4d75c5a` |
| 24 | `def` | [specification](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/specification--e283d2ebc3001fcb4d77e948.md) | 190 | `declaration-track:e283d2ebc3001fcb4d77e9487deba9ff2fc998d8339481bfb0a82641e61938b2` |
| 25 | `axioms` | [_](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/anonymous--8ced92fb2f908d3e4d50f0c4.md) | 191 | `declaration-track:8ced92fb2f908d3e4d50f0c4274771237a07683d20d095543d8ea25c476c1985` |
| 26 | `def` | [fiberType](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/fibertype--b156aa05fc5cd923adf05bb5.md) | 195 | `declaration-track:b156aa05fc5cd923adf05bb53954b3df543addfbacfe8724d64d8c573ff2877c` |
| 27 | `def` | [portType](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/porttype--2673d92916c08edb4e28659d.md) | 198 | `declaration-track:2673d92916c08edb4e28659de6e93202438bda6b134c0bfcf286176b32e70f15` |
| 28 | `def` | [operatorType](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/operatortype--d94a08a501f1fbd7eb176f45.md) | 201 | `declaration-track:d94a08a501f1fbd7eb176f45236923902ab221c9256aa2af12a4d4ca58854bf2` |
| 29 | `def` | [residualType](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/residualtype--4eb3b8b820ce24aacba5d7d9.md) | 204 | `declaration-track:4eb3b8b820ce24aacba5d7d96437d9b5ac47239514e3d281bb979766d1ce26ab` |
| 30 | `def` | [kCorrType](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/kcorrtype--5887ad06b023a3af3f2217ae.md) | 207 | `declaration-track:5887ad06b023a3af3f2217ae61ccaa8dc38e5b9f8a7c4aef2f968eafa8986126` |
| 31 | `def` | [openAIWeakToStrongSource](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/declarations/openaiweaktostrongsource--98ac381587ecc10443fcdcef.md) | 214 | `declaration-track:98ac381587ecc10443fcdcef3484eec73a880025a6bc9ed045be9438795e7a97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
