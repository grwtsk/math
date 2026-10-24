# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateMertensResidual.Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80711dc5717ec69e8fdfb416076cdd2a19b30666",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80711dc5717ec69e8fdfb416076cdd2a19b30666`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [negativeSmoothMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/negativesmoothmoment--4ab2615dc8589c4cb63a73cf.md) | 41 | `declaration-track:4ab2615dc8589c4cb63a73cf0cae94939ba5601cf3972a04956651d7df0daf5e` |
| 2 | `def` | [initialPositiveMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/initialpositivemoment--c7c6a4edaa96d0d6c40e2fc1.md) | 47 | `declaration-track:c7c6a4edaa96d0d6c40e2fc1226c08186a02d773b6ae7bf686f5c2fff3be7ccd` |
| 3 | `theorem` | [negativeSmoothMoment_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/negativesmoothmoment-upper--5c20ea10b345ac9c364632f1.md) | 53 | `result-track:5c20ea10b345ac9c364632f1a7cd712f167831fb46d47f291be1753e81d198c5` |
| 4 | `theorem` | [negativeSmoothMoment_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/negativesmoothmoment-lower--78f6ed07ee1575cd55a94deb.md) | 97 | `result-track:78f6ed07ee1575cd55a94debfd5ea0301ee4893689df36a9c7b66128594d6149` |
| 5 | `theorem` | [negativeSmoothMoment_abs_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/negativesmoothmoment-abs-le--0e3d014ea57ff7eb4907e6f9.md) | 105 | `result-track:0e3d014ea57ff7eb4907e6f922246c2d88097f626d272f2efd66dc851a8b09a1` |
| 6 | `theorem` | [initialPositiveMoment_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/initialpositivemoment-upper--09da145f38f0af252a459333.md) | 114 | `result-track:09da145f38f0af252a459333b3ec5f05415c3ceab8c7c25e9b6586ba7717ca5b` |
| 7 | `theorem` | [initialPositiveMoment_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/initialpositivemoment-lower--48eb00c6dab42a71c5c75e8c.md) | 162 | `result-track:48eb00c6dab42a71c5c75e8c38ac1674159634cdce72dc725ce24eda25a429fa` |
| 8 | `theorem` | [initialPositiveMoment_abs_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/initialpositivemoment-abs-le--3c40bfefc984c3d14b450f69.md) | 171 | `result-track:3c40bfefc984c3d14b450f690dce0f26e5e0da2f621d1141b0b46ed60b74999d` |
| 9 | `theorem` | [smoothMoment_eq_neg_negative_sub_initial](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/smoothmoment-eq-neg-negative-sub-initial--6c3a4d70b49fda3ecb9fce05.md) | 182 | `result-track:6c3a4d70b49fda3ecb9fce05216275b380affc7425c28c9c3589798dd9976ee8` |
| 10 | `theorem` | [smoothMoment_abs_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/smoothmoment-abs-le--92631a0e297a03d291719f65.md) | 207 | `result-track:92631a0e297a03d291719f65295e08063fa928f844438ad20a5510121d30cf12` |
| 11 | `def` | [mertensResidual](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/mertensresidual--3ee5409deaedc7151e78befc.md) | 233 | `declaration-track:3ee5409deaedc7151e78befc011a5a786978e9d013d91de197d809d583440fe8` |
| 12 | `theorem` | [mertensResidual_eq_closedPrimeMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/mertensresidual-eq-closedprimemoment--69e09af4a14abf2f25d3fdbb.md) | 240 | `result-track:69e09af4a14abf2f25d3fdbb2cf8130ac8dd0e8aeadf1634672e304d5e5bc70e` |
| 13 | `theorem` | [primeSmoothDefect_eq_mertensResidual_sub_smooth](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/primesmoothdefect-eq-mertensresidual-sub-smooth--9ff432b44e229480dfe7fefd.md) | 250 | `result-track:9ff432b44e229480dfe7fefd092c0ffab464512ddfad23d5154a3be75ebc9ea9` |
| 14 | `def` | [MertensResidualTailUpperBound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/mertensresidualtailupperbound--95a5bf778c8fe46cdfa2a4b9.md) | 259 | `declaration-track:95a5bf778c8fe46cdfa2a4b981e6f9ebd8eb90825e0467d383342e0060df1281` |
| 15 | `theorem` | [prime_smooth_tail_of_mertens_residual_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/prime-smooth-tail-of-mertens-residual-tail--31aff97ed23b6c456c1a0852.md) | 266 | `result-track:31aff97ed23b6c456c1a0852b5374dd9a237d470f448d0182bfc9cc31d9613c0` |
| 16 | `theorem` | [mertens_residual_tail_of_prime_smooth_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/mertens-residual-tail-of-prime-smooth-tail--2c12862f8a9af0645b061321.md) | 282 | `result-track:2c12862f8a9af0645b061321789446db7d1841cb444e135571c8632994cf9202` |
| 17 | `theorem` | [prime_smooth_tail_iff_mertens_residual_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/prime-smooth-tail-iff-mertens-residual-tail--2af2e34d3d3bb52dd28d88b2.md) | 299 | `result-track:2af2e34d3d3bb52dd28d88b2f4a8130d3f2fa929bf67226253e7e3912cdf4cd1` |
| 18 | `theorem` | [signed_pairing_tail_iff_mertens_residual_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/signed-pairing-tail-iff-mertens-residual-tail--e21931a616ce35840e551903.md) | 307 | `result-track:e21931a616ce35840e55190377fad87c94b0e87e38654eab469ca67d460f25de` |
| 19 | `theorem` | [estimate_of_mertens_residual_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/estimate-of-mertens-residual-tail--05566900fddcf5992a2c37b0.md) | 315 | `result-track:05566900fddcf5992a2c37b0ec06329d6f0fc1d7432cb3b56b1adbe7d4c55d08` |
| 20 | `def` | [MertensResidualCheckpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/mertensresidualcheckpoint--b09b3b4468ce2a1b7d85c1ca.md) | 322 | `declaration-track:b09b3b4468ce2a1b7d85c1ca578298c5b101568b39883297a69e5634ec2952bc` |
| 21 | `theorem` | [mertens_residual_checkpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/declarations/mertens-residual-checkpoint--ebb886a40412a0d0f1599655.md) | 332 | `result-track:ebb886a40412a0d0f1599655865466bef3fd312f6e0db530d9d979eb1d792445` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
