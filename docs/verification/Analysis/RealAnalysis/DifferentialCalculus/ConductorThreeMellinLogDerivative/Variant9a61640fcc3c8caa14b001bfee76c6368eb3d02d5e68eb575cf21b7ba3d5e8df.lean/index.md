# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ConductorThreeMellinLogDerivative.Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8d104f3bd67a7edd3411547f15a054cb1fb1f83",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8d104f3bd67a7edd3411547f15a054cb1fb1f83`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductorThreeComplexVonMangoldt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean/declarations/conductorthreecomplexvonmangoldt--85c75bcf73d3db2d241c476d.md) | 51 | `declaration-track:85c75bcf73d3db2d241c476de91d8d924334e18b8cbb4cba9ce0aee13c794aec` |
| 2 | `def` | [conductorThreePsiStep](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean/declarations/conductorthreepsistep--39f72428ac7c45d20f3ace9c.md) | 56 | `declaration-track:39f72428ac7c45d20f3ace9c7bd99f3fb9d927b611aedde805a565d82bfea8b0` |
| 3 | `def` | [conductorThreeMellinLogDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean/declarations/conductorthreemellinlogderivative--73ee07d48c84aa6ee53b14b5.md) | 61 | `declaration-track:73ee07d48c84aa6ee53b14b5f6b3dd3417c322d678871152dcfa04e2fccdeb86` |
| 4 | `theorem` | [conductorThreeComplexVonMangoldt_eq_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean/declarations/conductorthreecomplexvonmangoldt-eq-real--5bd8e4796a9ab4541d4c75e3.md) | 67 | `result-track:5bd8e4796a9ab4541d4c75e3539a9c6fef3ab3758f5f4d00ea9e9ac5cd30c92f` |
| 5 | `theorem` | [conductorThree_twistedLSeries_eq_neg_logDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean/declarations/conductorthree-twistedlseries-eq-neg-logderivative--b729dd8512a062916dbc6ea4.md) | 74 | `result-track:b729dd8512a062916dbc6ea4716c70310a22c1260c81d5970a7f4703d209f534` |
| 6 | `def` | [HalfPlusEpsilonMellinContinuation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean/declarations/halfplusepsilonmellincontinuation--aebe216e7a164f42e64d03bd.md) | 86 | `declaration-track:aebe216e7a164f42e64d03bddd6ed3d4b21e0680420908ff9cb8bdbe5d373d2d` |
| 7 | `def` | [MellinContinuationZeroExclusion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean/declarations/mellincontinuationzeroexclusion--f403b0ca7b169c3d8c5e1c8e.md) | 100 | `declaration-track:f403b0ca7b169c3d8c5e1c8e86c29c35d422060cb654ece9a4a6c10766da3905` |
| 8 | `theorem` | [halfPlusEpsilon_implies_grh_of_mellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean/declarations/halfplusepsilon-implies-grh-of-mellin--92dbec9238cd4e3b27727cbd.md) | 112 | `result-track:92dbec9238cd4e3b27727cbdedf6d22ff94aab750ad1e0397604ec7401e45643` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
