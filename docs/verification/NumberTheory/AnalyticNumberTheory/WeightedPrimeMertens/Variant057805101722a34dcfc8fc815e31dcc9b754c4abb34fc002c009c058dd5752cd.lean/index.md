# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.WeightedPrimeMertens.Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "410e5634202dca9e0a2d0446dbcdb68de3149d57",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `410e5634202dca9e0a2d0446dbcdb68de3149d57`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Misc` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Stirling` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMangoldt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/weightedmangoldt--b139acc541ccff8fa79db707.md) | 28 | `declaration-track:b139acc541ccff8fa79db707102733fca45088174ce65081636087d9cf17656b` |
| 2 | `theorem` | [log_factorial_eq_sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/log-factorial-eq-sum--6c8610ff173a6d43a88a616d.md) | 31 | `result-track:6c8610ff173a6d43a88a616dbff0b6d1c0b0a2cf60445e77567b934fe5291a9a` |
| 3 | `theorem` | [factorial_identity](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/factorial-identity--ed1c371c788841fc9b6767da.md) | 41 | `result-track:ed1c371c788841fc9b6767da4103321e169a0e856c8e5edd850031db9b5b6150` |
| 4 | `theorem` | [natural_division_error_le_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/natural-division-error-le-one--1da724341e67e08afa75b2c8.md) | 48 | `result-track:1da724341e67e08afa75b2c8e611fe92dd5263e22f706beebfd0beed17d1add0` |
| 5 | `theorem` | [factorial_le_scaled_weighted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/factorial-le-scaled-weighted--4cac61061f6753a41f1be2ef.md) | 59 | `result-track:4cac61061f6753a41f1be2ef7a5160d5a898121fc8345c376407475fb2fe4a0a` |
| 6 | `theorem` | [scaled_weighted_le_factorial_add_psi](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/scaled-weighted-le-factorial-add-psi--72adbc407c359835294d5914.md) | 71 | `result-track:72adbc407c359835294d591452ebbfee473b7bd1edbf356b35c5e9498999233f` |
| 7 | `theorem` | [log_factorial_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/log-factorial-lower--1ae8a33d8192b2a47a0cfcd8.md) | 89 | `result-track:1ae8a33d8192b2a47a0cfcd8d0c0342b7cda2b9916885d2f6c7ad7d202cf3e9a` |
| 8 | `theorem` | [log_factorial_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/log-factorial-upper--b0a759e7d92e13d6dbdea5d5.md) | 96 | `result-track:b0a759e7d92e13d6dbdea5d5589d1c85c89419c9d49fd51e08470d087ee51eaa` |
| 9 | `theorem` | [weightedMangoldt_sub_log_bounds](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/weightedmangoldt-sub-log-bounds--8c7f2f78190619d9736132db.md) | 103 | `result-track:8c7f2f78190619d9736132dbc9ddf18cc66daac2b44f648c9e98da2453ada677` |
| 10 | `theorem` | [weightedMangoldt_mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/weightedmangoldt-mertens--2820625c1d1ad0c597577836.md) | 113 | `result-track:2820625c1d1ad0c597577836dcaf636ee1987f22b58dd01ddf6b0a8ea40cd371` |
| 11 | `def` | [primeCoefficient](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/primecoefficient--a4cd1f4e314ff15a73ec2a42.md) | 120 | `declaration-track:a4cd1f4e314ff15a73ec2a42f85d4bea11ab98e9571efb44d32030e30ab875b8` |
| 12 | `def` | [properPowerCoefficient](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/properpowercoefficient--1f2db5a22e1c69e2923103ef.md) | 123 | `declaration-track:1f2db5a22e1c69e2923103ef82343e9c9aa5887d174817531ec033b354c7175e` |
| 13 | `def` | [weightedPrime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/weightedprime--8591423c750f7dc5b99af5bc.md) | 126 | `declaration-track:8591423c750f7dc5b99af5bc7902214c44cfc4282062754c7394bc6a039b1680` |
| 14 | `theorem` | [properPowerCoefficient_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/properpowercoefficient-nonneg--65e5b79cc62317aca86fb15f.md) | 128 | `result-track:65e5b79cc62317aca86fb15fe4353e67ebcf6a17aed0ad395524c0f5310e7ea4` |
| 15 | `theorem` | [properPower_prefix](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/properpower-prefix--f8da48432fd83b7e21f6fe5a.md) | 133 | `result-track:f8da48432fd83b7e21f6fe5a2adef2cd98338faa36e4952492e9ee5696e397f7` |
| 16 | `theorem` | [weighted_difference](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/weighted-difference--6e428a6f4c9af6a42edfb98e.md) | 142 | `result-track:6e428a6f4c9af6a42edfb98eae02d163badf641ca5d2afa8c829ed0475a0599e` |
| 17 | `theorem` | [weighted_difference_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/weighted-difference-nonneg--2d55b1b7cbbe013e7cce9e7c.md) | 148 | `result-track:2d55b1b7cbbe013e7cce9e7cc1ada11b3ba3ba640a334d146671b9bee4c5eb97` |
| 18 | `theorem` | [weighted_difference_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/weighted-difference-abel--d22c6d06859830a30470367d.md) | 153 | `result-track:d22c6d06859830a30470367d784de9b019068602fcd3fd8f88587617a513a148` |
| 19 | `theorem` | [properPower_integrand_integrable](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/properpower-integrand-integrable--385fe69fdef4831d0a911ea4.md) | 192 | `result-track:385fe69fdef4831d0a911ea4809d22355043c28f91ead83bafd70d175837b3e2` |
| 20 | `theorem` | [sqrt_div_square](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/sqrt-div-square--32386ccc241581a91abbcfde.md) | 205 | `result-track:32386ccc241581a91abbcfde8f9c9c52be4672ccd189a0511c9e8df53088a9e0` |
| 21 | `theorem` | [weighted_difference_bound_of_sqrt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/weighted-difference-bound-of-sqrt--2b0416b15f0c22d13681f2ed.md) | 210 | `result-track:2b0416b15f0c22d13681f2ed679897bf9de2db3769dbdeeffcccbc6ca81ffc96` |
| 22 | `theorem` | [weighted_difference_uniformly_bounded](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/weighted-difference-uniformly-bounded--472546d7ed23663671d9add4.md) | 253 | `result-track:472546d7ed23663671d9add4409ac90cf181f5a50dad677ea8c227ab18abe757` |
| 23 | `theorem` | [weightedPrime_mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/weightedprime-mertens--41e6af639f87520a0ca6eca0.md) | 263 | `result-track:41e6af639f87520a0ca6eca06a1e4300e3326b8999c627d68ac47702a86e1c0a` |
| 24 | `theorem` | [weightedPrime_eq_filtered](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/weightedprime-eq-filtered--f0286264340a616a94fb861d.md) | 273 | `result-track:f0286264340a616a94fb861d92c4915597b6d75f13abe19ef72099eeb6b31809` |
| 25 | `theorem` | [log_floor_error](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/log-floor-error--64e02943b48f89021083c26a.md) | 281 | `result-track:64e02943b48f89021083c26a91bc11544590f0d200aee1cdbe7a40ac7c0ecf0b` |
| 26 | `theorem` | [weightedPrime_mertens_real](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/weightedprime-mertens-real--6403bf67daaaf5693d78c066.md) | 298 | `result-track:6403bf67daaaf5693d78c0668c17526c724c4aea7cacb83746a77cbc4b1ad2c7` |
| 27 | `theorem` | [weightedPrime_mertens_log_cutoff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/declarations/weightedprime-mertens-log-cutoff--b859ba0a898f275a606e64ea.md) | 318 | `result-track:b859ba0a898f275a606e64ea10e509ca977bc71356396877b8724fdd9741a1f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
