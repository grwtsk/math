# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Dirichlet.Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d8597d045aff4470b39553ce6cdae2695bb455b",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d8597d045aff4470b39553ce6cdae2695bb455b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.DirichletCharacter.Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convolution` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SumPrimeReciprocals` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.VonMangoldt` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ArithmeticFunction.one_eq_delta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/arithmeticfunction-one-eq-delta--3925d6ca5b1d5618ffb5de96.md) | 37 | `result-track:3925d6ca5b1d5618ffb5de9608272654515aee7154e1a5d28e40721b6e6600cf` |
| 2 | `lemma` | [not_LSeriesSummable_moebius_at_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/not-lseriessummable-moebius-at-one--4bbdd4fea1fd43b993ef280a.md) | 54 | `result-track:4bbdd4fea1fd43b993ef280ad3dc16f1c5ba0c9f62d3fafa7036e745ecba2171` |
| 3 | `lemma` | [LSeriesSummable_moebius_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseriessummable-moebius-iff--ceed48012ead93995685c660.md) | 62 | `result-track:ceed48012ead93995685c660fb71542f7afcd14f3041b497f53bff5b8187f267` |
| 4 | `lemma` | [abscissaOfAbsConv_moebius](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/abscissaofabsconv-moebius--da00922a6bec86233485e3d4.md) | 70 | `result-track:da00922a6bec86233485e3d41598811a086b785336a71bac5e6fd9d8aa1d6d8e` |
| 5 | `lemma` | [ArithmeticFunction.const_one_eq_zeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/arithmeticfunction-const-one-eq-zeta--525f7ecbd17283fa632cb495.md) | 86 | `result-track:525f7ecbd17283fa632cb49504361d0b9adb9d5f8b3134792a066c05bf95a5d0` |
| 6 | `lemma` | [LSeries.one_convolution_eq_zeta_convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-one-convolution-eq-zeta-convolution--e9768a9bfd82120be84f87a4.md) | 90 | `result-track:e9768a9bfd82120be84f87a412714c0ebc2ca7406ef19ed28cdc1df4d5e85609` |
| 7 | `lemma` | [LSeries.convolution_one_eq_convolution_zeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-convolution-one-eq-convolution-zeta--ebf80dfcf668bdcca848a3f8.md) | 94 | `result-track:ebf80dfcf668bdcca848a3f877d43c6b923c1eaf12a5979a6cd2293733e68dde` |
| 8 | `lemma` | [isMultiplicative_toArithmeticFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/ismultiplicative-toarithmeticfunction--d96bc17019f974efa50910da.md) | 105 | `result-track:d96bc17019f974efa50910da609876235f7297a8e4b572b72749767f3538e2d5` |
| 9 | `lemma` | [apply_eq_toArithmeticFunction_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/apply-eq-toarithmeticfunction-apply--32eb99641973f4ef8a91063a.md) | 112 | `result-track:32eb99641973f4ef8a91063ad6ab18280dfae33dfdcf90c3a323d101f8c4af08` |
| 10 | `lemma` | [mul_convolution_distrib](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/mul-convolution-distrib--aac1661dc08b2d40833c393c.md) | 120 | `result-track:aac1661dc08b2d40833c393cf8b9c2ed9aab49de358c9b9683f3ae85e2588841` |
| 11 | `lemma` | [mul_delta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/mul-delta--60b3a1465c5884a2b5d3a1e2.md) | 129 | `result-track:60b3a1465c5884a2b5d3a1e29712c45cd4fc2a35cb01314fb26da9515615bb8c` |
| 12 | `lemma` | [delta_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/delta-mul--dfdb0c20ea9892d3d7bde53c.md) | 132 | `result-track:dfdb0c20ea9892d3d7bde53c3dc21c58b42e630fea6e54907b93f91945de9382` |
| 13 | `lemma` | [convolution_mul_moebius](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/convolution-mul-moebius--4119ff5e082013e184f0f346.md) | 138 | `result-track:4119ff5e082013e184f0f346f1ff70cdf146697ebe3270d8484b0d9d7c759c60` |
| 14 | `lemma` | [modZero_eq_delta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/modzero-eq-delta--04165f69900dc11422a1e5a8.md) | 146 | `result-track:04165f69900dc11422a1e5a8b832ecf2a8b7259c29c6c77d74e19caa822e245b` |
| 15 | `lemma` | [modOne_eq_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/modone-eq-one--10b2304f980096ad81fcfc22.md) | 156 | `result-track:10b2304f980096ad81fcfc2233f7145ea84f368c2d166cfbf68f5dfb0dd8a52c` |
| 16 | `lemma` | [LSeries_modOne_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-modone-eq--8bf86a8cb92b248365bbd3e1.md) | 161 | `result-track:8bf86a8cb92b248365bbd3e1e43d04cfcc9022995bca08b81eb2f6c95a7499dd` |
| 17 | `lemma` | [not_LSeriesSummable_at_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/not-lseriessummable-at-one--79588b1c6571d25303c1c901.md) | 165 | `result-track:79588b1c6571d25303c1c90183efb6f2772a9c6fb1a7273085f641981ca150e2` |
| 18 | `lemma` | [LSeriesSummable_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseriessummable-of-one-lt-re--e5ebec43c13f7ae033f926ca.md) | 177 | `result-track:e5ebec43c13f7ae033f926ca61883ce794dab0e4ed44af3724e9e486379d7b01` |
| 19 | `lemma` | [LSeriesSummable_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseriessummable-iff--cb2ab9e1c0a32df156d139ea.md) | 183 | `result-track:cb2ab9e1c0a32df156d139ea4f1e997a9a06b3a1b0db29ee389840b51712461a` |
| 20 | `lemma` | [absicssaOfAbsConv_eq_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/absicssaofabsconv-eq-one--44804c7d19ac57c42ae9c0f5.md) | 191 | `result-track:44804c7d19ac57c42ae9c0f5cd795008d78fd0893307d886a72c3cff7266811d` |
| 21 | `lemma` | [LSeriesSummable_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseriessummable-mul--9ff2f084cdb15961b13b5b1b.md) | 198 | `result-track:9ff2f084cdb15961b13b5b1b455f0c197a03dfaef0fcd665433a4bf46cd6ff2b` |
| 22 | `lemma` | [LSeries.mul_mu_eq_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-mul-mu-eq-one--2dae9ca56cf143d766fbadd4.md) | 207 | `result-track:2dae9ca56cf143d766fbadd41e632284c8e6cbdf6ec99a85bfb3138028387f35` |
| 23 | `lemma` | [LSeries_ne_zero_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-ne-zero-of-one-lt-re--09182493648f061a728f18b2.md) | 219 | `result-track:09182493648f061a728f18b26a484c1162861deb25beda1e3365b56b99284fd9` |
| 24 | `lemma` | [LSeries.abscissaOfAbsConv_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-abscissaofabsconv-one--5f309ef24e6b6afb2ca4b78e.md) | 239 | `result-track:5f309ef24e6b6afb2ca4b78e010f5cfeae7bedc38ac7fc3ba17e6b1a96739e07` |
| 25 | `theorem` | [LSeriesSummable_one_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseriessummable-one-iff--96758d6c99382f7cc2bd1353.md) | 243 | `result-track:96758d6c99382f7cc2bd13532bc6f94fe6c580eb33974ea4d76f89d9f3ccafa4` |
| 26 | `lemma` | [LSeries_zeta_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-zeta-eq--dbfa5a81a94fea8b8dabdb46.md) | 251 | `result-track:dbfa5a81a94fea8b8dabdb46f39dfdc20114166f62e4b4ca3214386b8b4527ea` |
| 27 | `theorem` | [LSeriesSummable_zeta_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseriessummable-zeta-iff--5c69091cdf67ad4ee0c9f0fc.md) | 257 | `result-track:5c69091cdf67ad4ee0c9f0fc81f7f9ec092d685fa80f2d0de1a2121becc56429` |
| 28 | `lemma` | [abscissaOfAbsConv_zeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/abscissaofabsconv-zeta--6862317e1b8cca8c8af56cf9.md) | 261 | `result-track:6862317e1b8cca8c8af56cf95f9b2066d00a96b2c95e368a6db34e1084ac48ab` |
| 29 | `lemma` | [LSeries_zeta_eq_riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-zeta-eq-riemannzeta--e4aa49b0cfc5eeb1a1c1b6ae.md) | 266 | `result-track:e4aa49b0cfc5eeb1a1c1b6ae79a31ecaf289aaf32612f92590221b37237ea075` |
| 30 | `lemma` | [LSeriesHasSum_zeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lserieshassum-zeta--a214b6a5873af0f678ad11e0.md) | 275 | `result-track:a214b6a5873af0f678ad11e04656a666ef70fa3291ce66ec1145cef008914a6b` |
| 31 | `lemma` | [LSeries_zeta_mul_Lseries_moebius](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-zeta-mul-lseries-moebius--c617c759245d4d514e04563d.md) | 279 | `result-track:c617c759245d4d514e04563dbdbd306bcefd5e4253dd1397806d525135f968a7` |
| 32 | `lemma` | [LSeries_zeta_ne_zero_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-zeta-ne-zero-of-one-lt-re--b6d63b6dce38021ef2436d81.md) | 286 | `result-track:b6d63b6dce38021ef2436d81e67f93731eafaa8a0b7f2f88840879727538c50c` |
| 33 | `lemma` | [LSeries_one_eq_riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-one-eq-riemannzeta--40f4fbecb75e7a243dfbfeb7.md) | 295 | `result-track:40f4fbecb75e7a243dfbfeb7b5bf2b269719846efb4c204f7cdf31ff2daf8fe3` |
| 34 | `lemma` | [LSeriesHasSum_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lserieshassum-one--db5f9900b33014215a09ef34.md) | 300 | `result-track:db5f9900b33014215a09ef344a5080919fc75a3c3ac7c077cdebcccc34fac524` |
| 35 | `lemma` | [LSeries_one_mul_Lseries_moebius](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-one-mul-lseries-moebius--ff9edab3f77c90e9807008a9.md) | 304 | `result-track:ff9edab3f77c90e9807008a9aa7c14d24b7021f8f43c499e4f8bf0a88e43c65c` |
| 36 | `lemma` | [LSeries_one_ne_zero_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-one-ne-zero-of-one-lt-re--6ab3b18e5b88ec3f719e87ba.md) | 309 | `result-track:6ab3b18e5b88ec3f719e87ba0ca48e2d649031b8519931555259ff056c8e5b54` |
| 37 | `lemma` | [riemannZeta_ne_zero_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/riemannzeta-ne-zero-of-one-lt-re--159a9a4ce2d1429e8feca858.md) | 313 | `result-track:159a9a4ce2d1429e8feca8589729d26893a8fcee18d73f565bae5953ac15866f` |
| 38 | `lemma` | [convolution_vonMangoldt_zeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/convolution-vonmangoldt-zeta--25f497453a02d9b36dfc51cf.md) | 331 | `result-track:25f497453a02d9b36dfc51cf7e4f63df8c17b016f06c38cb0049eaa161942a56` |
| 39 | `lemma` | [convolution_vonMangoldt_const_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/convolution-vonmangoldt-const-one--778f03726fa276e3b18120f3.md) | 336 | `result-track:778f03726fa276e3b18120f3182626ce71462132c369609b6e1ace968c231f89` |
| 40 | `lemma` | [LSeriesSummable_vonMangoldt](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseriessummable-vonmangoldt--07a47eca6019260544ca4311.md) | 340 | `result-track:07a47eca6019260544ca4311852b470b36aeef442cf4e71fc26c5b579f5c4b0f` |
| 41 | `lemma` | [convolution_twist_vonMangoldt](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/convolution-twist-vonmangoldt--e24e0a06461cc042ee499768.md) | 355 | `result-track:e24e0a06461cc042ee499768cd1012b71a9ddb034f2ce4038cdb8727699e0a24` |
| 42 | `lemma` | [LSeriesSummable_twist_vonMangoldt](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseriessummable-twist-vonmangoldt--daa97c1969fca2b90e8bd7dc.md) | 361 | `result-track:daa97c1969fca2b90e8bd7dc8a9d4816e7480f17463e32b7e1d2e401af539585` |
| 43 | `lemma` | [LSeries_twist_vonMangoldt_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-twist-vonmangoldt-eq--cd94de05edf611f614c77f18.md) | 368 | `result-track:cd94de05edf611f614c77f186ea32d8fb6d8ae8ffc6d8c26ce82e77775b5771a` |
| 44 | `lemma` | [LSeries_vonMangoldt_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-vonmangoldt-eq--54847288891ba5ba568d6181.md) | 388 | `result-track:54847288891ba5ba568d6181b5e59eb16a0859907c7e51e4d0a857a2cd5264c6` |
| 45 | `lemma` | [LSeries_vonMangoldt_eq_deriv_riemannZeta_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/declarations/lseries-vonmangoldt-eq-deriv-riemannzeta-div--0fbd66f5824af92ad346150a.md) | 395 | `result-track:0fbd66f5824af92ad346150a49e8ebcfaafe89e4d1e586697fb707b6bfed8c8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
