# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ConductorThreeMellinLogDerivative.Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aad6d3b07ddef6a33099622527c460faded6e88a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aad6d3b07ddef6a33099622527c460faded6e88a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductorThreeComplexVonMangoldt](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean/declarations/conductorthreecomplexvonmangoldt--df9b40b3bc025fdb5df3b927.md) | 43 | `declaration-track:df9b40b3bc025fdb5df3b927cfc0a648376409c8354e9239ba398230deeb9f95` |
| 2 | `def` | [conductorThreePsiStep](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean/declarations/conductorthreepsistep--0b5acda2a735859937426ffb.md) | 48 | `declaration-track:0b5acda2a735859937426ffb21f97f8821b5983069735e341db8bc153a55cfc3` |
| 3 | `def` | [conductorThreeMellinLogDerivative](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean/declarations/conductorthreemellinlogderivative--e3c403bea78232d0ce402ef4.md) | 53 | `declaration-track:e3c403bea78232d0ce402ef44d0830b386b672095343099ce087f2ad45430685` |
| 4 | `theorem` | [conductorThreeComplexVonMangoldt_eq_real](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean/declarations/conductorthreecomplexvonmangoldt-eq-real--3d239b2c0c6923ef3bc9edbb.md) | 60 | `result-track:3d239b2c0c6923ef3bc9edbbc1e44b0c20e75c1a52c9633952cc09cae0a90a9b` |
| 5 | `theorem` | [conductorThreePsiStep_natCast](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean/declarations/conductorthreepsistep-natcast--3db5e789d6982dc658367ee7.md) | 68 | `result-track:3db5e789d6982dc658367ee7851e9ed8c783316fb8c7be036df0747f42ef26af` |
| 6 | `theorem` | [conductorThree_twistedLSeries_eq_neg_logDerivative](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean/declarations/conductorthree-twistedlseries-eq-neg-logderivative--155688622cd6cf0e0d549f71.md) | 82 | `result-track:155688622cd6cf0e0d549f71ae0236b2bf458116f69b65ea629d0c6e4d42922c` |
| 7 | `theorem` | [conductorThreeMellinLogDerivative_eq_twistedLSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean/declarations/conductorthreemellinlogderivative-eq-twistedlseries--695d0328d9406cf1232734dd.md) | 94 | `result-track:695d0328d9406cf1232734dd153c192b67c099842aded6797595907ebf2869c6` |
| 8 | `def` | [HalfPlusEpsilonMellinContinuation](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean/declarations/halfplusepsilonmellincontinuation--1d512e9883f1f8a95f68d3c1.md) | 112 | `declaration-track:1d512e9883f1f8a95f68d3c18d99b362e0c60f35db8de4370d496cb8ca5abdd1` |
| 9 | `def` | [MellinContinuationZeroExclusion](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean/declarations/mellincontinuationzeroexclusion--d6fb7638350e31db8b0f5091.md) | 126 | `declaration-track:d6fb7638350e31db8b0f50917a0863c42d3fcf4c19b5d63d786d15459a1d25ab` |
| 10 | `theorem` | [halfPlusEpsilon_implies_grh_of_mellin](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ConductorThreeMellinLogDerivative/Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68.lean/declarations/halfplusepsilon-implies-grh-of-mellin--8d6d3a5e841e2fbb3349b41a.md) | 138 | `result-track:8d6d3a5e841e2fbb3349b41a098b4e90373238cc60eedd2e0a75ffa120ce15b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
