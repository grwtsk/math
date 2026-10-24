# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CandidateLineBounds.Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4793a667b01d80b377a6c725ac8e8421d3cef98a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4793a667b01d80b377a6c725ac8e8421d3cef98a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Bounded` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourcePolynomial_leading_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/sourcepolynomial-leading-error--719efdbcb9cd9298f4e99355.md) | 29 | `result-track:719efdbcb9cd9298f4e99355f239e9db12fce4930238aac593666bbe3d6d1b5a` |
| 2 | `theorem` | [sourceTailGap_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/sourcetailgap-pos--7a47d7f36833a90d26a2e12f.md) | 51 | `result-track:7a47d7f36833a90d26a2e12f077d88600055d59e66a9699e816dd7193e89e126` |
| 3 | `theorem` | [sourceEndpoint_tail_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/sourceendpoint-tail-lower--67ae4ca7010df55df6f8fa1d.md) | 56 | `result-track:67ae4ca7010df55df6f8fa1d9be2335c16b654db77bb1a4ffa14a21dcefb721b` |
| 4 | `theorem` | [reducedW_closedFormula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/reducedw-closedformula--b661806e6b0e3d7a13245807.md) | 104 | `result-track:b661806e6b0e3d7a13245807f13b70bdcd282da7f521f5d3cacebe78d018eb3f` |
| 5 | `theorem` | [norm_add_half_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/norm-add-half-ge--047cebc9d8b4c7606163517a.md) | 124 | `result-track:047cebc9d8b4c7606163517afa674d8656a8011a04205ae51a015b453879300c` |
| 6 | `theorem` | [reducedW_tail_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/reducedw-tail-lower--68a49454af621250d862fe63.md) | 134 | `result-track:68a49454af621250d862fe631e4d62c7ec1f117d5fdd12f5fd7ee0d96cdd4d6d` |
| 7 | `theorem` | [reducedW_inverse_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/reducedw-inverse-tail-bound--badff222229ded28c1f767a1.md) | 172 | `result-track:badff222229ded28c1f767a14e078b7f4f2040a750cc329b2cfff09af7d40199` |
| 8 | `theorem` | [reducedW_inverse_uniform_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/reducedw-inverse-uniform-bound--b06df65cfce50d3f430f1897.md) | 189 | `result-track:b06df65cfce50d3f430f18972d40f0e5ad0958d1d09be3b7061ae52f5b315c5c` |
| 9 | `def` | [quotientIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/quotientintegral--39932797f2e5c63f26bff561.md) | 236 | `declaration-track:39932797f2e5c63f26bff5619ab1ff65e66f79ec06d8815d0bdefca2a0de3c28` |
| 10 | `theorem` | [quotient_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/quotient-integrand-integrable--8da3d0594a38c0587e6d4730.md) | 241 | `result-track:8da3d0594a38c0587e6d473084fd9047b25495d93e968424a2b360310faebcc0` |
| 11 | `theorem` | [quotientIntegral_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/quotientintegral-continuous--b948170e6ddad3cb3202621a.md) | 247 | `result-track:b948170e6ddad3cb3202621a952d82e24b83729223c00eca595a018e29c7aa8a` |
| 12 | `theorem` | [correctedQuotient_eq_integral_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/correctedquotient-eq-integral-of-ne--cf21363178deaccff2b1409d.md) | 289 | `result-track:cf21363178deaccff2b1409d85e535162391b4588dd5ced364f71622be1928b7` |
| 13 | `theorem` | [correctedQuotient_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/correctedquotient-eq-integral--3610f556a6b9ae4f662f17f3.md) | 296 | `result-track:3610f556a6b9ae4f662f17f3056f2cdf11a4edca848c1f0a61bc012f231c73d9` |
| 14 | `theorem` | [mobiusReciprocalSum_abs_le_harmonic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/mobiusreciprocalsum-abs-le-harmonic--2b2351d20e23382125064c23.md) | 315 | `result-track:2b2351d20e23382125064c23eb9af475b94b19945a85b23ccbc064b09fc50384` |
| 15 | `theorem` | [mobiusReciprocalSum_floor_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/mobiusreciprocalsum-floor-abs-le--757e84d6876e84d6fa7a4f78.md) | 328 | `result-track:757e84d6876e84d6fa7a4f78d1832ff0568e8cffdbf0e963c6bf737ade45baa4` |
| 16 | `theorem` | [quotient_integrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/quotient-integrand-norm-le--6aef0a2dd29359371148bda5.md) | 334 | `result-track:6aef0a2dd29359371148bda55d88b92b4e9e44c61dcff3c8fc5daced8617032c` |
| 17 | `theorem` | [inverse_sqrt_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/inverse-sqrt-integrable--e6fbf5881677ec6324b37665.md) | 368 | `result-track:e6fbf5881677ec6324b37665d9da11c85de1294d73b566a44f04e0e07e6a8953` |
| 18 | `theorem` | [integral_inverse_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/integral-inverse-sqrt--e19e27c6fb951876e66983d8.md) | 375 | `result-track:e19e27c6fb951876e66983d806b944733e499fe7c752079b7520cc0b7dc6b5da` |
| 19 | `theorem` | [correctedQuotient_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/correctedquotient-norm-le--620b75213f878b8fc50907de.md) | 394 | `result-track:620b75213f878b8fc50907deb6bd564b7bbe16950d80fb0bee32e1ac7c2c64f6` |
| 20 | `theorem` | [one_add_norm_le_twice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/one-add-norm-le-twice--2d8ecc2e0be595e1cc7a9995.md) | 430 | `result-track:2d8ecc2e0be595e1cc7a9995c526dfde2c849e928fe62469077d843d817944e0` |
| 21 | `theorem` | [candidate_parameter_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/candidate-parameter-decay--459276cc5cd1a9f0f35f8527.md) | 442 | `result-track:459276cc5cd1a9f0f35f852761661eb44b93abeef73f8b44ab51bfa6f66e7192` |
| 22 | `theorem` | [candidate_vertical_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/candidate-vertical-decay--539ac3eea86ce1d128b5dd69.md) | 509 | `result-track:539ac3eea86ce1d128b5dd69f67640c16abf865d660dd505e252fdebf0477972` |
| 23 | `theorem` | [scaled_cauchy_integrable_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/scaled-cauchy-integrable-integral--6c5ff315019fe54c287d46f8.md) | 522 | `result-track:6c5ff315019fe54c287d46f8f3254c608c87522703611202204cd12dabdfdafa` |
| 24 | `theorem` | [candidate_square_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/candidate-square-majorant--cd6ff775d08b38f68f1ea2bc.md) | 531 | `result-track:cd6ff775d08b38f68f1ea2bc27b52ea34dcfee7a29464c96687efcc5441561fe` |
| 25 | `theorem` | [candidate_line_square_integrable_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/declarations/candidate-line-square-integrable-bound--2a0c0e9d024867a8fee8d04d.md) | 554 | `result-track:2a0c0e9d024867a8fee8d04d902f7e18ff0ec2a1d3c135f2352011d19a6bac72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
