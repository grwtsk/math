# Verification target: GRWTSK.Analysis.Fourier.LogarithmicDomain

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "600fdd259541fcc484058edab9105082f877a31f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/LogarithmicDomain.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `600fdd259541fcc484058edab9105082f877a31f`.

Source path: `GRWTSK/Analysis/Fourier/LogarithmicDomain.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/LogarithmicDomain.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ExplicitFormula.CorrelationPairing`](../../../../../mathematics/NumberTheory/ExplicitFormula/CorrelationPairing.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.PolynomialBumpNormalization`](../../../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.PolynomialBumpEstimates`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicIntegrand](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/logarithmicintegrand--afc4294aa3ac3813e6ad2291.md) | 29 | `declaration-track:afc4294aa3ac3813e6ad22917c38577a2f31c27628922d73cd033c89db7b79e7` |
| 2 | `def` | [LogarithmicDomain](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/logarithmicdomain--523e6408b55cb38f051e4df6.md) | 33 | `declaration-track:523e6408b55cb38f051e4df666b1d69ebaf09b45bfaf99f93ed4ac0e8a737079` |
| 3 | `def` | [archimedeanConstant](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/archimedeanconstant--3f67123316e83d32678f89b3.md) | 39 | `declaration-track:3f67123316e83d32678f89b3d8cc3662290acf8670080f247a4bbdd36d382641` |
| 4 | `def` | [MultiplierEstimateObligation](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/multiplierestimateobligation--e3af9bd0b52a5c56492f5452.md) | 43 | `declaration-track:e3af9bd0b52a5c56492f5452d1aab4736be547adae6d1182cfc5400106db4315` |
| 5 | `def` | [LogarithmicIntegrabilityObligation](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/logarithmicintegrabilityobligation--406179f7181d5850411299c3.md) | 51 | `declaration-track:406179f7181d5850411299c3422bfa320f3f9176d00685cb2e053693547d7301` |
| 6 | `def` | [ArchimedeanIntegrabilityObligation](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/archimedeanintegrabilityobligation--f281567b9682eed501e13e38.md) | 56 | `declaration-track:f281567b9682eed501e13e38f081f290d7002e67072e2392d077904fee2151f7` |
| 7 | `def` | [realPoleContribution](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/realpolecontribution--959332b465ad49306f779fcc.md) | 61 | `declaration-track:959332b465ad49306f779fcc7ad7ec3f7cb3d24e60aead6b56c852f83cdbe6d6` |
| 8 | `def` | [realArithmeticForm](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/realarithmeticform--61308817f0c37791417bec09.md) | 66 | `declaration-track:61308817f0c37791417bec09282749b171aacfd249382dddad0e6574e18efa60` |
| 9 | `theorem` | [actual_memLp](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/actual-memlp--549567b806f9afd2d41e9566.md) | 74 | `result-track:549567b806f9afd2d41e956619b618f0aebe4a69d48ffb1706a84a4258d514f8` |
| 10 | `theorem` | [actual_support](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/actual-support--e064ca932a5b6a10f1aa51b5.md) | 82 | `result-track:e064ca932a5b6a10f1aa51b5778d9b756231eb6e92a7fe02998c65574525a425` |
| 11 | `theorem` | [actual_pole_contribution_zero](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/actual-pole-contribution-zero--b0eb1dfc5a6153fbc15db3a9.md) | 89 | `result-track:b0eb1dfc5a6153fbc15db3a976e61e8f52102679ec1f763965e8cf592a98127f` |
| 12 | `theorem` | [actual_form_eq_source_scalar](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/actual-form-eq-source-scalar--cd9bf57797450fd030aec799.md) | 96 | `result-track:cd9bf57797450fd030aec79954e4bab3b639a1f7ad6d32ee4bcc794abdae233d` |
| 13 | `theorem` | [actual_domain_iff_logarithmic_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/actual-domain-iff-logarithmic-integrable--9e0c00cc8e4e271fb968b916.md) | 103 | `result-track:9e0c00cc8e4e271fb968b9166411687d0330596c6e658e2a1bcc92c4f2a5c792` |
| 14 | `theorem` | [actual_logarithmic_integrability](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/actual-logarithmic-integrability--a14622df17783777dce31960.md) | 109 | `result-track:a14622df17783777dce31960786c222aee5a6f872662e0493cdf1629f92073a3` |
| 15 | `theorem` | [actual_logarithmic_domain](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/actual-logarithmic-domain--96bede5e0a889dab061ede0d.md) | 114 | `result-track:96bede5e0a889dab061ede0da0ff4b9ec64da92e1e0e6f8996a317c0b8f528fb` |
| 16 | `def` | [NormalizationAdmissibilityObligation](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/normalizationadmissibilityobligation--64db5d00071acc2ee1072700.md) | 120 | `declaration-track:64db5d00071acc2ee10727002f0f96907d3d24de960b34055c21e066184dcaaa` |
| 17 | `theorem` | [normalization_admissibility_iff](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/normalization-admissibility-iff--ba89ed793e357372f533b7b6.md) | 130 | `result-track:ba89ed793e357372f533b7b6a12573c7791a9ae7bd082dfb503d9fd7fb9dfdf2` |
| 18 | `theorem` | [normalization_admissibility_iff_archimedean](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/declarations/normalization-admissibility-iff-archimedean--74af4c8b09a22f0f022c698f.md) | 143 | `result-track:74af4c8b09a22f0f022c698fad8fbec7d4ae80568f833de9c83c3ed31cdafef1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
