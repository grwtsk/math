# Verification target: GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7233696059a408af98af15fec0e34c02f7afb657",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/Symbolic/ExactSoficLanguageCover.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7233696059a408af98af15fec0e34c02f7afb657`.

Source path: `GRWTSK/DynamicalSystems/Symbolic/ExactSoficLanguageCover.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/Symbolic/ExactSoficLanguageCover.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LabeledGraph](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/labeledgraph--288b3a3ee9b06f6c8a80e35b.md) | 33 | `declaration-track:288b3a3ee9b06f6c8a80e35be845f047e1a0e313a88be6c2d447b675381d1f6e` |
| 2 | `inductive` | [WordPath](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/wordpath--5f582b4c7d2b7f1c430e7221.md) | 37 | `declaration-track:5f582b4c7d2b7f1c430e72210e9bfa07eb7e3af89ab0c885973059662c9c45e1` |
| 3 | `def` | [GraphLanguage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/graphlanguage--c7ed604e07db315ee823ef3c.md) | 46 | `declaration-track:c7ed604e07db315ee823ef3cfa2a820b9996c0f2e037a40c8cf21c622e662734` |
| 4 | `def` | [RunsOnGraph](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/runsongraph--0f6ad07151187fa42d22990d.md) | 51 | `declaration-track:0f6ad07151187fa42d22990dc036899c00709f94eea17eb534aef57377414914` |
| 5 | `def` | [fullShiftGraph](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/fullshiftgraph--b53d0443dede58baa11a8895.md) | 58 | `declaration-track:b53d0443dede58baa11a8895687e895d90be14c570f422f3e56ec2e40a3c08b1` |
| 6 | `theorem` | [every_trace_runs_on_full_shift](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/every-trace-runs-on-full-shift--6799c7aa8dd2d04e89530ae7.md) | 63 | `result-track:6799c7aa8dd2d04e89530ae79fe10ecc99c29f34328f23c20c9540eb3673f4a0` |
| 7 | `theorem` | [fullShiftGraph_path_all](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/fullshiftgraph-path-all--83475cec57375b193c6868f7.md) | 71 | `result-track:83475cec57375b193c6868f7846b51b4de86d83d8aeb8e428497c9a4983c5e18` |
| 8 | `theorem` | [fullShiftGraph_language_all](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/fullshiftgraph-language-all--3408ec1cb6b921911fe08526.md) | 79 | `result-track:3408ec1cb6b921911fe08526ae3d2235f71e51b19a17e16df07f83723a29ec21` |
| 9 | `def` | [HasFiniteBlock](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/hasfiniteblock--0d65bdaf74200112f8db8210.md) | 85 | `declaration-track:0d65bdaf74200112f8db8210224e2aac715c5b615edb2bdee356a4280245a934` |
| 10 | `structure` | [ExactLanguagePresentation](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/exactlanguagepresentation--f80c0d5317bb19639a5ea804.md) | 92 | `declaration-track:f80c0d5317bb19639a5ea804faa1425a6ac8c2e4a86ecf246e949cf994017da2` |
| 11 | `def` | [IsSoficFactorLanguage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/issoficfactorlanguage--7ca42bfd4cc2ba54dcf786fd.md) | 101 | `declaration-track:7ca42bfd4cc2ba54dcf786fd50e5966c3d6ae98344a115686e0ac4f4fbc271e9` |
| 12 | `def` | [IsSoficTrace](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/issofictrace--a5bdd9a65e20dbd8a5e88d12.md) | 107 | `declaration-track:a5bdd9a65e20dbd8a5e88d12482fa01825ff643f33648fce358031542f7ff44f` |
| 13 | `def` | [tailTrace](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/tailtrace--e202ae7bec318144348054d7.md) | 111 | `declaration-track:e202ae7bec318144348054d7623e5b734c508ed210d61a57c642bcd64835b890` |
| 14 | `def` | [EventuallySoficTrace](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/eventuallysofictrace--20f0a7d9ab6a1525f69815b3.md) | 118 | `declaration-track:20f0a7d9ab6a1525f69815b330094e87959c540c4d0d857c17a0f360840052b6` |
| 15 | `theorem` | [eventuallySofic_of_sofic](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/eventuallysofic-of-sofic--3d9189494c74a7505547ad99.md) | 123 | `result-track:3d9189494c74a7505547ad996abeb233beef34ef73b830e308f04a1b08b4e9d0` |
| 16 | `theorem` | [sofic_of_exact_language](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/sofic-of-exact-language--93735568816a18bef9065180.md) | 135 | `result-track:93735568816a18bef906518012bebd6e83afbc1fe09e5f12176cf0660b026161` |
| 17 | `theorem` | [fullShiftGraph_not_exact_for_constant_false](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/fullshiftgraph-not-exact-for-constant-false--5f3929d33985a22bb625c1ee.md) | 145 | `result-track:5f3929d33985a22bb625c1ee90d2e98167fa904677229150328d3b8b5c30dbd2` |
| 18 | `def` | [reachableEndStates](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/reachableendstates--82af7ce6afc8c0d12210fbc6.md) | 162 | `declaration-track:82af7ce6afc8c0d12210fbc62480d2c597c38379b908288f9f9678377c9fee5e` |
| 19 | `theorem` | [mem_reachableEndStates](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/mem-reachableendstates--469c341a983098b9aa4f398d.md) | 170 | `result-track:469c341a983098b9aa4f398decfdc3ba9b3e56609593d8612fc88c6b12fa447c` |
| 20 | `theorem` | [wordPath_append](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/wordpath-append--32e962f35749a666aca9a0df.md) | 180 | `result-track:32e962f35749a666aca9a0dfcfbd586592d9fe347b70ea18e7a2e30530ef7fef` |
| 21 | `theorem` | [wordPath_split_append](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/wordpath-split-append--02b04a1cff1c4dc4c808398d.md) | 198 | `result-track:02b04a1cff1c4dc4c808398dfc4bbfca9057b8c32ed1a8a33168aface3db405b` |
| 22 | `theorem` | [graphLanguage_append_iff_endStates](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/graphlanguage-append-iff-endstates--424fbd978db0f67fc481897c.md) | 218 | `result-track:424fbd978db0f67fc481897c9f1eff688d1f389fdbce1723528228bdabc49a39` |
| 23 | `theorem` | [graphLanguage_context_iff_of_same_endStates](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/graphlanguage-context-iff-of-same-endstates--661a48dbfd40a6ee7985b930.md) | 238 | `result-track:661a48dbfd40a6ee7985b9301677c38efd583031c6b91537f63d62f7e614e4c3` |
| 24 | `def` | [UnboundedRightContexts](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/unboundedrightcontexts--2a316c9c58e1f47bd077afc2.md) | 251 | `declaration-track:2a316c9c58e1f47bd077afc295e24dff0342b406d9c7d07325bfab2deec5cf18` |
| 25 | `def` | [ExactLanguagePresentation.stateCapacity](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/exactlanguagepresentation-statecapacity--f1d9e3286e42bef2f301742e.md) | 262 | `declaration-track:f1d9e3286e42bef2f301742ebdaf97d6b4734f6e9941f7f2099fdf775521a827` |
| 26 | `theorem` | [rightContexts_card_le_graphLanguage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/rightcontexts-card-le-graphlanguage--13e1ae4c7e4416dca9b5aab5.md) | 273 | `result-track:13e1ae4c7e4416dca9b5aab55c061a5fe69ef5ba63cd13e986ccbbca590ea80b` |
| 27 | `theorem` | [rightContexts_card_le_exactPresentation](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/rightcontexts-card-le-exactpresentation--5dc3ce73afa23b28f533690c.md) | 301 | `result-track:5dc3ce73afa23b28f533690c2a7c8e23179a1ed5c5fa094339ef9f0621ea56f3` |
| 28 | `theorem` | [not_soficFactorLanguage_of_unboundedRightContexts](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/not-soficfactorlanguage-of-unboundedrightcontexts--c6464c1374f88925aec56def.md) | 331 | `result-track:c6464c1374f88925aec56def5939e4f59d53a90f81ae4bf8632630845eb3bd3e` |
| 29 | `theorem` | [not_soficTrace_of_unboundedRightContexts](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/not-sofictrace-of-unboundedrightcontexts--e0fc6c94813ea9087b22aa89.md) | 346 | `result-track:e0fc6c94813ea9087b22aa893d649d58b400f34da79e31dded9bd07b21c043c8` |
| 30 | `theorem` | [not_eventuallySoficTrace_of_all_tail_rightContexts](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/declarations/not-eventuallysofictrace-of-all-tail-rightcontexts--8476ef69ae8ace3cb8da917d.md) | 356 | `result-track:8476ef69ae8ace3cb8da917d95279f592ce1a39260b30ebd379c5d4d75edabfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
