# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CoolingDissipation.Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e9751290e4390643a1f962f83b31bab805285cd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e9751290e4390643a1f962f83b31bab805285cd`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean.json)

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
| 1 | `inductive` | [CoolingMode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean/declarations/coolingmode--180cfdad5bcdb70881fbbf4f.md) | 21 | `declaration-track:180cfdad5bcdb70881fbbf4f1b9cf7872f8dce9ad50b72464a9a389d551a593b` |
| 2 | `structure` | [CoolingDissipationCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean/declarations/coolingdissipationcertificate--53e4dc6803db292ba3873a03.md) | 29 | `declaration-track:53e4dc6803db292ba3873a0317142c9a0d1a0014d55f787b86e23c4c06e8ebb3` |
| 3 | `def` | [CoolingDissipationCertificate.sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean/declarations/coolingdissipationcertificate-sound--d38bf2cc546c4a8462349f3c.md) | 38 | `declaration-track:d38bf2cc546c4a8462349f3c445d64e147cf52e3c53ad5f70a19ecfe2897dd66` |
| 4 | `theorem` | [fixed_temperature_dissipation_certificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean/declarations/fixed-temperature-dissipation-certificate--57a49c179872ccee1b90de70.md) | 44 | `result-track:57a49c179872ccee1b90de704cff00b227a43849ac1fb0320749967976fecf83` |
| 5 | `theorem` | [piecewise_constant_dissipation_certificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean/declarations/piecewise-constant-dissipation-certificate--c0e58cb9d6bb55d4a2ac9a61.md) | 50 | `result-track:c0e58cb9d6bb55d4a2ac9a6198594b0c152ace639534fcaf5bbb719e201733f5` |
| 6 | `theorem` | [quasi_static_requires_tolerance_certificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean/declarations/quasi-static-requires-tolerance-certificate--39e18e3962c74e5794dfce57.md) | 56 | `result-track:39e18e3962c74e5794dfce5797d155f70b18f459c506f12d575241d837416958` |
| 7 | `theorem` | [schedule_adjusted_dissipation_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean/declarations/schedule-adjusted-dissipation-identity--cfdb4d33ef6ee5f77e6b1bc5.md) | 62 | `result-track:cfdb4d33ef6ee5f77e6b1bc58456fc10637b9f922fb4d7db88cd7634ad119fe1` |
| 8 | `theorem` | [cooling_dissipation_certificate_sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean/declarations/cooling-dissipation-certificate-sound--fac7fdbca81644d7b08b84c9.md) | 67 | `result-track:fac7fdbca81644d7b08b84c9bb60d1cc96f5d365af23699e08ee1480289698e4` |
| 9 | `theorem` | [cooling_dissipation_through_boundary_calculus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean/declarations/cooling-dissipation-through-boundary-calculus--5b3eb39ff6afd867baf22977.md) | 75 | `result-track:5b3eb39ff6afd867baf2297732363ca41ad27867ae99d891ca8df4f2c1af6d0f` |
| 10 | `def` | [TimeVaryingPlainDissipationOwnsCoolingCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean/declarations/timevaryingplaindissipationownscoolingcertificate--b0ac6df2d6faf92981ac23b8.md) | 81 | `declaration-track:b0ac6df2d6faf92981ac23b861ebbed56056354134ce7848e29211872a7646b6` |
| 11 | `theorem` | [time_varying_plain_dissipation_authority_attempt_fails](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CoolingDissipation/Variant7fde23e869dde67bc8a9f44721c2140ed8b786456ab7caa5494fd19154ae2ad0.lean/declarations/time-varying-plain-dissipation-authority-attempt-fails--e84edfbd285450bb0daf172f.md) | 86 | `result-track:e84edfbd285450bb0daf172ff01f1d0f8818979600a64c5bea1d2806b536c490` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
