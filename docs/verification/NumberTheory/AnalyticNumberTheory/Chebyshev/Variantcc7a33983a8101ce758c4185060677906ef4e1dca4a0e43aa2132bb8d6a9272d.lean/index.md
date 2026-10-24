# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Chebyshev.Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c8cfa1c80208c55ab335abde127ee6837384a7c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c8cfa1c80208c55ab335abde127ee6837384a7c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [primesLE](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/primesle--373b5e3a0e5b5fb917f334d5.md) | 12 | `declaration-track:373b5e3a0e5b5fb917f334d53f646748422c22e4680564e8a87a13f62150d238` |
| 2 | `theorem` | [mem_primesLE_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/mem-primesle-prime--4d2786e8931d9ad99fb1510f.md) | 14 | `result-track:4d2786e8931d9ad99fb1510f9b6402e0a4cee537d67c2e2f489e7abc315d4e8c` |
| 3 | `theorem` | [mem_primesLE_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/mem-primesle-le--c9dc2dc57f390f42f3ec2657.md) | 16 | `result-track:c9dc2dc57f390f42f3ec265707618e8b8f1aeee1f72e9610b3725d2ce4f440bf` |
| 4 | `theorem` | [mem_primesLE_gt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/mem-primesle-gt--6fa7bc5dd2a31ee16487dc4b.md) | 18 | `result-track:6fa7bc5dd2a31ee16487dc4b81b83075ff3d137c8e4d2c46dba80dd09fd031e4` |
| 5 | `theorem` | [mem_primesLE_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/mem-primesle-ge--2188b1bb782570915256bb93.md) | 20 | `result-track:2188b1bb782570915256bb93b4eceb7cd5a262ce3b3ff44ac3fad2753e385138` |
| 6 | `theorem` | [primesLE_mono](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/primesle-mono--20e19b485d375257a256c1da.md) | 22 | `result-track:20e19b485d375257a256c1da6a253d3506f0a8dc9b107241ffc2447fb0a3d152` |
| 7 | `theorem` | [primesLE_eq_filter_Icc_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/primesle-eq-filter-icc-zero--319c3b6bd5e732b8a9be9b04.md) | 26 | `result-track:319c3b6bd5e732b8a9be9b04a1a6ce73601cf2edb043fb757e107ad7dcde9f80` |
| 8 | `theorem` | [primesLE_eq_filter_Icc_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/primesle-eq-filter-icc-one--82c79a85a06ed6dd94ecd8bf.md) | 30 | `result-track:82c79a85a06ed6dd94ecd8bf08e315e97ccafa21b2fcc06d2f83391612c95428` |
| 9 | `theorem` | [primesLE_eq_filter_Icc_two](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/primesle-eq-filter-icc-two--26d357ac8cc64e3d1a06e6ae.md) | 34 | `result-track:26d357ac8cc64e3d1a06e6ae27570dbe77c2e9df5f97c77a0c72f322db361043` |
| 10 | `theorem` | [card_primesLE](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/card-primesle--96633d4a9c6829ea3b324e23.md) | 39 | `result-track:96633d4a9c6829ea3b324e237b4b5c59b0e9b721744764eaf199585854bac644` |
| 11 | `theorem` | [log_prime_pos](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/log-prime-pos--2ea3fe867982fce8cae4437e.md) | 42 | `result-track:2ea3fe867982fce8cae4437e65ec9863369b8b287d22f62fe92993baf07ac9ea` |
| 12 | `theorem` | [log_prime_ne](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/log-prime-ne--5df63c2a866e08c5e1a74ac1.md) | 46 | `result-track:5df63c2a866e08c5e1a74ac13d34f1ba557880f8bc7891ad8609bcff400d21b0` |
| 13 | `theorem` | [log_prime_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/log-prime-nonneg--c29d1a075af1a798db9fcae5.md) | 48 | `result-track:c29d1a075af1a798db9fcae54a5c7b86a8afad77d094b9b4687c52fd78d474ad` |
| 14 | `abbrev` | [lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/lcmupto--dad9aa99c9463f29d74c2759.md) | 51 | `declaration-track:dad9aa99c9463f29d74c27599fa5cb6f21abcf4ccc4f2537db758632dcfee7e1` |
| 15 | `theorem` | [lcmUpto_ne_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/lcmupto-ne-zero--05d06d064a32bded06c7f02b.md) | 53 | `result-track:05d06d064a32bded06c7f02b92f03d319f5f3ecb7111c671024bdedf74cbb053` |
| 16 | `theorem` | [lcmUpto_pos](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/lcmupto-pos--248590afec1858cc41895827.md) | 56 | `result-track:248590afec1858cc41895827634ff00769b757ad5eb4f740aa0384ad0b19c151` |
| 17 | `theorem` | [factorization_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/factorization-lcmupto--d03c2abbbd0989e51f4fe3b3.md) | 58 | `result-track:d03c2abbbd0989e51f4fe3b3a279f39efbc0d67c808c201db287578786aa7b97` |
| 18 | `theorem` | [lcmUpto_dvd_factorial](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/lcmupto-dvd-factorial--6d4608cf63e0b99b0e245f3f.md) | 73 | `result-track:6d4608cf63e0b99b0e245f3fe4567cb5ec37cf1744a0432e832ed74a3371cc95` |
| 19 | `theorem` | [primeFactors_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/primefactors-lcmupto--ec6945253d60844c5ddaab79.md) | 76 | `result-track:ec6945253d60844c5ddaab7927cdaa763c556d5adc4aab5a485f4c235ca75d88` |
| 20 | `theorem` | [primorial_dvd_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/primorial-dvd-lcmupto--9004983d88525fe9c19f8538.md) | 89 | `result-track:9004983d88525fe9c19f853883cc7aaaace4f42a2aee55d47b34cc17e52d17f0` |
| 21 | `theorem` | [lcmUpto_eq_prod](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/lcmupto-eq-prod--681efd3579ba27c8346861e2.md) | 94 | `result-track:681efd3579ba27c8346861e24dc65c864d6f56cdcaa5beb383a4f153d220e8d0` |
| 22 | `theorem` | [lcmUpto_eq_prod_pow_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/lcmupto-eq-prod-pow-log--f803c2366c0f95cfbe8afac0.md) | 106 | `result-track:f803c2366c0f95cfbe8afac0c566792e7519d2ca2b9a5043281ab1259024e94e` |
| 23 | `theorem` | [lcmUpto_eq_prod_pow_floor](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/lcmupto-eq-prod-pow-floor--14f2ae98cb81fba9631d0ee7.md) | 111 | `result-track:14f2ae98cb81fba9631d0ee7f8683f1f5aa7590b12bddded778ff6c1613918c6` |
| 24 | `theorem` | [primeCounting_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/primecounting-ge--73772c4138dc13a58e2836ee.md) | 115 | `result-track:73772c4138dc13a58e2836ee6ee8cc190faa1cbacf8e77fa92e0190a19cedcce` |
| 25 | `theorem` | [primeCounting_ge'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/primecounting-ge--ab7cc7cca23aef5a35db236d.md) | 121 | `result-track:ab7cc7cca23aef5a35db236d4b6557c83ab356573038a179446ee997317313cd` |
| 26 | `theorem` | [theta_eq_sum_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/theta-eq-sum-log--42464bca8d504322189e8228.md) | 126 | `result-track:42464bca8d504322189e82287dbf8cb2768bc039ed613fb2a010862c485f552f` |
| 27 | `theorem` | [theta_le_primeCounting_mul_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/theta-le-primecounting-mul-log--06ff3eb2b8ca4fb4878a7ae3.md) | 129 | `result-track:06ff3eb2b8ca4fb4878a7ae32e5284763278a597aeeb9e934986073ac410b96f` |
| 28 | `theorem` | [theta_le_primeCounting_mul_log'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/theta-le-primecounting-mul-log--42e8a0bde14766a19e6b12e2.md) | 132 | `result-track:42e8a0bde14766a19e6b12e29d1f45821dc9404e24d46651fb294389f4cc58b7` |
| 29 | `theorem` | [pi_mul_log_sqrt_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/declarations/pi-mul-log-sqrt-le--18273347788bce01f276bfbe.md) | 135 | `result-track:18273347788bce01f276bfbeb3da271b3ca8ab387eec7af25798829a623f2ff3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
