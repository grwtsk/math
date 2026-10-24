# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PhaseDeformationQuantities.Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "accde29eaafd7ccd80e1acbea45c2cbd0fb9ae5b",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `accde29eaafd7ccd80e1acbea45c2cbd0fb9ae5b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimeSquareEstimate` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [has_deriv_at_chi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/has-deriv-at-chi--fefb066befbe5cc40015da6f.md) | 29 | `result-track:fefb066befbe5cc40015da6f1c0cbf14882870ed79d5a68dceb577be7d20daf8` |
| 2 | `theorem` | [deriv_chi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/deriv-chi--f60584edb1c9367fff6927f2.md) | 38 | `result-track:f60584edb1c9367fff6927f255d1f0bf1533b7f2111a440acd0cbbe665f3d820` |
| 3 | `theorem` | [deriv_chi_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/deriv-chi-zero--8048c7fd211da812674a85b9.md) | 43 | `result-track:8048c7fd211da812674a85b936f7cc5d3d53ddb65127c9433e46d9c45fabbade` |
| 4 | `theorem` | [deriv_chi_nat_pow_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/deriv-chi-nat-pow-zero--165c99453d9b55c9374d92e2.md) | 48 | `result-track:165c99453d9b55c9374d92e2eb3c6a68e3fc9146bcae9aa4455b83e0a9c412a1` |
| 5 | `theorem` | [second_deriv_chi_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/second-deriv-chi-zero--c744cfd9b19619b2987707d7.md) | 55 | `result-track:c744cfd9b19619b2987707d787e12bb42fd209ddd21f051ec86d42ff534bff8a` |
| 6 | `def` | [phaseTrace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/phasetrace--5eb8a8337985af583cc2ae09.md) | 70 | `declaration-track:5eb8a8337985af583cc2ae0982a36456fd42b1d6bb60c8a814ff5b75e75b4a4b` |
| 7 | `def` | [phaseDiscriminant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/phasediscriminant--2cca793aad53ccdcde9df435.md) | 73 | `declaration-track:2cca793aad53ccdcde9df435b42b5f6cdeb576554d0c2feb23f62adbe26816d9` |
| 8 | `theorem` | [phase_discriminant_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/phase-discriminant-eq--77bd3b99c645411b6e881bb6.md) | 75 | `result-track:77bd3b99c645411b6e881bb688df2d3845da50e22193d8a45013533f38713ef0` |
| 9 | `theorem` | [deriv_phase_trace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/deriv-phase-trace--896510728129bc6a9d469548.md) | 80 | `result-track:896510728129bc6a9d469548d81ec929d59f1f95ee945130564a787381f9c7ab` |
| 10 | `theorem` | [second_deriv_phase_trace_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/second-deriv-phase-trace-zero--5f17f0be2083c052eb8b6db6.md) | 90 | `result-track:5f17f0be2083c052eb8b6db6212865da469a06788cf4f7a8335ed0ae935edaa7` |
| 11 | `theorem` | [deriv_phase_discriminant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/deriv-phase-discriminant--9a8c8a9c9b81369bc3fb7f47.md) | 101 | `result-track:9a8c8a9c9b81369bc3fb7f47167eb652929610c088dc4bba39c4a4eb07ea503a` |
| 12 | `theorem` | [second_deriv_phase_discriminant_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/second-deriv-phase-discriminant-zero--e67464e36e1717d698a84ed0.md) | 113 | `result-track:e67464e36e1717d698a84ed015582b49135a21f7afd6ac1057f054e9e8b739ab` |
| 13 | `theorem` | [single_defect_square_eq_neg_discriminant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/single-defect-square-eq-neg-discriminant--a89d9b8b4534d875b2cab460.md) | 135 | `result-track:a89d9b8b4534d875b2cab460f9985110744657fbc19f7948dc76c33799fcfd18` |
| 14 | `theorem` | [phase_discriminant_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/phase-discriminant-square--8a7c45df275982228fb5e93a.md) | 143 | `result-track:8a7c45df275982228fb5e93ad67cc56024ce7171445e525ab555380590db4bd0` |
| 15 | `theorem` | [prime_square_defect_eq_neg_discriminant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/prime-square-defect-eq-neg-discriminant--835124522d79d3b62a9aa114.md) | 152 | `result-track:835124522d79d3b62a9aa1144e996ba6d1934a427724831203e1d51cf4f7c4e2` |
| 16 | `def` | [singleDefectDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/singledefectderivative--0930df20abce22f4ab114263.md) | 158 | `declaration-track:0930df20abce22f4ab114263f7cf268e4138c1bed33f41652e65f8345015cc83` |
| 17 | `theorem` | [has_deriv_at_single_defect](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/has-deriv-at-single-defect--80886a231bac5d18b271c19f.md) | 161 | `result-track:80886a231bac5d18b271c19f60fff47bac49a90e3a50c77982c82702d266d192` |
| 18 | `theorem` | [has_deriv_at_single_defect_derivative_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/has-deriv-at-single-defect-derivative-zero--9605342a27d3335d29968697.md) | 172 | `result-track:9605342a27d3335d29968697a9f6a1bac0f35aa57ad7389cbec03e9549365228` |
| 19 | `theorem` | [second_deriv_single_defect_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/second-deriv-single-defect-zero--68c3c9a30bb1442c59ca3993.md) | 180 | `result-track:68c3c9a30bb1442c59ca399331b8e70fda848bc9411469d99dda4be622701779` |
| 20 | `def` | [finiteDefectDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/finitedefectderivative--b5e5dd4b1887cb68792c95a2.md) | 189 | `declaration-track:b5e5dd4b1887cb68792c95a2791dd8ca1c373c15b338996fc00629406fbcde99` |
| 21 | `theorem` | [has_deriv_at_phase_defect](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/has-deriv-at-phase-defect--e8a23de14ef89fe7db60b02e.md) | 192 | `result-track:e8a23de14ef89fe7db60b02ea2aee2b194ec2d9844763a7f17dab1895ecea35f` |
| 22 | `theorem` | [second_deriv_phase_defect_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/second-deriv-phase-defect-zero--97c3218a1b87eabd7a930a97.md) | 197 | `result-track:97c3218a1b87eabd7a930a9724246f41336e40f0c393b9903bcb42feb97347d4` |
| 23 | `theorem` | [sqrt_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/sqrt-pow--a817a36a3cf71024eb28b2f2.md) | 212 | `result-track:a817a36a3cf71024eb28b2f224c18b3189bc35f5c1fcefd1b95221640e5a77cc` |
| 24 | `theorem` | [prime_weight_prime_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/prime-weight-prime-pow--1d4987eeebcc29c034018a85.md) | 219 | `result-track:1d4987eeebcc29c034018a853344c195b7b07c979238f2508ea96f12549a821d` |
| 25 | `theorem` | [weighted_curvature_prime_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/weighted-curvature-prime-pow--f666740eab2396649911d5c5.md) | 226 | `result-track:f666740eab2396649911d5c56fd3ed9701a0f9d96c890efa031a8ba82cb06c16` |
| 26 | `theorem` | [von_mangoldt_prime_square_ne_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/von-mangoldt-prime-square-ne-log--b9cbee5a78e02013112905f2.md) | 233 | `result-track:b9cbee5a78e02013112905f2f6447c836afda1541ab8e12cd124e9e70781cdfd` |
| 27 | `def` | [primeSquareCosinePacket](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/primesquarecosinepacket--64aa435f62e24811d6c48a73.md) | 243 | `declaration-track:64aa435f62e24811d6c48a73510ffaeedb75b9e7b034d0fbbcf6874d7718ce3b` |
| 28 | `def` | [cutoffPrimeSquareCosinePacket](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/cutoffprimesquarecosinepacket--5cc6c08ca38f4ba63f921c06.md) | 248 | `declaration-track:5cc6c08ca38f4ba63f921c06da665679b86716c304adca4c8f658d77468412b0` |
| 29 | `theorem` | [cutoff_prime_square_cosine_packet_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/cutoff-prime-square-cosine-packet-eq--1428a67b4a83a1f60a614b2d.md) | 254 | `result-track:1428a67b4a83a1f60a614b2de75fe3e7ce8eaf35edbd320f073889743ecc2687` |
| 30 | `theorem` | [prime_square_cosine_packet_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/prime-square-cosine-packet-eq--62f52dffde6b73692b6fcab9.md) | 259 | `result-track:62f52dffde6b73692b6fcab99c2dde3fc6aa6c9bb059a33f27571820fb19a178` |
| 31 | `theorem` | [prime_square_cosine_packet_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/prime-square-cosine-packet-zero-pos--735394abdbde04c12717934b.md) | 270 | `result-track:735394abdbde04c12717934bfa998d06ad406967410914ca61965c737b120227` |
| 32 | `theorem` | [prime_square_cosine_packet_half_turn_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/prime-square-cosine-packet-half-turn-neg--b0e4d0090509726e8bce1b3b.md) | 279 | `result-track:b0e4d0090509726e8bce1b3bca498a106a4650cf309c2454a8055e76351259a3` |
| 33 | `theorem` | [signed_prime_square_cosine_packet_eq_discriminant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/signed-prime-square-cosine-packet-eq-discriminant--f8e5439d46e0a5c97fd10c48.md) | 295 | `result-track:f8e5439d46e0a5c97fd10c48c429eb79d8672765372fec71befc77842253b270` |
| 34 | `theorem` | [second_deriv_prime_square_defect_packet_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/second-deriv-prime-square-defect-packet-zero--6f3e877daacd8b7f5c7c5a91.md) | 304 | `result-track:6f3e877daacd8b7f5c7c5a91452777be9ab35b7cdc1c888db3b98e8cfe9293bf` |
| 35 | `theorem` | [prime_mem_lower_power_inventory](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/prime-mem-lower-power-inventory--ea1858878d587a837ec71f87.md) | 326 | `result-track:ea1858878d587a837ec71f87d30e4af168fbc4947a125e5b824a260ef250d9ef` |
| 36 | `theorem` | [prime_square_mem_lower_power_inventory](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/prime-square-mem-lower-power-inventory--cdbded3709e639cd713614d6.md) | 332 | `result-track:cdbded3709e639cd713614d6484d0eae15875361a545bbc4bc9432122bd7bac2` |
| 37 | `theorem` | [actual_cutoff_prime_two_packet_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/actual-cutoff-prime-two-packet-zero-pos--a6d1ae68fd13c059755d4f90.md) | 340 | `result-track:a6d1ae68fd13c059755d4f90ab45cbb9a1836eb9bdf6308e5b431e0d5f9bd6b8` |
| 38 | `theorem` | [not_all_prime_square_cosine_packet_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/not-all-prime-square-cosine-packet-nonpos--f31e33d09e5ebd74b4c86db3.md) | 354 | `result-track:f31e33d09e5ebd74b4c86db3917ddcbb420e9fb0c8a77a943abbd30839a4c35c` |
| 39 | `theorem` | [not_all_prime_square_cosine_packet_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/declarations/not-all-prime-square-cosine-packet-nonneg--c13ceb8e08936c4dfc0e063f.md) | 360 | `result-track:c13ceb8e08936c4dfc0e063f7a42bd0cd46321b74a3b414bcc75bcd27a7986bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
