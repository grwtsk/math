# GRWTSK.NumberTheory.Farey.FareyResidueChannelDecomposition

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Farey/FareyResidueChannelDecomposition.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4df2cbea5643fb95614ac2ed9b19ed9daaac428`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [additiveResidueSelector](declarations/additiveresidueselector--552fb2295f90dac4412cc52d.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [additiveResidueSelector_eq_indicator](declarations/additiveresidueselector-eq-indicator--7f80cffe7c75b9b7261c2c58.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [residueGCD](declarations/residuegcd--b8036994b960dd8f5a268bb8.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [residueGCD_dvd_modulus](declarations/residuegcd-dvd-modulus--4ddf26db25ba2cfb8c4443e6.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [residueGCD_pos](declarations/residuegcd-pos--9c12ae7a7814dcc8114a9772.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [residueGCD_eq_one_iff_isUnit](declarations/residuegcd-eq-one-iff-isunit--2e88da530dd006efd4212567.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [gcdStratumPart](declarations/gcdstratumpart--034215cc16ae8016fa0cb840.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [residueGCD_mem_divisors](declarations/residuegcd-mem-divisors--97617a06994d09b8bea63b85.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sum_gcdStratumPart_apply](declarations/sum-gcdstratumpart-apply--896f8385552163e1e8074155.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sum_gcdStratumPart](declarations/sum-gcdstratumpart--84cf2597beddc71d15e0086f.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [reducedResidueRepresentative](declarations/reducedresiduerepresentative--827e5626bc6566cc4e28fe87.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [reducedResidueRepresentative_coprime](declarations/reducedresiduerepresentative-coprime--d28bfa0b91dcfb2de944c6ee.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [reducedResidueUnit](declarations/reducedresidueunit--8f8a88ff13a75b09b90fdb9d.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [residueGCD_mul_reducedResidueRepresentative](declarations/residuegcd-mul-reducedresiduerepresentative--eb5f3e67a635682207ee01fd.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cast_residueGCD_mul_reducedResidueRepresentative](declarations/cast-residuegcd-mul-reducedresiduerepresentative--96425c2fa993bd4acee54b00.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [unitCharacterSum](declarations/unitcharactersum--b11a91bfe75aa31acd490e03.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [unitCharacterSum_eq_totient_mul_selector](declarations/unitcharactersum-eq-totient-mul-selector--207c60a32e3d0f716aa1d7f3.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [unitCharacterCarrier](declarations/unitcharactercarrier--e3db7bbe7c66a1c848d2bb9f.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [nonunitAdditiveResidual](declarations/nonunitadditiveresidual--10f0a5632b0c43821541f755.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [scaled_selector_channels](declarations/scaled-selector-channels--982cde3cb78b58b98d9cd8e5.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [nonunit_residual_on_diagonal](declarations/nonunit-residual-on-diagonal--006d406d8fd5e43260391b40.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dirichlet_sum_zero_of_nonunit](declarations/dirichlet-sum-zero-of-nonunit--519c60d1433976cf8c405b78.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [no_pure_dirichlet_expansion_of_nonunit](declarations/no-pure-dirichlet-expansion-of-nonunit--5f9bc178b58534f224bd6c76.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [farey_right_coordinate_channels](declarations/farey-right-coordinate-channels--b5f11fee5e1150f7cb917e95.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [nonunitFareyRightResidue](declarations/nonunitfareyrightresidue--e9a8bccb899c3671405e37a7.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [nonunitFareyRightResidue_nonunit](declarations/nonunitfareyrightresidue-nonunit--17a2651a4be3ab558e6f8524.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [farey_nonunit_channel_certificate](declarations/farey-nonunit-channel-certificate--5f1df395215dd6c81b0c649b.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
