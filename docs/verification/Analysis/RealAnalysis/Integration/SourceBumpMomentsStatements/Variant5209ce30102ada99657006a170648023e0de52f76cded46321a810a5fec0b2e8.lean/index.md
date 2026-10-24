# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceBumpMomentsStatements.Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb46a48c68ef6cd590de43e8dfd236f340a70ba8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb46a48c68ef6cd590de43e8dfd236f340a70ba8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/bumpmoment--0072dc9c79604a08f779d95a.md) | 29 | `declaration-track:0072dc9c79604a08f779d95a828dd81171a92c3eb40393fbdda9e74222f4f55c` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/bumpmoment-intervalintegrable--3ca305016521ddc8b56d685c.md) | 34 | `result-track:3ca305016521ddc8b56d685c71216306ba48576453d929df9c7b3916ad2000b1` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/bumpmoment-zero-eq-source--5ad0fbf222e48a679bb8f5c1.md) | 41 | `result-track:5ad0fbf222e48a679bb8f5c1bafb7667ce8bb0cb8ba7b6be334604dd5703fa91` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/bumpmoment-zero-zero--01cb346c17fe20c45c65d34f.md) | 54 | `result-track:01cb346c17fe20c45c65d34fa8a626a86a67dea9d00b74864b6adece2fb4f4c6` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/bumpflux-hasderivat--9729a636f0f7783cb1fa5499.md) | 64 | `result-track:9729a636f0f7783cb1fa54998e289bb15d413bfa4d967bdf641db78bf8243a43` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/bumpmoment-equation--b87fe11f0b13efd9f3231f5d.md) | 75 | `result-track:b87fe11f0b13efd9f3231f5debbb5de92975f50ca46286cab5479ece87602eb8` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/re-eq-zero-of-weighted-energy--232ab174f58491671ac46be3.md) | 110 | `result-track:232ab174f58491671ac46be3bf45230ae1f767f183630b5c87222f78edface7b` |
| 8 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/example--1d200e9e6b89c512fc25c90b.md) | 134 | `declaration-track:1d200e9e6b89c512fc25c90b3baca5a407bd1a1956474056f8c9f9366b2b260e` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/example--dd514f7ae82e53988bf75526.md) | 137 | `declaration-track:dd514f7ae82e53988bf75526a75c8887356fd3efbb1eeaa8742c5cf628b1d6b8` |
| 10 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/example--6f6b17c27acf72020c85feb5.md) | 141 | `declaration-track:6f6b17c27acf72020c85feb5ac0ada58e801210f30bf8856a2f3ea3fb53e8608` |
| 11 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/example--c947e0249cad89b2d4a2fc03.md) | 145 | `declaration-track:c947e0249cad89b2d4a2fc03e1100f468de8ca8fcd9d003478aee3f91823eec0` |
| 12 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/example--c939a74d960bba99623ae9f0.md) | 147 | `declaration-track:c939a74d960bba99623ae9f0075abea3843555ca998122d4df8831cb52c2c9b7` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/example--787aa8a1aba66673261eeef2.md) | 151 | `declaration-track:787aa8a1aba66673261eeef27ce6fb13681d4aec611fd2ad91f8c6643b945b66` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/example--e8f0c0d821eaff57e1a88f37.md) | 155 | `declaration-track:e8f0c0d821eaff57e1a88f37d3fd0b6d56ade39f4991d587e592ad3b32e1d785` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/declarations/example--2ed0fd501b24e6a01abdc5ac.md) | 157 | `declaration-track:2ed0fd501b24e6a01abdc5ac895b6a680ebddee01991f51a81055597c13005ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
