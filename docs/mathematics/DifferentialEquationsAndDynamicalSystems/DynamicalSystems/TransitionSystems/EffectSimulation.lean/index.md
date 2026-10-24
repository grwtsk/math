# GRWTSK.DynamicalSystems.TransitionSystems.EffectSimulation

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DynamicalSystems/TransitionSystems/EffectSimulation.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bec971c7707b5ba49d8c73574a3d25790f0292fc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/EffectSimulation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [System](declarations/system--1c58ea8de93289c370126527.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [Trace](declarations/trace--269b0dad28d6333b31c3a85d.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Reachable](declarations/reachable--3d7562e86c899a246429f456.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [initial_reachable](declarations/initial-reachable--65888005cfbe544cad7b4346.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Trace.snoc](declarations/trace-snoc--a7f49ccad34c5e820d410498.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [reachable_step](declarations/reachable-step--a6c535ce6b0561aeaafe1051.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Simulation](declarations/simulation--9ea263f9a4573784d03c2976.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Simulation.trace_correspondence](declarations/simulation-trace-correspondence--fd8d688506351ea00e5ac15a.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Simulation.reachable_correspondence](declarations/simulation-reachable-correspondence--e277763233cbe61dca1eb2ba.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [EffectsSafe](declarations/effectssafe--f8b1a020560fda6baa576357.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [PolicyBridge](declarations/policybridge--5033ebf82e8f900f7fa5a455.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Simulation.transfers_effect_safety](declarations/simulation-transfers-effect-safety--31295578267ababc830fecc2.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [RelComp](declarations/relcomp--642cb8a12bc931e467ff232d.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Simulation.comp](declarations/simulation-comp--341300397a94ce9d189cf3cc.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Simulation.identity](declarations/simulation-identity--7af4bf4bb5843308c49cfafe.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `inductive` | [State](declarations/state--47bc8d8bab3c8f5e6dd26830.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [Label](declarations/label--761847cb8e3ae395fad07ae3.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [concrete](declarations/concrete--ff4e8cd1e80c4defcccc771c.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [absentAbstract](declarations/absentabstract--e5ba2434cde3948261d59ec1.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [silentAbstract](declarations/silentabstract--6e525eb0f8e68e35344ecd5e.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isEffect](declarations/iseffect--0838c32f2f2c1bb73e2ea2f9.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [concrete_effect](declarations/concrete-effect--05002c2a7d162b7b60220b4c.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [absent_abstract_safe](declarations/absent-abstract-safe--a915efda50b06ce467a6e00f.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [silent_abstract_safe](declarations/silent-abstract-safe--ffcf781baf90f5f9198ef71c.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [concrete_not_safe](declarations/concrete-not-safe--89fc1b375c2782fe8dc915fb.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [no_simulation_to_absent](declarations/no-simulation-to-absent--f6922ddf53f9c1720c797b86.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [no_simulation_to_silent](declarations/no-simulation-to-silent--d26cf5d63148cdc541b5cdd6.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
