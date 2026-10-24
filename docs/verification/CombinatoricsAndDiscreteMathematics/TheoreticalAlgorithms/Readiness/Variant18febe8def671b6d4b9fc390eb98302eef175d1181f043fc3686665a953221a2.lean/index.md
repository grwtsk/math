# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Readiness.Variant18febe8def671b6d4b9fc390eb98302eef175d1181f043fc3686665a953221a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83ea6998c986742ff863689f15b19a2cc450046d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant18febe8def671b6d4b9fc390eb98302eef175d1181f043fc3686665a953221a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant18febe8def671b6d4b9fc390eb98302eef175d1181f043fc3686665a953221a2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant18febe8def671b6d4b9fc390eb98302eef175d1181f043fc3686665a953221a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83ea6998c986742ff863689f15b19a2cc450046d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant18febe8def671b6d4b9fc390eb98302eef175d1181f043fc3686665a953221a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant18febe8def671b6d4b9fc390eb98302eef175d1181f043fc3686665a953221a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.AnalyticPDE` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Spectral.AnalyticPDEBridge` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticPDEInterfaceReadiness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant18febe8def671b6d4b9fc390eb98302eef175d1181f043fc3686665a953221a2.lean/declarations/analyticpdeinterfacereadiness--9e202991a49a2f7f58f5e591.md) | 35 | `declaration-track:9e202991a49a2f7f58f5e5914280da6484ae7594eb7902f073c7fbd7f959f01f` |
| 2 | `def` | [AnalyticPDEInterfaceReadiness.ready](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant18febe8def671b6d4b9fc390eb98302eef175d1181f043fc3686665a953221a2.lean/declarations/analyticpdeinterfacereadiness-ready--f908260853f98815a0cebc3f.md) | 50 | `declaration-track:f908260853f98815a0cebc3f8c48e7ba412a303a265583899643985c31a5cf20` |
| 3 | `def` | [AnalyticPDEInterfaceReadiness.theoremReady](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant18febe8def671b6d4b9fc390eb98302eef175d1181f043fc3686665a953221a2.lean/declarations/analyticpdeinterfacereadiness-theoremready--373eea59203b11c6689aa39f.md) | 66 | `declaration-track:373eea59203b11c6689aa39f6f452b8b065a0062d6413a95c26c54be01807109` |
| 4 | `def` | [currentAnalyticPDEReadiness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant18febe8def671b6d4b9fc390eb98302eef175d1181f043fc3686665a953221a2.lean/declarations/currentanalyticpdereadiness--9fc3ff9e3767aae06683e994.md) | 80 | `declaration-track:9fc3ff9e3767aae06683e9943e9d9ae27be807b50e9ba35d76069745ea7aeb30` |
| 5 | `theorem` | [currentAnalyticPDEReadiness_not_theoremReady](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant18febe8def671b6d4b9fc390eb98302eef175d1181f043fc3686665a953221a2.lean/declarations/currentanalyticpdereadiness-not-theoremready--1ce59044a729ec7617036588.md) | 101 | `result-track:1ce59044a729ec7617036588ed0f7b3e5bdc5ef759e697262ae1d1b328061e4d` |
| 6 | `theorem` | [currentAnalyticPDEReadiness_not_ready](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant18febe8def671b6d4b9fc390eb98302eef175d1181f043fc3686665a953221a2.lean/declarations/currentanalyticpdereadiness-not-ready--20701496590860f5cc05b339.md) | 106 | `result-track:20701496590860f5cc05b3399abae261e67a7eec3fb8745c789a849d2644eb60` |
| 7 | `theorem` | [currentAnalyticPDEReadiness_interfaces_are_not_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant18febe8def671b6d4b9fc390eb98302eef175d1181f043fc3686665a953221a2.lean/declarations/currentanalyticpdereadiness-interfaces-are-not-authority--63ce1845db86147aeb8f0a21.md) | 113 | `result-track:63ce1845db86147aeb8f0a21a9b0bc7aed673939b2d7fab71d7484e474ca75bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
