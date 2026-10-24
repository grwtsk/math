# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Basic.Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbd5a9638d2326fb2d19e0230681fb41d06e191e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbd5a9638d2326fb2d19e0230681fb41d06e191e`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.HasGaussianLaw.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Gaussian.HasGaussianLaw.Independence` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Gaussian.IsGaussianProcess.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Gaussian.IsGaussianProcess.Independence` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Independence.Process.HasIndepIncrements.IsGaussianProcess` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsPreBrownianReal](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal--6864c77214cfcb291f9088e3.md) | 83 | `declaration-track:6864c77214cfcb291f9088e3a2d727e44bbfebee6ac5d9d4bac3639d0947d7f0` |
| 2 | `lemma` | [IsPreBrownianReal.congr](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-congr--778629386c851a831ce887f3.md) | 88 | `result-track:778629386c851a831ce887f3d46e9d52c9d1111c3dfe9e162fce4acf845c8c16` |
| 3 | `lemma` | [IsPreBrownianReal.isGaussianProcess](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-isgaussianprocess--611849082759e5efe72f8164.md) | 96 | `result-track:611849082759e5efe72f8164a105f0867d5b3ba29ca3d99fcd0cf9b4e878709d` |
| 4 | `lemma` | [IsPreBrownianReal.aemeasurable](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-aemeasurable--0fd405cd12f74cc746c30c11.md) | 99 | `result-track:0fd405cd12f74cc746c30c1102fc937fa366e7802f0dcb736d49f57906e0f713` |
| 5 | `lemma` | [IsPreBrownianReal.hasLaw_eval](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-haslaw-eval--ea7a1ca64596f7975957ffbf.md) | 103 | `result-track:ea7a1ca64596f7975957ffbf863c88e1cf7ad4c4057c4dca4c2d6c3684296be1` |
| 6 | `lemma` | [IsPreBrownianReal.eval_zero_ae_eq_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-eval-zero-ae-eq-zero--fd9bea4fc78c75a58f7d46c7.md) | 107 | `result-track:fd9bea4fc78c75a58f7d46c7f0b081b9d7fbf5a58b81a3797682a759ca64f6db` |
| 7 | `lemma` | [IsPreBrownianReal.hasLaw_sub](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-haslaw-sub--1bd61fdac7918d11558f052e.md) | 113 | `result-track:1bd61fdac7918d11558f052ed92cf34a3b8c60d7ab06cfc949933a10193e48ee` |
| 8 | `lemma` | [IsPreBrownianReal.integral_eval](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-integral-eval--21992e7bf51d258bd181bb60.md) | 118 | `result-track:21992e7bf51d258bd181bb609c0bc3d3e1d88c932fb62cf0f6ebdddf41745929` |
| 9 | `lemma` | [IsPreBrownianReal.integrable_eval](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-integrable-eval--6927a07836006000f7720f0a.md) | 122 | `result-track:6927a07836006000f7720f0af53198d9dc5750a539b9ea4bf3cb2e56fd24319b` |
| 10 | `lemma` | [IsPreBrownianReal.covariance_eval](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-covariance-eval--33e514419870b54597c699ba.md) | 125 | `result-track:33e514419870b54597c699ba70a077a07fc90561cf14fe09e902947e43586b20` |
| 11 | `lemma` | [IsPreBrownianReal.covariance_fun_eval](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-covariance-fun-eval--645cf18bff0ca38e6d88a5ae.md) | 134 | `result-track:645cf18bff0ca38e6d88a5ae50b657ff949b89c39d7f675f4ac6389d95b3b9e5` |
| 12 | `theorem` | [IsGaussianProcess.isPreBrownianReal_of_covariance](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isgaussianprocess-isprebrownianreal-of-covariance--e42ae89c69b9cf27ce28bd3e.md) | 139 | `result-track:e42ae89c69b9cf27ce28bd3e4c670a8cbf60e76a748f493bdb0f9840fe685005` |
| 13 | `lemma` | [IsPreBrownianReal.hasIndepIncrements](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-hasindepincrements--7729e0351f75fe6ed5095df2.md) | 177 | `result-track:7729e0351f75fe6ed5095df28b1447231b810f907e85f961385d45ac63bb0b6a` |
| 14 | `theorem` | [HasIndepIncrements.isPreBrownianReal_of_hasLaw](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/hasindepincrements-isprebrownianreal-of-haslaw--bdd90d109f32f82f2cfb7b90.md) | 196 | `result-track:bdd90d109f32f82f2cfb7b905297d70784497ae0201551a5075bca4ebad8a6cb` |
| 15 | `lemma` | [IsPreBrownianReal.neg](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-neg--b2121ac32a1ee707d6d53db5.md) | 219 | `result-track:b2121ac32a1ee707d6d53db572cb6c890e4570d777916b6694c852bd6c886ba6` |
| 16 | `lemma` | [IsPreBrownianReal.smul](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-smul--fca5b8f80747ba38685cb25b.md) | 228 | `result-track:fca5b8f80747ba38685cb25b1d01c6dc91a8a1dcb7c47cca2b848fff0b687602` |
| 17 | `lemma` | [IsPreBrownianReal.shift](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-shift--bd5bc619a692f8e9cc0411e1.md) | 243 | `result-track:bd5bc619a692f8e9cc0411e13bb60a6cf65174897e712bdc13778474a9460d19` |
| 18 | `lemma` | [IsPreBrownianReal.indepFun_shift](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-indepfun-shift--8d2de55c35a4e7b241618e99.md) | 261 | `result-track:8d2de55c35a4e7b241618e990bb8a7b78a0285a4eff11d17ac9f4c38ef851f14` |
| 19 | `lemma` | [IsPreBrownianReal.inv](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isprebrownianreal-inv--aa6a683d083668e1fb57a9af.md) | 285 | `result-track:aa6a683d083668e1fb57a9af181517a9f48975a38dafaff88b47eccc4bbaece1` |
| 20 | `structure` | [IsBrownianReal](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isbrownianreal--d5014e3c6ca4a0f12c4002f4.md) | 310 | `declaration-track:d5014e3c6ca4a0f12c4002f462b970c88cebcb05f37464bf4593f77ca1278796` |
| 21 | `lemma` | [IsBrownianReal.neg](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isbrownianreal-neg--23654a24b6d699131872edb5.md) | 314 | `result-track:23654a24b6d699131872edb598db915065e57e7ca8535e4a62815e4d6e776560` |
| 22 | `lemma` | [IsBrownianReal.smul](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isbrownianreal-smul--2b7814fd8a4f3403204a70f2.md) | 320 | `result-track:2b7814fd8a4f3403204a70f27c454bac6168ec4c0a9fe4d848baa10da75465a5` |
| 23 | `lemma` | [IsBrownianReal.shift](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isbrownianreal-shift--747b7ae2b8fbd063d6351624.md) | 327 | `result-track:747b7ae2b8fbd063d635162461ab5e6e0758d0db506faa2aa143f2df749b1234` |
| 24 | `lemma` | [IsBrownianReal.tendsto_nhds_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/declarations/isbrownianreal-tendsto-nhds-zero--f781a77bfb94e40d07e5f986.md) | 334 | `result-track:f781a77bfb94e40d07e5f98654a75f4651a4e84b4c4a9241f92b173b7797174a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
