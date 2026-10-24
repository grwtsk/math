# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HeatEnergyBounds.Variant2436c3cccab586ac6fd88e5e42ea8245e36b3edf4647e34993506b37f359f827

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8eb98c9894e79f398834eacf648f29eb07e3d5b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HeatEnergyBounds/Variant2436c3cccab586ac6fd88e5e42ea8245e36b3edf4647e34993506b37f359f827.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatEnergyBounds/Variant2436c3cccab586ac6fd88e5e42ea8245e36b3edf4647e34993506b37f359f827.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatEnergyBounds/Variant2436c3cccab586ac6fd88e5e42ea8245e36b3edf4647e34993506b37f359f827.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8eb98c9894e79f398834eacf648f29eb07e3d5b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HeatEnergyBounds/Variant2436c3cccab586ac6fd88e5e42ea8245e36b3edf4647e34993506b37f359f827.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HeatEnergyBounds/Variant2436c3cccab586ac6fd88e5e42ea8245e36b3edf4647e34993506b37f359f827.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Harmonic.HeatResidualControl` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Core.FrobeniusTypology` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Research.LFunctionZero` — import line 3; external provider; requires a separately pinned dependency.
- `Folder.Research.SpectralArithmeticBridge` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HeatResidualAsymptoticVanishing](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatEnergyBounds/Variant2436c3cccab586ac6fd88e5e42ea8245e36b3edf4647e34993506b37f359f827.lean/declarations/heatresidualasymptoticvanishing--9df0ad9a3833c11effc1b019.md) | 22 | `declaration-track:9df0ad9a3833c11effc1b019031a5296fd2aae95081b8c8e181f13ab7e8b18a0` |
| 2 | `structure` | [HeatResidualEnergyBridge](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatEnergyBounds/Variant2436c3cccab586ac6fd88e5e42ea8245e36b3edf4647e34993506b37f359f827.lean/declarations/heatresidualenergybridge--4cae1569e421410e53362e67.md) | 28 | `declaration-track:4cae1569e421410e53362e6754b01b538e7c937aeb9210ca2658f61750cbfb0a` |
| 3 | `structure` | [HeatEnergyCriticalLineContract](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatEnergyBounds/Variant2436c3cccab586ac6fd88e5e42ea8245e36b3edf4647e34993506b37f359f827.lean/declarations/heatenergycriticallinecontract--44a6b377e9c1de0e595d8294.md) | 35 | `declaration-track:44a6b377e9c1de0e595d82947ba54984300cd257ab28448e9e340e1ea9470c21` |
| 4 | `theorem` | [spectral_condition_from_heat_energy](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatEnergyBounds/Variant2436c3cccab586ac6fd88e5e42ea8245e36b3edf4647e34993506b37f359f827.lean/declarations/spectral-condition-from-heat-energy--a67ebbbb2912e75df6597326.md) | 43 | `result-track:a67ebbbb2912e75df6597326c9c616710addf4b387841db30e243c3a0de41722` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
