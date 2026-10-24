# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Taylor.Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "088700ed9f2d0b74a86d1238b938bb0070c7f297",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `088700ed9f2d0b74a86d1238b938bb0070c7f297`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean.json)

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
| 1 | `def` | [taylorCoeffWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylorcoeffwithin--444a57b8b92da4fd30bcb798.md) | 62 | `declaration-track:444a57b8b92da4fd30bcb798bf2d3fb654a2ef1316afcf43402bb5bc94196a8a` |
| 2 | `def` | [taylorWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylorwithin--089fcffea6902090c1b8e2cb.md) | 70 | `declaration-track:089fcffea6902090c1b8e2cbdba9e801606ea617e18d286de3fe7ddba3dc74d4` |
| 3 | `def` | [taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylorwithineval--d25ff751c2806ce33d4e9d27.md) | 76 | `declaration-track:d25ff751c2806ce33d4e9d27cb1afc18d9cb8fe15507578b2745d626f8b09ea2` |
| 4 | `theorem` | [taylorWithin_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylorwithin-succ--4d6c24facaed336cf87cf6c8.md) | 79 | `result-track:4d6c24facaed336cf87cf6c80a17b0dee61b18106ba06a55ef6554ea79aafe2e` |
| 5 | `theorem` | [taylorWithinEval_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylorwithineval-succ--88027b5200bcbac931b967fc.md) | 87 | `result-track:88027b5200bcbac931b967fc1c5415875ece34e39ce39a1a6fc4222924e519d8` |
| 6 | `theorem` | [taylor_within_zero_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylor-within-zero-eval--b1265985554f10873621ba9b.md) | 100 | `result-track:b1265985554f10873621ba9b8f1e418366d5867f1023c2019a0f99e63cea8f5c` |
| 7 | `theorem` | [taylorWithinEval_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylorwithineval-self--9dd1bf8d3b808c9af055f19c.md) | 109 | `result-track:9dd1bf8d3b808c9af055f19c0c9b478273640ece4b67dad481ce9071d7ee9d66` |
| 8 | `theorem` | [taylor_within_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylor-within-apply--d5c0d945d0be2f85bede268b.md) | 115 | `result-track:d5c0d945d0be2f85bede268b6da1198e0d8c1ee79f66892c4c3b883f5bd62759` |
| 9 | `theorem` | [continuousOn_taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/continuouson-taylorwithineval--d0e7abf321ae041246c2210f.md) | 126 | `result-track:d0e7abf321ae041246c2210fb79c31c527b9ce4909fd1ed884400b974eb3b95f` |
| 10 | `theorem` | [monomial_has_deriv_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/monomial-has-deriv-aux--13e8596bd033b0218947ac9a.md) | 139 | `result-track:13e8596bd033b0218947ac9acc55cf9b784e0b1281f3b9ce51b2034d3ba4d1b4` |
| 11 | `theorem` | [hasDerivWithinAt_taylor_coeff_within](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/hasderivwithinat-taylor-coeff-within--a0bfc1e0706cd2dc83a0d453.md) | 146 | `result-track:a0bfc1e0706cd2dc83a0d4532b5bea9d0fbda6d5fbccba70ba1e25adf24994ed` |
| 12 | `theorem` | [hasDerivWithinAt_taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/hasderivwithinat-taylorwithineval--ac976b73e946ace19cb90765.md) | 172 | `result-track:ac976b73e946ace19cb90765ed7a275154dd2fb9d70186d26fb83327fc29a2d4` |
| 13 | `theorem` | [taylorWithinEval_hasDerivAt_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylorwithineval-hasderivat-ioo--dcb93ad741cf11f6cc7a0975.md) | 203 | `result-track:dcb93ad741cf11f6cc7a097514ff9dc87ec6b11f22b95c888e8fbf7189e065b0` |
| 14 | `theorem` | [hasDerivWithinAt_taylorWithinEval_at_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/hasderivwithinat-taylorwithineval-at-icc--d539edef9cbe24c2f9c3d5bd.md) | 216 | `result-track:d539edef9cbe24c2f9c3d5bdc7751a178dc647c366dd2764292dde6e692c0fb3` |
| 15 | `theorem` | [hasDerivAt_taylorWithinEval_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/hasderivat-taylorwithineval-succ--42ec7018408c1a292f838ee5.md) | 225 | `result-track:42ec7018408c1a292f838ee570874894eb769f8486ad8184e2e76a672992122f` |
| 16 | `theorem` | [taylor_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylor-islittleo--ef2e90fe6401337b1eade32b.md) | 242 | `result-track:ef2e90fe6401337b1eade32bfa4afc02c4211cce24d1263b4acf07a2e8320a92` |
| 17 | `theorem` | [taylor_isLittleO_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylor-islittleo-univ--a47600413f2d301e5c065f8b.md) | 263 | `result-track:a47600413f2d301e5c065f8ba437ff59b10db8f63f61fb94639978053c383a93` |
| 18 | `theorem` | [taylor_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylor-tendsto--6f2e035f4d713a6ab4b32248.md) | 268 | `result-track:6f2e035f4d713a6ab4b3224817f0dfce5a643167b6293cbbd6ff55cb72d4364e` |
| 19 | `theorem` | [Real.taylor_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/real-taylor-tendsto--cba8aa7b7e20c7c9877248d6.md) | 283 | `result-track:cba8aa7b7e20c7c9877248d6f9620bec6ba8055ffe17d345ba6fb1a9e2a33457` |
| 20 | `theorem` | [taylor_mean_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylor-mean-remainder--12ffd149ef8d1b2fba9927ea.md) | 301 | `result-track:12ffd149ef8d1b2fba9927ea775ee2d8816aea3cc7f54cd6b20b70f9c6919a22` |
| 21 | `theorem` | [taylor_mean_remainder_lagrange](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylor-mean-remainder-lagrange--41f12086d9272cbf2d368174.md) | 330 | `result-track:41f12086d9272cbf2d3681749c0cf70b3f78fa85a01d7269799951c5b50eb001` |
| 22 | `lemma` | [taylor_mean_remainder_lagrange_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylor-mean-remainder-lagrange-iteratedderiv--9dc2718fa360f64af920131a.md) | 348 | `result-track:9dc2718fa360f64af920131a621e8cd02ba21d2ea387d36349d4c9bc91849e65` |
| 23 | `theorem` | [taylor_mean_remainder_cauchy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylor-mean-remainder-cauchy--05d2d5a86fec8922d10d4633.md) | 371 | `result-track:05d2d5a86fec8922d10d46333c255b1a181c82988e436f415c73678ea0c40b35` |
| 24 | `theorem` | [taylor_mean_remainder_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylor-mean-remainder-bound--0d3678e96e2c9d33169ff116.md) | 390 | `result-track:0d3678e96e2c9d33169ff116caec1e2a1b391701eeff9c7eb07f4f208de31ee7` |
| 25 | `theorem` | [exists_taylor_mean_remainder_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/exists-taylor-mean-remainder-bound--07b5da84a4815afcf6301228.md) | 430 | `result-track:07b5da84a4815afcf63012283a886e1bf24ccf0908df37dce4ae86d134d8be50` |
| 26 | `theorem` | [taylor_integral_remainder_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylor-integral-remainder-aux--6ae69fae7817b1bfc482fa0c.md) | 456 | `result-track:6ae69fae7817b1bfc482fa0cbf822ad928a3007dd23185066bc86e48c42af3b8` |
| 27 | `theorem` | [taylor_integral_remainder_of_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylor-integral-remainder-of-absolutelycontinuous--99fc1bf10dbe5b72041c24a0.md) | 510 | `result-track:99fc1bf10dbe5b72041c24a041f3ca06bff3f75523cf05a5233f2fc4d9356560` |
| 28 | `theorem` | [taylor_integral_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/declarations/taylor-integral-remainder--9919f8bca9e91cd187a07ea5.md) | 534 | `result-track:9919f8bca9e91cd187a07ea574d3a2e48f764957f81dacb50a4af90d0ea12d95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
