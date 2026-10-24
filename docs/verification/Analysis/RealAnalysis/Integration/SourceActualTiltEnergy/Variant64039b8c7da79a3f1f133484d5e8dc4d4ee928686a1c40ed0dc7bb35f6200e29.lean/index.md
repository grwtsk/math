# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualTiltEnergy.Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "392b9ba3dba733a30f51bbdc0788a76d8f882ac2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `392b9ba3dba733a30f51bbdc0788a76d8f882ac2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexCorrelationAsymptotic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualUnitTilt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29.lean/declarations/actualunittilt--054e43e4a85d47ea33162477.md) | 21 | `declaration-track:054e43e4a85d47ea33162477ed9e5e94ee2196e88620f13e4985538f70f7ef90` |
| 2 | `def` | [actualUnitTiltEnergy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29.lean/declarations/actualunittiltenergy--f296c20149be341d3649412c.md) | 25 | `declaration-track:f296c20149be341d3649412c6ff4fd9616ac7feeb411351767b94e537fa34974` |
| 3 | `theorem` | [actualUnitTilt_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29.lean/declarations/actualunittilt-sq-integrable--8ed9f8c67e18348a8c300e92.md) | 29 | `result-track:8ed9f8c67e18348a8c300e9263c2984ef733871be397d002324a2599496cf7d6` |
| 4 | `theorem` | [actualUnitTiltEnergy_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29.lean/declarations/actualunittiltenergy-eq-integral--3688cdb3390bbd7d1892b76e.md) | 42 | `result-track:3688cdb3390bbd7d1892b76ed4057380de67b221ff65f853b516d06c9adc237c` |
| 5 | `theorem` | [actualUnitTilt_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29.lean/declarations/actualunittilt-transform--4ef0e28732dff730ffbfbf8f.md) | 52 | `result-track:4ef0e28732dff730ffbfbf8f2ce26a9d8c74d0972296cf5321033dd17fe43ae5` |
| 6 | `theorem` | [actualUnitTilt_integral_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29.lean/declarations/actualunittilt-integral-sq-le--b8822562588b7fbf65467457.md) | 60 | `result-track:b8822562588b7fbf65467457ccec2264f4820b1aaf31a9f908bdcf7bbb9eb28f` |
| 7 | `theorem` | [actualUnitTiltEnergy_eventually_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29.lean/declarations/actualunittiltenergy-eventually-ge--72cfa11233a907bf09165d89.md) | 90 | `result-track:72cfa11233a907bf09165d897c36958e77fde0120c80c22f603828666f77a149` |
| 8 | `theorem` | [actualUnitTiltEnergy_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29.lean/declarations/actualunittiltenergy-tendsto-attop--fe8f6fc3b5adc64be841b50c.md) | 140 | `result-track:fe8f6fc3b5adc64be841b50c02769a5263bad53e46e943de18422f4b9fe5e31c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
