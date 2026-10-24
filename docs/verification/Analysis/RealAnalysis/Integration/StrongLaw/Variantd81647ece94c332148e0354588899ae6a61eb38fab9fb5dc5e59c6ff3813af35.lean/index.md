# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.StrongLaw.Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e256183b589a60cc10d3cf314b7ccaeafcbef9dd",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e256183b589a60cc10d3cf314b7ccaeafcbef9dd`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.IdentDistrib` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Independence.Integrable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.FloorPow` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/truncation--7cd3166b12829426462e95fb.md) | 77 | `declaration-track:7cd3166b12829426462e95fbc8a1a9aedb9833a632389a223d3bd6661c2a8b97` |
| 2 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/root-measuretheory-aestronglymeasurable-truncation--eb16d55b940e0f2ca286d636.md) | 82 | `result-track:eb16d55b940e0f2ca286d636755c6af6b7f85af5638d238eaf795f0601c5ad4d` |
| 3 | `theorem` | [abs_truncation_le_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/abs-truncation-le-bound--b210b09f6c04ff6ff4f98c20.md) | 87 | `result-track:b210b09f6c04ff6ff4f98c20606bb1059b0960279025c978b2ff975e43997dfa` |
| 4 | `theorem` | [truncation_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/truncation-zero--1af4be9de2276b5443861d8e.md) | 94 | `result-track:1af4be9de2276b5443861d8ee057661f4aa93bd46768e657b1a281aaee68d581` |
| 5 | `theorem` | [abs_truncation_le_abs_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/abs-truncation-le-abs-self--cf9f2379405d2e91f5d19105.md) | 96 | `result-track:cf9f2379405d2e91f5d1910557b554195f17f9381e017eec283cdeb6523f480d` |
| 6 | `theorem` | [truncation_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/truncation-eq-self--b14bdd0c471a5986843fd402.md) | 102 | `result-track:b14bdd0c471a5986843fd4020d1836e5c4dc2c27cef23612ae4676d58643f540` |
| 7 | `theorem` | [truncation_eq_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/truncation-eq-of-nonneg--0ae5cd0f8ecfcad63d43ddca.md) | 109 | `result-track:0ae5cd0f8ecfcad63d43ddca95ad07013774baa89b8c99e602fa4d328187dc4f` |
| 8 | `theorem` | [truncation_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/truncation-nonneg--59cd5c2c870a4f2532bed647.md) | 120 | `result-track:59cd5c2c870a4f2532bed647fba40e420af39cec9fae999a82cf614b5b85c442` |
| 9 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.memLp_truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/root-measuretheory-aestronglymeasurable-memlp-truncation--25d9605f72ccc72cc08afa96.md) | 123 | `result-track:25d9605f72ccc72cc08afa963388519ae5bd7295bd3cf5d475479b3d5814bdb1` |
| 10 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.integrable_truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/root-measuretheory-aestronglymeasurable-integrable-truncation--ae9d27587d0af9b9b5b109ae.md) | 127 | `result-track:ae9d27587d0af9b9b5b109aec5a4ead6c8da0bd3f6b9c7e54d06218718fe1fb7` |
| 11 | `theorem` | [moment_truncation_eq_intervalIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/moment-truncation-eq-intervalintegral--d7bdc3df05d065d75b482c44.md) | 131 | `result-track:d7bdc3df05d065d75b482c44f42b6ee01fc68ca3b6ddbecf4b6e3353dd3274b7` |
| 12 | `theorem` | [moment_truncation_eq_intervalIntegral_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/moment-truncation-eq-intervalintegral-of-nonneg--044a613165108791a1a9d06e.md) | 141 | `result-track:044a613165108791a1a9d06e5e6f0ef20da9e13a6889bebf415ec81284b57c66` |
| 13 | `theorem` | [integral_truncation_eq_intervalIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/integral-truncation-eq-intervalintegral--9baa9927f4858d05a99f6d14.md) | 167 | `result-track:9baa9927f4858d05a99f6d1434415550c152ae11a3053fe2cbd34c1f4a4a854b` |
| 14 | `theorem` | [integral_truncation_eq_intervalIntegral_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/integral-truncation-eq-intervalintegral-of-nonneg--4c0679864fd895ee8db96e83.md) | 171 | `result-track:4c0679864fd895ee8db96e8312acae844ceefb0ae43dea344b4b5eeef18d9cfd` |
| 15 | `theorem` | [integral_truncation_le_integral_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/integral-truncation-le-integral-of-nonneg--494661dbf39458a0ef0c5489.md) | 175 | `result-track:494661dbf39458a0ef0c548904d3d4e7483d27111b75a6c7d70aecff9b8eced8` |
| 16 | `theorem` | [tendsto_integral_truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/tendsto-integral-truncation--800e52919a196ac9daede876.md) | 187 | `result-track:800e52919a196ac9daede876c22474711352ad3375b095464801ddda9a5fdcf7` |
| 17 | `theorem` | [IdentDistrib.truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/identdistrib-truncation--768517fc3d8622e7f26d3b8e.md) | 201 | `result-track:768517fc3d8622e7f26d3b8e120fdb80a5422422eff5cda9c58b887af58be9f7` |
| 18 | `theorem` | [sum_prob_mem_Ioc_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/sum-prob-mem-ioc-le--81ddd7c865db91b2669b8f4a.md) | 214 | `result-track:81ddd7c865db91b2669b8f4ab6418d5c86bd5c3b370c74e677e7b181cf3c03e6` |
| 19 | `theorem` | [tsum_prob_mem_Ioi_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/tsum-prob-mem-ioi-lt-top--1e7e573c5fd26859d68e0ae1.md) | 285 | `result-track:1e7e573c5fd26859d68e0ae114054eeb55bebe1636b9c05cc941cc8c2b591a8e` |
| 20 | `theorem` | [sum_variance_truncation_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/sum-variance-truncation-le--8ccad4b9c3c48286946bfef5.md) | 309 | `result-track:8ccad4b9c3c48286946bfef5f93e58362da0d55e983c78ff325204b4540287de` |
| 21 | `theorem` | [strong_law_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/strong-law-aux1--323913469d7554c094e54526.md) | 376 | `result-track:323913469d7554c094e54526608b344baa1ae2bce825422a21b4d6dc826d9582` |
| 22 | `theorem` | [strong_law_aux2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/strong-law-aux2--6646a0b893cf8f4a6f570a28.md) | 480 | `result-track:6646a0b893cf8f4a6f570a286f5f9bd8c82d14b2bebbc6ce4a79642e00b0e1be` |
| 23 | `theorem` | [strong_law_aux3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/strong-law-aux3--76fb0ee0040492686912ba7b.md) | 497 | `result-track:76fb0ee0040492686912ba7bcefe22929b596d7590bdcf753cf0da7f234d82b6` |
| 24 | `theorem` | [strong_law_aux4](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/strong-law-aux4--0d0cd70421a57bbff0895c9f.md) | 514 | `result-track:0d0cd70421a57bbff0895c9fd1f3d6ede0cce9fc4a7339a4aa3801abff4af30f` |
| 25 | `theorem` | [strong_law_aux5](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/strong-law-aux5--dda67597945a523fac4d0bca.md) | 528 | `result-track:dda67597945a523fac4d0bca54e6ead5dc7b193fbbfd045b869886ada0dde6ae` |
| 26 | `theorem` | [strong_law_aux6](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/strong-law-aux6--a42f308079571b5daf78e0ee.md) | 556 | `result-track:a42f308079571b5daf78e0ee4e78170a8980d1394d3db69fe2c07149bfc19186` |
| 27 | `theorem` | [strong_law_aux7](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/strong-law-aux7--1f999f846b1b5f307fc401bb.md) | 580 | `result-track:1f999f846b1b5f307fc401bb93ce5cbaca15fef2aeaddc86a9386707b9e2d8a5` |
| 28 | `theorem` | [strong_law_ae_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/strong-law-ae-real--397f5a1aa53501c74c544596.md) | 601 | `result-track:397f5a1aa53501c74c54459625b26dcf9ad106c2a95a44bb8d4165ce1c49bb2c` |
| 29 | `lemma` | [strong_law_ae_simpleFunc_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/strong-law-ae-simplefunc-comp--bfa0d795c6e3d8e792f0b84e.md) | 649 | `result-track:bfa0d795c6e3d8e792f0b84ed1b4bebba9209cfee82f497a8f2a1df8b58b94a6` |
| 30 | `lemma` | [strong_law_ae_of_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/strong-law-ae-of-measurable--777e3f9a145ffd2374e22e0b.md) | 699 | `result-track:777e3f9a145ffd2374e22e0b9a0d7c58d189056935e6e4736c695a57b518f912` |
| 31 | `theorem` | [strong_law_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/strong-law-ae--f8d5c2c823c771dbe8ba7b38.md) | 791 | `result-track:f8d5c2c823c771dbe8ba7b38ad4c997942d7ef4f2667cb8603502195f1f95f4a` |
| 32 | `theorem` | [strong_law_Lp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.lean/declarations/strong-law-lp--ecaea8b722e5ec238681505b.md) | 835 | `result-track:ecaea8b722e5ec238681505b19809c3512fe56a91088aa1e64db8a2be4d04bc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
