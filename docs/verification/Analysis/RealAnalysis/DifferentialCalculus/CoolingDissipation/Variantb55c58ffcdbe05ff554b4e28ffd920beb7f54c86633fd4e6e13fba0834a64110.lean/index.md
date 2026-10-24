# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CoolingDissipation.Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc95ca2b80bc9d92e8c91f60c46c93d8d81531b9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc95ca2b80bc9d92e8c91f60c46c93d8d81531b9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CoolingMode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean/declarations/coolingmode--a147ca821bb81c3b537b19fa.md) | 13 | `declaration-track:a147ca821bb81c3b537b19fa4c554da616a370685c39d463ed6d3d68424d80fb` |
| 2 | `structure` | [CoolingDissipationCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean/declarations/coolingdissipationcertificate--50f65b4aa4eddbf37849b4ea.md) | 21 | `declaration-track:50f65b4aa4eddbf37849b4eaf0745c5d6403feefc61a16a9fe44f6ea0dffff40` |
| 3 | `def` | [CoolingDissipationCertificate.sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean/declarations/coolingdissipationcertificate-sound--292bb2c16f9dcc12841a3485.md) | 30 | `declaration-track:292bb2c16f9dcc12841a3485ed79f24272165d235a7c463ee61365466a9695f4` |
| 4 | `theorem` | [fixed_temperature_dissipation_certificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean/declarations/fixed-temperature-dissipation-certificate--3e6fe690b40ce0dea9376256.md) | 36 | `result-track:3e6fe690b40ce0dea93762564496e0b27eb0f30ec7bcbfbbb6c2242926903321` |
| 5 | `theorem` | [piecewise_constant_dissipation_certificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean/declarations/piecewise-constant-dissipation-certificate--6bd5ae92a491dc685f54c87c.md) | 42 | `result-track:6bd5ae92a491dc685f54c87c813429358419c3cac272e005657ccbdf1a34e4f5` |
| 6 | `theorem` | [quasi_static_requires_tolerance_certificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean/declarations/quasi-static-requires-tolerance-certificate--3f7d8dbfb51d3b94faa66e81.md) | 48 | `result-track:3f7d8dbfb51d3b94faa66e81f86a563313246b9582350a13044a997496d5d771` |
| 7 | `theorem` | [schedule_adjusted_dissipation_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean/declarations/schedule-adjusted-dissipation-identity--3165262d65948f1508719899.md) | 54 | `result-track:3165262d65948f15087198992c4dfe08c902d42afec35570f156b2c5bfcc968e` |
| 8 | `theorem` | [cooling_dissipation_certificate_sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean/declarations/cooling-dissipation-certificate-sound--3d3e18d39068167514d3b512.md) | 59 | `result-track:3d3e18d39068167514d3b51247ef675b7cc5ee605f524dc4a648faca7250330c` |
| 9 | `theorem` | [cooling_dissipation_through_boundary_calculus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean/declarations/cooling-dissipation-through-boundary-calculus--e31135916904fa5b0d339016.md) | 67 | `result-track:e31135916904fa5b0d33901610d20f6a10b4ef170494e7c4cbed91595caf4bfc` |
| 10 | `def` | [TimeVaryingPlainDissipationOwnsCoolingCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean/declarations/timevaryingplaindissipationownscoolingcertificate--b00c73bd1f1bfe470bc30613.md) | 73 | `declaration-track:b00c73bd1f1bfe470bc30613632f96f4573f0ea9114446acae87cdc2d46f6e97` |
| 11 | `theorem` | [time_varying_plain_dissipation_authority_attempt_fails](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110.lean/declarations/time-varying-plain-dissipation-authority-attempt-fails--07125e1966d1e88629423fa6.md) | 78 | `result-track:07125e1966d1e88629423fa655bad6816dface0636d6c0be4ed9e45d8eddcf87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
