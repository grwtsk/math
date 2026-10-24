# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.885f5cdad4780091522eActualSignedStieltjes.Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02b2304c8dc0d328b4a5294e9f3ac38eada9af57",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02b2304c8dc0d328b4a5294e9f3ac38eada9af57`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `IntegerWitnessTransfer` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/signedcoefficient--c66197a8349c50bdd824e7a5.md) | 24 | `declaration-track:c66197a8349c50bdd824e7a5e2fc897da6a7209eaecc790652da2ccf47f127d1` |
| 2 | `theorem` | [signedCoefficient_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/signedcoefficient-zero--a85a7f312a5c66e664f132bb.md) | 27 | `result-track:a85a7f312a5c66e664f132bb63015ffc90641a9e30ad05286f8e71bee3afa8fb` |
| 3 | `theorem` | [signedCoefficient_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/signedcoefficient-pos--f3f78e24682fba303efdf076.md) | 30 | `result-track:f3f78e24682fba303efdf076ed02981aa52da37bfc25f4b3db544238b88954c8` |
| 4 | `theorem` | [signedCoefficient_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/signedcoefficient-one--c06f189df8fb4ca089fec157.md) | 34 | `result-track:c06f189df8fb4ca089fec157faf7bee1e7bf9d0e88b57ee9a8562d86f0915fb4` |
| 5 | `theorem` | [cumulative_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/cumulative-eq--20756c420794c5850bc3e2ca.md) | 37 | `result-track:20756c420794c5850bc3e2ca418aff073a033c176290bb1806f618a600ad199e` |
| 6 | `theorem` | [cumulative_eq_intFloor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/cumulative-eq-intfloor--322af8d4b3d954da484beb13.md) | 53 | `result-track:322af8d4b3d954da484beb13d5d0319eea7c13b4a4781bf3416a10c5556c6c68` |
| 7 | `theorem` | [weighted_sum_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/weighted-sum-eq--9666d8204c7b96ac0c2bf20f.md) | 58 | `result-track:9666d8204c7b96ac0c2bf20fc6fa0a35650a29d451219bd4d3d9567bfc83093b` |
| 8 | `theorem` | [actual_derivative_integrable_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/actual-derivative-integrable-icc--4ebda031f3c55c1885d83989.md) | 69 | `result-track:4ebda031f3c55c1885d8398962cf9f91a4c25914cc0fed69a094d8ba60b5bb3e` |
| 9 | `theorem` | [actual_finite_signed_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/actual-finite-signed-integrable--c66cfb61a128518576ae73ea.md) | 74 | `result-track:c66cfb61a128518576ae73ea7e89b05876bc67fbde36c70ff65f21329c3a1ea1` |
| 10 | `theorem` | [actual_finite_stieltjes](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/actual-finite-stieltjes--265fcc69d80bac32c26c6479.md) | 85 | `result-track:265fcc69d80bac32c26c64792fb14ff36f2cc05c32a0995ee7a864af4742a135` |
| 11 | `theorem` | [actual_derivative_zero_above](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/actual-derivative-zero-above--2aa91b1cc6e7be4da616d619.md) | 101 | `result-track:2aa91b1cc6e7be4da616d619e4c86a185c465920d5185633c44726712e18c30a` |
| 12 | `theorem` | [actual_signed_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/actual-signed-integrable--95e78a2e69dfa16bcb4ed5ab.md) | 109 | `result-track:95e78a2e69dfa16bcb4ed5aba262b7ffebe513a2a233f88f0093f794ab83a8f4` |
| 13 | `theorem` | [actual_full_stieltjes](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/actual-full-stieltjes--dd3ba78909e607522852e1be.md) | 128 | `result-track:dd3ba78909e607522852e1be75f63157bd570dc3c09a61728846d02e42650200` |
| 14 | `def` | [signedLogKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/signedlogkernel--5f4de36c57035667490f4126.md) | 142 | `declaration-track:5f4de36c57035667490f41263eb7db36af835d2271b8c9eb5e2a59180aef041d` |
| 15 | `theorem` | [actual_log_kernel_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/actual-log-kernel-eq--1b7849dad88905d202821248.md) | 147 | `result-track:1b7849dad88905d20282124841249dd81e404bb57e98f855d07f7b7cc2fbd828` |
| 16 | `theorem` | [actual_log_signed_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/actual-log-signed-integrable--2c24eded9559ef382912c1ce.md) | 154 | `result-track:2c24eded9559ef382912c1ce57792032ea06d03ab2a568bb4577a5da5b31a778` |
| 17 | `theorem` | [actual_log_stieltjes](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant1608239da146ae325dc91f30b572b447a52a977dee485f99041e4775f56643d0.lean/declarations/actual-log-stieltjes--c06049339c97cb228e558f73.md) | 161 | `result-track:c06049339c97cb228e558f736be67f93b80bda731e1f6cc15ecdd45f8afeb9b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
