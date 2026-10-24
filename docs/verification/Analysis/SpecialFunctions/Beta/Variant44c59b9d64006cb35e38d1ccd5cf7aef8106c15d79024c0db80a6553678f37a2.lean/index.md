# Verification target: GRWTSK.Analysis.SpecialFunctions.Beta.Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8205d98c464988b5b42b312a91dbbd200b08876a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8205d98c464988b5b42b312a91dbbd200b08876a`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convolution` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.EulerSineProd` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.BohrMollerup` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/macro-rules--c8c89f7bc01458d1a4c2b8dd.md) | 51 | `declaration-track:c8c89f7bc01458d1a4c2b8dd94c5008c7c5785e3a9b1e3bfe4819ffd0ac30d70` |
| 2 | `def` | [betaIntegral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/betaintegral--b78281c95f2e6e9316eab1cf.md) | 69 | `declaration-track:b78281c95f2e6e9316eab1cfda3e9bc7a60f9c0b334f0d1e2ac7a64efe81d8fc` |
| 3 | `theorem` | [betaIntegral_convergent_left](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/betaintegral-convergent-left--223210a9726c13acffd530b8.md) | 74 | `result-track:223210a9726c13acffd530b852c12a64a4e62ddaaa5d8171ee88e1ecc5f94f47` |
| 4 | `theorem` | [betaIntegral_convergent](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/betaintegral-convergent--ed6624d0fec70b8b6d981377.md) | 91 | `result-track:ed6624d0fec70b8b6d981377fc083a912c3b9b8f7043104495336dfbc6c7c9fa` |
| 5 | `theorem` | [betaIntegral_symm](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/betaintegral-symm--a21539432e384ae5cb6457fd.md) | 104 | `result-track:a21539432e384ae5cb6457fd969abe671c9c5cb88369e230f0076e1aa795fbff` |
| 6 | `theorem` | [betaIntegral_eval_one_right](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/betaintegral-eval-one-right--e4640a120beccf291d5a9180.md) | 114 | `result-track:e4640a120beccf291d5a91800388c1944927a75e84e1ce65acf7aa5e14505f9a` |
| 7 | `theorem` | [betaIntegral_scaled](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/betaintegral-scaled--42bc9ec04d399435d969e302.md) | 123 | `result-track:42bc9ec04d399435d969e30216978f715587169d0b61c02a85cb855609de035b` |
| 8 | `theorem` | [Gamma_mul_Gamma_eq_betaIntegral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gamma-mul-gamma-eq-betaintegral--2b7071bdbbd2e46b0da90174.md) | 145 | `result-track:2b7071bdbbd2e46b0da901746e53336d68fd6daf619c8e3d902e65824e395f1c` |
| 9 | `theorem` | [betaIntegral_recurrence](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/betaintegral-recurrence--ef66b6c000476688bf2fc84d.md) | 164 | `result-track:ef66b6c000476688bf2fc84d9f54fd79b2b40eb5b5e784556ff62e891056252f` |
| 10 | `theorem` | [betaIntegral_eval_nat_add_one_right](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/betaintegral-eval-nat-add-one-right--3e3d1263adfe1eb2b484a3ab.md) | 222 | `result-track:3e3d1263adfe1eb2b484a3abb659c30b0bc0a86c17e002537e6fed2cf59b1ad7` |
| 11 | `def` | [GammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gammaseq--3d2b955f62e6e081f28349b1.md) | 252 | `declaration-track:3d2b955f62e6e081f28349b1f6eb078c30a2ab49e179683f3625e462c50ed02d` |
| 12 | `theorem` | [GammaSeq_eq_betaIntegral_of_re_pos](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gammaseq-eq-betaintegral-of-re-pos--6f3c8fe9e64ac20789d93dfe.md) | 256 | `result-track:6f3c8fe9e64ac20789d93dfe31ba4db018249d5050e8934379e2faeda0dfc8ae` |
| 13 | `theorem` | [GammaSeq_add_one_left](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gammaseq-add-one-left--c28013fcf7cb179a900a5007.md) | 261 | `result-track:c28013fcf7cb179a900a5007d4d73bd9badafd4c891cfde0fbd86f7ff755f98b` |
| 14 | `theorem` | [GammaSeq_eq_approx_Gamma_integral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gammaseq-eq-approx-gamma-integral--551b2c62f1da556f167e09d1.md) | 274 | `result-track:551b2c62f1da556f167e09d10db3d31302f7df3b9d35343c9a32cd4d9b56b688` |
| 15 | `theorem` | [approx_Gamma_integral_tendsto_Gamma_integral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/approx-gamma-integral-tendsto-gamma-integral--e767fe43e5ef1fe35de0ebbd.md) | 300 | `result-track:e767fe43e5ef1fe35de0ebbd988af98805e1f68b85dcba2b3d4084b4e01319ee` |
| 16 | `theorem` | [GammaSeq_tendsto_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gammaseq-tendsto-gamma--40c1c502d9175e069f5989b9.md) | 362 | `result-track:40c1c502d9175e069f5989b918e2d5b93c2c92a0ea13d35b12bd023f02bdb451` |
| 17 | `theorem` | [GammaSeq_mul](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gammaseq-mul--ecf063dc6d2c836ccd636e35.md) | 405 | `result-track:ecf063dc6d2c836ccd636e353bc61616e77871bb7ec79b691823495d0aa378b7` |
| 18 | `theorem` | [Gamma_mul_Gamma_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gamma-mul-gamma-one-sub--912432611ce45938fde9379b.md) | 430 | `result-track:912432611ce45938fde9379bc490a313ae157845c907b885512016ba4b8fd9cb` |
| 19 | `theorem` | [Gamma_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gamma-ne-zero--d06f12e75e3395db4053d1b7.md) | 458 | `result-track:d06f12e75e3395db4053d1b7fef949f64e20cac42fbe89be4bb2f82e9b52e11c` |
| 20 | `theorem` | [Gamma_eq_zero_iff](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gamma-eq-zero-iff--ad4b9f1e52e17825e4f6e673.md) | 479 | `result-track:ad4b9f1e52e17825e4f6e6731b77ec791bca778528da07bf96e1408bc706cb69` |
| 21 | `theorem` | [Gamma_ne_zero_of_re_pos](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gamma-ne-zero-of-re-pos--d6a0e3d5e70d257c4dd3f90c.md) | 486 | `result-track:d6a0e3d5e70d257c4dd3f90cca6ced2b156dc487980d4da63d1d1bb928171a02` |
| 22 | `def` | [GammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gammaseq--48e7a73c11f020af8297c7da.md) | 498 | `declaration-track:48e7a73c11f020af8297c7dae54ea510c89e7f32a501f5ae178a05f57fd3310c` |
| 23 | `theorem` | [GammaSeq_tendsto_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gammaseq-tendsto-gamma--2b4462ebe3a9b923fca7a9b4.md) | 503 | `result-track:2b4462ebe3a9b923fca7a9b4fc122d03d25a8e32ec196d0c33b797975e98bfb4` |
| 24 | `theorem` | [Gamma_mul_Gamma_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gamma-mul-gamma-one-sub--d074d04eae024a5b8e81ea67.md) | 514 | `result-track:d074d04eae024a5b8e81ea67b8a9100cb6c4afe42d12494a9e696ee0031cd5c8` |
| 25 | `theorem` | [one_div_Gamma_eq_self_mul_one_div_Gamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/one-div-gamma-eq-self-mul-one-div-gamma-add-one--adcef9674025d444c7e228c1.md) | 538 | `result-track:adcef9674025d444c7e228c16ddcadd285249cf76120c521092730d7b40080df` |
| 26 | `theorem` | [differentiable_one_div_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/differentiable-one-div-gamma--09796273ef64da55cacf8baa.md) | 547 | `result-track:09796273ef64da55cacf8baa1f621991267284c157db9f1e03f0abe08f79007d` |
| 27 | `theorem` | [Gamma_mul_Gamma_add_half](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gamma-mul-gamma-add-half--e4e7f148870812a0521ef3c7.md) | 584 | `result-track:e4e7f148870812a0521ef3c71646052b36de4129f3d6b11fd84712fabbbd3ef5` |
| 28 | `theorem` | [Gamma_mul_Gamma_add_half](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/declarations/gamma-mul-gamma-add-half--d51bbc26b5c67da5b20aa55e.md) | 623 | `result-track:d51bbc26b5c67da5b20aa55e1d977ea3623d2a7b76f5362756ad97d7c21e97a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
