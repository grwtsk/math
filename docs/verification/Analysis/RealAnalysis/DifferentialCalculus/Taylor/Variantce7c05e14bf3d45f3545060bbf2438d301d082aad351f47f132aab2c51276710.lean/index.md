# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Taylor.Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dea21478fb0d66940ebb3a1d39bda7fd0f07ffc",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dea21478fb0d66940ebb3a1d39bda7fd0f07ffc`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [taylorCoeffWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylorcoeffwithin--73b040683230783cf048c7c6.md) | 70 | `declaration-track:73b040683230783cf048c7c644ede35957c1d98ec84d449007ba73e5a1daab42` |
| 2 | `def` | [taylorWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylorwithin--b3bd6820bc684bba13826159.md) | 78 | `declaration-track:b3bd6820bc684bba13826159a96fe25e79e4c3e77a56bee6a34640503347daad` |
| 3 | `def` | [taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylorwithineval--59e2d1ad191c74bf689fc862.md) | 84 | `declaration-track:59e2d1ad191c74bf689fc862c99e89adf44ec68b907a7d4aef0d405e85a1d213` |
| 4 | `theorem` | [taylorWithin_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylorwithin-succ--41d5e8a3d262a790d0677b2a.md) | 87 | `result-track:41d5e8a3d262a790d0677b2a7fe77cdbe925b11f496b2589f8aaf8ea1d49eee9` |
| 5 | `theorem` | [taylorWithinEval_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylorwithineval-succ--0064ba63e62e781f36db74ea.md) | 95 | `result-track:0064ba63e62e781f36db74eaa0f6f326b8861680206e4ddad0d565db476afb03` |
| 6 | `theorem` | [taylor_within_zero_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylor-within-zero-eval--3840d670ce2063338023110f.md) | 108 | `result-track:3840d670ce2063338023110faecfd56fb29f741c299753034ce665ce4d0dde1b` |
| 7 | `theorem` | [taylorWithinEval_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylorwithineval-self--5cce64489273b07dc4adacdb.md) | 117 | `result-track:5cce64489273b07dc4adacdb512e26c480916d4f700b4e5f31bfd88b163223b0` |
| 8 | `theorem` | [taylor_within_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylor-within-apply--7a3450d525e2c93b570f0b01.md) | 123 | `result-track:7a3450d525e2c93b570f0b01d523c77714305db0511bd4e13e8f390f50c9cf8a` |
| 9 | `theorem` | [continuousOn_taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/continuouson-taylorwithineval--7f91ff6d2c05179c3bf8ea87.md) | 134 | `result-track:7f91ff6d2c05179c3bf8ea87447a92dc3a9f7b3c79c26688c9d4505062aa24bc` |
| 10 | `theorem` | [monomial_has_deriv_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/monomial-has-deriv-aux--30bdcf79bda84589fb0b5504.md) | 147 | `result-track:30bdcf79bda84589fb0b5504e2119239714aa09e8e69ecf7dd6bea9867cec435` |
| 11 | `theorem` | [hasDerivWithinAt_taylor_coeff_within](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/hasderivwithinat-taylor-coeff-within--3be19c5243c8bd846f082979.md) | 154 | `result-track:3be19c5243c8bd846f08297937aa5f6a60bf3e6ab2ddfb12411bd45c613d8124` |
| 12 | `theorem` | [hasDerivWithinAt_taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/hasderivwithinat-taylorwithineval--1b6ebfb8c772d31cecf7f5ab.md) | 180 | `result-track:1b6ebfb8c772d31cecf7f5ab83d989b16f5434bd802f48c52d3dd820ba1b9bf4` |
| 13 | `theorem` | [taylorWithinEval_hasDerivAt_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylorwithineval-hasderivat-ioo--24a5f7c19c34f0c8f87fd242.md) | 211 | `result-track:24a5f7c19c34f0c8f87fd24260f1486a5f74b45310fdb1149f37b5fbb75d6a6f` |
| 14 | `theorem` | [hasDerivWithinAt_taylorWithinEval_at_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/hasderivwithinat-taylorwithineval-at-icc--53601e0b7e7d0d007ed42f62.md) | 224 | `result-track:53601e0b7e7d0d007ed42f620628289c3a0896dc574fa9f88ac23138c7e68bcb` |
| 15 | `theorem` | [hasDerivAt_taylorWithinEval_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/hasderivat-taylorwithineval-succ--2bcd198d5f4341680f304d25.md) | 233 | `result-track:2bcd198d5f4341680f304d25e3dd6ff19d75e9c76a5286c1ec3437db51dfa0f2` |
| 16 | `theorem` | [taylor_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylor-islittleo--6af06a4823dad9e1b9f05928.md) | 250 | `result-track:6af06a4823dad9e1b9f059281f521e4ef233df437621877d281e37a6cb331001` |
| 17 | `theorem` | [taylor_isLittleO_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylor-islittleo-univ--801521a065b7dfbf0d9736ea.md) | 271 | `result-track:801521a065b7dfbf0d9736ea3641ba23342cb01523fa0215508edf5bb7557a44` |
| 18 | `theorem` | [taylor_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylor-tendsto--b9ee0f7556b3f1eb14a3971e.md) | 276 | `result-track:b9ee0f7556b3f1eb14a3971e71900489ec52e144669494ac890cf1a5d96a9008` |
| 19 | `theorem` | [Real.taylor_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/real-taylor-tendsto--31147171ba0d2053d8100c9a.md) | 291 | `result-track:31147171ba0d2053d8100c9a446a6896b27b81528828d53eec050211dd06c12b` |
| 20 | `theorem` | [taylor_mean_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylor-mean-remainder--ed628caa6713a970c991dd0b.md) | 309 | `result-track:ed628caa6713a970c991dd0bd11593231166d60476611c401a2c605732a56116` |
| 21 | `theorem` | [taylor_mean_remainder_lagrange](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylor-mean-remainder-lagrange--81cfbc16ff8b006ad2914e3c.md) | 338 | `result-track:81cfbc16ff8b006ad2914e3c9dae860b640ef8831a7a3e8406b0652159cc32a4` |
| 22 | `lemma` | [taylor_mean_remainder_lagrange_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylor-mean-remainder-lagrange-iteratedderiv--03c6c4c1f8455de1a6077730.md) | 356 | `result-track:03c6c4c1f8455de1a60777301ca1b485513dc25c39d3cb372081c1e2cdc5a003` |
| 23 | `theorem` | [taylor_mean_remainder_cauchy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylor-mean-remainder-cauchy--11f799b2efb2c3ceead1a5b7.md) | 379 | `result-track:11f799b2efb2c3ceead1a5b70b38867f37f26bec3fca44017cdd307d7c9dc10c` |
| 24 | `theorem` | [taylor_mean_remainder_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylor-mean-remainder-bound--1f16851919a8ced9f3d9ae11.md) | 398 | `result-track:1f16851919a8ced9f3d9ae11479ef03a7afe69fd6f5a87e52c6d711cf64ac8eb` |
| 25 | `theorem` | [exists_taylor_mean_remainder_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/exists-taylor-mean-remainder-bound--f0192e840c1a89fdd509ceb6.md) | 438 | `result-track:f0192e840c1a89fdd509ceb6115ae21e129e6d107074122140d0a239dc39f953` |
| 26 | `theorem` | [taylor_integral_remainder_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylor-integral-remainder-aux--e64dff2651ac35d72a9b85ee.md) | 464 | `result-track:e64dff2651ac35d72a9b85eea7d0d32f5930474c6753c0c29221a4aad1c16c09` |
| 27 | `theorem` | [taylor_integral_remainder_of_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylor-integral-remainder-of-absolutelycontinuous--b97266ad662344f99ca91970.md) | 518 | `result-track:b97266ad662344f99ca91970b08f18a0e580a4c01655102094b8e67724b0a91c` |
| 28 | `theorem` | [taylor_integral_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/declarations/taylor-integral-remainder--17a7fa661d4b3307627a6b78.md) | 542 | `result-track:17a7fa661d4b3307627a6b7869f8581518faca76f94d536b94825a9f007d5a0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
