# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.BrunTitchmarsh.Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e586f4bec3fa69d76499efc20cd4350c0ea483e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e586f4bec3fa69d76499efc20cd4350c0ea483e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Semifield` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Primorial` — import line 11; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.Analysis.Asymptotics.Asymptotics` — import line 12; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.Selberg` — import line 13; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.SelbergBounds` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeInterSieve](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/primeintersieve--2ab32e1c6809e2be7edaa1e6.md) | 24 | `declaration-track:2ab32e1c6809e2be7edaa1e6e18f0f005980aba89b74ed62073e01c058a25043` |
| 2 | `def` | [primesBetween](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/primesbetween--3ba917f251adbb0948df8f64.md) | 45 | `declaration-track:3ba917f251adbb0948df8f648da0291fea140984b4aa4b980cb7482fd390fa8d` |
| 3 | `theorem` | [siftedSum_eq_card](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/siftedsum-eq-card--6c7bd52cd72ba39ccca1224c.md) | 51 | `result-track:6c7bd52cd72ba39ccca1224c54f48d69c37ddbc19e4f23262eb8a5fdd0223ac7` |
| 4 | `theorem` | [primesBetween_subset](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/primesbetween-subset--7e04ae133cdf9c13e0b89fe4.md) | 61 | `result-track:7e04ae133cdf9c13e0b89fe4c11dd7df57e33942c08b87b0e1a4ed432899a31d` |
| 5 | `theorem` | [primesBetween_le_siftedSum_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/primesbetween-le-siftedsum-add--feedc5c8913704292f5e71cf.md) | 79 | `result-track:feedc5c8913704292f5e71cf030ed18129babf45475ca367ce961ed7c9944313` |
| 6 | `theorem` | [Ioc_filter_dvd_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/ioc-filter-dvd-eq--4d3e32ec0ca9ccce331c9643.md) | 101 | `result-track:4d3e32ec0ca9ccce331c9643857d05529745488e93c0598dbdf3b75041f934e4` |
| 7 | `theorem` | [card_Ioc_filter_dvd](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/card-ioc-filter-dvd--640871973729b4b1c6c86292.md) | 115 | `result-track:640871973729b4b1c6c862927030032f8509477371b1dc3be08a3e51fff7cc8b` |
| 8 | `theorem` | [multSum_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/multsum-eq--dce8d183519b85860cc681bf.md) | 122 | `result-track:dce8d183519b85860cc681bf462c2784da44b6552153b82ff825949674442f90` |
| 9 | `theorem` | [rem_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/rem-eq--cdd2536019cea58782b1d770.md) | 133 | `result-track:cdd2536019cea58782b1d7702ec1b6c73395a07fd0a9acf87e341e98bcaee6cf` |
| 10 | `theorem` | [Nat.ceil_le_self_add_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/nat-ceil-le-self-add-one--e214fe351df56098eafacb90.md) | 140 | `result-track:e214fe351df56098eafacb903f953604548eb4b55943f62a3176e07c3db20cf9` |
| 11 | `theorem` | [floor_approx](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/floor-approx--944b1ad92124c50b618784d4.md) | 146 | `result-track:944b1ad92124c50b618784d4078ef264df2c6fdcedc6f8214e8e60b416aa52ac` |
| 12 | `theorem` | [ceil_approx](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/ceil-approx--5cbe889db797b8424701cd3c.md) | 153 | `result-track:5cbe889db797b8424701cd3c33f4d3e3bb052fe8da7ef438cd8e9d57382bcbf1` |
| 13 | `theorem` | [nat_div_approx](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/nat-div-approx--6c956212784643bb25316109.md) | 160 | `result-track:6c956212784643bb2531610982a03883c1ee440e033e44106d7be9ba1fdebaf7` |
| 14 | `theorem` | [floor_div_approx](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/floor-div-approx--bd1d7fd821ba5d2829e714ce.md) | 164 | `result-track:bd1d7fd821ba5d2829e714ced88e6cd2ca78b4089c790acb295d653c03469181` |
| 15 | `theorem` | [abs_rem_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/abs-rem-le--ed424202813f5bd893e8532f.md) | 181 | `result-track:ed424202813f5bd893e8532fecd54040dc6503a16004feda5cc798a74627f7cf` |
| 16 | `theorem` | [boudingSum_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/boudingsum-ge--481bd7086f9a97e9a988ed11.md) | 217 | `result-track:481bd7086f9a97e9a988ed110bd28487be340e0b7a613095594cffcb51f38a1c` |
| 17 | `theorem` | [primeSieve_rem_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/primesieve-rem-sum-le--2c1994c5502af02c9b369832.md) | 226 | `result-track:2c1994c5502af02c9b369832410058d1e63de9f02836e33a40c267950ef01f3a` |
| 18 | `theorem` | [siftedSum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/siftedsum-le--0682c48967ba71ff6d253ac9.md) | 235 | `result-track:0682c48967ba71ff6d253ac981145129873fa5ca8eec77d757f2085c291e8396` |
| 19 | `theorem` | [primesBetween_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/primesbetween-le--7b872283aa1b51aa8e56afc5.md) | 248 | `result-track:7b872283aa1b51aa8e56afc51a41275ec60887988f615177e21aed4772068cdc` |
| 20 | `theorem` | [primesBetween_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/primesbetween-one--3c2138d8a5b8810ef6012001.md) | 257 | `result-track:3c2138d8a5b8810ef601200183de7da93a9a44d0095db5445fa7d1036c62c839` |
| 21 | `theorem` | [primesBetween_mono_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/primesbetween-mono-right--a8db334388a3de62dddcab19.md) | 267 | `result-track:a8db334388a3de62dddcab19dc748bb4bb8efb3ecde5ea7cf7f438ab3666884e` |
| 22 | `theorem` | [tmp](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/tmp--553d856f83181c124f0b507c.md) | 274 | `result-track:553d856f83181c124f0b507c9dba067fbbc1c9ff407c04c2f98e16219c2930b3` |
| 23 | `theorem` | [rpow_mul_rpow_log_isBigO_id_div_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/rpow-mul-rpow-log-isbigo-id-div-log--e9e6d0a38680b0b8114a6ac3.md) | 304 | `result-track:e9e6d0a38680b0b8114a6ac390aa61a9a582125ef6f766cd084f92794eef643b` |
| 24 | `theorem` | [err_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/err-isbigo--f0bcbee8e6b71521922cdced.md) | 328 | `result-track:f0bcbee8e6b71521922cdcedb28a2d9bf25a89c99c499c6a696b26f543de54fa` |
| 25 | `theorem` | [card_range_filter_prime_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/card-range-filter-prime-isbigo--77ad12409cedfd321e0f899e.md) | 339 | `result-track:77ad12409cedfd321e0f899e7dab52172b8b76694e8b80dc10fba8618e9dd745` |
| 26 | `theorem` | [prime_or_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/prime-or-pow--5318932f47ebb2bca0750de0.md) | 354 | `result-track:5318932f47ebb2bca0750de0272f314ac32a4d084369b4ac4c358150e3be8751` |
| 27 | `theorem` | [range_filter_isPrimePow_subset_union](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/range-filter-isprimepow-subset-union--a2620bb9be3b8448698265ba.md) | 377 | `result-track:a2620bb9be3b8448698265bae95ad1d6a44993ff8561f5e9e865e0b9ec8cfdc7` |
| 28 | `theorem` | [IsBigO.nat_Top_of_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/isbigo-nat-top-of-attop--68765d177d387f35c652291c.md) | 400 | `result-track:68765d177d387f35c652291c221330a05c51b3a24ac96a3a7a2053f288de7a4a` |
| 29 | `theorem` | [pows_small_primes_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/pows-small-primes-le--68dfd6df7c0ff924b8430568.md) | 424 | `result-track:68dfd6df7c0ff924b84305689e88537a293f38b5f01f35926d67d8e8ac9f9974` |
| 30 | `theorem` | [one_add_log_div_log_two_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/one-add-log-div-log-two-isbigo--d5cfeb075c2d302b48af4d1b.md) | 450 | `result-track:d5cfeb075c2d302b48af4d1bde89b48aacd636ab61b3f65a4fdeac033c2580d0` |
| 31 | `theorem` | [pow_half_mul_one_add_log_div_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/pow-half-mul-one-add-log-div-isbigo--e8b026d03a1056c6754fa41a.md) | 457 | `result-track:e8b026d03a1056c6754fa41a1316371243d769f06827a671aac03689c36cab7c` |
| 32 | `theorem` | [card_pows_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/card-pows-aux--168acf453223253b6ae63f26.md) | 469 | `result-track:168acf453223253b6ae63f26afafecc57f53bfcf18e7d57822651e384a830654` |
| 33 | `theorem` | [card_isPrimePow_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/card-isprimepow-isbigo--108a478d55e9ae2549d572e9.md) | 486 | `result-track:108a478d55e9ae2549d572e96fe5e39d0ceeeac036b2dd2b433153ca256150ac` |
| 34 | `theorem` | [card_range_filter_isPrimePow_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/declarations/card-range-filter-isprimepow-le--d6a1f3cb56b0ed163ad3e5f6.md) | 507 | `result-track:d6a1f3cb56b0ed163ad3e5f67035e213a59e0cb7d190c97d69ccdacf798303d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
