# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.WeightedPrimeMertens.Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91e27e50a81a32cf1a98229483a224d94c6a020f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91e27e50a81a32cf1a98229483a224d94c6a020f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Misc` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Stirling` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMangoldt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/weightedmangoldt--4a21f86a3fa81bda45572a18.md) | 36 | `declaration-track:4a21f86a3fa81bda45572a188b3ef9c1edc24649dfb11deb105915e405a2b211` |
| 2 | `theorem` | [log_factorial_eq_sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/log-factorial-eq-sum--41e93eac9c41da8be7310b8e.md) | 39 | `result-track:41e93eac9c41da8be7310b8e38ce779c0d05a4a71b7b23c948772f4d4174641b` |
| 3 | `theorem` | [factorial_identity](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/factorial-identity--054f73dfe1380ba1bd41789d.md) | 49 | `result-track:054f73dfe1380ba1bd41789dcc1a32dd1e0db2198c8d643ca8a05f816a6a9219` |
| 4 | `theorem` | [natural_division_error_le_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/natural-division-error-le-one--f0be5d24710b86f9bec87e1f.md) | 56 | `result-track:f0be5d24710b86f9bec87e1f232d94d1118ad0edf622499f8e16339d1fd072de` |
| 5 | `theorem` | [factorial_le_scaled_weighted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/factorial-le-scaled-weighted--5de0c855509640fbd67cbaca.md) | 67 | `result-track:5de0c855509640fbd67cbaca36d52fde9aa98e2fac3b6019626a186ccb92a9e2` |
| 6 | `theorem` | [scaled_weighted_le_factorial_add_psi](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/scaled-weighted-le-factorial-add-psi--d4adacfe488c9df7fed98329.md) | 79 | `result-track:d4adacfe488c9df7fed98329c6c56ee75e23ee4ffd1ed22cd14f25914a5ae11d` |
| 7 | `theorem` | [log_factorial_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/log-factorial-lower--0ec999e370bb85ee73928444.md) | 97 | `result-track:0ec999e370bb85ee739284447b4d84f3e08f983ed10eace288115f464f873032` |
| 8 | `theorem` | [log_factorial_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/log-factorial-upper--c8d5606f5d490d0eb4fee129.md) | 104 | `result-track:c8d5606f5d490d0eb4fee1296dd9375b35f06a15ef7e5183056ac30ece588b26` |
| 9 | `theorem` | [weightedMangoldt_sub_log_bounds](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/weightedmangoldt-sub-log-bounds--b6891f90cc2141f12eac0920.md) | 111 | `result-track:b6891f90cc2141f12eac0920e3b9fa66b7efa6a986b2f190e3bb004296a9e162` |
| 10 | `theorem` | [weightedMangoldt_mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/weightedmangoldt-mertens--3446d54eb5b25e877d15d583.md) | 121 | `result-track:3446d54eb5b25e877d15d583611f654f2aba673aff91302e40f6174178d3d419` |
| 11 | `def` | [primeCoefficient](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/primecoefficient--65baa43bf691989e4125885b.md) | 128 | `declaration-track:65baa43bf691989e4125885ba6a22c81aa8b477650bcb73e039ddf83eadc6f05` |
| 12 | `def` | [properPowerCoefficient](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/properpowercoefficient--4175925242d3a8d73560d220.md) | 131 | `declaration-track:4175925242d3a8d73560d2203853fa9cf1a0b8353855034367b03bf72059d4d7` |
| 13 | `def` | [weightedPrime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/weightedprime--f7cfa64f8168f03da14e5fb2.md) | 134 | `declaration-track:f7cfa64f8168f03da14e5fb280453bbc72984af95564018b6d6afebe7ec210ad` |
| 14 | `theorem` | [properPowerCoefficient_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/properpowercoefficient-nonneg--2c7a55fa27c4a70873cc7afd.md) | 136 | `result-track:2c7a55fa27c4a70873cc7afdf3a70d0c3cf9ec45d2b1a4bd2ca093af7c515677` |
| 15 | `theorem` | [properPower_prefix](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/properpower-prefix--c88ca81d8b276b06ee85753c.md) | 141 | `result-track:c88ca81d8b276b06ee85753c10874fd315c4e5e85bb07597f8a9531b5f7af20c` |
| 16 | `theorem` | [weighted_difference](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/weighted-difference--adbdf4e23c7bcc027c155074.md) | 150 | `result-track:adbdf4e23c7bcc027c15507420cd3072a88a63328955d3f81eab27f45ed15d34` |
| 17 | `theorem` | [weighted_difference_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/weighted-difference-nonneg--483c363e03739a0aad1a1a41.md) | 156 | `result-track:483c363e03739a0aad1a1a41983dc1eca65d487eeb72eff9ae2e55a03f9688be` |
| 18 | `theorem` | [weighted_difference_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/weighted-difference-abel--ef427de7153fc699a234556a.md) | 161 | `result-track:ef427de7153fc699a234556a44e9e26f3d3c811ab2deb74d7041a99f0540816e` |
| 19 | `theorem` | [properPower_integrand_integrable](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/properpower-integrand-integrable--b0be35b0ef7601f861b4492c.md) | 200 | `result-track:b0be35b0ef7601f861b4492c023b3f94818cafa90183be5abebfc8a934e28581` |
| 20 | `theorem` | [sqrt_div_square](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/sqrt-div-square--633edcc324b8f38a4e02bb42.md) | 213 | `result-track:633edcc324b8f38a4e02bb420a26f4798d5f79536e8d0d0acfb0ede180e57173` |
| 21 | `theorem` | [weighted_difference_bound_of_sqrt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/weighted-difference-bound-of-sqrt--fec2673a97a8e6c962d475bd.md) | 218 | `result-track:fec2673a97a8e6c962d475bdc91ddc331dc03421eaa093ff5d381b5d723980fe` |
| 22 | `theorem` | [weighted_difference_uniformly_bounded](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/weighted-difference-uniformly-bounded--829e0f3cced3b6c68f3b24e7.md) | 261 | `result-track:829e0f3cced3b6c68f3b24e71515385cdfbeb968e77a05b2e482bb1394c583a8` |
| 23 | `theorem` | [weightedPrime_mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/weightedprime-mertens--95b7105b30589095938b09e5.md) | 271 | `result-track:95b7105b30589095938b09e5a744b7a78eb606017870e9e5df0afdd99613c26c` |
| 24 | `theorem` | [weightedPrime_eq_filtered](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/weightedprime-eq-filtered--88ca0461abbc371c4ed7a3e6.md) | 281 | `result-track:88ca0461abbc371c4ed7a3e62f0bf62d482659e2ea3ab7618cc22f0832f1c658` |
| 25 | `theorem` | [log_floor_error](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/log-floor-error--639aa72ccf33202a6bcaaa77.md) | 289 | `result-track:639aa72ccf33202a6bcaaa77c2f63bb211f24aa65255512f3b05f6b5ce4f1888` |
| 26 | `theorem` | [weightedPrime_mertens_real](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/weightedprime-mertens-real--945b52ca80ea9eb1c473e856.md) | 306 | `result-track:945b52ca80ea9eb1c473e8564ad861afe0a357b9c7458dac5738839b8a19597f` |
| 27 | `theorem` | [weightedPrime_mertens_log_cutoff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/declarations/weightedprime-mertens-log-cutoff--3b909ed271171bb7bfe59de3.md) | 326 | `result-track:3b909ed271171bb7bfe59de30a6e4ddae0b70c1d0501917ae04034d65afd4f37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
