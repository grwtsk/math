# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.MGFAnalytic.Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "924d2e96df8daa7830d4efae1c682e39889cbd6d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `924d2e96df8daa7830d4efae1c682e39889cbd6d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Moments.ComplexMGF` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Analytic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasDerivAt_integral_pow_mul_exp_real](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/hasderivat-integral-pow-mul-exp-real--bfdb621a98487b2a107fe433.md) | 45 | `result-track:bfdb621a98487b2a107fe433237d37eb1d15f2e7bba4585579c3fb1fbfb474d1` |
| 2 | `lemma` | [hasDerivAt_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/hasderivat-mgf--002e7d0340c605892774d52a.md) | 64 | `result-track:002e7d0340c605892774d52a7a166110b33638c84a67c2f58c9f899ee622bb2d` |
| 3 | `lemma` | [hasDerivAt_iteratedDeriv_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/hasderivat-iteratedderiv-mgf--48976bc461dba57e4ef35502.md) | 70 | `result-track:48976bc461dba57e4ef35502fff56eab13ec7a58f3eedaf5fdc8f74c613acf28` |
| 4 | `lemma` | [iteratedDeriv_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/iteratedderiv-mgf--9139791d729c506ec229f459.md) | 86 | `result-track:9139791d729c506ec229f4590314f6734f2debf5c969afcb5edf69b5814d7dea` |
| 5 | `lemma` | [iteratedDeriv_mgf_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/iteratedderiv-mgf-zero--30086f87480d2fbc267b3ee2.md) | 95 | `result-track:30086f87480d2fbc267b3ee2e62b3feae65f329bce870b74fe7ec9dcd313884b` |
| 6 | `lemma` | [deriv_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/deriv-mgf--d50559497a8f0d824d3f6a6c.md) | 101 | `result-track:d50559497a8f0d824d3f6a6c8c2eaae2ac063f61939d9c3685220ce9129cefe2` |
| 7 | `lemma` | [deriv_mgf_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/deriv-mgf-zero--2c5e44add01e90c7f6986fb2.md) | 105 | `result-track:2c5e44add01e90c7f6986fb226c9115c0fb81ffd90837175fff033652291c762` |
| 8 | `lemma` | [analyticAt_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/analyticat-mgf--21e1606b6580c4b53cdebdc9.md) | 113 | `result-track:21e1606b6580c4b53cdebdc92263d6b8ffd36339116269e26d61cd67310623ba` |
| 9 | `lemma` | [analyticOnNhd_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/analyticonnhd-mgf--f827d3c74cb9ed434c858ea3.md) | 118 | `result-track:f827d3c74cb9ed434c858ea3ce9d15db40910c727354815cd1172ae444327ca5` |
| 10 | `lemma` | [analyticOn_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/analyticon-mgf--67b6e5b76b2fb8fce4cbbb4e.md) | 123 | `result-track:67b6e5b76b2fb8fce4cbbb4efd5c2eba3806014a87fa7c88feeab1af4b560adf` |
| 11 | `lemma` | [hasFPowerSeriesAt_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/hasfpowerseriesat-mgf--d6821fd48aa4211afa76959e.md) | 126 | `result-track:d6821fd48aa4211afa76959ec27079471fd5454102eca2845bd6d7b671a21283` |
| 12 | `lemma` | [differentiableAt_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/differentiableat-mgf--306d8c6969527fa535cdc4fd.md) | 133 | `result-track:306d8c6969527fa535cdc4fdd24d80efff3342f2412c30c08c1b1e7c6eebe918` |
| 13 | `lemma` | [differentiableOn_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/differentiableon-mgf--164c59a8a60db9487940a434.md) | 136 | `result-track:164c59a8a60db9487940a434e77b8abb683899c15a42babc7d3abf548d977135` |
| 14 | `lemma` | [continuousOn_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/continuouson-mgf--545751d1171eaafa00569aaf.md) | 140 | `result-track:545751d1171eaafa00569aaf0cf78ffbe447b86737b8c19d42934b354157ee2c` |
| 15 | `lemma` | [continuous_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/continuous-mgf--50f3e6805fa9a911d95dd661.md) | 143 | `result-track:50f3e6805fa9a911d95dd66123a3b7531d907b8a7d8c0b8aa6794af9b993c129` |
| 16 | `lemma` | [analyticOnNhd_iteratedDeriv_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/analyticonnhd-iteratedderiv-mgf--db9b8f0202970db7f65d7690.md) | 152 | `result-track:db9b8f0202970db7f65d7690e5de069ac0acee3c9fa97a796c7423dc98422afd` |
| 17 | `lemma` | [analyticOn_iteratedDeriv_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/analyticon-iteratedderiv-mgf--5205de3b000d980803c4e8d7.md) | 157 | `result-track:5205de3b000d980803c4e8d74f82e885faa0af89c0050b22211d1b0219641ae5` |
| 18 | `lemma` | [analyticAt_iteratedDeriv_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/analyticat-iteratedderiv-mgf--613094aa1bfa3bf53a5f251a.md) | 161 | `result-track:613094aa1bfa3bf53a5f251a862be5365e1494208361b262562ca1bb15026628` |
| 19 | `lemma` | [differentiableAt_iteratedDeriv_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/differentiableat-iteratedderiv-mgf--edba1b81780dc3d8b15ec8dd.md) | 165 | `result-track:edba1b81780dc3d8b15ec8dd12c999602613688de12c81930ebf9c6fb6091f27` |
| 20 | `lemma` | [analyticAt_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/analyticat-cgf--32ee90d53e668cbf72c29930.md) | 173 | `result-track:32ee90d53e668cbf72c29930aa906cbf65e60646cc053ae042b991c3e59f4977` |
| 21 | `lemma` | [analyticOnNhd_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/analyticonnhd-cgf--2db5ac774156416c6c3ba53a.md) | 179 | `result-track:2db5ac774156416c6c3ba53a14be1860e1ba449118e373c92f086c42c5b3c126` |
| 22 | `lemma` | [analyticOn_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/analyticon-cgf--c43513292fba68f967fd2ffb.md) | 184 | `result-track:c43513292fba68f967fd2ffb955aa6b58bcc892ccdb55389252c632a4e29388e` |
| 23 | `lemma` | [deriv_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/deriv-cgf--9ce7f5f17a967b9e82a2664b.md) | 191 | `result-track:9ce7f5f17a967b9e82a2664b165882d7d2571cc12f4ea1ebea0f4723f10fa8b4` |
| 24 | `lemma` | [deriv_cgf_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/deriv-cgf-zero--df4801edd2148bf8334ec5b5.md) | 203 | `result-track:df4801edd2148bf8334ec5b5aab3b2eec0e1812140a46ee725134fb15de1b7c2` |
| 25 | `lemma` | [iteratedDeriv_two_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/iteratedderiv-two-cgf--237f1be864ccc5f4befe2010.md) | 206 | `result-track:237f1be864ccc5f4befe201094079bd1ba49c25e749eb8545243cb2d35635ef2` |
| 26 | `lemma` | [iteratedDeriv_two_cgf_eq_integral](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/declarations/iteratedderiv-two-cgf-eq-integral--68fbd19a739305d79a63cc52.md) | 242 | `result-track:68fbd19a739305d79a63cc521bf52b57611f4e2adc65609ce1fde2e4607284b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
