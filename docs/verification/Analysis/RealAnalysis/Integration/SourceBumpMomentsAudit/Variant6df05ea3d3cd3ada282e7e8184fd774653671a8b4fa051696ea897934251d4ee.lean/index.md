# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceBumpMomentsAudit.Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e6f50c61cff7fd60e8ffc14e93ce01b1166c903",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e6f50c61cff7fd60e8ffc14e93ce01b1166c903`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean/declarations/bumpmoment--51d033fcacaf4a3a8047b01d.md) | 21 | `declaration-track:51d033fcacaf4a3a8047b01d49453eedaf96d22809c2dc0baffaa3fd36c192a0` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean/declarations/bumpmoment-intervalintegrable--c7ca272c55a225a75ac9e3bd.md) | 26 | `result-track:c7ca272c55a225a75ac9e3bda48653c090c657faab07529c547fd6a83b65740b` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean/declarations/bumpmoment-zero-eq-source--bd0754796df4c33bd17129a9.md) | 33 | `result-track:bd0754796df4c33bd17129a9f1691527f53ff3e2cdbbae93ff5439d163c6f29e` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean/declarations/bumpmoment-zero-zero--def5e9bc62a1e9a2c7209656.md) | 46 | `result-track:def5e9bc62a1e9a2c720965680573185bb586241a2dce630f65e75cb60d26244` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean/declarations/bumpflux-hasderivat--795c8dbe0b795dd6414c334c.md) | 56 | `result-track:795c8dbe0b795dd6414c334ca0a66b5accf0e5eec10fcfb471aa66125b9fe599` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean/declarations/bumpmoment-equation--8086615f3743cdd980b88a07.md) | 67 | `result-track:8086615f3743cdd980b88a07967cc0f454c451e2a1ff31e1640a4f5b1071d6ca` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean/declarations/re-eq-zero-of-weighted-energy--3d7008e150de21b4e67bf54d.md) | 102 | `result-track:3d7008e150de21b4e67bf54d3b1ac0aefec98b548331a30494c10d5a10ee5834` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
