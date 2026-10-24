# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegrationByParts.Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a682b2461766e00d3d9b98dd4b3428cdc7bae98",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a682b2461766e00d3d9b98dd4b3428cdc7bae98`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LineDeriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/declarations/integral-bilinear-haslinederivat-right-eq-neg-left-of-integrable-aux1--bf74f19b53825c88fe2e47d5.md) | 53 | `result-track:bf74f19b53825c88fe2e47d5fa4af0b0a41dff99cbdfaad84f308f3867d06afe` |
| 2 | `lemma` | [integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable_aux2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/declarations/integral-bilinear-haslinederivat-right-eq-neg-left-of-integrable-aux2--7542fc1285c510007efdd410.md) | 77 | `result-track:7542fc1285c510007efdd410f9dd424317ea783e8d12ac2967f35d85c1b00df0` |
| 3 | `theorem` | [integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/declarations/integral-bilinear-haslinederivat-right-eq-neg-left-of-integrable--c2eeca9463cfeabbaf465c09.md) | 103 | `result-track:c2eeca9463cfeabbaf465c091da1e58923851a57b9c392e96d4990b1dea5f6c0` |
| 4 | `theorem` | [integral_bilinear_hasFDerivAt_right_eq_neg_left_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/declarations/integral-bilinear-hasfderivat-right-eq-neg-left-of-integrable--3305b81aab3bc4989b103aae.md) | 159 | `result-track:3305b81aab3bc4989b103aaec7aa5906073fef044f4c1718bea9bb0c7c94c250` |
| 5 | `theorem` | [integral_bilinear_fderiv_right_eq_neg_left_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/declarations/integral-bilinear-fderiv-right-eq-neg-left-of-integrable--9a585a742d497529957a4ccb.md) | 174 | `result-track:9a585a742d497529957a4ccbbe01a371e57afc2f52d4268a4449709fbff4fc77` |
| 6 | `theorem` | [integral_smul_fderiv_eq_neg_fderiv_smul_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/declarations/integral-smul-fderiv-eq-neg-fderiv-smul-of-integrable--219a72fee96cc134bf784b0f.md) | 190 | `result-track:219a72fee96cc134bf784b0f44712c37337d6c65926a865961a64f5543e43ece` |
| 7 | `theorem` | [integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/declarations/integral-mul-fderiv-eq-neg-fderiv-mul-of-integrable--b12ac3e8454ef6a35cc3f7b3.md) | 203 | `result-track:b12ac3e8454ef6a35cc3f7b3f6c3670d2484dda21ebf440a7d9fe409e3f9b9ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
