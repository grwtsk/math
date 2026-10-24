# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RateOneIntegrabilityAudit.Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b37afe64e1e64ab71ae2534f87f79d38d0444ab5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b37afe64e1e64ab71ae2534f87f79d38d0444ab5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rate_one_integrableOn_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/declarations/rate-one-integrableon-ioc--ddcb3b324ae8d8a5d4be1fae.md) | 15 | `result-track:ddcb3b324ae8d8a5d4be1fae7af8e8b395d820895bb3441c325622e92a4e8da1` |
| 2 | `theorem` | [rate_one_integrable_of_eventual_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/declarations/rate-one-integrable-of-eventual-majorant--df3ecd34ed30ad761fc9f03b.md) | 37 | `result-track:df3ecd34ed30ad761fc9f03b752abe3a79e10139dd0378ecc26204893476c8ba` |
| 3 | `theorem` | [polynomial_stretched_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/declarations/polynomial-stretched-integrable--63ae997308d44b51b1dec7b1.md) | 71 | `result-track:63ae997308d44b51b1dec7b10bff98301470bcec6d1a7075014264f92a52e92a` |
| 4 | `theorem` | [rate_one_majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/declarations/rate-one-majorant-integrable--2854ef5d9e2cc503ce19f05c.md) | 82 | `result-track:2854ef5d9e2cc503ce19f05c8097b6f9ec4bb8fce439c8c056b1bb11ba97f5f2` |
| 5 | `theorem` | [rate_one_integrable_of_stretched_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/declarations/rate-one-integrable-of-stretched-majorant--1b5662846749288ec6d04d16.md) | 97 | `result-track:1b5662846749288ec6d04d1662dc392fb236ab8a26b2b286bd2213fa9bd1af02` |
| 6 | `theorem` | [actual_scale_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/declarations/actual-scale-le--f6066c888a9c719df5a02eb2.md) | 105 | `result-track:f6066c888a9c719df5a02eb21a408d4cf6452e4ecf21d668dde1a8eb15565bd4` |
| 7 | `theorem` | [weighted_negativeSource_le_of_pairing_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/declarations/weighted-negativesource-le-of-pairing-bound--5a0148162a186e77735f54a8.md) | 116 | `result-track:5a0148162a186e77735f54a85ea4fe2aebadf902b86e71a00ce387c89c0fe919` |
| 8 | `theorem` | [rate_one_integrable_of_pairing_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/declarations/rate-one-integrable-of-pairing-bound--49bd679e4db09ac5a32a13f3.md) | 166 | `result-track:49bd679e4db09ac5a32a13f3dc867aeeb70a7e0197971702b5efc7d3f31db2fd` |
| 9 | `theorem` | [integrable_of_one_le_rate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/declarations/integrable-of-one-le-rate--3ebdc4dedebf02e87b145d89.md) | 177 | `result-track:3ebdc4dedebf02e87b145d89a85db7e644f9b4c66e5c89e020be74f0b81a904a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
