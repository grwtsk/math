# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RealTailKernel.Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee33ef923bbfab915d06bafe05d33994168dc329",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee33ef923bbfab915d06bafe05d33994168dc329`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Kernel` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Laplace.PoleCertificate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tailKernel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/tailkernel--aad3fe7a779d3db5de506c01.md) | 35 | `declaration-track:aad3fe7a779d3db5de506c017a76221ce72463dd7a7a2a974d990ddcda7732b5` |
| 2 | `def` | [tailFormula](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/tailformula--b7381651b50ca0735a34e366.md) | 40 | `declaration-track:b7381651b50ca0735a34e366cd0164aa93765835ddeb3f29057a07c81161038a` |
| 3 | `theorem` | [actual_tail_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/actual-tail-integrable--548dcf786e7941d1ef819d8a.md) | 46 | `result-track:548dcf786e7941d1ef819d8a54d3899ec0d1beb5b73f09a77d5803c5f400a6fc` |
| 4 | `theorem` | [kernelIntegrand_scale](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/kernelintegrand-scale--6c11bc9c8c459ed865bfd4f0.md) | 51 | `result-track:6c11bc9c8c459ed865bfd4f0b5cd0814edd323963b9209e154ec3da3b3d9ce7c` |
| 5 | `theorem` | [tailKernel_eq_scaled](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/tailkernel-eq-scaled--66da303faef102dee01b6d31.md) | 59 | `result-track:66da303faef102dee01b6d3163f07186358b5ea8527c9f1e5328ed37891867b9` |
| 6 | `theorem` | [actual_tail_integral](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/actual-tail-integral--dee9313e35575d8500a76bf3.md) | 69 | `result-track:dee9313e35575d8500a76bf3d348e97ad585f08284ab715cf5e7599e9d681339` |
| 7 | `theorem` | [tailKernel_eq_formula](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/tailkernel-eq-formula--bb2326ff7c42da3ad7418c32.md) | 83 | `result-track:bb2326ff7c42da3ad7418c3241c09caf01a6ed8ca3bd350adabb7a67397da104` |
| 8 | `theorem` | [actual_tail_formula](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/actual-tail-formula--5b7bf1cf87e5af99224cc6ce.md) | 103 | `result-track:5b7bf1cf87e5af99224cc6ceb308bab4665c890f546e9b4a28f7463d7aadd900` |
| 9 | `theorem` | [tailKernel_cleared](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/tailkernel-cleared--71a4bef1e223b7d9c96c9478.md) | 111 | `result-track:71a4bef1e223b7d9c96c947860a01f08a5c807b41fe49dea68746b1093e935ff` |
| 10 | `theorem` | [tailKernel_cleared_tendsto](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/tailkernel-cleared-tendsto--abc0cd83234662574e125c16.md) | 120 | `result-track:abc0cd83234662574e125c16e06efe1a9c30d3be188a855e4b6cee9fe6164985` |
| 11 | `theorem` | [tailKernel_analytic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/tailkernel-analytic--81c8f538321fcc376a5b873d.md) | 139 | `result-track:81c8f538321fcc376a5b873d3592ac76aa0859a3154ddd071df33b47fbeb7a62` |
| 12 | `def` | [polynomialTailKernel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/polynomialtailkernel--d337877414e28a3731e79589.md) | 147 | `declaration-track:d337877414e28a3731e79589f27eeea8bba7f05d23768dc11d2c335b4be1e6f0` |
| 13 | `def` | [sourceTailKernel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/sourcetailkernel--0e0d2e2c5c2bd61f7f12e2b8.md) | 150 | `declaration-track:0e0d2e2c5c2bd61f7f12e2b87a41bbafcb20f92a947d6f9df0319074d1d7d68b` |
| 14 | `theorem` | [weightedPolynomial_tail_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/weightedpolynomial-tail-integrable--26ad5669fdbc9cd7a5e995ef.md) | 156 | `result-track:26ad5669fdbc9cd7a5e995efff4bd61a48cddbc4bfed6ffb6fc4d408bc43e276` |
| 15 | `theorem` | [integral_weightedPolynomial_tail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/integral-weightedpolynomial-tail--f70707ffdccf36f2140dfb79.md) | 162 | `result-track:f70707ffdccf36f2140dfb79af3755b8d85f9a3185f05ee16ebdef2d1e9b92fa` |
| 16 | `theorem` | [actual_occurrence_tail_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/actual-occurrence-tail-integrable--8d92910ad6d951597640b063.md) | 175 | `result-track:8d92910ad6d951597640b063fb812de6473b9a20da8b104f945fdf24ddb1e48d` |
| 17 | `theorem` | [actual_occurrence_tail_integral](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/actual-occurrence-tail-integral--37f748af4175261c252a7c1c.md) | 183 | `result-track:37f748af4175261c252a7c1c8b186e424724246fec8d137720cfb51416da8994` |
| 18 | `theorem` | [tailKernel_lower_cleared_tendsto](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/tailkernel-lower-cleared-tendsto--7e08b75869c6414cae4d88ad.md) | 217 | `result-track:7e08b75869c6414cae4d88adf78631f219371fe1cb7f7abb70c6ca8f1bd92d59` |
| 19 | `theorem` | [polynomialTailKernel_cleared_tendsto](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/polynomialtailkernel-cleared-tendsto--0fe56fef4684b9e91a38e516.md) | 232 | `result-track:0fe56fef4684b9e91a38e516f5cc6dea0d4e8f7c6b9dac1ea99e5b95b336c91c` |
| 20 | `theorem` | [polynomialTailKernel_analytic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/polynomialtailkernel-analytic--f9a44e37d582d2f78834f0a3.md) | 255 | `result-track:f9a44e37d582d2f78834f0a3e54134c8aef2bd53218aa469bdfb9b521f9e33b2` |
| 21 | `theorem` | [sourceTailKernel_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/sourcetailkernel-neg--18b9799c5403412d51f791be.md) | 260 | `result-track:18b9799c5403412d51f791be4b8f8df2a6de382d8ccc2e7d71fd08c3655a2c25` |
| 22 | `theorem` | [sourceTailKernel_local_cleared_tendsto](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/sourcetailkernel-local-cleared-tendsto--b6cf601a72c963e73845beb4.md) | 266 | `result-track:b6cf601a72c963e73845beb49cf52707cdfa64d20118f45b39af7e55e67d56ed` |
| 23 | `theorem` | [reflected_multiplicity_tail_coefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/reflected-multiplicity-tail-coefficient--c16377a98deaa906cc836ac9.md) | 296 | `result-track:c16377a98deaa906cc836ac95c943f6a6064758431201c9c92a6853777e17513` |
| 24 | `theorem` | [actual_reflected_point_tail_coefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/declarations/actual-reflected-point-tail-coefficient--34219b3862e86fde29764355.md) | 312 | `result-track:34219b3862e86fde297643557d90766724e4f899d6742559fdfe96d2db233f8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
