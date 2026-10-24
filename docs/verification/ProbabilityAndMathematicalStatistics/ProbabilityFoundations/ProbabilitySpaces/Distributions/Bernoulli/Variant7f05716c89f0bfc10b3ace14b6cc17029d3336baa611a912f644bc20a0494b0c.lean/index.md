# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Bernoulli.Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "772bc6de79a62788902708421972d6a512ac3ad9",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `772bc6de79a62788902708421972d6a512ac3ad9`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Inverse` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.WellKnown` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernoulli'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli--8cc96b6d2c71b98cd41fd0c0.md) | 71 | `declaration-track:8cc96b6d2c71b98cd41fd0c069f37cd68f9ba194ea35ea4473a5596097553584` |
| 2 | `theorem` | [bernoulli'_def'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-def--0fbce631ea645b11f3431338.md) | 75 | `result-track:0fbce631ea645b11f3431338c3081860298c76a814c94e5357f9384fb918f12f` |
| 3 | `theorem` | [bernoulli'_def](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-def--4871a2c8414448122164a574.md) | 79 | `result-track:4871a2c8414448122164a574c921f0522fd1db6cc5c8212ead46e96c7993b30a` |
| 4 | `theorem` | [bernoulli'_spec](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-spec--033620b3bbf8d9c66ad6c75b.md) | 83 | `result-track:033620b3bbf8d9c66ad6c75b26bb264c62b5b077b0a35e9cfba14afc80db8eab` |
| 5 | `theorem` | [bernoulli'_spec'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-spec--09e9531bfb4beac6726e81d3.md) | 90 | `result-track:09e9531bfb4beac6726e81d3a756d290786c5ac361986e59f4dd475881c3dc13` |
| 6 | `theorem` | [bernoulli'_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-zero--f2bcd5aa40369c48028bc098.md) | 102 | `result-track:f2bcd5aa40369c48028bc0988c5582caf3fc986c0f4539574d292bf8aa2303c7` |
| 7 | `theorem` | [bernoulli'_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-one--c2324e8a3778e8907deb20d7.md) | 107 | `result-track:c2324e8a3778e8907deb20d73b6226006a1163f79410ca392ccd94a62270a24a` |
| 8 | `theorem` | [bernoulli'_two](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-two--080ac67e2ba527c0b7253b54.md) | 112 | `result-track:080ac67e2ba527c0b7253b54c0e799b593833c997d5591a03d81a411593cabc0` |
| 9 | `theorem` | [bernoulli'_three](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-three--bb74101070a3fa43133fe72e.md) | 117 | `result-track:bb74101070a3fa43133fe72ec1a7fd02d8a2388d2b91955d0370a698820c3238` |
| 10 | `theorem` | [bernoulli'_four](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-four--f0d4f69753cd2076ebbfcb08.md) | 122 | `result-track:f0d4f69753cd2076ebbfcb08115441989f1895a39936b7a640fed5a67f57fa26` |
| 11 | `theorem` | [sum_bernoulli'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/sum-bernoulli--c549cb539e6bdbde96b7a8aa.md) | 130 | `result-track:c549cb539e6bdbde96b7a8aa60bb9da76df2b066d71ce8c5965425fedb833642` |
| 12 | `def` | [bernoulli'PowerSeries](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-powerseries--e5370c61f1f107da5e7ad823.md) | 145 | `declaration-track:e5370c61f1f107da5e7ad823970a4edec7183b5965b200f0289dead94c21c8f9` |
| 13 | `theorem` | [bernoulli'PowerSeries_mul_exp_sub_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-powerseries-mul-exp-sub-one--5c59ba4460544507e4593e75.md) | 148 | `result-track:5c59ba4460544507e4593e75bb77e6bb2874360676d6a090f328ccba1d0c4cc2` |
| 14 | `theorem` | [bernoulli'_odd_eq_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-odd-eq-zero--5de90006cb47d8a5f0381c7a.md) | 169 | `result-track:5de90006cb47d8a5f0381c7a8e1d138c174d059e1d6db9883206b0939d22e563` |
| 15 | `def` | [bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli--79a76a708c4f945ba0aa8b3f.md) | 186 | `declaration-track:79a76a708c4f945ba0aa8b3f976271e1959ba6e039ac4b03d4fc1a3b44fcefb8` |
| 16 | `theorem` | [bernoulli'_eq_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-eq-bernoulli--bad2749f5b5a977da5547a66.md) | 189 | `result-track:bad2749f5b5a977da5547a66083bc358f6b8a30e2ee63fb7ae7f9397be86a24c` |
| 17 | `theorem` | [bernoulli_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-zero--15a351dacaaf1c7aa8265e86.md) | 193 | `result-track:15a351dacaaf1c7aa8265e864eb0428287a2e9a1c1bc6b438d594c6e70964b12` |
| 18 | `theorem` | [bernoulli_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-one--0c567a523590e45e7711baef.md) | 196 | `result-track:0c567a523590e45e7711baefc1b0c0eefc1e0acf71bcbed4fc31386d1c70b9ce` |
| 19 | `theorem` | [bernoulli_eq_bernoulli'_of_ne_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-eq-bernoulli-of-ne-one--ed15756ab06c21fe3af0276a.md) | 198 | `result-track:ed15756ab06c21fe3af0276ae44661c23eb2304602dd4f5c36e3003e861082de` |
| 20 | `theorem` | [sum_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/sum-bernoulli--f689db4ab2ec1835f9fb9cd2.md) | 206 | `result-track:f689db4ab2ec1835f9fb9cd2a27c8f254295140005497136da23953294f1f1f6` |
| 21 | `theorem` | [bernoulli_spec'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoulli-spec--d5de64cc74007ffc267d930b.md) | 224 | `result-track:d5de64cc74007ffc267d930b43e4bc242322d355aed0e1a62091ac66ae42388b` |
| 22 | `def` | [bernoulliPowerSeries](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoullipowerseries--dc9cb411b53b05a22f1e99e8.md) | 246 | `declaration-track:dc9cb411b53b05a22f1e99e8b15cc1e262991fad4914338d8c9f02b12b6b2e7a` |
| 23 | `theorem` | [bernoulliPowerSeries_mul_exp_sub_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/bernoullipowerseries-mul-exp-sub-one--010dd6686e606391c5f6bb4d.md) | 249 | `result-track:010dd6686e606391c5f6bb4d7ac66e4c889695172af5dc7dcadab96fef9f5de0` |
| 24 | `theorem` | [sum_range_pow](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/sum-range-pow--a4075ef2ad381559e86afe1c.md) | 275 | `result-track:a4075ef2ad381559e86afe1cad0434d814565b5e67600a3c949f9d9a8677b85b` |
| 25 | `theorem` | [sum_Ico_pow](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7f05716c89f0bfc10b3ace14b6cc17029d3336baa611a912f644bc20a0494b0c.lean/declarations/sum-ico-pow--c132209d87d9570dcdebe689.md) | 343 | `result-track:c132209d87d9570dcdebe689a0f27cbea22f262e200aefdffd24ea5845712094` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
