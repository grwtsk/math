# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Chebyshev.Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c61841c98997cb77229212c2741e157e4724b1f8",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c61841c98997cb77229212c2741e157e4724b1f8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [primesLE](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/primesle--64e0a9f670ef5b19e2fac467.md) | 20 | `declaration-track:64e0a9f670ef5b19e2fac46774c42b614a8a0933d0a30db53dabc512fa2d90d6` |
| 2 | `theorem` | [mem_primesLE_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/mem-primesle-prime--63e5db0f184c9b1463bf46ab.md) | 22 | `result-track:63e5db0f184c9b1463bf46ab4c8e556cba665c8a497b9b257174ad85204b7de4` |
| 3 | `theorem` | [mem_primesLE_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/mem-primesle-le--5151c620d70a4ff2b6bc070e.md) | 24 | `result-track:5151c620d70a4ff2b6bc070e4b04cffe094fa268e37968201f03c270e0c936b7` |
| 4 | `theorem` | [mem_primesLE_gt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/mem-primesle-gt--fb5034b29aa8b77edd798138.md) | 26 | `result-track:fb5034b29aa8b77edd7981386372230a437df59960cbf92611393c17cbf7d761` |
| 5 | `theorem` | [mem_primesLE_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/mem-primesle-ge--83fe0cec34ba2a4ecc711653.md) | 28 | `result-track:83fe0cec34ba2a4ecc711653455572e8904c55e0903ae6b09ab6e37781a8d4e6` |
| 6 | `theorem` | [primesLE_mono](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/primesle-mono--f1039b6924d47a13adb813a4.md) | 30 | `result-track:f1039b6924d47a13adb813a477a938e35ba6454a72695edcfc18d139ac5906f1` |
| 7 | `theorem` | [primesLE_eq_filter_Icc_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/primesle-eq-filter-icc-zero--47fb54cc45594349ede6a3b7.md) | 34 | `result-track:47fb54cc45594349ede6a3b7e2b308a01e7ce617dd0af869358989a053e1688c` |
| 8 | `theorem` | [primesLE_eq_filter_Icc_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/primesle-eq-filter-icc-one--034569f6f997db34a2ce9ebb.md) | 38 | `result-track:034569f6f997db34a2ce9ebb2378f9313a1acd4d0361274f09c68cd411669ad1` |
| 9 | `theorem` | [primesLE_eq_filter_Icc_two](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/primesle-eq-filter-icc-two--a71a89d0d64cc13438999b71.md) | 42 | `result-track:a71a89d0d64cc13438999b71f4e0b42cd0d7f38e60462a6485cb5c66d861bc5f` |
| 10 | `theorem` | [card_primesLE](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/card-primesle--c2e8f774807831c6fd93e722.md) | 47 | `result-track:c2e8f774807831c6fd93e72278c2106edd1a5cb156644c8ed70ce6472bc69c42` |
| 11 | `theorem` | [log_prime_pos](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/log-prime-pos--dc2a5d9ca33129022f3db57d.md) | 50 | `result-track:dc2a5d9ca33129022f3db57d5f839c7b6966958ab6422f481444c9ff565b179f` |
| 12 | `theorem` | [log_prime_ne](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/log-prime-ne--a667e0708e75e60844655aef.md) | 54 | `result-track:a667e0708e75e60844655aef12f197271440ff009465539db289df8a41ae5cb2` |
| 13 | `theorem` | [log_prime_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/log-prime-nonneg--2b6274cf1095e8479f83a6a6.md) | 56 | `result-track:2b6274cf1095e8479f83a6a6c321e3f51325b45effa697941ac91d82c475988e` |
| 14 | `abbrev` | [lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/lcmupto--afbe3a2426b1b4a6948832e1.md) | 59 | `declaration-track:afbe3a2426b1b4a6948832e10298d846e1bac8d0a4193bd46b85d1b6415be089` |
| 15 | `theorem` | [lcmUpto_ne_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/lcmupto-ne-zero--a8cb4ff601292275556a090a.md) | 61 | `result-track:a8cb4ff601292275556a090a10ec07d545f6917461b5e0f754a85afe61cdf028` |
| 16 | `theorem` | [lcmUpto_pos](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/lcmupto-pos--f9cf188eafd0e69c3838bfc5.md) | 64 | `result-track:f9cf188eafd0e69c3838bfc544c0290a23e0dffa16fb9aef50f30167b0c94939` |
| 17 | `theorem` | [factorization_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/factorization-lcmupto--172bcdfd8741a5aa5a71dcad.md) | 66 | `result-track:172bcdfd8741a5aa5a71dcadce07b7dff5317731627e29b951433ba35c6308ae` |
| 18 | `theorem` | [lcmUpto_dvd_factorial](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/lcmupto-dvd-factorial--313812a86b3106235ba6160e.md) | 81 | `result-track:313812a86b3106235ba6160e7758166c471cb7d3396b32face5d1749607eadd2` |
| 19 | `theorem` | [primeFactors_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/primefactors-lcmupto--01a511c85e57c7647a577a21.md) | 84 | `result-track:01a511c85e57c7647a577a2132d6ddc6f9a057b110ec814e485cf8db01ee4b74` |
| 20 | `theorem` | [primorial_dvd_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/primorial-dvd-lcmupto--aadb51a499ad360d91636d8a.md) | 97 | `result-track:aadb51a499ad360d91636d8a2aa4fe245f59dace202e357b3b44addbbdca2ae2` |
| 21 | `theorem` | [lcmUpto_eq_prod](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/lcmupto-eq-prod--8096f8c7b9c88984080919a0.md) | 102 | `result-track:8096f8c7b9c88984080919a00e9934eeb66556dcc34a9f974bcb4c85e4ff9540` |
| 22 | `theorem` | [lcmUpto_eq_prod_pow_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/lcmupto-eq-prod-pow-log--6e5155a46cbab873377ed2a3.md) | 114 | `result-track:6e5155a46cbab873377ed2a30209701a650da4930e06d420fe8cd207aebdad1c` |
| 23 | `theorem` | [lcmUpto_eq_prod_pow_floor](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/lcmupto-eq-prod-pow-floor--c22880410773beaa7259eb63.md) | 119 | `result-track:c22880410773beaa7259eb63e52363c54bcd55f2cd9003bf524ff02107292d7d` |
| 24 | `theorem` | [primeCounting_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/primecounting-ge--63826f0b61d6b13fdc870ebe.md) | 123 | `result-track:63826f0b61d6b13fdc870ebe812fc02ced014ad9d80bba50f9bc43a74425395a` |
| 25 | `theorem` | [primeCounting_ge'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/primecounting-ge--228aea725682b7502eaa84d7.md) | 129 | `result-track:228aea725682b7502eaa84d7d7a198c4f43e35605afefe2e6ef8160cbe42f593` |
| 26 | `theorem` | [theta_eq_sum_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/theta-eq-sum-log--a2a16ccc475689ea9a8f3256.md) | 134 | `result-track:a2a16ccc475689ea9a8f3256d6a4efb2e5fb9049d6022530d864b207f659bd50` |
| 27 | `theorem` | [theta_le_primeCounting_mul_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/theta-le-primecounting-mul-log--976f49683e1c25bf15044ade.md) | 137 | `result-track:976f49683e1c25bf15044adedcddbdfc221f714b49b6a3181b5e24ec9ed20af8` |
| 28 | `theorem` | [theta_le_primeCounting_mul_log'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/theta-le-primecounting-mul-log--b667db77c627f976d4a3a4cd.md) | 140 | `result-track:b667db77c627f976d4a3a4cdbd57657e0a87db61bcbf2e978c61cd096ea6b7cd` |
| 29 | `theorem` | [pi_mul_log_sqrt_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/declarations/pi-mul-log-sqrt-le--8bf8ad7ab811182c89981d48.md) | 143 | `result-track:8bf8ad7ab811182c89981d48e2f710d09c5b7b625af8dbdb0d5ce887b7acb9b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
