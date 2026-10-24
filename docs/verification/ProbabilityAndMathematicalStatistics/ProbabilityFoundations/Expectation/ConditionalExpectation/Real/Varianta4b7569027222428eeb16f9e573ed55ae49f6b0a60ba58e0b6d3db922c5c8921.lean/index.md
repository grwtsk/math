# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.Real.Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2faccd3760ea9e89ba12318c38af1e476d192eff",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2faccd3760ea9e89ba12318c38af1e476d192eff`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.CondJensen` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.LpNorm` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rnDeriv_ae_eq_condExp](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/rnderiv-ae-eq-condexp--afcc362901ecd6aa171617cc.md) | 51 | `result-track:afcc362901ecd6aa171617cc02d5aa7ab27f2bc1343ecff2bb11418304e5236b` |
| 2 | `lemma` | [condExp_le_nonneg_const](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/condexp-le-nonneg-const--8b8dfdff6b18060037a3435a.md) | 71 | `result-track:8b8dfdff6b18060037a3435a74fd8c7ab2265e9c2a988173faf30c68b5095607` |
| 3 | `theorem` | [abs_condExp_ae_le_condExp_abs](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/abs-condexp-ae-le-condexp-abs--b15f282a782a33850ea5c86a.md) | 91 | `result-track:b15f282a782a33850ea5c86aa3fc26a09f8b32ff3daf50b6c83561c2e052a9e6` |
| 4 | `theorem` | [integral_abs_condExp_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/integral-abs-condexp-le--ab851e718546adda83a0a68f.md) | 101 | `result-track:ab851e718546adda83a0a68f6f7c2c00cde55d485173724444b9be7fecda4ffc` |
| 5 | `lemma` | [integral_condExp_le_of_ae_nonneg](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/integral-condexp-le-of-ae-nonneg--c477edd732d659d517e4398a.md) | 112 | `result-track:c477edd732d659d517e4398a837ea399cca62c938bcc5a30ab8a9cfc4b832c26` |
| 6 | `theorem` | [setIntegral_abs_condExp_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/setintegral-abs-condexp-le--1512311cad57373cab257822.md) | 122 | `result-track:1512311cad57373cab2578227720e1103e759a91f87b39700648ec462f623050` |
| 7 | `lemma` | [setIntegral_condExp_le_of_ae_restrict_nonneg](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/setintegral-condexp-le-of-ae-restrict-nonneg--95c313373b189c8b872de347.md) | 136 | `result-track:95c313373b189c8b872de347eaef29dfe405138caa5d872c95989b6de220abf0` |
| 8 | `lemma` | [setIntegral_condExp_le_of_ae_nonneg](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/setintegral-condexp-le-of-ae-nonneg--248f89a8fd2704435b2f5ea6.md) | 150 | `result-track:248f89a8fd2704435b2f5ea6fac404ce42be2ed8c56a22c3a7cb1ae747b1955b` |
| 9 | `theorem` | [ae_bdd_abs_condExp_of_ae_bdd_abs](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/ae-bdd-abs-condexp-of-ae-bdd-abs--901ad3b2bf9f25e6f97e7658.md) | 156 | `result-track:901ad3b2bf9f25e6f97e76589183fa2bde79e2aea4815532601f15ee9357232d` |
| 10 | `theorem` | [ae_bdd_condExp_of_ae_bdd](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/ae-bdd-condexp-of-ae-bdd--5bec85285d27d633b1bf0e1d.md) | 166 | `result-track:5bec85285d27d633b1bf0e1d8bf38e73d329a08a50a45881f4f599a98327f7c8` |
| 11 | `theorem` | [integral_norm_condExp_rpow_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/integral-norm-condexp-rpow-le--c0c3b30bd671524e161ae07b.md) | 204 | `result-track:c0c3b30bd671524e161ae07b76cf148b41bf61bfd257458888513be9a2667b8c` |
| 12 | `theorem` | [integral_norm_condExp_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/integral-norm-condexp-le--feee3a96edb73d2628c4693c.md) | 214 | `result-track:feee3a96edb73d2628c4693c1581db84e68a284d647bb0299bba058770872960` |
| 13 | `theorem` | [setIntegral_norm_condExp_rpow_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/setintegral-norm-condexp-rpow-le--b443a23f21f64f43452fc474.md) | 219 | `result-track:b443a23f21f64f43452fc474a0d1a735078fb6d2a1d622b0b3cfb62fe9b5bc40` |
| 14 | `theorem` | [setIntegral_norm_condExp_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/setintegral-norm-condexp-le--3dfe3549388b62aeec3cc0d0.md) | 237 | `result-track:3dfe3549388b62aeec3cc0d0093741ee110036ee4258e502cea55bacca881e89` |
| 15 | `theorem` | [ae_bdd_norm_condExp_of_ae_bdd_norm](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/ae-bdd-norm-condexp-of-ae-bdd-norm--be79603279f574f919a05812.md) | 244 | `result-track:be79603279f574f919a058121b6ddf03860020a4a4b458f4f66f1ef818460643` |
| 16 | `theorem` | [MemLp.ae_norm_condExp_le_essSup](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/memlp-ae-norm-condexp-le-esssup--752ffc4a4554db06fa490dbb.md) | 250 | `result-track:752ffc4a4554db06fa490dbb1d40e7b95c8d9527630dd038a79d0c9ac540245b` |
| 17 | `theorem` | [MemLp.essSup_norm_condExp_le_essSup_norm](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/memlp-esssup-norm-condexp-le-esssup-norm--faab3740389ccf96cb3a68b1.md) | 254 | `result-track:faab3740389ccf96cb3a68b1501a8f41a1d73bc1535301c8b3612d76279596c0` |
| 18 | `theorem` | [MemLp.lpNorm_condExp_le_lpNorm](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/memlp-lpnorm-condexp-le-lpnorm--93ce2842601d815c679d5e8b.md) | 259 | `result-track:93ce2842601d815c679d5e8b94ca65b6975176500eb231c52be17ef2d9ee40cb` |
| 19 | `theorem` | [MemLp.condExp](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/memlp-condexp--e48fb90b8cabaf69c6f94b61.md) | 281 | `result-track:e48fb90b8cabaf69c6f94b615ec2efe8fa3f9327f879063b54cf1bc1be7e4036` |
| 20 | `theorem` | [eLpNorm_condExp_le_eLpNorm](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/elpnorm-condexp-le-elpnorm--461631c1dce35c91d038feab.md) | 296 | `result-track:461631c1dce35c91d038feabdedf1f9948d9e3d03f07a4cf45d51dc58411fe04` |
| 21 | `theorem` | [eLpNorm_one_condExp_le_eLpNorm](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/elpnorm-one-condexp-le-elpnorm--84a44476034b41a8d12f0e66.md) | 305 | `result-track:84a44476034b41a8d12f0e663932352c6684b9c2fb3734aa4dabcfb6be52db13` |
| 22 | `theorem` | [Integrable.uniformIntegrable_condExp](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/declarations/integrable-uniformintegrable-condexp--3d088a44bd7b7ceda3691847.md) | 312 | `result-track:3d088a44bd7b7ceda3691847c4ad94b753935bae70929baa2b1d1a3b7afe81ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
